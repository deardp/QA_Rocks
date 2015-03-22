package dto;

import javax.annotation.Generated;

import org.codehaus.jackson.annotate.JsonProperty;
import org.codehaus.jackson.annotate.JsonPropertyOrder;

@Generated("com.googlecode.jsonschema2pojo")
@JsonPropertyOrder({
	"email",
	"password",
	"fName",
	"lName"
})
public class UserDataObject {
	
	public UserDataObject() {
		
	}
	
	@JsonProperty("email")
	private String email;
	
	@JsonProperty("email")
	public String getEmail() {
		return email;
	};
	
	@JsonProperty("email")
	public String setEmail(String email) {
		return this.email = email;
	};
	
	@JsonProperty("password")
	private String password;
	
	@JsonProperty("password")
	public String getPassword() {
		return password;
	};
	
	@JsonProperty("password")
	public String setPassword(String password) {
		return this.password = password;
	}
	
	@JsonProperty("fName")
	private String fName;
	
	@JsonProperty("fName")
	public String getFname() {
		return fName;
	};
	
	@JsonProperty("fName")
	public String setFname(String fName) {
		return this.fName = fName;
	}
	
	@JsonProperty("lName")
	private String lName;
	
	@JsonProperty("lName")
	public String getLname() {
		return lName;
	};
	
	@JsonProperty("lName")
	public String setLname(String lName) {
		return this.lName = lName;
}
	
}
