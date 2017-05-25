package edu.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.product.domain.Address;
import edu.mum.product.domain.Person;
import edu.mum.restclient.PersonRestClient;

@Controller
public class PersonController {
	
	@Autowired
	PersonRestClient personRestClient;
	

	@RequestMapping(value="/addPerson", method = RequestMethod.GET)
	public String getCreate(){
		return "createperson";
	}
	
	@RequestMapping(value="/addPerson", method = RequestMethod.POST)
	public String create(String firstName, String lastName, String email, String phone, String city, String state, String zipcode,String country, String enable){
		Address newAdd = new Address(city, state, country, zipcode);
		Person newP = new Person(firstName,lastName, email, newAdd, phone, (enable.equals("1")? true : false));
		newP.setFirstName(firstName);
		newP.setLastName(lastName);
		newP.setEmail(email);
		newP.setPhone(phone);
		personRestClient.create(newP);
		
		return "redirect:/personlist";
	}
	
	@RequestMapping(value="/editPerson", method=RequestMethod.GET)
	public String getEditPerson(long id, Model model){
		model.addAttribute("person", personRestClient.getPerson(id));
		return "editperson";
	}
	
	@RequestMapping(value="/editPerson", method=RequestMethod.POST)
	public String editPerson(long id, String firstName, String lastName, String email, String phone, String city, String state, String zipcode, String country, boolean enable){
		Person per = personRestClient.getPerson(id);
		Address newAdd = new Address(city, state, country, zipcode);
		per.setFirstName(firstName);
		per.setLastName(lastName);
		per.setEmail(email);
		per.setPhone(phone);
		per.setEnable(enable);
		per.setAddress(newAdd);
		personRestClient.update(per);
		return "redirect:/personlist";
	}
	
	@RequestMapping(value="/personlist", method = RequestMethod.GET)
	public String getAllPerson(Model model){
		model.addAttribute("persons", personRestClient.getAllPerson());		
		return "personlist";
	}
}
