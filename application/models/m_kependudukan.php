<?php

class M_kependudukan extends CI_Model{

  var $tabel = 'tb_kependudukan';
  function tampil_data(){
		return $this->db->get('tb_kependudukan');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_kependudukan');
  }
  
  function get_kependudukan_byid($id) {
    $this->db->from($this->tabel);
    $this->db->where('id', $id);

    $query = $this->db->get();

    if ($query->num_rows() == 1) {
        return $query->result();
    }
    }

}
