package com.sep.AuthorizationProviderServer.model;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.SequenceGenerator;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class User implements Serializable {

	private static final long serialVersionUID = -4183179901882702679L;
	
	public User() {}

	@Id
	@SequenceGenerator(name = "USER_ID_GEN", allocationSize = 10)
	@GeneratedValue(generator = "USER_ID_GEN")
	private Long id;

	@Column
	@NotEmpty
	private String name;

	@Column
	@NotEmpty
	private String surname;

	@Column(unique = true)
	@Email
	@NotEmpty
	private String email;
/*
	@Column
	@NotEmpty
	private String password;
*/
	@ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable(name = "users_roles", 
				joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"), 
				inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))
	private Collection<Role> roles;

	public void addRole(Role role){
		roles.add(role);
		role.getUsers().add(this);
	}
	
	public void removeRole(Role role){
		roles.remove(role);
		role.getUsers().remove(this);
	}
	
	@JsonIgnore
	public Collection<Role> getRoles() {
		return roles;
	}

	@JsonProperty
	public void setRoles(Collection<Role> roles) {
		this.roles = roles;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
/*
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
*/
}
