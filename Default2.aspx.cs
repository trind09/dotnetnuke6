using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DotNetNuke.Entities.Users;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = GetPassword(1, 1, "") + " - 1";
        Label2.Text = GetPassword(1, "trind09", "") + " - 2";
        Label3.Text = GetCurrentUserPassword() + " - 3";
    }

    /** The first function is based on User ID, Note: the passwordAnswer can be left blank or empty string, if user does not specify any password question answer **/
    private string GetPassword(int portalID, int userID, string passwordAnswer)
    {
        string password = "";
        UserInfo objUser = UserController.GetUserById(portalID, userID);
        if (objUser != null)
        {
            password = UserController.GetPassword(ref objUser, passwordAnswer);
        }
        return password;
    }

    /** The second function is based on Username, Note: the passwordAnswer can be left blank or empty string, if user does not specify any password question answer **/
    private string GetPassword(int portalID, string username, string passwordAnswer)
    {
        string password = "";
        UserInfo objUser = UserController.GetUserByName(portalID, username);
        if (objUser != null)
        {
            password = UserController.GetPassword(ref objUser, passwordAnswer);
        }
        return password;
    }

    /** The last function is based on current user login, Note: the passwordAnswer can be left blank or empty string, if user does not specify any password question answer **/
    private string GetCurrentUserPassword()
    {
        string password = "";
        string passwordAnswer = "";
        UserInfo objUser = UserController.GetCurrentUserInfo();
        objUser = UserController.GetCurrentUserInfo();
        if (objUser != null)
        {
            try
            {
                password = UserController.GetPassword(ref objUser, passwordAnswer);
            }catch
            {
                return "";
            }
        }
        return password;
    }
}