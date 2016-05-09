package com;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class MyController {
	String message = "Welcome to Spring MVC!";
	
	@Autowired  
	 private ProductService productService;  
 
	@RequestMapping("/")
	public ModelAndView showMessage()
	 {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("index");

		return mv;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)  
	 public ModelAndView addProduct(@ModelAttribute("command")ProductBean productBean,  
	   BindingResult result) {  
	  Map<String, Object> model = new HashMap<String, Object>();  
	  model.put("products",  prepareListofBean(productService.listProducts()));  
	  return new ModelAndView("add", model);  
	 }  
	
	@RequestMapping(value = "/save", method = RequestMethod.GET)  
	public ModelAndView saveEmployee(@ModelAttribute("command")ProductBean productBean,   
	   BindingResult result) {  
	MobileProduct product = prepareModel(productBean);  
	  productService.addProduct(product);  
	  return new ModelAndView("save");  
	 }  
	
	
	 @RequestMapping(value="/productlist", method = RequestMethod.GET)  
	 public ModelAndView listEmployees( Map<String, Object> model) {  
	  List<MobileProduct> lst=productService.listProducts(); 
	  
	  System.out.println(lst);
	  
	  return new ModelAndView("productlist","prdList", lst);  
	 } 
	 
	 @RequestMapping(value = "/delete", method = RequestMethod.GET)  
	 public ModelAndView editProduct(@ModelAttribute("command")ProductBean productBean,  
	    BindingResult result) {  
	   productService.deleteProduct(prepareModel(productBean));  
	   Map<String, Object> model = new HashMap<String, Object>();  
	   model.put("products", null);  
	   model.put("products",  prepareListofBean(productService.listProducts()));  
	   return new ModelAndView("productlist", model);  
	  }  
	 
	 
	 @RequestMapping(value = "/edit", method = RequestMethod.GET)  
	 public ModelAndView deleteEmployee(@ModelAttribute("command")ProductBean productBean,  
	    BindingResult result) {  
	   Map<String, Object> model = new HashMap<String, Object>();  
	   model.put("product", prepareProductBean(productService.getProduct(productBean.getId())));  
	   model.put("products",  prepareListofBean(productService.listProducts()));  
	   return new ModelAndView("add", model);  
	  }
	
	 

	    @RequestMapping("/edit1/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	        model.addAttribute("person", this.productService.getProduct(id));
	        model.addAttribute("listPersons", this.productService.listProducts());
	        return "add";
	    }
	
	
	
	
	
	
	
	
	
	
	private MobileProduct prepareModel(ProductBean productBean){  
		  MobileProduct mobile = new MobileProduct();  
		  mobile.setId(productBean.getId());  
		  mobile.setName(productBean.getName());  
		  mobile.setPrice(productBean.getPrice());  
		 
		  productBean.setId(null);  
		  return mobile;  
		 }  
	
	private List<ProductBean> prepareListofBean(List<MobileProduct> products){  
		  List<ProductBean> beans = null;  
		  if(products != null && !products.isEmpty()){  
		   beans = new ArrayList<ProductBean>();  
		   ProductBean bean = null;  
		   for(MobileProduct product : products){  
		    bean = new ProductBean();  
		    bean.setId(product.getId());  
		    bean.setName(product.getName());  
		    bean.setPrice(product.getPrice());  
		   
		    beans.add(bean);  
		   }  
		  }  
		  return beans;  
		 } 
	private ProductBean prepareProductBean(MobileProduct product){  
		  ProductBean bean = new ProductBean();  
		  bean.setId(product.getId());  
		  bean.setName(product.getName());  
		  bean.setPrice(product.getPrice());  
		 
		  return bean;  
		 } 
}