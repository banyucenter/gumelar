<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petawilayah extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_petawilayah');
		$this->load->model('m_setting');
        $this->load->helper('url');
        

	}

	public function index()
	{
		$data['petawilayah'] = $this->m_petawilayah->tampil_data()->result();
		$data['logo'] = $this->m_setting->tampil_data()->result();
		$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/petawilayah',$data);
		$this->load->view('frontend/footer');


	}
}

