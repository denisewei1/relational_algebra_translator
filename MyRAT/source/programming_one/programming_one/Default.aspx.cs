using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;

namespace programming_one
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["query"]))
            {
               
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            var table_name = "";
            var table_query = "";
            var query = this.txt_query.Value;
            //query = query.Replace("π", "select");
            Regex regEx = new Regex(@"σ .+?\(", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                table_query = regEx.Matches(query)[0].Value.Replace("σ", "").Replace("(", "");
            }
            regEx = new Regex(@"\(\w{1,}\)", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                table_name = regEx.Matches(query)[0].Value.Replace("(", "").Replace(")", "");
            }
            regEx = new Regex(@"\(.+?\)", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                var filed = query.Replace(regEx.Matches(query)[0].Value, "").Replace(")", "").Replace(" ", ",").Replace("π", "");
                var filed_str = "";
                foreach (var item in filed.Split(','))
                {
                    if (!string.IsNullOrEmpty(item))
                    {
                        filed_str = filed_str == "" ? item : filed_str + "," + item;
                    }
                }
                query = "select " + filed_str;
            }


            query = query + " from " + table_name;
            if (!string.IsNullOrEmpty(table_query))
            {
                query = query + " where " + table_query;
            }
            regEx = new Regex(@"∪", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                query = query.Replace("∪", ",").Replace("from","");
                query = "select * from " + query.Split(',')[0] + "union" + " select * from " + query.Split(',')[1];
            }
            regEx = new Regex(@"×", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                query = query.Replace("×", ",").Replace("from", "");
                query = "select * from " + query.Split(',')[0] + "join" + " " + query.Split(',')[1];
            }
            regEx = new Regex(@"－", RegexOptions.Singleline);
            if (regEx.IsMatch(query))
            {
                query = query.Replace("－", ",").Replace("from", "");
                query = "select * from " + query.Split(',')[0] + " depart  " + " select * from " + query.Split(',')[1];
            }

            this.grd_list.DataSource = MySqlHelper.GetDataSet(MySqlHelper.Conn, CommandType.Text, query, null).Tables[0].DefaultView;
            this.grd_list.DataBind();
            this.Label1.Text = query;
        }
    }
}