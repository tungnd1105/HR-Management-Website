package entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;



@Entity
public class depart {
	@Id
	private String id;
	private String departname;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "depart")
	private Collection<staff> staff;

	public Collection<staff> getStaff() {
		return staff;
	}

	public void setStaff(Collection<staff> staff) {
		this.staff = staff;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}



	public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	@Override
	public String toString() {
		return departname;
	}
	
	

}
