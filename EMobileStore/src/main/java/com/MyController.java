package com;
 
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.Register.Person;
import com.Register.PersonBean;
import com.Register.PersonService;
 
@Controller
public class MyController {
	String message = "Welcome to Spring MVC!";
	
	@Autowired  
	 private ProductService productService;
	
	@Autowired
	ServletContext req;
 
	@RequestMapping("/")
	public ModelAndView showMessage()
	 {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("index");

		return mv;
	}
	
	/*@RequestMapping(value = "/add", method = RequestMethod.GET)  
	 public ModelAndView addProduct(@ModelAttribute("command")ProductBean productBean,  
	   BindingResult result) {  
	  Map<String, Object> model = new HashMap<String, Object>(); 
	  ModelAndView m=new ModelAndView("add");
	  m.addObject(productBean);
	//  model.put("products",  prepareListofBean(productService.listProducts()));  
	 return m;
	  
	  
	 } */ 
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)  
	 public ModelAndView addProduct(@ModelAttribute("command")Product productBean,  
	   BindingResult result) {  
	//  Map<String, Object> model = new HashMap<String, Object>(); 
	  ModelAndView m=new ModelAndView("add");
	  m.addObject(productBean);
	//  model.put("products",  prepareListofBean(productService.listProducts()));  
	 return m;
	  
	  
	 } 
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)  
	public ModelAndView saveEmployee(@ModelAttribute("command")Product productBean,   
	   BindingResult result)throws UnsupportedEncodingException {  
	
		/*String p=req.getRealPath("/");
		System.out.println(p);
		String path=productBean.getFilePath(p, req.getContextPath());
		
	MobileProduct product = prepareModel(productBean);  
	  productService.addProduct(product);  
	  return new ModelAndView("save");*/
		
		/*MobileProduct product = prepareModel(productBean);  
		 
		System.out.println("$$$$$$$$$$$$$$$$$$$$$");
		System.out.println(""+productBean.getName());
		System.out.println("#######filee"+productBean.getFile1());
		 String p=req.getRealPath("/");
		 System.out.println("hello1");
		// System.out.println("#####"+product.getFilepath().getOriginalFilename());
		  System.out.println("$$$$$$$$$$$$$$$$$$$$$");
		 String path=product.getFilePath(p, req.getContextPath());
		 System.out.println(path);
		 productService.addProduct(product); */ 
		
		// System.out.println(""+productBean.getFpath());
		String p=req.getRealPath("/");
		 System.out.println("hello1");
		// System.out.println("#####"+product.getFilepath().getOriginalFilename());
		  System.out.println("$$$$$$$$$$$$$$$$$$$$$");
		 String path=productBean.getFilePath(p, req.getContextPath());
		 System.out.println(path);
		 System.out.println("@@@@@@@@@@@@"+productBean.getFile1());
		 productService.addProduct(productBean);
		 return new ModelAndView("save");  
	 }  
	
	
	 /*@RequestMapping(value="/productlist", method = RequestMethod.GET)  
	 public ModelAndView listEmployees( Map<String, Object> model) {  
	  //List<MobileProduct> lst=productService.listProducts(); 
	  
	  //System.out.println(lst);
	  
	  //return new ModelAndView("productlist","prdList", lst);
		 
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
	
	
	
	*/
	
	
	
	
	
	
	private MobileProduct prepareModel(ProductBean productBean){  
		  MobileProduct mobile = new MobileProduct();  
		  mobile.setId(productBean.getId());  
		  mobile.setName(productBean.getName());  
		  mobile.setPrice(productBean.getPrice()); 
		  System.out.println(productBean.getName()+"File path:"+productBean.getFile1());
		  mobile.setFile1(productBean.getFile1());
		 
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
		    bean.setFile1(product.getFile1());
		   
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
		  bean.setFile1(product.getFile1());
		 
		  return bean;  
		 }
	
	
	//private String saveDirectory = "C:/ypd/";
	
	
	 @RequestMapping(value = "/fileupload", method = RequestMethod.GET)
	    public String displayForm() {
	        return "fileupload";
	    }
	 /**
	 
	 @RequestMapping(value = "/save1", method = RequestMethod.POST)
	    public String save(
	            @ModelAttribute("uploadForm") FileUploadForm uploadForm,
	                    Model map)throws Exception {
		 
		 System.out.println(map);
		 
		 System.out.println(uploadForm);
	         
	        List<MultipartFile> files = uploadForm.getFiles();
	 
	        List<String> fileNames = new ArrayList<String>();
	        
	        
	         
	        if(null != files && files.size() > 0) {
	            for (MultipartFile multipartFile : files) {
	 
	                String fileName = multipartFile.getOriginalFilename();
	                	System.out.println(fileName);
	                fileNames.add(fileName);
	                
	                
	                //Handle file content - multipartFile.getInputStream()
	                
	                try {
						multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
	 
	            }
	        }
	         
	        map.addAttribute("files", fileNames);
	        System.out.println(map);
	        return "save1";
	    }*/
	 
	 
	 @RequestMapping(value="/save1", method=RequestMethod.POST )
	    public @ResponseBody String multipleSave(@RequestParam("file") MultipartFile[] files){
	    	String fileName = null;
	    	String msg = "";
	    	if (files != null && files.length >0) {
	    		for(int i =0 ;i< files.length; i++){
		            try {
		                fileName = files[i].getOriginalFilename();
		                byte[] bytes = files[i].getBytes();
		                BufferedOutputStream buffStream = 
		                        new BufferedOutputStream(new FileOutputStream(new File("C:/myworkspace/EMobileStore/src/main/webapp/resource/" + fileName)));
		                buffStream.write(bytes);
		                buffStream.close();
		                msg += "You have successfully uploaded " + fileName +"<br/>";
		            } catch (Exception e) {
		                return "You failed to upload " + fileName + ": " + e.getMessage() +"<br/>";
		            }
	    		}
	    		return msg;
	        } else {
	            return "Unable to upload. File is empty.";
	        }
	    }
	 
	 
	 @RequestMapping("/ViewAll")  
	 public ModelAndView getList() {  
	  List<Product> productList = productService.getList();  
	  return new ModelAndView("ViewAll", "productList", productList);  
	 }  
	 
	 @RequestMapping("/delete")
	  public String deleteProduct(@RequestParam("id")String prodid)
	  {
		  productService.deleteProduct(prodid);
		  return "redirect:ViewAll";
		  
	  }
	 @RequestMapping("/Edit")  
	  public ModelAndView editUser(@RequestParam String id,  
	    @ModelAttribute Product product) {  
	   Product productObject =productService.getProductbyId(id); 
	   System.out.println("Edit:"+productObject.getPname());
	   return new ModelAndView("Edit", "productObject", productObject);  
	  }  
	   
	  @RequestMapping("/update")  
	  public ModelAndView updateUser(@ModelAttribute Product product) {  
		  System.out.println(""+product.getProdid());
		  String p=req.getRealPath("/");
		  //System.out.println("*****"+product.getFile1());
		  String path=product.getFilePath(p,req.getContextPath());
	
		  System.out.println("Context path"+req.getContextPath()+"############"+path); 
	   productService.updateProduct(product);  
	   return new ModelAndView("redirect:ViewAll");  
	    
	   
	 }
	  
	  
	  @RequestMapping("/ViewRecord")
	  public ModelAndView getRecord(@RequestParam String id,  
				    @ModelAttribute Product product) {  
				   Product productObject =productService.getProductbyId(id); 
				   System.out.println("view:"+productObject.getPname());
				   return new ModelAndView("ViewRecord", "productObject", productObject);  
				  }  
	  
	  @RequestMapping("/ViewSearch")
	  public ModelAndView getRecords(@RequestParam String subctg,  
				    @ModelAttribute Product product) {  
				   List<Product>p =productService.getList1(subctg); 
				   //System.out.println("view:"+productObject.getPname());
				   return new ModelAndView("ViewSearch", "productList", p);  
				  }  
	  
	 
	 
	 
	 
	 
