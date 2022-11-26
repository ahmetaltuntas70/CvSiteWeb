<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKursEkle.aspx.cs" Inherits="CvSiteWeb.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="SERTİFİKA & KURS"></asp:Label>
                <asp:TextBox ID="TxtKurs" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnKaydet" runat="server" Text="KAYDET" CssClass="btn btn-primary" OnClick="BtnKaydet_Click" />

        </div>
    </form>

</asp:Content>
