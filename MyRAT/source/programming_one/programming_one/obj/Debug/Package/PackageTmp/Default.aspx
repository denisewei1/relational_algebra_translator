<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="programming_one.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TestSet</title>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".grid_ul li").each(function () {
                $(this).click(function () {
                    $(".grid_ul li").removeClass("grid_ul_li_o");
                    $(this).addClass("grid_ul_li_o");

                    var id = $(this).attr("id").replace("li_", "");
                    $(".bb").hide();
                    $("#b_" + id).show();
                });
            });

            $(".left_ul img").click(function () {

                $("#txt_query").val($("#txt_query").val() + $(this).attr("t_i"));
            });
            $(".right_ul li").click(function () {
                $("#txt_query").val($("#txt_query").val() + " " + $(this).html());
            });
        });

        function search() {
            $.ajax({
                type: "get",
                cache: false,
                url: "default.aspx",
                data: { query: $("#txt_query").val() },
                success: function (data) {
                    alert("Data Saved: " + msg);
                }
            });
        }
    </script>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 12px;
        }
        .my_top_menu
        {
            line-height: 30px;
            height: 30px;
            font-size: 14px;
        }
        .my_top_menu td
        {
            padding: 0px 5px 0px 5px;
        }
        .left_ul
        {
            margin: 0px;
            padding: 0px;
            list-style: none;
        }
        .left_ul li
        {
            float: left;
            margin-left: 8px;
            margin-top: 6px;
        }
        .left_ul li img
        {
            cursor: pointer;
        }
        .grid_ul
        {
            margin: 0px;
            padding: 0px;
            list-style: none;
        }
        .grid_ul li
        {
            float: left;
            line-height: 20px;
            text-align: center;
            cursor: pointer;
            padding: 0px 5px 0px 5px;
            border-left: 1px solid #8f8f8f;
            border-top: 1px solid #8f8f8f;
        }
        .grid_ul_li_o
        {
            background-color: White;
        }
        .right_ul
        {
        }
        .right_ul li
        {
            height: 20px;
            line-height: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body style="background-color: #eeeeee; margin: 0px; padding: 0px;">
    <form id="form1" runat="server">
    <div style="background: url(images/rep_bg.gif) left top repeat-x; height: 30px; width: 100%;
        float: left;">
        <table class="my_top_menu" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    File
                </td>
                <td>
                    Edit
                </td>
                <td>
                    Session
                </td>
                <td>
                    Action
                </td>
                <td>
                    Help
                </td>
            </tr>
        </table>
    </div>
    <div style="background: url(images/rep_bg.gif) left top repeat-x; height: 40px; width: 100%;
        float: left;">
        <table cellpadding="0" cellspacing="0" style="float: left; margin-bottom: 5px;">
            <tr>
                <td>
                    <img src="images/menu_gif_03.gif" width="29" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_04.gif" width="28" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_05.gif" width="27" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_06.gif" width="25" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_07.gif" width="5" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_08.gif" width="27" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_09.gif" width="27" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_10.gif" width="26" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_11.gif" width="28" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_12.gif" width="26" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_13.gif" width="4" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_14.gif" width="28" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_15.gif" width="25" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_16.gif" width="5" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_17.gif" width="26" height="28" alt="">
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" ImageUrl="images/menu_gif_18.gif" runat="server"
                        Width="26" Height="28" OnClick="ImageButton1_Click" />
                </td>
                <td>
                    <img src="images/menu_gif_19.gif" width="27" height="28" alt="">
                </td>
                <td>
                    <img src="images/menu_gif_20.gif" width="27" height="28" alt="">
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 90px; float: left;">
        <fieldset>
            <legend>Operators</legend>
            <ul class="left_ul">
                <li>
                    <img src="images/left_ico_03.gif" t_i="σ" /></li>
                <li>
                    <img src="images/left_ico_05.gif" t_i="π" /></li>
                <li>
                    <img src="images/left_ico_09.gif" t_i="∪" /></li>
                    <li>
                    <img src="images/left_ico_13.gif" t_i="×" /></li>
                    <li>
                    <img src="images/left_ico_14.gif" t_i="－" /></li>
                <%-- <li>
                    <img src="images/left_ico_10.gif" /></li>
                <li>
                    <img src="images/left_ico_13.gif" /></li>
                <li>
                    <img src="images/left_ico_14.gif" /></li>
                <li>
                    <img src="images/left_ico_17.gif" /></li>
                <li>
                    <img src="images/left_ico_18.gif" /></li>
                <li>
                    <img src="images/left_ico_21.gif" /></li>
                <li>
                    <img src="images/left_ico_22.gif" /></li>
                <li>
                    <img src="images/left_ico_25.gif" /></li>
                <li>
                    <img src="images/left_ico_26.gif" /></li>
                <li>
                    <img src="images/left_ico_29.gif" /></li>
                <li>
                    <img src="images/left_ico_30.gif" /></li>
                <li>
                    <img src="images/left_ico_33.gif" /></li>
                <li>
                    <img src="images/left_ico_34.gif" /></li>--%>
            </ul>
        </fieldset>
    </div>
    <div style="float: left; width: 740px;">
        <div style="float: left; width: 570px;">
            <fieldset>
                <legend>Editor</legend>
                <textarea id="txt_query" runat="server" style="width: 545px; height: 202px;">userprofile ∪ userprofile</textarea>
            </fieldset>
        </div>
        <div style="float: left; width: 150px;">
            <fieldset>
                <legend>Relations</legend>
                <div style="width: 128px; height: 202px; border: 1px solid #8f8f8f; background-color: White;">
                    <ul class="right_ul">
                        <li>id</li>
                        <li>user_name</li>
                        <li>age</li>
                        <li>birthdate</li>
                        <li>id_card</li>
                    </ul>
                </div>
            </fieldset>
        </div>
        <div style="width: 715px; height: 20px; float: left; margin-top: 5px;">
            <ul class="grid_ul">
                <li id="li_1" class="grid_ul_li_o">Data Grid</li>
                <li id="li_2">Query</li>
                <li id="li_3" style="border-right: 1px solid #8f8f8f;">Trace</li>
            </ul>
        </div>
        <div class="bb" id="b_1" style="width: 715px; height: 210px; float: left; border: 1px solid #8f8f8f;
            background-color: White;">
            <asp:GridView ID="grd_list" runat="server">
            </asp:GridView>
        </div>
        <div class="bb" id="b_2" style="width: 715px; height: 210px; float: left; border: 1px solid #8f8f8f;
            background-color: White; display: none;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="bb" id="b_3" style="width: 715px; height: 210px; float: left; border: 1px solid #8f8f8f;
            background-color: White; display: none;">
            no
        </div>
        <div style="width: 715px; float: left; font-size:14px; margin-top: 5px;">
           Example（Please copy the contents of the input box below）:<br />1、 π birthdate age(σ user_name='peng'(userprofile))<br />
            2、userprofile ∪ userprofile<br />
            3、userprofile × depart<br />
            4、depart － depart1
        </div>
    </div>
    </form>
</body>
</html>
