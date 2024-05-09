package com.spring1.test;

import com.spring1.dto.Shop;

public class InjectionAnnotation2 {
	private Shop shopBean1;
	
//	public InjectionAnnotation2() {}	//기본 생성자 굳이 만들 필요 X(다 매개변수 받아서)
	public InjectionAnnotation2(Shop shopBean1) {
		super();
		this.shopBean1 = shopBean1;
	}

	public Shop getShopBean1() {
		return shopBean1;
	}

	public void setShopBean1(Shop shopBean1) {
		this.shopBean1 = shopBean1;
	}

	@Override
	public String toString() {
		return "InjectionAnnotation2 []";
	}
	
}
