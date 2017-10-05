<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Assignment_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Take the Survey!</h1>
        <p>
            First Name: <input type="text" id="fname" runat="server" style="width: 170px; margin-left: 37px; margin-top: 0" />
        
        </p>
        <p>
            &nbsp;</p>
        <p>
             Last Name: <input type="text" id="lname" runat="server" style="width: 170px; margin-left: 37px" />
        </p>
        <p>
             &nbsp;</p>
        <p>
            Email: <input type="text" id="email" runat="server" style="width: 170px; margin-left: 70px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Contact number: <input type="number" id="cnumber" runat="server" style="margin-left: 3px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            1.Which is your most preffered place to eat?</p>
        <p>
            <br />
            <select id="preference" runat="server" multiple="true" class="auto-style1" style="width: 152px; height: 104px">
                <option>KFC</option>
                <option>Popeyes</option>
                <option>Mc Donalds</option>
                <option>Wendy's</option>
                <option>Burger king</option>
                <option>Osmos</option>
            </select>
        </p>
        <p>
            &nbsp;</p>
        <p>
            2. How often do you visit the selected restaurant in a month?<select id="visits"></select></p>
        <p>
            <br />
            <asp:RadioButton ID="RadioButton1" GroupName="visits" runat="server" Text="This is my first visit" /><br />
            <asp:RadioButton ID="RadioButton2" GroupName="visits" runat="server" Text="Once or twice" /><br />
            <asp:RadioButton ID="RadioButton3" GroupName="visits" runat="server" Text="More than four times" />
        </p>
        <p>
            <br />
        </p>
        <p>
           3.Rate your satisfaction out of 10:<select id="satisfaction" runat="server"></select>
        </p>
        <p>
           4.Would you recommend our restaurant to a friend? <select id="recommendation" runat="server"></select></p>
        <asp:RadioButton ID="RadioButton4" GroupName="reccomendations" runat="server" Text="Yes" /><br />
            <asp:RadioButton ID="RadioButton5" GroupName="recommendations" runat="server" Text="No" /><br />
        <p>
                How would you describe our restaurant to someone who has never been here?<select id="description" runat="server"></select>
              <br /><br />  <input type="text" runat="server" style="width: 581px; height: 100px" />

            </p>
        <p>
            <br />
             
            &nbsp;</p>
        <p>
            &nbsp;</p>    
        <p>
            protected void Button1_Click(object sender, EventArgs e) {
    Response.Redirect("Thankyou.aspx");
}
            <asp: button id="confirmButton" onserverclick="confirmButton_click" runat="server"/> 
           
        </p>
        <p>
            <asp:Label runat="server" ID="feedbackLabel"/>
        </p>
    </div>
    <script runat="server">
        void confirmButton_click(Object s, EventArgs e){
            bool itemSelected = false;
            feedbackLabel.Text = "Your name is: " + fname.Value +lname.Value + "<br/>";
            feedbackLabel.Text += "Your email is: " + email.Value + "<br/>";
            feedbackLabel.Text += "Your contact number is: " + cnumber.Value + "<br/>";
            feedbackLabel.Text += "Your preference: "+ preference.Value + "<br/>";
            feedbackLabel.Text += "Your satisfaction level: " + satisfaction.Value + "<br/>";
             feedbackLabel.Text += "would you recommend it: " + recommendation.Value + "<br/>";
            foreach(ListItem item in preference.Items)
            {
                if (item.Selected)
                {
                    feedbackLabel.Text += "<li>" + item.Text + "</li>";
                    itemSelected = true;
                }
            }
            if (!itemSelected)
            {
                    feedbackLabel.Text += "<li>nothing</li>";
            }
            feedbackLabel.Text += "</ul>";
        }
    </script>&nbsp;

    </asp:Content>