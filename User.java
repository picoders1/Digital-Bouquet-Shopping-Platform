package maakaliflorist.model;

public class User {
	private int Userid;
	private String Name;
	private String Email;
	private String Password;

	public User() {
	}

	public User(int id, String name, String email, String password) {
		this.Userid = id;
		this.Name = name;
		this.Email = email;
		this.Password = password;
	}

	public int getId() {
		return Userid;
	}

	public void setId(int id) {
		this.Userid = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		this.Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		this.Password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + Userid + ", name=" + Name + ", email=" + Email + ", password=" + Password + "]";
	}
	
}
