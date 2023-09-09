package net.javaguides.order.model;
//private variable
public class Order {
	private int id;
	private String sendername;
	private String senderaddress;
	private String senderphone;
	private String recipientname;
	private String recipientaddress;
	private String recipientphone;
	private String itemname;
	private String itemweight;
	private String date;
	private String time;
	public int getId() {
		return id;
	}
	//setter or mutator
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
	
	

}
