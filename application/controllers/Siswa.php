<?php 

class Siswa extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database(); 
        $this->load->model('SiswaModel');  
    }

    public function index($page = null)
    {
        $jumlah = $this->SiswaModel->getJmlSiswa();
        $per_halaman = 10;

        if ($page == null) {
            $offset = 0;
        } else {
            $offset = ($page * $per_halaman) - $per_halaman;
        }

        // Paginaion
        $this->load->library('pagination');
        $config['base_url'] = base_url('Siswa/index/');
        $config['total_rows'] = $jumlah;
        $config['per_page'] = $per_halaman;
        $config['use_page_numbers'] = true;
        $config['next_link'] = ' Next';
        $config['prev_link'] = 'Previous ';
        $config['num_links'] = 2;
        $config['first_link'] = false;
        $config['last_link'] = false;
        $this->pagination->initialize($config);
        

        $data = [
            'title' => 'Siswa',
            'students' => $this->SiswaModel->fetchAll($per_halaman, $offset),
            'pagination' => $this->pagination->create_links()
        ];
        
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('siswa/index', $data);
        $this->load->view('templates/footer');
    }

    public function detail($id)
    {
        $data = [
            'title' => 'Detail Siswa',
            'students' => $this->SiswaModel->fetchById($id),
            'profiles' => $this->SiswaModel->getProfile($id)
        ];
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('siswa/detail', $data);
        $this->load->view('templates/footer');
    }

    public function create()
    {
        $data = [
            'title' => 'Tambah Data Siswa',
            'divisions' => $this->SiswaModel->fetchDivisi1(),
            'classes' => $this->SiswaModel->fetchKelas()
        ];
        
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('siswa/create', $data);
        $this->load->view('templates/footer');
    }

    public function store()
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
            var_dump($error);
        }
        else
        {
            
            $this->SiswaModel->store($data, 'siswa');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data Berhasil di Tambahkan
            </div>');
            return redirect('Siswa');
        }

    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Data Siswa',
            'students' => $this->SiswaModel->fetchById($id),
            'classes' => $this->SiswaModel->fetchKelas(),
            'divisions1' => $this->SiswaModel->fetchDivisi1(),
            'divisions2' => $this->SiswaModel->fetchDivisi1(),
            'divisions3' => $this->SiswaModel->fetchDivisi1(),
            'profiles' => $this->SiswaModel->getProfile($id)
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('siswa/edit', $data);
        $this->load->view('templates/footer');
    }

    public function update($id)
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
            return redirect('Siswa');
            
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
                return redirect('Siswa');
            }

        }
        
    }

    public function delete($id)
    {
        $where = ['id' => $id];
        $this->SiswaModel->delete($where, 'siswa');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Data Berhasil Dihapus
      </div>');
        return redirect('Siswa');
    }

}