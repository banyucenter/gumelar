<?php

class M_petawilayah extends CI_Model{

  var $tabel = 'tb_peta_desa';
  function tampil_data(){
		return $this->db->get('tb_peta_desa');
  }
  
  function tampil_data_featured(){
		return $this->db->get('tb_peta_desa');
  }
  
  function get_petawilayah_byid($id) {
    $this->db->from($this->tabel);
    $this->db->where('id', $id);

    $query = $this->db->get();

    if ($query->num_rows() == 1) {
        return $query->result();
    }
    }

}
