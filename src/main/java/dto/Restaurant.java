package dto;

import java.io.Serializable;

public class Restaurant implements Serializable{

	private static final long serialVersionUID=-4274700572038677000L;

	private String restaurantId;
	private String name;			//식당이름
	private String region;			//지역: 서울특별시, 경기도,..
	private String address;			//상세 주소
	private String category;		//식당, 카페
	private String description;		//식당 설명
	private boolean delivery;		//택배 주문 가능 여부
	
	private String filename;		//이미지 파일명
	private int number;			//예약인원수
	
	public Restaurant() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Restaurant(String restaurantId, String name, String region) {
		super();
		// TODO Auto-generated constructor stub
		this.restaurantId = restaurantId;
		this.name = name;
		this.region = region;
	}

	public String getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(String restaurantId) {
		this.restaurantId = restaurantId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String desciption) {
		this.description = desciption;
	}

	public boolean isDelivery() {
		return delivery;
	}

	public void setDelivery(boolean delivery) {
		this.delivery = delivery;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	
	
	
}
