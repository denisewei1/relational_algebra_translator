using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace programming_one
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            try
            {

                if (string.IsNullOrEmpty(this.txt_sql.Value))
                {
                    this.lb_err.Text = "Please enter the query";
                }
                else
                {
                    this.lb_err.Text = "";
                    var query = this.txt_sql.Value;
                    this.grd_list.DataSource = MySqlHelper.GetDataSet(MySqlHelper.Conn, CommandType.Text, query, null).Tables[0].DefaultView;
                    this.grd_list.DataBind();
                }
            }
            catch (Exception ex)
            {
                this.lb_err.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlHelper.ExecuteNonQuery(MySqlHelper.Conn, CommandType.Text, this.TextArea1.Value, null);
        }
    }
}