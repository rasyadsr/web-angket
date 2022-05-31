        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link <?= ($title == 'Dashboard') ? 'active' : '' ?>"
                                href="<?= base_url('') ?>" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link <?= ($title == 'Divisi') ? 'active' : '' ?>"
                                href="<?= base_url('Divisi') ?>" aria-expanded="false"><i
                                    class="mdi mdi-chart-bubble"></i><span class="hide-menu">Divisi</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link <?= ($title == 'Siswa') ? 'active' : '' ?>"
                                href="<?= base_url('Siswa') ?>" aria-expanded="false"><i class="mdi mdi-account-settings"></i><span
                                    class="hide-menu">Siswa</span></a></li>
                        <li class="text-center p-40 upgrade-btn">
                            <a href="<?= base_url('Documentation') ?>"
                                class="btn d-block w-100 btn-danger text-white"><i class="mdi mdi-google-photos"></i> Our Gallery</a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-6">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 d-flex align-items-center">
                              <li class="breadcrumb-item"><a href="<?= base_url() ?>" class="link"><i class="mdi mdi-home-outline fs-4"></i></a></li>
                              <li class="breadcrumb-item active" aria-current="page"><?= $title ?></li>
                            </ol>
                          </nav>
                        <h1 class="mb-0 fw-bold"><?= $title ?></h1> 
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->