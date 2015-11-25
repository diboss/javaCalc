/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.time.Clock;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Seon
 */
@Controller
public class javaCalcController {
    
    @RequestMapping
        public ModelAndView JavaCalc(){
        ModelAndView mV = new ModelAndView("JavaCalc");
        
        return mV;
    }
        
        @RequestMapping("/Calc")
        public ModelAndView JavaCalcCont(){
        ModelAndView mV = new ModelAndView("mainCalc");
        
        return mV;
    }
}
