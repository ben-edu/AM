<?php
/**
* 
*/
class Panel extends CI_Controller
{

   function index()
   {
   	  $this->load->view('header_panel');
   	  $this->load->view('menu_panel');
   	  $this->load->view('panel_panel');
      $this->load->view('Empleado');
      $this->load->view('footer_panel');
   }

   function cita()
   {
   	 $this->load->view('header_panel');
   	 $this->load->view('menu_panel');
   	 $this->load->view('panel_panel');
   	 $this->load->view('Cita');
   	 $this->load->view('footer_panel');
   }

   function consultorio()
   {
   	 $this->load->view('header_panel');
   	 $this->load->view('menu_panel');
   	 $this->load->view('panel_panel');
   	 $this->load->view('Consultorio');
   	 $this->load->view('footer_panel');
   }

   function doctor()
   {
   	 $this->load->view('header_panel');
   	 $this->load->view('menu_panel');
   	 $this->load->view('panel_panel');
   	 $this->load->view('Doctor');
   	 $this->load->view('footer_panel');
   }

    function paciente()
   {
   	 $this->load->view('header_panel');
   	 $this->load->view('menu_panel');
   	 $this->load->view('panel_panel');
   	 $this->load->view('Paciente');
   	 $this->load->view('footer_panel');
   }


  // function login(){
   		//$this->load->view('login');
   //}
}