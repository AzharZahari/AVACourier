package net.javaguides.usermanagement.model;


public class User {
	protected int id;
	protected String sendername;
	protected String senderaddress;
	protected String senderphone;
	protected String recipientname;
	protected String recipientaddress;
	protected String recipientphone;
	protected String itemname;
	protected String itemweight;
	protected String date;
	protected String time;
	protected String price;
	protected String status;
	
	public User(int id, String sendername, String senderaddress, String senderphone, String recipientname,
			String recipientaddress, String recipientphone, String itemname, String itemweight, String date,
			String time, String price, String status) {
		super();
		this.id = id;
		this.sendername = sendername;
		this.senderaddress = senderaddress;
		this.senderphone = senderphone;
		this.recipientname = recipientname;
		this.recipientaddress = recipientaddress;
		this.recipientphone = recipientphone;
		this.itemname = itemname;
		this.itemweight = itemweight;
		this.date = date;
		this.time = time;
		this.price = price;
		this.status = status;
	}
	
	public User(String sendername, String senderaddress, String senderphone, String recipientname,
			String recipientaddress, String recipientphone, String itemname, String itemweight, String date,
			String time, String price, String status) {
		super();
		this.sendername = sendername;
		this.senderaddress = senderaddress;
		this.senderphone = senderphone;
		this.recipientname = recipientname;
		this.recipientaddress = recipientaddress;
		this.recipientphone = recipientphone;
		this.itemname = itemname;
		this.itemweight = itemweight;
		this.date = date;
		this.time = time;
		this.price = price;
		this.status = status;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSendername() {
		return sendername;
	}
	public void setSendername(String sendername) {
		this.sendername = sendername;
	}
	public String getSenderaddress() {
		return senderaddress;
	}
	public void setSenderaddress(String senderaddress) {
		this.senderaddress = senderaddress;
	}
	public String getSenderphone() {
		return senderphone;
	}
	public void setSenderphone(String senderphone) {
		this.senderphone = senderphone;
	}
	public String getRecipientname() {
		return recipientname;
	}
	public void setRecipientname(String recipientname) {
		this.recipientname = recipientname;
	}
	public String getRecipientaddress() {
		return recipientaddress;
	}
	public void setRecipientaddress(String recipientaddress) {
		this.recipientaddress = recipientaddress;
	}
	public String getRecipientphone() {
		return recipientphone;
	}
	public void setRecipientphone(String recipientphone) {
		this.recipientphone = recipientphone;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getItemweight() {
		return itemweight;
	}
	public void setItemweight(String itemweight) {
		this.itemweight = itemweight;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	}