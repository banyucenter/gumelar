<?php

class M_kepaladesa extends CI_Model{

  var $tabel = 'tb_profil_kepaladesa';
  function tampil_data(){
		return $this->db->get('tb_profil_kepaladesa');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_profil_kepaladesa');
	}

}
