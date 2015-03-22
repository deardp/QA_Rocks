package webservice;


import java.io.InputStream;
import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;

import model.UserInformationModel;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import dto.UserDataObject;
import dto.UserObjects;

@Path("/TheHope")
public class UserInformationService {

@GET
@Path("/GetUsers")
@Produces("application/json")
public String getUsers()
	{
		String users = null;
		try 
			{
				ArrayList<UserObjects> userData = null;
				UserInformationModel userModel= new UserInformationModel();
				userData = userModel.GetUsers();
				Gson gson = new Gson();
				System.out.println(gson.toJson(userData));
				users = gson.toJson(userData);
			}
	
		catch (Exception e)
		{
			System.out.println("Exception Error"); //Console 
		}
		return users;
	}

@GET
@Path("/GetUser")
@Produces("application/json")
public String getUser(@QueryParam("email")String email)
	{
		String user = null;
		try 
			{
				ArrayList<UserObjects> userData = null;
				UserInformationModel userModel= new UserInformationModel();
				userData = userModel.GetUser(email);
				Gson gson = new Gson();
				System.out.println(gson.toJson(userData));
				user = gson.toJson(userData);
			}
	
		catch (Exception e)
		{
			System.out.println("Exception Error" + e.getMessage()); //Console 
		}
		return user;
	}

@POST
@Path("/RegisterUser")
public Response createUser(@QueryParam("email")String email,
		@QueryParam("password")String password,
		@QueryParam("fName")String fName,
		@QueryParam("lName")String lName)
	{
	UserObjects userObject = new UserObjects();
	userObject.setEmail(email);
	userObject.setPassword(password);
	userObject.setfName(fName);
	userObject.setlName(lName);
	int result = 0;
	UserInformationModel userModel= new UserInformationModel();
	try {
		result = userModel.CreateUser(userObject);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return Response.status(201).entity("User inserted" + result).build();
	}

@POST
@Path("/Login")
public Response createUser(@QueryParam("email")String email,
		@QueryParam("password")String password)
	{
	UserObjects userObject = new UserObjects();
	userObject.setEmail(email);
	userObject.setPassword(password);
	int result = 0;
	UserInformationModel userModel= new UserInformationModel();
	try {
		result = userModel.CreateUser(userObject);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return Response.status(200).entity(result).build();
	}
}