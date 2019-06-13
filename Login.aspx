<%@ Page Title="YAMAHA" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm_Edit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 68px;
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1 %>" DeleteCommand="DELETE FROM [CHITIETDONHANG] WHERE [STT] = @STT" InsertCommand="INSERT INTO [CHITIETDONHANG] ([STT], [NGÀYMUAXE], [LOẠIXE], [GIÁTIỀN], [HTTHANHTOÁN], [BỔSUNG]) VALUES (@STT, @NGÀYMUAXE, @LOẠIXE, @GIÁTIỀN, @HTTHANHTOÁN, @BỔSUNG)" ProviderName="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [NGÀYMUAXE], [LOẠIXE], [GIÁTIỀN], [HTTHANHTOÁN], [BỔSUNG] FROM [CHITIETDONHANG]" UpdateCommand="UPDATE [CHITIETDONHANG] SET [NGÀYMUAXE] = @NGÀYMUAXE, [LOẠIXE] = @LOẠIXE, [GIÁTIỀN] = @GIÁTIỀN, [HTTHANHTOÁN] = @HTTHANHTOÁN, [BỔSUNG] = @BỔSUNG WHERE [STT] = @STT">
        <DeleteParameters>
            <asp:Parameter Name="STT" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STT" Type="Int32" />
            <asp:Parameter DbType="Date" Name="NGÀYMUAXE" />
            <asp:Parameter Name="LOẠIXE" Type="String" />
            <asp:Parameter Name="GIÁTIỀN" Type="String" />
            <asp:Parameter Name="HTTHANHTOÁN" Type="String" />
            <asp:Parameter Name="BỔSUNG" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="NGÀYMUAXE" />
            <asp:Parameter Name="LOẠIXE" Type="String" />
            <asp:Parameter Name="GIÁTIỀN" Type="String" />
            <asp:Parameter Name="HTTHANHTOÁN" Type="String" />
            <asp:Parameter Name="BỔSUNG" Type="String" />
            <asp:Parameter Name="STT" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    <uc1:ContactForm_Edit runat="server" ID="ContactForm_Edit" />
   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1 %>" DeleteCommand="DELETE FROM [CHITIETDONHANG] WHERE [STT] = @STT" InsertCommand="INSERT INTO [CHITIETDONHANG] ([STT], [NGÀYMUAXE], [LOẠIXE], [GIÁTIỀN], [HTTHANHTOÁN], [BỔSUNG]) VALUES (@STT, @NGÀYMUAXE, @LOẠIXE, @GIÁTIỀN, @HTTHANHTOÁN, @BỔSUNG)" ProviderName="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [NGÀYMUAXE], [LOẠIXE], [GIÁTIỀN], [HTTHANHTOÁN], [BỔSUNG] FROM [CHITIETDONHANG]" UpdateCommand="UPDATE [CHITIETDONHANG] SET [NGÀYMUAXE] = @NGÀYMUAXE, [LOẠIXE] = @LOẠIXE, [GIÁTIỀN] = @GIÁTIỀN, [HTTHANHTOÁN] = @HTTHANHTOÁN, [BỔSUNG] = @BỔSUNG WHERE [STT] = @STT">
        <DeleteParameters>
            <asp:Parameter Name="STT" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STT" Type="Int32" />
            <asp:Parameter DbType="Date" Name="NGÀYMUAXE" />
            <asp:Parameter Name="LOẠIXE" Type="String" />
            <asp:Parameter Name="GIÁTIỀN" Type="String" />
            <asp:Parameter Name="HTTHANHTOÁN" Type="String" />
            <asp:Parameter Name="BỔSUNG" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="NGÀYMUAXE" />
            <asp:Parameter Name="LOẠIXE" Type="String" />
            <asp:Parameter Name="GIÁTIỀN" Type="String" />
            <asp:Parameter Name="HTTHANHTOÁN" Type="String" />
            <asp:Parameter Name="BỔSUNG" Type="String" />
            <asp:Parameter Name="STT" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1>Danh sách khách hàng đã mua xe tại cửa hàng Yamaha MotoVietNam trong năm 2019 :</h1><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="991px" Font-Size="X-Large" DataKeyNames="STT" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 21px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="STT" HeaderText="STT" ReadOnly="True" SortExpression="STT" />
            <asp:BoundField DataField="TÊN" HeaderText="TÊN" SortExpression="TÊN" />
            <asp:BoundField DataField="GMAIL" HeaderText="GMAIL" SortExpression="GMAIL" />
            <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1 %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [STT] = @STT" InsertCommand="INSERT INTO [KHACHHANG] ([STT], [TÊN], [GMAIL], [CMND], [SDT], [DIACHI]) VALUES (@STT, @TÊN, @GMAIL, @CMND, @SDT, @DIACHI)" ProviderName="<%$ ConnectionStrings:CSDLTrungNguyenConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [TÊN], [GMAIL], [CMND], [SDT], [DIACHI] FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [TÊN] = @TÊN, [GMAIL] = @GMAIL, [CMND] = @CMND, [SDT] = @SDT, [DIACHI] = @DIACHI WHERE [STT] = @STT">
        <DeleteParameters>
            <asp:Parameter Name="STT" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STT" Type="Int32" />
            <asp:Parameter Name="TÊN" Type="String" />
            <asp:Parameter Name="GMAIL" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="DIACHI" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TÊN" Type="String" />
            <asp:Parameter Name="GMAIL" Type="String" />
            <asp:Parameter Name="CMND" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="STT" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
</asp:Content>

