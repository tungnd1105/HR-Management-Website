package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class record {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private Boolean type;
	private String reason;
	private String date;

	@ManyToOne
	@JoinColumn(name = "staffid")
	private staff staff;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Boolean getType() {
		return type;
	}

	public void setType(Boolean type) {
		this.type = type;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public staff getStaff() {
		return staff;
	}

	public void setStaff(staff staff) {
		this.staff = staff;
	}
}
