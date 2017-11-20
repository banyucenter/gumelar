<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prestasi extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_prestasi');
		$this->load->model('m_setting');
        $this->load->helper('url');
        

	}

	public function index()
	{
		$data['prestasi'] = $this->m_prestasi->tampil_data()->result();
		$data['logo'] = $this->m_setting->tampil_data()->result();
		$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/prestasi',$data);
		$this->load->view('frontend/footer');


	}
}

