<?php
include('koneksi.php');
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cek THT</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <header>
        <div class="logo">
            
            <img src="assets/images/logo.png" alt="Logo">
        </div>
        <nav class="menu">
            <ul>
                <li><a href="index.php">Beranda</a></li>
                <li><a href="daftarpenyakit.php">Penyakit THT</a></li>
                <li><a href="diagnosa.php">Diagnosa</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="content">
            <div>
                <h1 class="tittle">Diagnosa Penyakit PHP</h1>    
            </div>
            <div class="container">
                <div class="tittle">
                    <h2>Gejala</h2>
                </div>
                <form id="form2" name="form2" method="post" action="cek_diagnosa.php">
                    <div>
                        <?php 
                        
                            $tampil="select * from tb_gejala";
                            $query= mysqli_query($konek_db, $tampil);
                                while($hasil = mysqli_fetch_array($query)){  
                                    echo "<input class='mb-3' type='checkbox' value='".$hasil['id_gejala']."' name='id_gejala[]' /> ".$hasil['gejala']."<br>";
                            }
                                
                        ?>
                        <Button class="btn btn-outline-danger mt-5 mb-5" type="submit" name="submit">CEK PENYAKIT</Button>
                    </div>

                    <div class="panel panel-info">
                        <div class="panel-heading">HASIL DIAGNOSA</div>
                        <div class="panel-body">
                            <div class="box-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped mb-5">
                                    <thead>
                                        <tr>
                                            <th>NO</th>
                                            <th>ID PENYAKIT</th>
                                            <th>Nama Penyakit</th>                                        
                                            
                                        </tr>
                                    </thead>
                                    <?php			
                                        if(isset($_POST['submit'])){
                                            $gejala = $_POST['id_gejala'];
                                            $jumlah_dipilih = count($gejala);
                                            for($x=0; $x<$jumlah_dipilih; $x++){
                                                        $tampil ="select DISTINCT p.id_penyakit, p.nama_penyakit from basispengetahuan b, tb_penyakit p where b.id_gejala='$gejala[$x]' and p.id_penyakit=b.id_penyakit group by id_penyakit";
                                                        $result = mysqli_query($konek_db, $tampil);
                                                        $hasil  = mysqli_fetch_array($result);   
                                                        }
                                                echo "
                                                            <tr>  
                                                                    <td>".$x."</td>
                                                                    <td>".$hasil['id_penyakit']."</td>
                                                                    <td>".$hasil['nama_penyakit']."</td>  
                                                            </tr>   
                                                                
                                                                ";
                                        }
                                    ?>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            
        </div>
        
        <!--
        <div class="container">
            <div class="tittle">
                <a class="btn btn-outline-danger" href="" role="button" type="submit">CEK PENYAKIT</a>
            </div>
        </div>
                -->

    </main>

    

    <footer class="mt-4">
        <p>Copyright &#169; 2020 - CekTHT </p>
    </footer>

</body>
</html>