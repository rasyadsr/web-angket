            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex">
                <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2" action="<?= base_url('Siswa/store') ?>" method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label class="col-md-12">Nama Lengkap</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control form-control-line" name="nama">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Kelas</label>
                                        <div class="col-md-12">
                                            <select name="id_kelas" id="" class="form-control">
                                                <?php foreach($classes as $class) : ?>
                                                    <option value="<?= $class->id_kelas ?>"><?= $class->namaKelas ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Foto</label>
                                        <div class="col-md-12">
                                            <input type="file"
                                                class="form-control form-control-line" name="foto">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Divisi Pertama</label>
                                        <div class="col-md-12">
                                            <select name="id_divisi1" id="" class="form-control">
                                                <?php foreach($divisions as $division) : ?>
                                                    <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Jabatan</label>
                                        <div class="col-md-12">
                                            <select name="is_ketua" id="" class="form-control">
                                                <option value="1">Ketua</option>
                                                <option value="2">Sekertaris</option>
                                                <option value="3">Bendahara</option>
                                                <option value="4">Anggota</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Divisi Kedua</label>
                                        <div class="col-md-12">
                                            <select name="id_divisi2" id="" class="form-control">
                                               <?php foreach($divisions as $division) : ?>
                                                    <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Divisi Ketiga</label>
                                        <div class="col-md-12">
                                            <select name="id_divisi3" id="" class="form-control">
                                               <?php foreach($divisions as $division) : ?>
                                                    <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-success text-white">Simpan</button>
                                    <a href="<?= base_url('Siswa') ?>" class="btn btn-warning">Kembali</a>
                                </form>
                            </div>
                        </div>
                </div>
                </div>
            </div>
                </div>
            </div>
</div>
