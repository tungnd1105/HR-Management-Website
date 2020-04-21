package entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@SuppressWarnings("serial")
@Entity
public class staff implements Serializable {
	@Id
	private String id;
	private String name;
	private Boolean gender;
	private String birthday;
	private String avatar;
	private String email;
	private String phone;
	private String salary;
	private String notes;
	@ManyToOne
	@JoinColumn(name = "departid")
	private depart depart;
	@OneToMany(mappedBy = "staff", fetch = FetchType.LAZY)
	private Collection<record> record;
	
	

	public staff() {
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Boolean getGender() {
		return gender;
	}


	public void setGender(Boolean gender) {
		this.gender = gender;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getAvatar() {
		return avatar;
	}


	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}





	public String getSalary() {
		return salary;
	}


	public void setSalary(String salary) {
		this.salary = salary;
	}


	public String getNotes() {
		return notes;
	}


	public void setNotes(String notes) {
		this.notes = notes;
	}


	public depart getDepart() {
		return depart;
	}


	public void setDepart(depart depart) {
		this.depart = depart;
	}


	public Collection<record> getRecord() {
		return record;
	}


	public void setRecord(Collection<record> record) {
		this.record = record;
	}


	@Override
	public String toString() {
		return name;
	}

}