//---------------------------------Registration----------------------------------------	//
	 
	 
	 @Autowired  
	 private PersonService personService;  

	
	@RequestMapping(value = "/personadd", method = RequestMethod.GET)  
	 public ModelAndView addPerson(@ModelAttribute("command")PersonBean personBean,  
	   BindingResult result) {  
	  Map<String, Object> model = new HashMap<String, Object>();  
	  model.put("persons",  prepareListofBean1(personService.listpersons()));  
	  return new ModelAndView("personadd", model);  
	 }  
	
	@RequestMapping(value = "/personsave", method = RequestMethod.GET)  
	public ModelAndView saveperson(@Valid @ModelAttribute("command")PersonBean personBean,   
	   BindingResult result) { 
		
		System.out.println("personadd method");
Person person = prepareModel1(personBean);  
	 
	  String returnval="personsave";
	  if(result.hasErrors()) {
		 
		              returnval = "personadd";
	  }
	  else
	  {
	  
	  personService.addPerson(person);
	  }

	  
	  return new ModelAndView(returnval);  
	 }  
	
	
	 @RequestMapping(value="/personlist", method = RequestMethod.GET)  
	 public ModelAndView listPerson( Map<String, Object> model) {  
	  List<Person> lst=personService.listpersons(); 
	  
	  System.out.println(lst);
	  
	  return new ModelAndView("personlist","prdList", lst);
	  
	  
	 } 
	 
	 
	 @RequestMapping(value="/Login")
		public String showMessage1()
		 {
			System.out.println("in method");
			return "Login";
		}
	 

	 
	 @RequestMapping(value="/Logout")
		public String logout(HttpSession session)
		 {
			session.invalidate();
			return "Login";
		}
	 
	 
	 
	 
	 
	 @RequestMapping(value="/LoginForm",method=RequestMethod.GET)
	 public String processForm(@Valid PersonBean personBean  ,BindingResult result,Map model)
	 {
		 if (result.hasErrors()) {
				return "LoginForm";
			}
			
			/*
			String userName = "UserName";
			String password = "password";
			loginForm = (LoginForm) model.get("loginForm");
			if (!loginForm.getUserName().equals(userName)
					|| !loginForm.getPassword().equals(password)) {
				return "loginform";
			}
			*/
			boolean userExists = personService.checkLogin(personBean.getUsername(), personBean.getPassword());
			if(userExists){
				model.put("loginForm", personBean);
				return "loginsuccess";
			}else{
				result.rejectValue("userName","invaliduser");
				return "loginform";
			}

		 
		 
		 
		 
	 }
	 
	 
	 /*
	 @RequestMapping(value = "/delete", method = RequestMethod.GET)  
	 public ModelAndView editProduct(@ModelAttribute("command")ProductBean productBean,  
	    BindingResult result) {  
	   productService.deleteProduct(prepareModel(productBean));  
	   Map<String, Object> model = new HashMap<String, Object>();  
	   model.put("products", null);  
	   model.put("products",  prepareListofBean(productService.listProducts()));  
	   return new ModelAndView("productlist", model);  
	  }
	  */  
	 /*
	 
	 
	 @RequestMapping(value = "/edit", method = RequestMethod.GET)  
	 public ModelAndView deleteEmployee(@ModelAttribute("command")ProductBean productBean,  
	    BindingResult result) {  
	   Map<String, Object> model = new HashMap<String, Object>();  
	   model.put("product", prepareProductBean(productService.getProduct(productBean.getId())));  
	   model.put("products",  prepareListofBean(productService.listProducts()));  
	   return new ModelAndView("add", model);  
	  }
	  */
	
	 
