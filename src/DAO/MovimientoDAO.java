package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

import Entidad.Movimiento;

public class MovimientoDAO {
	
		private String host = "jdbc:mysql://localhost:3306/";
		private String user = "root";
		private String pass = "root";
		private String dbName = "db_banco";
	
		public void AltaMovimiento(Movimiento movimiento,String fecha) {
			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			Connection cn = null;
			  try
			  {
				  
				 cn = DriverManager.getConnection(host+dbName, user,pass);
				 CallableStatement cst = cn.prepareCall("CALL SP_AgregarMovimiento(?,?,?,?)");
				 cst.setDate(1, java.sql.Date.valueOf(fecha));
				 cst.setString(2,movimiento.getDetalle());
				 cst.setInt(3,movimiento.getIdMovimiento());
				 cst.setBoolean(4,movimiento.isEstado());
				 cst.execute();   
			  }
			  catch (Exception e) {
				e.printStackTrace();
			  }
		}

}
