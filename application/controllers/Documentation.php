<?php 

class Documentation extends CI_Controller {
    
    public function index()
    {
        $data = [
            'title' => 'Our Documentation'
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('documentation/index', $data);
        $this->load->view('templates/footer');
    }

}