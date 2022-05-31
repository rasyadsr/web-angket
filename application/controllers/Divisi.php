<?php

class Divisi extends CI_Controller {

    public function __construct()
    {
    parent::__construct();
        $this->load->database();
        $this->load->model('DivisiModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Divisi',
            'divisions' =>  $this->DivisiModel->fetchAll()
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('divisi/index', $data);
        $this->load->view('templates/footer');
    }

    public function detail($id)
    {

        $data = [
            'title' => 'Detail Divisi',
            'division' => $this->DivisiModel->fetchDivisi($id),
            'students' => $this->DivisiModel->fetchDetail($id),
            'jmlSMK' => $this->DivisiModel->getJmlSMK($id),
            'jmlSMA' => $this->DivisiModel->getJmlSMA($id),
            'id_divisi' => $id,
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('divisi/detail', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id, $id_divisi)
    {
        $data = [
            'title' => 'Edit Data Siswa',
            'students' => $this->SiswaModel->fetchById($id),
            'classes' => $this->SiswaModel->fetchKelas(),
            'divisions1' => $this->SiswaModel->fetchDivisi1(),
            'divisions2' => $this->SiswaModel->fetchDivisi1(),
            'divisions3' => $this->SiswaModel->fetchDivisi1(),
            'id_divisi' => $id_divisi,
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('divisi/edit', $data);
        $this->load->view('templates/footer');
    }

    public function update($id, $id_divisi)
    {
        $data = [
            'nama' => $this->input->post('nama'),
            'id_kelas' => $this->input->post('id_kelas'),
            'is_ketua' => $this->input->post('is_ketua'),
            'id_divisi1' => $this->input->post('id_divisi1'),
            'id_divisi2' => $this->input->post('id_divisi2'),
            'id_divisi3' => $this->input->post('id_divisi3'),
            'foto' => $_FILES['foto']['name']
        ];

        $fotoLama = $this->input->post('fotoLama');

        if($data['foto'] == null){    

            $data['foto'] = $fotoLama;
            $where = ['id' => $id];
            $this->SiswaModel->update($where, $data, 'siswa');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data Berhasil di Ubah dengan foto lama
          </div>');
            return redirect('Divisi/detail/'.$id_divisi);
            
        } else {
            
            $config['upload_path']          = './assets/images/students/';
            $config['allowed_types']        = 'gif|jpg|png|JPG';
            $config['max_size']             = 100;
            $config['max_width']            = 1024;
            $config['max_height']           = 768;
            
            $this->load->library('upload', $config);
            
            if ( ! $this->upload->do_upload('foto'))
            {
                $error = array('error' => $this->upload->display_errors());
                // $this->load->view('upload_form', $error);
                echo 'FAILED';
                echo $error;
            }
            else
            {
                $where = ['id' => $id];
                
                $this->SiswaModel->update($where, $data, 'siswa');
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Data Berhasil Diubah dengan foto baru
              </div>');
                return redirect('Divisi');
            }

        }
        
    }

}