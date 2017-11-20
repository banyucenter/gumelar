<?php

class Slider extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_slider');
        $this->load->helper('url');
        if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}

	}

  function index(){
		$data['slider'] = $this->m_slider->tampil_data()->result();
		$data['title'] = 'Halaman slider';
        $this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_slider',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');

	}

	



}
