<?php 

class BerandaModel extends CI_Model {

    public function getjmlDivisi()
    {
        return $this->db->get('divisi1')->num_rows();
    }

    public function getjmlSiswa()
    {
        return $this->db->get('siswa')->num_rows();
    }

    public function getjmlSMK()
    {
        // SELECT * FROM `siswa` JOIN kelas ON kelas.id_kelas = siswa.id_kelas WHERE keterangan = 'SMK';
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->where('keterangan', 'SMK')->get()->num_rows();
    }
    
    public function getjmlSMA()
    {
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->where('keterangan', 'SMA')->get()->num_rows();
    }

    public function search($keyword)
    {
       return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->join('divisi1', 'divisi1.id_divisi = siswa.id_divisi1')->like('nama', $keyword)->get()->result();

    }

}