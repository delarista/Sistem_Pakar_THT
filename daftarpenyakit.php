<?php
include('koneksi.php');
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cek THT</title>
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
            <div id="home" class="home">
                <h1 class="tittle">Daftar Penyakit THT</h1>    
            </div>
            <div class="container">
                <table class="table table-striped table1">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Penyakit</th>
                            <th scope="col">Jenis Penyakit</th>
                            
                        </tr>
                    </thead>
                    <?php
                        
                        $queri="Select * From tb_penyakit";
                        $hasil=mysqli_query ($konek_db,$queri);   
                        $id = 0;
                        while ($penyakit = mysqli_fetch_array ($hasil)){  
                                    $id++; 
                                    echo "      
                                            <tr>  
                                            <td>".$id."</td>
                                            <td>".$penyakit[0]."</td>  
                                            <td>".$penyakit[1]."</td>      
                                        </tr>   
                                    ";      
                                    }                        
                    ?>  
                </table>
            </div>
        </div>
    </main>
    

    <footer>
        <p>Copyright &#169; 2020 - CekTHT </p>
    </footer>
    
</body>
</html>