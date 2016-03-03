<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SanPham.aspx.vb" Inherits="SanPham" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="Masp" 
                DataSourceID="SqlDataSource1" Width="696px">
                <Columns>
                    <asp:BoundField DataField="Masp" HeaderText="Masp" ReadOnly="True" 
                        SortExpression="Masp" />
                    <asp:BoundField DataField="Maloaisp" HeaderText="Maloaisp" 
                        SortExpression="Maloaisp" />
                    <asp:BoundField DataField="Tensp" HeaderText="Tensp" SortExpression="Tensp" />
                    <asp:BoundField DataField="Soluong" HeaderText="Soluong" 
                        SortExpression="Soluong" />
                    <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
                    <asp:BoundField DataField="LoaiSảnPhẩm_Maloaisp" 
                        HeaderText="LoaiSảnPhẩm_Maloaisp" SortExpression="LoaiSảnPhẩm_Maloaisp" />
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Masp" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel1" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                Maloaisp:
                <asp:TextBox ID="MaloaispTextBox" runat="server" 
                    Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:
                <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:TextBox ID="LoaiSảnPhẩm_MaloaispTextBox" runat="server" 
                    Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Masp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="MaspTextBox" runat="server" Text='<%# Bind("Masp") %>' />
                <br />
                Maloaisp:
                <asp:TextBox ID="MaloaispTextBox" runat="server" 
                    Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TenspTextBox" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:&nbsp;&nbsp;
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:TextBox ID="LoaiSảnPhẩm_MaloaispTextBox" runat="server" 
                    Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Masp:
                <asp:Label ID="MaspLabel" runat="server" Text='<%# Eval("Masp") %>' />
                <br />
                Maloaisp:
                <asp:Label ID="MaloaispLabel" runat="server" Text='<%# Bind("Maloaisp") %>' />
                <br />
                Tensp:
                <asp:Label ID="TenspLabel" runat="server" Text='<%# Bind("Tensp") %>' />
                <br />
                Soluong:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                LoaiSảnPhẩm_Maloaisp:
                <asp:Label ID="LoaiSảnPhẩm_MaloaispLabel" runat="server" 
                    Text='<%# Bind("LoaiSảnPhẩm_Maloaisp") %>' />
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
            ConnectionString="<%$ ConnectionStrings:Hungvpd01274_ASSConnectionString2 %>" 
            DeleteCommand="DELETE FROM [SảnPhẩm] WHERE [Masp] = @Masp" 
            InsertCommand="INSERT INTO [SảnPhẩm] ([Masp], [Maloaisp], [Tensp], [Soluong], [Mota], [LoaiSảnPhẩm_Maloaisp]) VALUES (@Masp, @Maloaisp, @Tensp, @Soluong, @Mota, @LoaiSảnPhẩm_Maloaisp)" 
            SelectCommand="SELECT * FROM [SảnPhẩm]" 
            UpdateCommand="UPDATE [SảnPhẩm] SET [Maloaisp] = @Maloaisp, [Tensp] = @Tensp, [Soluong] = @Soluong, [Mota] = @Mota, [LoaiSảnPhẩm_Maloaisp] = @LoaiSảnPhẩm_Maloaisp WHERE [Masp] = @Masp">
            <DeleteParameters>
                <asp:Parameter Name="Masp" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Masp" Type="String" />
                <asp:Parameter Name="Maloaisp" Type="String" />
                <asp:Parameter Name="Tensp" Type="String" />
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="Mota" Type="String" />
                <asp:Parameter Name="LoaiSảnPhẩm_Maloaisp" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Maloaisp" Type="String" />
                <asp:Parameter Name="Tensp" Type="String" />
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="Mota" Type="String" />
                <asp:Parameter Name="LoaiSảnPhẩm_Maloaisp" Type="String" />
                <asp:Parameter Name="Masp" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
