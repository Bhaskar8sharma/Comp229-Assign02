<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Assignment_2.WebForm2" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="MainContent" runat="server"><br />
  <div>
      <img src="logo.png" alt="Stallion surveys" style="height: 184px; width: 342px" />
  </div>
    <br />
    <h1 style="color: #0066FF; font-size: xx-large; font-weight: 900">Welcome to the Stallion Surveys</h1>

    <h1 style="font-size: xx-large; font-weight: 500; font-style: normal; font-variant: normal; color: #0066FF; font-family: 'Times New Roman', Times, serif">
        As our customer, your opinions are very valuable to us. This survey is to find out about the dining experience and what might be needed to improve. Please take a few minutes and complete the survey by clicking on the icon above or the link below. Thank you.<br /><br />

     <asp:HyperLink ID="HyperLink2" NavigateUrl="Survey.aspx" runat="server">Take the Survey</asp:HyperLink>
           
    </h1>
    <asp:HyperLink ID="HyperLink1"  NavigateUrl="https://privacy.microsoft.com/en-ca/privacystatement" runat="server">Privacy policy</asp:HyperLink>
    <br />

    <p>
        
    </p>

</asp:Content>

