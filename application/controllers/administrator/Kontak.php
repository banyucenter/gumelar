<?php

class Kontak extends CI_Controller{

	function __construct(){
		parent::__construct();
		
		$this->load->model('m_kontak');
        $this->load->helper('url');
        if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}

	}

  function index(){
		$data['kontak'] = $this->m_kontak->tampil_data()->result();
		$data['title'] = 'Halaman Kontak';
    	$this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_kontak',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');

	}

	function tambah(){
		
		$data['title'] = 'Halaman kontak';
    	$this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_kontak_input',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');


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
        redirect('administrator/kontak/index');
        }

	

	function edit($id){
		$where = array('id' => $id);
		$data['kontak'] = $this->m_kontak->edit_data($where,'tb_kontak_masuk')->result();
		
		$data['title']='Halaman Edit Kontak';
		$this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_kontak_edit',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');
  
	  }

	  function update(){
        $id = $this->input->post('id');
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
        
        $where = array(
        'id' => $id);
        
        $this->m_kontak->update_data($where,$data,'tb_kontak_masuk');
        redirect('administrator/kontak/index');
        }
  
	 

	function hapus($id_kontak){
		$where = array('id' => $id_kontak);
		$this->m_kontak->hapus_data($where,'tb_kontak_masuk');
		redirect('administrator/kontak/index');
	}

	

}
