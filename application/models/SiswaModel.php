<?php 

class SiswaModel extends CI_Model {

    public function getJmlSiswa()
    {
        return $this->db->get('siswa')->num_rows();
    }

    public function fetchAll($per_halaman, $offset)
    {
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->join('divisi1', 'divisi1.id_divisi = siswa.id_divisi1')->limit($per_halaman, $offset)->get()->result();
    }

    public function fetchById($id)
    {
        return $this->db->select('*')->from('siswa')->join('kelas', 'kelas.id_kelas = siswa.id_kelas')->join('divisi1', 'divisi1.id_divisi = siswa.id_divisi1')->join('divisi2', 'divisi2.id_divisi2 = siswa.id_divisi2')->join('divisi3', 'divisi3.id_divisi3 = siswa.id_divisi3')->where('id', $id)->get()->result();
    }

    public function fetchKelas()
    {
        return $this->db->get('kelas')->result();
    }

    public function fetchDivisi1()
    {
        return $this->db->get('divisi1')->result();
    }

    public function update($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    public function getProfile($id)
    {
        return $this->db->where('id', $id)->get('siswa')->result();
    }

    public function delete($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function store($data, $table)
    {
        $this->db->insert($table, $data);
    }
    
}