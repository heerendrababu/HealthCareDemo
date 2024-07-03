package com.shivintech.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shivintech.dao.BookedDoctorDataAccess;
import com.shivintech.dao.DoctorDataAccess;
import com.shivintech.model.BookedDoctor;
import com.shivintech.model.Doctor;

@Controller
public class BookingController 
{

	// Getting Doctor Details
	  @RequestMapping(value = "BookingController" , params = "book")
	  public ModelAndView getAllDoctorDetails()
	  {
		  ModelAndView mv = new ModelAndView();
		  
		  DoctorDataAccess da = new DoctorDataAccess();
		  ArrayList<Doctor> al = da.getAllDoctorDetails();
		 
		  // used for sending above ArrayList data to frontEnd. which is used by getAttribute()
		  mv.addObject("doctorlist",al); // getAttribute uses("variable", object);
		  mv.setViewName("BookDoctor.jsp");
		  
		  return mv;
			  
		  }
	  
	//     Getting Doctor Details
		  @RequestMapping(value = "bookAppointment" , params = "bookDoctor")
		  public ModelAndView getBookedDoctorDetails(HttpServletRequest request)
		  {
			  ModelAndView mv = new ModelAndView();
			        
			  String doctorId = request.getParameter("doctorId");
			  String doctorName = request.getParameter("doctorName");
			  String doctorProfession = request.getParameter("doctorProfession");
			  String doctorMobile = request.getParameter("doctorMobile");
			  String appointmentDate = request.getParameter("appointmentDate");
			  BookedDoctor b = new BookedDoctor(doctorId,doctorName,doctorProfession,doctorMobile,appointmentDate);
			  BookedDoctorDataAccess.BookedDoctorData(b);	
			 
			   mv.addObject("appointmentSuccess", "Appointment Booked Successfully: ");
               mv.setViewName("Success.jsp");
			  
			  
			  return mv;
				  
			 }
		  
		
			  
		  }

	  

