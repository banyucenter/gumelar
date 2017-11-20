<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_artikel');
		$this->load->model('m_setting');
		$this->load->model('m_slider');
		$this->load->model('m_apbd');
		$this->load->model('m_kependudukan');
		$this->load->model('m_apbd');
		$this->load->model('m_petawilayah');
		$this->load->model('m_sejarah');

		
	}

	public function index()
	{
		$data['artikel'] = $this->m_artikel->tampil_data_featured()->result();
		$data['slider'] = $this->m_slider->tampil_data()->result();
		$data['logo'] = $this->m_setting->tampil_data()->result();
		$data['kependudukan'] = $this->m_artikel->tampil_data_kependudukan()->result();
		$data['apbd'] = $this->m_artikel->tampil_data_apbd()->result();
		$data['apbdterbaru'] = $this->m_apbd->tampil_data_terbaru()->result();
		$data['sejarah'] = $this->m_artikel->tampil_data_sejarah()->result();
		$data['wilayah'] = $this->m_artikel->tampil_data_petawilayah()->result();
		$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/homepage',$data);
		$this->load->view('frontend/footer');


	}

	public function detail_kependudukan($id){ //fungsi detail kategori
		$data['title'] = 'Detail Kependudukan'; //judul title
		$data['kependudukan'] = $this->m_kependudukan->get_kependudukan_byid($id); //query model kategori sesuai id
		$data['logo'] = $this->m_setting->tampil_data()->result();$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/v_detail_kependudukan',$data);
		$this->load->view('frontend/footer');
	}

	public function detail_apbd($id){ //fungsi detail kategori
		$data['title'] = 'Detail APBD'; //judul title
		$data['apbd'] = $this->m_apbd->get_apbd_byid($id); //query model kategori sesuai id
		$data['logo'] = $this->m_setting->tampil_data()->result();$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/v_detail_apbd',$data);
		$this->load->view('frontend/footer');
	}

	public function detail_peta_wilayah($id){ //fungsi detail kategori
		$data['title'] = 'Detail Peta Wilayah'; //judul title
		$data['petawilayah'] = $this->m_petawilayah->get_petawilayah_byid($id); //query model kategori sesuai id
		$data['logo'] = $this->m_setting->tampil_data()->result();$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/v_detail_petawilayah',$data);
		$this->load->view('frontend/footer');
	}

	public function detail_sejarah($id){ //fungsi detail kategori
		$data['title'] = 'Detail Sejarah'; //judul title
		$data['sejarah'] = $this->m_sejarah->get_sejarah_byid($id); //query model kategori sesuai id
		$data['logo'] = $this->m_setting->tampil_data()->result();$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/v_detail_petawilayah',$data);
		$this->load->view('frontend/footer');
	}



}
