<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Label runat="server" Text="Username" />
    <asp:TextBox ID="UsernameTextBox" runat="server" TextMode="SingleLine" />
<asp:RequiredFieldValidator ID="UsernameTextBox_RequiredFieldValidator" 
    ControlToValidate="UsernameTextBox" Display="Dynamic" runat="server" 
    ErrorMessage="Username is required"/>

    <asp:Button ID="ServerSubmit" runat="server" OnClick="ServerSubmit_Click" />

    </asp:Content>