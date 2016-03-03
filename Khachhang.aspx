<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Khachhang.aspx.vb" Inherits="Khachhang" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #003399">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="MaKH" 
            DataSourceID="SqlDataSource2" style="text-align: center; font-size: large" 
            Width="717px">
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" 
                    SortExpression="MaKH" />
                <asp:BoundField DataField="TênKH" HeaderText="TênKH" SortExpression="TênKH" />
                <asp:BoundField DataField="SốDT" HeaderText="SốDT" SortExpression="SốDT" />
                <asp:BoundField DataField="Điachi" HeaderText="Điachi" 
                    SortExpression="Điachi" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKH" 
            DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" 
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            Width="183px">
            <EditItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TênKH:
                <asp:TextBox ID="TênKHTextBox" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:&nbsp;&nbsp;
                <asp:TextBox ID="SốDTTextBox" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:&nbsp;&nbsp;
                <asp:TextBox ID="ĐiachiTextBox" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <InsertItemTemplate>
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                TênKH:
                <asp:TextBox ID="TênKHTextBox" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:
                <asp:TextBox ID="SốDTTextBox" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:
                <asp:TextBox ID="ĐiachiTextBox" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TênKH:
                <asp:Label ID="TênKHLabel" runat="server" Text='<%# Bind("TênKH") %>' />
                <br />
                SốDT:
                <asp:Label ID="SốDTLabel" runat="server" Text='<%# Bind("SốDT") %>' />
                <br />
                Điachi:
                <asp:Label ID="ĐiachiLabel" runat="server" Text='<%# Bind("Điachi") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Hungvpd01274_ASSConnectionString %>" 
            DeleteCommand="DELETE FROM [Kháchhàng] WHERE [MaKH] = @MaKH" 
            InsertCommand="INSERT INTO [Kháchhàng] ([MaKH], [TênKH], [SốDT], [Điachi]) VALUES (@MaKH, @TênKH, @SốDT, @Điachi)" 
            SelectCommand="SELECT * FROM [Kháchhàng]" 
            UpdateCommand="UPDATE [Kháchhàng] SET [TênKH] = @TênKH, [SốDT] = @SốDT, [Điachi] = @Điachi WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TênKH" Type="String" />
                <asp:Parameter Name="SốDT" Type="String" />
                <asp:Parameter Name="Điachi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TênKH" Type="String" />
                <asp:Parameter Name="SốDT" Type="String" />
                <asp:Parameter Name="Điachi" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
