<%@ Page Title="Thankyou" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Assignment_2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <img src="logo.png" alt="Stallion surveys" style="height: 184px; width: 342px" />
    
    <h1 style="height: 110px; font-family: Arial; font-size: xx-large; font-weight: 700; font-style: oblique; color: #FF0000; margin-top: 78px;">
        Thank you for completing the survey.Take some more surveys to earn some cash in your pocket by clicking <asp:HyperLink ID="HyperLink4" 
            NavigateUrl="https://www.swagbucks.com/" runat="server">here</asp:HyperLink></h1>
    

    </div>


    <br />
    <br /><br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:HyperLink ID="HyperLink2"  NavigateUrl="https://www.mcdonalds.com/us/en-us/privacy.html" runat="server">
        Mc donalds</asp:HyperLink>&nbsp&nbsp|&nbsp&nbsp
      <asp:HyperLink ID="HyperLink1"  NavigateUrl="http://www.kfc.ca/" runat="server">KFC</asp:HyperLink> &nbsp&nbsp&nbsp|&nbsp      
       <asp:HyperLink ID="HyperLink3"  NavigateUrl="https://www.wendys.com/en-ca" runat="server">Wendys</asp:HyperLink>
    
      <p>
            <asp:Label runat="server" ID="feedbackLabel" />
        </p>
    <script runat="server">
        void confirmButton_click(Object s, EventArgs e){
            bool itemSelected = false;
           
            //feedbackLabel.Text = "Your name is: " + fname.Value + lname.Value+ "<br/>";
            //feedbackLabel.Text += "Your email is: " + email.Value + "<br/>";
            feedbackLabel.Text += "You use: <br/><ul>";
           // foreach(ListItem item in preference.Items)
            {
               // if (item.Selected)
                {
                 //   feedbackLabel.Text += "<li>" + item.Text + "</li>";
                    itemSelected = true;
                }
            }
            if (!itemSelected)
            {
                    feedbackLabel.Text += "<li>nothing</li>";
            }
            feedbackLabel.Text += "</ul>";
         
        }
    </script>

</asp:Content>
