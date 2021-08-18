<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="_3B1Arthur7.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Veiculo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
        crossorigin="anonymous">
    <link rel="stylesheet" href="style.css" />
</head>
<body>
     <form id="form1" runat="server">

        <section class="d-flex justify-content-center">
            <div class="form-container">

                <h1 class="title">Cadastro de Veículo</h1>

                <div class="mainBody">

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="name" CssClass="form-label" runat="server" Text="Nome: " />
                        <asp:TextBox ID="name" type="text" CssClass="ms-2 form-control" runat="server" />
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="model" CssClass="form-label" runat="server" Text="Modelo: " />
                        <asp:TextBox ID="model" type="text" CssClass="ms-2 form-control" runat="server" />
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="plate" CssClass="form-label" runat="server" Text="Placa: " />
                        <asp:TextBox ID="plate" type="text" CssClass="ms-2 form-control" runat="server" />
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="manufacturer" CssClass="form-label" runat="server" Text="Fabricante: " />
                        <asp:TextBox ID="manufacturer" type="text" CssClass="ms-2 form-control" runat="server" />
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="year" CssClass="form-label" runat="server" Text="Ano: " />
                        <asp:TextBox type="number" ID="year" CssClass="ms-2 form-control" runat="server" />
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <asp:Label for="status" class="form-label" runat="server" Text="Status: " />
                        <asp:DropDownList ID="status" type="text" CssClass="ms-2 form-select" runat="server">
                            <asp:ListItem Text="ALugado" Value="Alugado" />
                            <asp:ListItem Text="Disponivel" Value="Disponivel" />
                        </asp:DropDownList>
                    </div>

                    <asp:Label runat="server" ForeColor="Red" ID="msgError" />

                    <div class="d-flex justify-content-center mt-5">
                        <asp:Button ID="btnSalvar" Text="Salvar" CssClass="btn btn-outline-success" OnClick="btnSalvar_Click" runat="server" Width="300px" />
                    </div>
                </div>
            </div>
        </section>

        <hr class="mt-5" />

        <section class="mt-5 container">

            <div class="d-flex justify-content-end">
                <div class="d-flex align-items-center mb-3 w-50">
                    <asp:Label for="search" class="form-label me-3" runat="server" Text="Search: " />
                    <asp:DropDownList ID="search" CssClass="form-select" runat="server" OnSelectedIndexChanged="search_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem Text="Todos" />
                        <asp:ListItem Text="ALugado" Value="Alugado" />
                        <asp:ListItem Text="Disponivel" Value="Disponivel" />
                    </asp:DropDownList>
                </div>
            </div>

            <asp:GridView 
                ID="veiculosList" 
                AutoGenerateColumns="false" 
                DataKeyNames="id" 
                SelectedIndex="1" 
                runat="server" 
                CssClass="w-100 table">

                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Código" />
                    <asp:BoundField DataField="nome" HeaderText="Nome" />
                    <asp:BoundField DataField="modelo" HeaderText="Modelo" />
                    <asp:BoundField DataField="placa" HeaderText="Placa" />
                    <asp:BoundField DataField="fabricante" HeaderText="Fabricante" />
                    <asp:BoundField DataField="ano" HeaderText="Ano" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </section>

    </form>
</body>
</html>
