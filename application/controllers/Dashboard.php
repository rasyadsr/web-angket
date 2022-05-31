<?php 

class Dashboard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model('BerandaModel');
        $this->load->model('SiswaModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Dashboard',
            'jmlDivisi' => $this->BerandaModel->getjmlDivisi(),
            'jmlSiswa' => $this->BerandaModel->getjmlSiswa(),
            'jmlSMK' => $this->BerandaModel->getJmlSMK(),
            'jmlSMA' => $this->BerandaModel->getjmlSMA()
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('dashboard', $data);
        $this->load->view('templates/footer');
    }

    public function search($page = null)
    {
        $data = [
            'title' => 'Search',
            'keyword' => $this->input->get('keyword'),
        ];

        $data['results'] = $this->BerandaModel->search($data['keyword']);        

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('search', $data);
        $this->load->view('templates/footer');
    }

}