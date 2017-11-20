<?php

class M_setting extends CI_Model{

  var $tabel = 'tb_setting';
  function tampil_data(){
		return $this->db->get('tb_setting');
  }
  

    function edit_data($where,$table){
        return $this->db->get_where($table,$where);
     }
   
    function get_update($data,$where){
        $this->db->where($where);
        $this->db->update($this->tabel, $data);
        return TRUE;
     }

     function hapus_data($where,$table){
        $this->db->where($where);
        $this->db->delete($table);
      }

 
}
