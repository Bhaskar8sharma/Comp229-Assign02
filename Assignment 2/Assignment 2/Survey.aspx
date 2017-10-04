<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Assignment_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Take the Survey!</h1>
        <p>
            First Name: <input type="text" id="fname" runat="server" style="width: 170px; margin-left: 37px; margin-top: 0" />
        
        </p>
        <p>
             Last Name: <input type="text" id="lname" runat="server" style="width: 170px; margin-left: 37px" />
        </p>
        <p>
            Email: <input type="text" id="email" runat="server" style="width: 170px; margin-left: 70px" />
        </p>
        <p>
            Contact number: <input type="number" id="cnumber" runat="server" style="margin-left: 3px" />
        </p>
        <p>
            Which is your most preffered place to eat?<br />
            <select id="serverModel" runat="server" multiple="true" class="auto-style1">
                <option>KFC</option>
                <option>Popeyes</option>
                <option>Mc D</option>
                <option>Wendy's</option>
                <option>Burger king</option>
                <option>Osmos</option>
            </select>
        </p>
        <p>
            1. How often do you visit the selected restaurant in a month?<br />
            <asp:RadioButton ID="RadioButton1" GroupName="visits" runat="server" Text="This is my first visit" /><br />
            <asp:RadioButton ID="RadioButton2" GroupName="visits" runat="server" Text="Once or twice" /><br />
            <asp:RadioButton ID="RadioButton3" GroupName="visits" runat="server" Text="More than four times" /><br />
        </p>
        <p>
           2.Rate your satisfaction out of 10:
            </p>    
        <p>
            <button id="confirmButton" onserverclick="confirmButton_click" runat="server">Confirm</button>
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
            feedbackLabel.Text += "You preffer: <br/><ul>";
            foreach(ListItem item in serverModel.Items)
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
    </script>--%>
    <%--asp:Label runat="server" Text="Username" />
    <asp:TextBox ID="UsernameTextBox" runat="server" TextMode="SingleLine" />
<asp:RequiredFieldValidator ID="UsernameTextBox_RequiredFieldValidator" 
    ControlToValidate="UsernameTextBox" Display="Dynamic" runat="server" 
    ErrorMessage="Username is required"/--%>

    <asp:Button ID="ServerSubmit" runat="server" OnClick="ServerSubmit_Click" />

    </asp:Content>