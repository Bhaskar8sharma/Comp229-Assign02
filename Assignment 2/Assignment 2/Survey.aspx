<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Assignment_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
         <img src="logo.png" alt="Stallion surveys" style="height: 184px; width: 342px" />
        
        <p>
            First Name: <input type="text" id="fname" runat="server" placeholder="Text only" style="width: 170px; margin-left: 40px; margin-top: 0" />
        <asp:RequiredFieldValidator id="fnametextbox" runat="server"
                ControlToValidate="fname" 
                ErrorMessage="First name is required!" ForeColor="Red" />
        </p>
        <p>
            &nbsp;</p>
        <p>
             Last Name: <input type="text" id="lname" runat="server" placeholder="text only" style="width: 170px; margin-left: 40px" />
            <asp:RequiredFieldValidator ID="lnamereq" runat="server"
                ControlToValidate="lname" 
                ErrorMessage="Last name is required!" ForeColor="Red" />
        </p>
        <p>
             &nbsp;</p>
        <p>
            Email: <input type="text" id="email" runat="server" placeholder="xyz@abc.com" style="width: 170px; margin-left: 70px" />
        <asp:RequiredFieldValidator ID="emailreq" runat="server"
                ControlToValidate="email" 
                ErrorMessage="Email is required!" ForeColor="Red" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Contact number: <input type="number" id="cnumber" runat="server" placeholder="555-555-5555" class="optional" text="(optional)" style="margin-left: 3px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            1.Which out of the following do you prefer the most to eat?</p>
        <p>
            <br />
            <select id="preference" runat="server" multiple="true"  class="auto-style1" style="width: 155px; height: 104px">
                <option>KFC</option>
                <option>Popeyes</option>
                <option>Mc Donalds</option>
                <option>Wendy's</option>
                <option>Burger king</option>
                <option>Osmos</option>
            </select>
            &nbsp&nbsp<asp:RequiredFieldValidator ID="preferreq" runat="server"
                ControlToValidate="preference" 
                ErrorMessage="Please select !" ForeColor="Red" />
        </p>
        <p>
            &nbsp;</p>
        <p>

            2. How often do you visit the selected restaurant in a month?</p>
         <p>

            <br />
            <asp:RadioButton  ID="visitation" GroupName="visits" runat="server" Text="This is my first visit" />
            </p>
         <p>

            <asp:RadioButton ID="RadioButton2" GroupName="visits" runat="server" Text="Once or twice" />
            </p>
         <p>

            <asp:RadioButton ID="RadioButton3" GroupName="visits" runat="server" Text="More than four times" />
          
         </p>
        <p style="margin-top: 20">
            &nbsp;</p>
         <p style="margin-top: 20">
           3.Rate your satisfaction out of 5:<br />
         </p>
        <p>
            <asp:CheckBox text="1." ID="CheckBox1" runat="server" />&nbsp
            <asp:CheckBox text="2." ID="CheckBox2" runat="server" />&nbsp
            <asp:CheckBox text="3." ID="CheckBox3" runat="server" />&nbsp
            <asp:CheckBox text="4." ID="CheckBox4" runat="server" />&nbsp
            <asp:CheckBox text="5." ID="CheckBox5" runat="server" />&nbsp
            
           &nbsp;&nbsp;&nbsp;
          </p>
        <p>
           4.Would you recommend our restaurant to a friend?<br />&nbsp;&nbsp; <select id="recommendation" runat="server">
        <option>Yes</option>
        <option>No</option>
   </select>
           &nbsp&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="recommendation" 
                ErrorMessage="please select!" />
            </p>
        <p>
           5.How would you describe our restaurant to someone who has never been here?<br /><br /><textArea id="description" runat="server" style="width: 590px; height: 100px">
               </textArea>
            &nbsp &nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="description" 
                ErrorMessage="Please describe" ForeColor="Red" />
            </p>
        <p>
            &nbsp;</p>    
        <p>
         <asp:button id="confirmButton" Text="Confirm" OnClick="confirmButton_Click" OnClientClick="window.open('Thankyou.aspx', 'Thankyou')"  Runat="server" />
        </p>
        <p>
            <asp:Label runat="server" ID="feedbackLabel"/>
        </p>
    </div>
    <p>  <asp:ValidationSummary id="vSummary" runat="server" /> 

    <p>

&nbsp;

    </asp:Content>