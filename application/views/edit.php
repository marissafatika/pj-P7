<div class="tambah">
    
    <h1 class="h1t">Edit Pendaftaran</h1>

    <form action="<?= base_url ('pendaftaran/update') ?>" method="POST">

        <input type="hidden" value="<?= $edit['id'];?>" name="id">

        <label for="">Nama Pendaftar</label>
        <input type="text" name="nama_pendaftar" value="<?= $edit['nama_pendaftar'];?>" >
        <br><br>
        <label for="">Jenis Lomba</label>
            <select name="nama_lomba">
            <?php foreach($jenis_lomba as $jns) : ?>
                <option value="<?= $jns['id_jns']?>"><?= $jns['nama_lomba'] ?></option>
                <?php endforeach ; ?>
            </select> 
            <br><br>
        <label for="">Kelas</label>
        <input type="text" name="kelas" value="<?= $edit['kelas'];?>" >
        <br><br>
        <label for="">No HP</label>
        <input type="text" name="no_hp" value="<?= $edit['no_hp'];?>" >
        <br><br>
        <label for="">Tanggal Daftar</label>
        <input type="date" name="tgl_daftar" value="<?= $edit['tgl_daftar'];?>" >
        <br><br>
        <input type="submit" value="SIMPAN">
    </form>


</div>