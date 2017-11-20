<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_tentang');
		$this->load->model('m_setting');
        $this->load->helper('url');
        

	}


	public function index()
	{
		$data['logo'] = $this->m_setting->tampil_data()->result();
		$this->load->view('frontend/header');
		$this->load->view('frontend/menu',$data);
		$this->load->view('frontend/kontak');
		$this->load->view('frontend/footer');


	}


	function tambah_aksi(){
        
        $nama = $this->input->post('nama');
        $email = $this->input->post('email');
        $no_telp = $this->input->post('no_telp');
        $isi_pesan = $this->input->post('isi_pesan');
        
        
        $data = array(
        'nama' => $nama,
        'email' => $email,
        'no_telp' => $no_telp,
        'isi_pesan' => $isi_pesan
        );
        
        $this->m_kontak->input_kontak($data,'tb_kontak_masuk');
        redirect('kontak/index');
        }
}
