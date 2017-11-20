<?php

class M_apbd extends CI_Model{

  var $tabel = 'tb_apbd';
  function tampil_data(){
		return $this->db->get('tb_apbd');
  }

  function tampil_data_terbaru(){
		return $this->db->get('v_apbd');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_apbd');
  }
  
  function get_apbd_byid($id) {
    $this->db->from($this->tabel);
    $this->db->where('id', $id);

    $query = $this->db->get();

    if ($query->num_rows() == 1) {
        return $query->result();
    }
    }

}
