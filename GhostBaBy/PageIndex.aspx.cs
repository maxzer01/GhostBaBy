﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GhostBaBy
{
    public partial class PageIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userName = Session["userName"];

            if (userName != null)
            {
                btnLogin.InnerHtml = userName.ToString();
            }


        }



    }
}