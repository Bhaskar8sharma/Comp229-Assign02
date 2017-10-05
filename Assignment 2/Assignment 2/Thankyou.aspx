<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="Assignment_2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="Image1"  url="logo.png" runat="server"></asp:Image>
    <div>

    </div>

    <h1 style="height: 110px; font-family: Arial; font-size: xx-large; font-weight: 700; font-style: oblique; color: #FF0000; margin-top: 150px;">Thank you for completing the survey.Tak survey to earn some cash in your pocket by clicking <asp:HyperLink ID="HyperLink4"  NavigateUrl="https://www.swagbucks.com/" runat="server">here</asp:HyperLink></h1>
    

    <br />
    <br /><br />

    <asp:HyperLink ID="HyperLink2"  NavigateUrl="https://www.mcdonalds.com/us/en-us/privacy.html" runat="server">Mc donalds</asp:HyperLink>&nbsp&nbsp|&nbsp&nbsp

      <asp:HyperLink ID="HyperLink1"  NavigateUrl="http://www.kfc.ca/" runat="server">KFC</asp:HyperLink> &nbsp&nbsp&nbsp|&nbsp      
       <asp:HyperLink ID="HyperLink3"  NavigateUrl="https://www.wendys.com/en-ca" runat="server">Wendys</asp:HyperLink>
    

</asp:Content>
