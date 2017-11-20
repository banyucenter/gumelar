<?php

class M_staff extends CI_Model{

  var $tabel = 'tb_staff_desa';
  function tampil_data(){
		return $this->db->get('tb_staff_desa');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_staff_desa');
	}

}
