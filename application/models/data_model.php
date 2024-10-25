<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_model extends CI_Model {
    public function getData()
    {
        return $this->db->get('jenis_lomba')->result_array();
    }
    public function getDataById($id)
    {
        return $this->db->get_where('jenis_lomba',['id' => $id])->row_array();
    }
}