/*
	    @RequestMapping("/edit1/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	        model.addAttribute("person", this.productService.getProduct(id));
	        model.addAttribute("listPersons", this.productService.listProducts());
	        return "add";
	    }
*/
	
	
	
	
	
	
	
	
	
	
	private Person prepareModel1(PersonBean personBean){  
		  Person p = new Person();  
		  p.setUsername(personBean.getUsername());  
		  p.setPassword(personBean.getPassword());  
		  p.setEmailId(personBean.getEmailId());  
		  p.setAddress(personBean.getAddress()); 
		  personBean.setUsername(null);  
		  return p;  
		 }  
	
	
	private List<PersonBean> prepareListofBean1(List<Person> persons){  
		  List<PersonBean> beans = null;  
		  if(persons != null && !persons.isEmpty()){  
		   beans = new ArrayList<PersonBean>();  
		   PersonBean bean = null;  
		   for(Person person : persons){  
		    bean = new PersonBean();  
		    bean.setUsername(person.getUsername());  
		    bean.setPassword(person.getPassword());  
		    bean.setEmailId(person.getEmailId());  
		    
		    bean.setAddress(person.getAddress());  
		   
		    beans.add(bean);  
		   }  
		  }  
		  return beans;  
		 } 
	
	

	private PersonBean prepareProductBean1(Person person){  
		 PersonBean bean = new PersonBean();  
		  bean.setUsername(person.getUsername());  
		  bean.setPassword(person.getPassword());  
		  bean.setEmailId(person.getEmailId()); 
		  bean.setAddress(person.getAddress()); 
		  
		  
		 
		  return bean;  
		 } 
	
	
	 @RequestMapping(value="/AboutUs")
		public String showMessage12()
		 {
			
			return "AboutUs";
		}
		
		
	 @RequestMapping(value="/ContactUs")
		public String showMessage123()
		 {
			
			return "ContactUs";
		}
	 
	 
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
}