using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _3B1Arthur7.DTO
{
    public class VeiculoDTO
    {
        int id, ano;
        string nome, modelo, placa, fabricante, status;

        public int Id { get => id; set => id = value; }

        public string Nome
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {
                    throw new Exception("O campo nome é obrigatorio");
                }
            }

            get
            {
                return this.nome;
            }
        }

        public int Ano
        {
            set
            {
                if (value != 0)
                {
                    this.ano = value;
                }
                else
                {
                    throw new Exception("O campo ano é obrigatorio");
                }
            }

            get
            {
                return this.ano;
            }
        }

        public string Modelo
        {
            set
            {
                if (value != string.Empty)
                {
                    this.modelo = value;
                }
                else
                {
                    throw new Exception("O campo modelo é obrigatorio");
                }
            }

            get
            {
                return this.modelo;
            }
        }

        public string Placa
        {
            set
            {
                if (value != string.Empty)
                {
                    this.placa = value;
                }
                else
                {
                    throw new Exception("O campo placa é obrigatorio");
                }
            }

            get
            {
                return this.placa;
            }
        }

        public string Fabricante
        {
            set
            {
                if (value != string.Empty)
                {
                    this.fabricante = value;
                }
                else
                {
                    throw new Exception("O campo fabricante é obrigatorio");
                }
            }

            get
            {
                return this.fabricante;
            }
        }

        public string Status
        {
            set
            {
                if (value != string.Empty)
                {
                    this.status = value;
                }
                else
                {
                    throw new Exception("O campo status é obrigatorio");
                }
            }

            get
            {
                return this.status;
            }
        }
    }
}