using _3B1Arthur7.DAL;
using _3B1Arthur7.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace _3B1Arthur7.BLL
{
    public class VeiculoBLL
    {
        MySqlDAL con = new MySqlDAL();

        public void Insert(VeiculoDTO veiculo)
        {
            string sql = string.Format($@"insert into veiculo values (null, '{veiculo.Nome}', '{veiculo.Modelo}', '{veiculo.Placa}', 
                                                                       '{veiculo.Fabricante}', {veiculo.Ano}, '{veiculo.Status}' );");
            con.ExecutarSql(sql);
        }

        public DataTable FindAll()
        {
            string sql = string.Format($@"select * from veiculo");
            return con.ExecutarConsulta(sql);
        }


        public DataTable FindByStatus(string status)
        {
            string sql = string.Format($@"select * from veiculo where status = '{status}'");
            return con.ExecutarConsulta(sql);
        }
    }
}