<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Assignment_2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"><br /><br /><br />
    <asp:Image ID="Image1" src="logo.png" runat="server" />
  
    <h1 style="font-size: xx-large; font-weight: 500; font-style: normal; font-variant: normal; color: #FF0000; font-family: 'Times New Roman', Times, serif">
As our customer, your opinions are very valuable to us. Please take a few minutes and take the  by clicking on the icon above or survey button below. 
       This survey is to find out about the dining experience and what might be needed to improve. Please help us by completing this short survey.Thank you.<br /><br />
       <asp:LinkButton id="myLinkButon" Text="Survey" NavigateUrl="Survey.aspx/" runat="server"/>
    </h1><br />

</asp:Content>

