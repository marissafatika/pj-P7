<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tambah extends CI_Controller {
    public function index()
    {
        $data ['jenis_lomba']=$this->db->get('jenis_lomba')->result_array();
        $this->load->view('template/header');
        $this->load->view('template/menu');
        $this->load->view('tambah',$data);
        $this->load->view('template/footer');
    }
    public function tambah()
    {
        $data =
        [
            //menangkap apun yang kita ketik
            "id_lomba" => $this->input->post('nama_lomba',true),
            "nama_pendaftar" => $this->input->post('nama_pendaftar',true),
            "kelas" => $this->input->post('kelas',true),
            "no_hp" => $this->input->post('no_hp',true),
            "tgl_daftar" => $this->input->post('tgl_daftar',true)
            
        ];
        $this->db->insert('pendaftaran',$data);
        redirect('pendaftaran');
    }
}