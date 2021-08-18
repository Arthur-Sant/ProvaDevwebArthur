using _3B1Arthur7.BLL;
using _3B1Arthur7.DAL;
using _3B1Arthur7.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3B1Arthur7.UI
{
    public partial class index : System.Web.UI.Page
    {

        VeiculoBLL veiculoBLL = new VeiculoBLL();
        VeiculoDTO veiculoDTO = new VeiculoDTO();

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlDAL conection = new MySqlDAL();
            conection.Conectar();
            Response.Write("Conectado no banco");

            ShowSAllData();
        }

        protected void search_SelectedIndexChanged(object sender, EventArgs e)
        {
            string status;
            status = search.SelectedValue;

            if (status != "Todos")
            {
                ShowSelectedData(status);
            }
            else
            {
                ShowSAllData();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                veiculoDTO.Nome = name.Text;
                veiculoDTO.Modelo = model.Text;
                veiculoDTO.Fabricante = manufacturer.Text;
                veiculoDTO.Placa = plate.Text;
                veiculoDTO.Ano = Convert.ToInt32(year.Text);
                veiculoDTO.Status = status.SelectedValue;

                veiculoBLL.Insert(veiculoDTO);

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Veículo registrado com sucesso!!!')", true);

                ClearFields();
            }
            catch (Exception error)
            {
                msgError.Text = "*" + error.Message;
            }
        }

        public void ShowSAllData()
        {
            veiculosList.DataSource = veiculoBLL.FindAll();
            veiculosList.DataBind();
        }

        public void ShowSelectedData(string status)
        {
            veiculosList.DataSource = veiculoBLL.FindByStatus(status);
            veiculosList.DataBind();
        }

        public void ClearFields()
        {
            name.Text = "";
            model.Text = "";
            plate.Text = "";
            manufacturer.Text = "";
            year.Text = "";
        }
    }
}