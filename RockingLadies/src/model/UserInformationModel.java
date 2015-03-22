package model;

import java.sql.Connection;
import java.util.ArrayList;

import dao.Database;
import dao.UserInformationDao;
import dto.UserDataObject;
import dto.UserObjects;

public class UserInformationModel {

public ArrayList<UserObjects> GetUsers()throws Exception {
	ArrayList<UserObjects> user_objects = null;
	try {
			Database database= new Database();
			Connection connection = database.Get_Connection();
			UserInformationDao project= new UserInformationDao();
			user_objects=project.GetUsers(connection);
	}
	catch (Exception e) {
		throw e;
	}
	return user_objects;
	}

public ArrayList<UserObjects> GetUser(String email)throws Exception {
	ArrayList<UserObjects> user_objects = null;
	try {
			Database database= new Database();
			Connection connection = database.Get_Connection();
			UserInformationDao userDao= new UserInformationDao();
			user_objects=userDao.GetUser(connection, email);
	}
	catch (Exception e) {
		throw e;
	}
	return user_objects;
	}

public int CreateUser(UserObjects userObject)throws Exception {
	int result = 0;
	try {
			Database database= new Database();
			Connection connection = database.Get_Connection();
			UserInformationDao userDao= new UserInformationDao();
			result = userDao.CreateUser(connection, userObject);
	}
	catch (Exception e) {
		throw e;
	}
	return result;
	}

public int Login(UserObjects userObject)throws Exception {
	int result = 0;
	try {
			Database database= new Database();
			Connection connection = database.Get_Connection();
			UserInformationDao userDao= new UserInformationDao();
			result = userDao.CreateUser(connection, userObject);
	}
	catch (Exception e) {
		throw e;
	}
	return result;
	}
}