            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row d-flex">
                    <div class="col-lg-12 col-md-12">
                            <a href="<?= base_url('Siswa/create') ?>" class="btn btn-primary mb-3" style="margin-top: -40px;"><i class="mdi mdi-plus"></i> Tambah Data</a>
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
                                                <?php foreach($students as $student) : ?>
                                                    <tr class="text-left">
                                                        <td><?= $student->nama ?></td>
                                                        <td><?= $student->namaKelas ?></td>
                                                        <td><?= $student->namaDivisi ?></td>
                                                        <td>
                                                            <a href="<?= base_url('Siswa/detail/'. $student->id) ?>" class="btn btn-sm text-white btn-info">Detail</a>
                                                            <a href="<?= base_url('Siswa/edit/'.$student->id) ?>" class="btn btn-sm text-white btn-success">Edit</a>
                                                            <a href="<?= base_url('Siswa/delete/'.$student->id) ?>" class="btn btn-sm text-white btn-danger" onclick="return confirm('Yakin Mau di Hapus ?')">Hapus</a>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item py-2">
                                        <p class="my-2"><?= $pagination ?></p>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                </div>
            </div>
</div>
