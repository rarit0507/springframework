package com.spring1.test;

import javax.inject.Inject;

import com.spring1.dao.SampleDAO;
import com.spring1.dao.SampleDAOImpl;

public class TestInject {

	@Inject	//자바에서 제공하는 @Autowired
	private SampleDAO sampleDAO;
	
	public TestInject() {
		this.sampleDAO = new SampleDAOImpl();
	}
}
