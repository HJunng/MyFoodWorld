package dao;

import java.util.ArrayList;

import dto.Restaurant;

public class RestaurantRepository {

	private ArrayList<Restaurant> listOfRests = new ArrayList<Restaurant>();
	private static RestaurantRepository instance = new RestaurantRepository();

	public RestaurantRepository() {
		Restaurant rest1 = new Restaurant("1","헤이죠지","서울");
		rest1.setAddress("서울 마포구 동교로46길 42-24 1층 헤이죠지");
		rest1.setCategory("양식");
		rest1.setDelivery(false);
		rest1.setDescription("");
		rest1.setFilename("HeyGeorge.jpg");
		
		Restaurant rest2 = new Restaurant("2","아케미","서울");
		rest2.setAddress("서울특별시 성북구 숭인로2길 82");
		rest2.setCategory("디저트");
		rest2.setDelivery(true);
		rest2.setDescription("");
		rest2.setFilename("achemi.jpg");
		
		Restaurant rest3 = new Restaurant("3","세라즈피자펍","서울");
		rest3.setAddress("서울특별시 금천구 가산디지털1로 168 A동 2층 222");
		rest3.setCategory("양식");
		rest3.setDelivery(true);
		rest3.setDescription("페페로니 피자 순애보가 다녀온 가산디지털단지 맛집");
		rest3.setFilename("sarahsPizza.jpg");
		
		Restaurant rest4 = new Restaurant("4","텅 성수","서울");
		rest4.setAddress("서울특별시 성동구 성수이로 82 2층");
		rest4.setCategory("디저트");
		rest4.setDelivery(false);
		rest4.setDescription("성수동 아더에러 2층 비비드한 색감의 카페");
		rest4.setFilename("tongue.jpg");
		
		Restaurant rest5 = new Restaurant("5","코테츠","서울");
		rest5.setAddress("서울특별시 마포구 독막로3길 28-17 1층 102호");
		rest5.setCategory("일식");
		rest5.setDelivery(false);
		rest5.setDescription("합정 오코노미야끼 퀄리티에 놀란 곳");
		rest5.setFilename("Kotetsu.jpg");
		
		Restaurant rest6 = new Restaurant("6","나무꾼 이야기","인천");
		rest6.setAddress("인천 서구 서곶로 301번길 7");
		rest6.setCategory("한식");
		rest6.setDelivery(false);
		rest6.setDescription("두툼한 생고기를 두번 구운 참숯 비장탄에 구워 멜젓에 찍어두시면 씹는 식감이 좋고 풍부한 육즙을 느낄수 있습니다.");
		rest6.setFilename("namukkun.jpg");
		
		Restaurant rest7 = new Restaurant("7","지금 이곳","인천");
		rest7.setAddress("인천 중구 운남로 82번길 40");
		rest7.setCategory("디저트");
		rest7.setDelivery(false);
		rest7.setDescription("영종도 넓고 예쁘고 빵까지 맛있는 루프탑 카페");
		rest7.setFilename("now.jpg");
		
		listOfRests.add(rest1);
		listOfRests.add(rest2);
		listOfRests.add(rest3);
		listOfRests.add(rest4);
		listOfRests.add(rest5);
		listOfRests.add(rest6);
		listOfRests.add(rest7);
	}
	public static RestaurantRepository getInstance() {
		return instance;
	}
	public void addRestaurant(Restaurant rest) {
		listOfRests.add(rest);
	}
	public ArrayList<Restaurant> getAllRests() {
		return listOfRests;
	}
	public Restaurant getRestById(String restaurantId) {
		Restaurant restById = null;
		
		for(int i=0;i<listOfRests.size();i++) {
			Restaurant rest = listOfRests.get(i);
			if(rest != null && rest.getRestaurantId() != null && rest.getRestaurantId().equals(restaurantId)) {
				restById = rest;
				break;
			}
		}
		return restById;
	}
}
