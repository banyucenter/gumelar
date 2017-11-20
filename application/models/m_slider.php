<?php

class M_slider extends CI_Model{

  var $tabel = 'tb_slider';
  function tampil_data(){
		return $this->db->get('tb_slider');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_slider');
	}


 
}
