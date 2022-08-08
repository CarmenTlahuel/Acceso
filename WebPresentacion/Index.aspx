<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebPresentacion.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventario Equipos de Computo</title>
    <link href="Content\bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>LABORATORIOS DE COMPUTO</h1>
        <p>&nbsp;</p>
         <h2>Insertar componentes de equipos</h2>
        <%--        <div>
            <nav>
       <ul>
         <li><a href="Mouse.aspx">Mouse</a></li>
         <li><a href="Monitor.aspx">Monitor</a></li>
         <li><a href="Teclado.aspx">Teclado</a></li>
         <li><a href="Gabinete.aspx">Gabinete</a></li>
         <li><a href="RAM.aspx">RAM</a></li>
         <li><a href="Disco.aspx">Disco Duro</a></li>
       </ul>
     </nav>
        </div>--%>
        <br />
        <br />
        <br />
        <br />
        <div>
            <h3>Inserta Mouse</h3>
        <asp:Label ID="Label4" runat="server" Text="Seleciona la marca:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="347px">
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Conectores: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="352px"></asp:TextBox>
        <br />
        <br />
        <br />
            <h3>Inserta Teclado</h3>
                <asp:Label ID="Label6" runat="server" Text="Selecciona la Marca: "></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="335px">
                </asp:DropDownList>
            <br />
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Conectores:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="349px"></asp:TextBox>
            <br />
            <br />
            <br />
                <h3>Inserta gabinete</h3>
                  <asp:Label ID="Label8" runat="server" Text="Inserta el modelo:"></asp:Label>

         &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="330px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Forma: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="327px"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Marca a escoger:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="330px">
            </asp:DropDownList>
                 <br />
            <br />
            <br />
                <h3>Inserta monitor</h3>
                  <asp:Label ID="Label11" runat="server" Text="Selecciona marca:"></asp:Label>
         &nbsp;<asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="293px">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Conectores: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="295px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="Tamaño: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="300px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnIns" runat="server" BackColor="#B9B9FF" ForeColor="#2D0F84" Text="INSERTAR COMPONENTES " OnClick="Button2_Click" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="369px"></asp:TextBox>
         </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />

        <h2>MUESTRA INFO. EQUIPOS</h2>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="No. Inventario: "></asp:Label>
&nbsp;<asp:TextBox ID="TxtInv" runat="server" Height="21px" Width="122px"></asp:TextBox>
&nbsp;<asp:Button ID="BntInv" runat="server" Text="Buscar equipo" BackColor="#00006F" ForeColor="White" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Ver info de equipos: "></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateSelectButton="True">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnEliminar" runat="server" BackColor="#000066" ForeColor="White" Text="Eliminar equipo" />
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Laboratorio: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="181px">
        </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#000046" ForeColor="White" Text="Seleccionar " />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
