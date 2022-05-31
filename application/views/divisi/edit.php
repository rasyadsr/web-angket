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
                                <?php foreach($students as $student) : ?>
                                    <form class="form-horizontal form-material mx-2" action="<?= base_url('Divisi/update/'.$student->id.'/'.$id_divisi) ?>" method="POST">
                                        <div class="form-group">
                                            <label class="col-md-12">Nama Lengkap</label>
                                            <div class="col-md-12">
                                                <input type="text" value="<?= $student->nama ?>"
                                                    class="form-control form-control-line" name="nama">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Kelas</label>
                                            <div class="col-md-12">
                                               <select name="id_kelas" id="" class="form-control">
                                                   <option value="<?= $student->id_kelas ?>"><?= $student->namaKelas ?></option>
                                                   <option value="" disabled></option>
                                                   <?php foreach($classes as $class) : ?>
                                                        <option value="<?= $class->id_kelas ?>"><?= $class->namaKelas ?></option>
                                                    <?php endforeach; ?>
                                               </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Pertama</label>
                                            <div class="col-md-12">
                                               <select name="id_divisi1" id="" class="form-control">
                                                   <option value="<?= $student->id_divisi1 ?>"><?= $student->namaDivisi ?></option>
                                                   <option value="" disabled></option>
                                                   <?php foreach($divisions1 as $division) : ?>
                                                        <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                    <?php endforeach; ?>
                                               </select>
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
                                               <select name="is_ketua" id="" class="form-control">
                                                   <?php
                                                   
                                                   if ($student->is_ketua == 1 ) $jabatan = 'Ketua';
                                                   elseif ($student->is_ketua == 2) $jabatan = 'Sekertaris';
                                                   elseif ($student->is_ketua == 3) $jabatan = 'Bendahara';
                                                   elseif ($student->is_ketua == 4) $jabatan = 'Anggota';
                                                   else $jabatan = ''; 

                                                   ?>
                                                   <option value="<?= $student->is_ketua ?>"><?= $jabatan ?></option>
                                                   <option value="" disabled></option>
                                                   <option value="1">Ketua</option>
                                                   <option value="2">Sekertaris</option>
                                                   <option value="3">Bendahara</option>
                                                   <option value="4">Anggota</option>
                                               </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Kedua</label>
                                            <div class="col-md-12">
                                               <select name="id_divisi2" id="" class="form-control">
                                                   <option value="<?= $student->id_divisi2 ?>"><?= $student->namaDivisi2 ?></option>
                                                   <option value="" disabled></option>
                                                   <?php foreach($divisions2 as $division) : ?>
                                                        <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                    <?php endforeach; ?>
                                               </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="example-email" class="col-md-12">Divisi Ketiga</label>
                                            <div class="col-md-12">
                                               <select name="id_divisi3" id="" class="form-control">
                                                   <option value="<?= $student->id_divisi3 ?>"><?= $student->namaDivisi3 ?></option>
                                                   <option value="" disabled></option>
                                                   <?php foreach($divisions3 as $division) : ?>
                                                        <option value="<?= $division->id_divisi ?>"><?= $division->namaDivisi ?></option>
                                                    <?php endforeach; ?>
                                               </select>
                                            </div>
                                        </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <button class="btn btn-success text-white" type="submit">Simpan</button>
                                <a href="<?= base_url('Divisi/detail/'.$id_divisi) ?>" class="btn btn-warning text-white">Kembali</a>
                            </form>

                </div>
                </div>
            </div>
                </div>
            </div>
</div>
