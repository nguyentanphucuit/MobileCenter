<%@ Page Title="" Language="C#" MasterPageFile="~/View/Home.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="MobileCenter.View.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label><br />
<asp:GridView ID="gridgiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="IDgiohang" OnRowDataBound="gridgiohang_RowDataBound" Width="530px">
    
        <Columns>
            <asp:TemplateField HeaderText="X&#243;a">
                <ItemTemplate>
                    <asp:CheckBox ID="checkboxDelete" runat="server" />
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sản Phẩm">
                <ItemTemplate>
                <%# Eval("TenSanPham") %>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="textQuantity" runat="server" Text='<%# Eval("SoLuong") %>' Width="93px"></asp:TextBox>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Gi&#225;">
                <ItemTemplate>
                <%# Eval("GiaSanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Th&#224;nh Tiền">
                <ItemTemplate>
                <%# Eval("ThanhTien","{0:###,###,###} VND")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tổng tiền:" Font-Bold="True" ForeColor="#330000"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" ForeColor="#330000"></asp:Label><br />
    <br />
    <div class="container-card"> 
                        <table id="cart" class="table table-hover table-condensed"> 
                         <thead> 
                          <tr> 
                           <th style="width:50%">Tên sản phẩm</th> 
                           <th style="width:10%">Giá</th> 
                           <th style="width:8%">Số lượng</th> 
                           <th style="width:22%" class="text-center">Thành tiền</th> 
                           <th style="width:10%"> </th> 
                          </tr> 
                         </thead> 
                         <tbody><tr> 
                          <td data-th="Product"> 
                           <div class="row"> 
                            <div class="col-sm-2 hidden-xs"><img src="http://hocwebgiare.com/thiet_ke_web_chuan_demo/shopping_cart/images/090.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                            </div> 
                            <div class="col-sm-10"> 
                             <h4 class="nomargin">Sản phẩm 1</h4> 
                             <p>Mô tả của sản phẩm 1</p> 
                            </div> 
                           </div> 
                          </td> 
                          <td data-th="Price">200.000 đ</td> 
                          <td data-th="Quantity"><input class="form-control text-center" value="1" type="number">
                          </td> 
                          <td data-th="Subtotal" class="text-center">200.000 đ</td> 
                          <td class="actions" data-th="">
                           <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                           </button> 
                           <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                           </button>
                          </td> 
                         </tr> 
                         <tr> 
                          <td data-th="Product"> 
                           <div class="row"> 
                            <div class="col-sm-2 hidden-xs"><img src="http://hocwebgiare.com/thiet_ke_web_chuan_demo/shopping_cart/images/174.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                            </div> 
                            <div class="col-sm-10"> 
                             <h4 class="nomargin">Sản phẩm 2</h4> 
                             <p>Mô tả của sản phẩm 2</p> 
                            </div> 
                           </div> 
                          </td> 
                          <td data-th="Price">300.000 đ</td> 
                          <td data-th="Quantity"><input class="form-control text-center" value="1" type="number">
                          </td> 
                          <td data-th="Subtotal" class="text-center">300.000 đ</td> 
                          <td class="actions" data-th="">
                           <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                           </button> 
                           <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                           </button>
                          </td> 
                         </tr> 
                         </tbody><tfoot> 
                          <tr class="visible-xs"> 
                           <td class="text-center"><strong>Tổng 200.000 đ</strong>
                           </td> 
                          </tr> 
                          <tr> 
                           <td><a href="http://hocwebgiare.com/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
                           </td> 
                           <td colspan="2" class="hidden-xs"> </td> 
                           <td class="hidden-xs text-center"><strong>Tổng tiền 500.000 đ</strong>
                           </td> 
                           <td><a href="http://hocwebgiare.com/" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
                           </td> 
                          </tr> 
                         </tfoot> 
                        </table>
                       </div>
    <asp:ImageButton ID="ImageButtontieptucmuahang" runat="server" ImageUrl="~/images/button_tiepmua.jpg" OnClick="ImageButtontieptucmuahang_Click" />
    <asp:ImageButton ID="ImageButtoncapnhatthaydoi" runat="server" ImageUrl="~/images/button_capnhat.jpg" OnClick="ImageButtoncapnhatthaydoi_Click" />
    <asp:ImageButton ID="ImageButtonXacnhanthanhtoan" runat="server" ImageUrl="~/images/button_thanhtoan.jpg" OnClick="ImageButtonXacnhanthanhtoan_Click" />
</asp:Content>

