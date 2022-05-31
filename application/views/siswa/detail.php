            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <?php foreach($profiles as $profile) : ?>
                                    <img src="<?= base_url('assets/images/students/'.$profile->foto) ?>" alt="Image Profile" width="300">
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <?php foreach($students as $student) : ?>
                                <form class="form-horizontal form-material mx-2" action="<?= base_url('Siswa/update/'.$student->id) ?>" method="POST">
                                        <div class="form-group">
                                            <label class="col-md-12">Nama Lengkap</label>
                                            <div class="col-md-12">
                                                <input type="text" value="<?= $student->nama ?>"
                                                    class="form-control form-control-line" name="nama" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Kelas</label>
                                            <div class="col-md-12">
                                                   <input value="<?= $student->namaKelas ?>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Pertama</label>
                                            <div class="col-md-12">
                                                   <input value="<?= $student->namaDivisi ?>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <!-- Jabatan -->
                                        <!-- 1 = Ketua -->
                                        <!-- 2 = Sekertaris -->
                                        <!-- 3 = Bendahara -->
                                        <!-- 4 = Anggota -->
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Jabatan</label>
                                            <div class="col-md-12">
                                                   <?php
                                                   
                                                   if ($student->is_ketua == 1 ) $jabatan = 'Ketua';
                                                   elseif ($student->is_ketua == 2) $jabatan = 'Sekertaris';
                                                   elseif ($student->is_ketua == 3) $jabatan = 'Bendahara';
                                                   elseif ($student->is_ketua == 4) $jabatan = 'Anggota';
                                                   else $jabatan = ''; 

                                                   ?>
                                                   <input value="<?= $jabatan ?>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Kedua</label>
                                            <div class="col-md-12">
                                                   <input value="<?= $student->namaDivisi2 ?>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Ketiga</label>
                                            <div class="col-md-12">
                                                   <input value="<?= $student->namaDivisi3 ?>" class="form-control" readonly>
                                            </div>
                                        </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </form>
                        <a href="<?= base_url('Siswa') ?>" class="btn btn-warning text-white">Kembali</a>

                </div>
                </div>
            </div>
                </div>
            </div>
</div>
