﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace _3B1Arthur7.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string database = "3b1arthur7";
        private static string user = "root";
        private static string password = "";

        private string stringConexao = "SERVER=" + server + "; DATABASE=" + database + "; UID=" + user + "; PWD=" + password;

        public MySqlConnection conexao;

        public void Conectar()
        {
            try
            {
                conexao = new MySqlConnection(stringConexao);
                conexao.Open();
            }
            catch (Exception a)
            {
                throw new Exception("Não foi possivel conectar ao banco de dados" + a.Message);
            }
        }

        public void ExecutarSql(string sql)
        {
            try
            {
                Conectar();
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch (Exception a)
            {
                throw new Exception("Não foi possivel conectar ao banco de dados" + a.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                Conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conexao);
                dados.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a consulta no banco de dados. Erro:" + e.Message);
            }
        }
    }
}