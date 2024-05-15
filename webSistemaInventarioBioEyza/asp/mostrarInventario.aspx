﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mostrarInventario.aspx.cs" Inherits="webSistemaInventarioBioEyza.Html.mostrarInventario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Css/MostrarInventario.css" rel="stylesheet" />
    <link rel="icon" href="../img/ICON BIOOOOO.png" type="image/x-icon" />
    <link rel="stylesheet" href="../Css/bootstrap.min.css" />
    <!-- style css -->
    <link rel="stylesheet" href="../Css/style.css" />
    <title>Mostrar Inventario</title>
</head>
<body>


    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="logo">
                <a href="index.aspx">
                    <img src="../img/icon_BIO-removebg-preview.png" /></a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="index.aspx">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registroCaja.aspx">Agregar Caja</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="retirarCajas.aspx">Retirar Cajas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="consultarRetiros.aspx">Consultar Cajas</a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="editarCaja.aspx">Editar caja</a>
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesión_Click" CssClass="submit-button" />
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">

            <h2 style="text-align: center;">Mostrar Inventario</h2>
            <p>Para buscar una caja, digite el nombre de dicha caja:</p>
            <asp:TextBox ID="txtBuscarCaja" runat="server" CssClass="textbox" ClientIDMode="Static" placeholder="Buscar caja específica..." AutoPostBack="true" OnTextChanged="txtBuscarCaja_TextChanged"></asp:TextBox>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview-edit-row" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id" AutoGenerateDeleteButton="False">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="nombreCaja" HeaderText="Nombre de la Caja" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Fecha de Entrada">
                    <ItemTemplate>
                        <%# Convert.ToDateTime(Eval("fechaEntrada")).ToString("dd/MM/yyyy") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="cantidadCajas" HeaderText="Cantidad de Cajas" />
                    <asp:BoundField DataField="cantidadTotalUnidaes" HeaderText="Cantidad Total de Unidades" ReadOnly="True" />
                    <asp:BoundField DataField="cantidadPorUnidad" HeaderText="Cantidad Por Unidad" />
                    <asp:BoundField DataField="usuario" HeaderText="Usuario" ReadOnly="True" />
                    <asp:BoundField DataField="tipo_inventario" HeaderText="Tipo de Inventario" ReadOnly="True" />
                    
                </Columns>
            </asp:GridView>
            <div style="text-align: center;">
                <br />
                <div style="text-align: center;">
                    <label for="dlTipoInventario">Tipo de Inventario:</label>

                    <asp:DropDownList ID="tipoInventario" runat="server" CssClass="textbox" ClientIDMode="Static">
                        <asp:ListItem Text="Bioeyza" Value="Bioeyza"></asp:ListItem>
                        <asp:ListItem Text="Lote" Value="Lote"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnMostrarInventario" runat="server" Text="Mostrar inventario" CssClass="btn-asd" OnClick="btnMostrarInventario_Click" />
                    <asp:Button ID="btnExportarExcel" runat="server" Text="Exportar Excel" CssClass="btn-asd" OnClick="btnExportarExcel_Click" />
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

