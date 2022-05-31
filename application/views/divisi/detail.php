            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex">
                    <?= $this->session->flashdata('message'); ?>
                <div class="col-lg-3 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-center align-items-center">
                                <?php foreach($division as $div) : ?>
                                    <img src="<?= base_url('assets/images/divisions/'.$div->foto) ?>" alt="" style="width: 90%;">
                                <?php endforeach; ?>
                            </div>
                            <div class="text-center">
                                <p>Jumlah SMK : <?= $jmlSMK ?></p>
                                <p>Jumlah SMA : <?= $jmlSMA ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-12 d-flex justify-content-center">
                    <div class="row justify-content-center">
                        <?php foreach($students as $student) : ?>
                            <div class="col-lg-3 col-md-6 ">
                                <div class="card pb-3">
                                    <div class="card-body d-flex justify-content-center">
                                        <img src="<?= base_url('assets/images/students/Siti Rimatullah (Ketua 1) Sukabumi Raya.JPG') ?>" alt="" style="width: 90%;">
                                    </div>
                                    <div class="text-center">
                                        <h4 style="font-size: 15px;"><?= $student->nama ?></h4>
                                            <?php
                                                if ($student->is_ketua == 1 ) $jabatan = 'Ketua';
                                                elseif ($student->is_ketua == 2) $jabatan = 'Sekertaris';
                                                elseif ($student->is_ketua == 3) $jabatan = 'Bendahara';
                                                elseif ($student->is_ketua == 4) $jabatan = 'Anggota';
                                                else $jabatan = ''; 
                                            ?>
                                        <label class="badge bg-info"><?= $jabatan ?></label>
                                        <p><?= $student->namaKelas ?></p>
                                        <a href="<?= base_url('Divisi/edit/'. $student->id.'/'.$id_divisi) ?>" class="btn btn-sm text-white btn-success"><i class="mdi mdi-grease-pencil"></i></a>
                                        <a href="<?= base_url('Divisi/delete/'.$student->id) ?>" class="btn btn-sm text-white btn-danger"><i class="mdi mdi-delete"></i></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>                      
                    </div>
                </div>       
                </div>
                </div>
            </div>
        </div>
        </div>
</div>
