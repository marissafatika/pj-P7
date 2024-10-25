<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendaftaran_model extends CI_Model {
    public function getPendaftaran()
    {
        $this->db->select('*');
        $this->db->from('pendaftaran');
        $this->db->join('jenis_lomba','jenis_lomba.id = pendaftaran.id_lomba');
        return $this->db->get()->result_array();
    }
    public function getPendaftaranById($id)
    {
        return $this->db->get_where('pendaftaran',['id' => $id])->row_array();
    }
}