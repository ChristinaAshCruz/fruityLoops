package com.christinac.fruityloops.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.christinac.fruityloops.Item;

@Controller
public class ItemController {
	
	@RequestMapping("/")
    public String index(Model model) {
        
        ArrayList<Item> fruitList = new ArrayList<Item>();
        fruitList.add(new Item("Kiwi", 1.5));
        fruitList.add(new Item("Mango", 2.0));
        fruitList.add(new Item("Goji Berries", 4.0));
        fruitList.add(new Item("Guava", .75));
        
        // Add fruits your view model here        
        model.addAttribute("fruitList", fruitList);
        
        return "index.jsp";
    }
}