package com.project.beans;

public class booking {
	
	private int id;
	private String name;
	private String cdate;
	private String oddate;
	private String room;
	private String status;
	private String payment;
	private String total;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getOddate() {
		return oddate;
	}
	public void setOddate(String oddate) {
		this.oddate = oddate;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public booking(int id, String name, String cdate, String oddate, String room, String status, String payment,
			String total) {
		super();
		this.id = id;
		this.name = name;
		this.cdate = cdate;
		this.oddate = oddate;
		this.room = room;
		this.status = status;
		this.payment = payment;
		this.total = total;
	}
	@Override
	public String toString() {
		return "booking [id=" + id + ", name=" + name + ", cdate=" + cdate + ", oddate=" + oddate + ", room=" + room
				+ ", status=" + status + ", payment=" + payment + ", total=" + total + "]";
	}
	public booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	

}
