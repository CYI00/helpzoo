package com.project.helpzoo.funding.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.project.helpzoo.funding.model.service.FundingService;
import com.project.helpzoo.funding.model.vo.funding.FundingProject;
import com.project.helpzoo.funding.model.vo.search.FundingSearch;

@Controller
@RequestMapping("/fundingApi/*")
public class FundingApiController {

	
	
	@Autowired
	private FundingService service;
	
	
	@ResponseBody
	@RequestMapping(value =  "selectList" , produces="text/plain;charset=UTF-8")
	public String selectList(@RequestParam(value="cp", required=false, defaultValue = "1") int cp
			,FundingSearch orderSearch) {
	
		
		
		List<FundingProject> fundingList = service.selectList(cp, orderSearch);
		
		
		
		
		
		return null;
	}
	
	
}
