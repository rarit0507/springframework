package com.spring1.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring1.dto.Store;
import com.spring1.vo.Maker;

@RestController		//Model(view)일 필요없음	//@ResponseBody + @Controller: JSOB으로 출력
@RequestMapping("/api/")
public class RESTfulController {

	@GetMapping("api1.do")
	public int getApi1() {
		Store store = new Store(1,"EMart");
		return 1004;
	}
	
	@GetMapping("api2.do")
	public Store getApi2() {
		Store store = new Store(1,"EMart");
		return store;
	}
	
	@GetMapping("api3.do")	//요소 여러 개 추가 리스트 => [{},{},{}...]
	public List<Store> getApi3() {
		Store store1 = new Store(1, "Emart");
		Store store2 = new Store(2, "HomePlus");
		Store store3 = new Store(3, "Costco");
		List<Store> storeList = new ArrayList<>();
		storeList.add(store1);
		storeList.add(store2);
		storeList.add(store3);
		return storeList;
	}
	
	@GetMapping("api4.do")	//요소 여러 개 추가 리스트 => [{},{},{}...]
	public Maker getApi4() {
		Store store1 = new Store(1, "Emart");
		Store store2 = new Store(2, "HomePlus");
		Store store3 = new Store(3, "Costco");
		ArrayList<Store> storeList = new ArrayList<>();
		storeList.add(store1);
		storeList.add(store2);
		storeList.add(store3);
		Maker maker = new Maker("GreateMall", 1, storeList);
		return maker;
	}
	
	@PostMapping("api5.do")	
	public Store postApi5(@RequestBody Store store) {
		storeService.insStore(store);
		return store;
	}
}

