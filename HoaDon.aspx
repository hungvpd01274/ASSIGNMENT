<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HoaDon.aspx.vb" Inherits="HoaDon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" CssClass="style2" DataKeyNames="MaHD" 
                DataSourceID="SqlDataSource1" Width="707px">
                <Columns>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" 
                        SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" 
                        SortExpression="NgayLap" />
                    <asp:BoundField DataField="Kháchhàng_MaKH" HeaderText="Kháchhàng_MaKH" 
                        SortExpression="Kháchhàng_MaKH" />
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
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MaHD:
                <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:TextBox ID="Kháchhàng_MaKHTextBox" runat="server" 
                    Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:TextBox ID="Kháchhàng_MaKHTextBox" runat="server" 
                    Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaHD:
                <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                MaKH:
                <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                NgayLap:
                <asp:Label ID="NgayLapLabel" runat="server" Text='<%# Bind("NgayLap") %>' />
                <br />
                Kháchhàng_MaKH:
                <asp:Label ID="Kháchhàng_MaKHLabel" runat="server" 
                    Text='<%# Bind("Kháchhàng_MaKH") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Hungvpd01274_ASSConnectionString3 %>" 
            DeleteCommand="DELETE FROM [Hoadon] WHERE [MaHD] = @MaHD" 
            InsertCommand="INSERT INTO [Hoadon] ([MaHD], [MaKH], [NgayLap], [Kháchhàng_MaKH]) VALUES (@MaHD, @MaKH, @NgayLap, @Kháchhàng_MaKH)" 
            SelectCommand="SELECT * FROM [Hoadon]" 
            UpdateCommand="UPDATE [Hoadon] SET [MaKH] = @MaKH, [NgayLap] = @NgayLap, [Kháchhàng_MaKH] = @Kháchhàng_MaKH WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHD" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="Kháchhàng_MaKH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="Kháchhàng_MaKH" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
