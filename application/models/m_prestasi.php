<?php

class M_prestasi extends CI_Model{

  var $tabel = 'tb_prestasi_desa';
  function tampil_data(){
		return $this->db->get('tb_prestasi_desa');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_prestasi_desa');
	}

}
