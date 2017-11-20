<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Apbd extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_apbd');
		$this->load->model('m_setting');
        $this->load->helper('url');
        

	}

	public function index()
	{
		$data['apbd'] = $this->m_apbd->tampil_data()->result();
		$data['apbdterbaru'] = $this->m_apbd->tampil_data_terbaru()->result();
		$data['logo'] = $this->m_setting->tampil_data()->result();
		$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/apbd',$data);
		$this->load->view('frontend/footer');


	}
}

