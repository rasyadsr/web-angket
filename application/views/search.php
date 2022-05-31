            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex">
                    <div class="col-lg-12 col-md-12">
                                <?= $this->session->flashdata('message'); ?>
                            <div class="card">
                                <div class="card-body">
                                    <div class="align-items-center justify-content-space-between">
                                    <div class="table-responsive">
                                        <table class="table mb-0 table-hover align-middle text-nowrap">
                                            <thead>
                                                <tr class="text-left">
                                                    <th>Nama</th>
                                                    <th>Kelas</th>
                                                    <th>Divisi</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach($results as $result) : ?>
                                                    <tr class="text-left">
                                                        <td><?= $result->nama ?></td>
                                                        <td><?= $result->namaKelas ?></td>
                                                        <td><?= $result->namaDivisi ?></td>
                                                        <td>
                                                            <a href="<?= base_url('Siswa/detail/'. $result->id) ?>" class="btn btn-sm text-white btn-info">Detail</a>
                                                            <a href="<?= base_url('Siswa/edit/'.$result->id) ?>" class="btn btn-sm text-white btn-success">Edit</a>
                                                            <a href="#" class="btn btn-sm text-white btn-danger">Hapus</a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
</div>
