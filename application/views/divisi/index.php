            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex justify-content-center">
                    <?php foreach($divisions as $divisi) : ?>
                        <div class="col-lg-3 col-md-6">
                            <a href="<?= base_url('Divisi/detail/'.$divisi->id_divisi) ?>">
                                <div class="card" id="card-division">
                                    <div class="card-body">
                                        <div class="align-items-center">
                                            <div>
                                                <h4 class="card-title text-center"><?= $divisi->namaDivisi ?></h4>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-center align-items-center" style="height: 350px;">
                                        <img src="<?= base_url('assets/images/divisions/'.$divisi->foto) ?>" alt="<?= $divisi->namaDivisi ?>" width="200">
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
</div>
