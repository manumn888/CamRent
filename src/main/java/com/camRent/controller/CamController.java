package com.camRent.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.camRent.model.LoginDetails;
import com.camRent.model.RentDetails;
import com.camRent.service.CamService;

@RestController
public class CamController {
	
	@Autowired
	CamService camService;
	
	@GetMapping("/")
	public ModelAndView loginPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("LoginPage");
		return modelAndView;
	}
	
	@PostMapping("/homePage") //@RequestParam("userid") String id,@RequestParam("password") String pass
	public ModelAndView homePage(LoginDetails loginDetails, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		String page = "LoginPage";
		
		if (session.getAttribute("logout") != null) {
			session.removeAttribute("logout");
		}else {
			boolean result = camService.validateLogin(loginDetails.getUserid(), loginDetails.getPassword());

			if (result) {
				session.setAttribute("user", "user");
				page = "HomePage";
			} else {
				modelAndView.addObject("validation", "false");
			}
		}
		modelAndView.setViewName(page);
		return modelAndView;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		
		session.removeAttribute("user");
		session.setAttribute("logout", "true");
		//session.setAttribute("logout1", "true");
		ModelAndView modelAndView = homePage(null, session); //new ModelAndView("LoginPage");
		return modelAndView;
	}
	
	@GetMapping("/home")
	public ModelAndView home(HttpSession session) {
		
		ModelAndView modelAndView = new ModelAndView("HomePage");
		
//		if (session.getAttribute("logout1") != null) {
//
//		} else {
//			session.setAttribute("user", "user");
//		}
		
		return modelAndView;
	}
	
	@GetMapping("/viewDetails")
	public ModelAndView viewDetails() {
		 
		ModelAndView modelAndView = new ModelAndView();
		
		List<RentDetails> details = camService.getRecords();
		
		int totalAmount = camService.fetchToatlAmount();
		
		modelAndView.setViewName("ViewDetails");
		modelAndView.addObject("list",details);
		modelAndView.addObject("total",totalAmount);
		
		return modelAndView;
	}
	
	@GetMapping("/amountDetails")
	public ModelAndView amountDetails() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		String[] names = {"KempeGowda", "Manu", "Manoj", "Naveen"};
		ArrayList<Integer> amount = new ArrayList<Integer>();
		
		for(String name : names) {
			amount.add(camService.fetchAmount(name));
		}
		
		modelAndView.setViewName("AmountDetails");
		modelAndView.addObject("amount", amount);

		return modelAndView;
	}
	
	@GetMapping("/newRecord")
	public ModelAndView newRecord() {
		
		ModelAndView modelAndView = new ModelAndView("NewDetails");
		return modelAndView;
	}
	
	@PostMapping("/saveRecord")
	public ModelAndView saveRecord(@ModelAttribute("rentDetails") RentDetails rentDetails) {
		
		boolean result = camService.save(rentDetails);
		ModelAndView modelAndView = new ModelAndView("HomePage");
		
		String message = "";
		
		if(result) {
			message = "Saved Successfully...";
		}else {
			message = "Saving Details Failed...";
		}
		
		modelAndView.addObject("result",message);
		modelAndView.addObject("save", "true");
		
		return modelAndView;
	}
}
