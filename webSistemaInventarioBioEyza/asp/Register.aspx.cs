﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webSistemaInventarioBioEyza.Html
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string contraseña = txtContraseña.Text;
            string confirmarContraseña=txtConfirmPass.Text;


            string connectionString = "Server=localhost;Database=SistemaInventario;Uid=root;Pwd=admin54321;";


            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {

                connection.Open();


                using (MySqlCommand command = new MySqlCommand("Registro", connection))
                {

                    command.CommandType = CommandType.StoredProcedure;


                    command.Parameters.AddWithValue("p_usuario", nombre);
                    command.Parameters.AddWithValue("p_pass", contraseña);
                    command.Parameters.AddWithValue("p_pass_confirm", confirmarContraseña);


                    command.ExecuteNonQuery();
                }

                Response.Redirect("index.aspx");
            }
        }
    }
}