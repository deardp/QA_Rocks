package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.UserDataObject;
import dto.UserObjects;;

public class UserInformationDao 
	{
	public ArrayList<UserObjects> GetUsers(Connection connection) throws Exception
		{
			ArrayList<UserObjects> userData = new ArrayList<UserObjects>();
				try
					{
						PreparedStatement ps = connection.prepareStatement("SELECT user_email,user_password,user_firstname,user_lastname FROM "
									+ "registered_users");
						ResultSet rs = ps.executeQuery();
						while(rs.next())
						{
							UserObjects userObject = new UserObjects();
							userObject.setEmail(rs.getString("user_email"));
							userObject.setfName(rs.getString("user_firstname"));
							userObject.setlName(rs.getString("user_lastname"));
							userObject.setPassword(rs.getString("user_password"));
							userData.add(userObject);
						}
						return userData;
					}
				catch(Exception e)
				{
					throw e;
				}
		}
	public ArrayList<UserObjects> GetUser(Connection connection, String email) throws Exception
	{
		ArrayList<UserObjects> userData = new ArrayList<UserObjects>();
			try
				{
					PreparedStatement ps = connection.prepareStatement("SELECT user_email,user_password,user_firstname,user_lastname FROM "
									+ "registered_users where user_email='" + email + "'");
					ResultSet rs = ps.executeQuery();
					
					while(rs.next())
					{
						UserObjects userObject = new UserObjects();
						userObject.setEmail(rs.getString("user_email"));
						userObject.setfName(rs.getString("user_firstname"));
						userObject.setlName(rs.getString("user_lastname"));
						userObject.setPassword(rs.getString("user_password"));
						userData.add(userObject);
					}
					return userData;
				}
			catch(Exception e)
			{
				throw e;
			}
	}
	
	public int CreateUser(Connection connection, UserObjects userObject) throws Exception
	{
			try
				{
					PreparedStatement ps = connection.prepareStatement("INSERT into registered_users values('" + userObject.getEmail() + "','" +
				userObject.getPassword() + "','" + userObject.getfName() + "','" + userObject.getlName() + "')");
					
					int record = ps.executeUpdate();
					return record;
				}
			catch(Exception e)
			{
				throw e;
			}
	}
	
	public int Login(Connection connection, UserObjects userObject) throws Exception
	{
			try
				{
					PreparedStatement ps = connection.prepareStatement("INSERT into registered_users values('" + userObject.getEmail() + "','" +
				userObject.getPassword() + "','" + userObject.getfName() + "','" + userObject.getlName() + "')");
					
					int record = ps.executeUpdate();
					return record;
				}
			catch(Exception e)
			{
				throw e;
			}
	}
}