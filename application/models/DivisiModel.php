<?php 

class DivisiModel extends CI_Model {

    public function getJmlDivisi()
    {
        return $this->db->get('divisi1')->num_rows();
    }

    public function fetchAll()
    {
        return $this->db->select('*')->from('divisi1')->order_by('id_divisi', 'desc')->get()->result();
    }

    public function fetchDetail($id)
    {
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->where('id_divisi1', $id)->get()->result();
    }

    public function fetchDivisi($id)
    {
        return $this->db->select('*')->from('divisi1')->where('id_divisi', $id)->get()->result();
    }

    public function getJmlSMK($id)
    {
        // SELECT * FROM `siswa` JOIN kelas ON kelas.id_kelas = siswa.id_kelas WHERE keterangan = 'SMK';
        // SELECT * FROM vall WHERE keterangan = 'SMA' AND id_divisi = $id_divisi
        // $sql = "SELECT * FROM siswa JOIN kelas ON kelas.id_kelas = siswa.id_kelas JOIN divisi1 ON divisi1.id_divisi = siswa.id_divisi1 WHERE kelas.keterangan = 'SMK' AND divisi1.id_divisi = '$id'";
        // return $this->db->query($sql)->num_rows();
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->join('divisi1', 'divisi1.id_divisi = siswa.id_divisi1')->where('keterangan', 'SMK')->where('id_divisi', $id)->get()->num_rows();
    }

    public function getJmlSMA($id)
    {
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->join('divisi1', 'divisi1.id_divisi = siswa.id_divisi1')->where('keterangan', 'SMA')->where('id_divisi', $id)->get()->num_rows();
    }

}