    <table border="1">
        <tr>
            <th>No</th>
            <th>Nama Event</th>
            <th>Nama Pendaftar</th>
            <th>Kelas</th>
            <th>No Telp.</th>
            <th>Tanggal Daftar</th>
            <th colspan="2">Aksi</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($pendaftaran as $dftr) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td><?= $dftr['nama_lomba']?></td>
                <td><?= $dftr['nama_pendaftar']?></td>
                <td><?= $dftr['kelas']?></td>
                <td><?= $dftr['no_hp']?></td>
                <td><?= $dftr['tgl_daftar']?></td>
                <td><a class="a-edit" href="<?= base_url(); ?>pendaftaran/edit/<?= $dftr['id'] ?>">edit</a></td>
                <td><a class="a-hapus" onclick="return confirm('Yakin Hapus?')" href="<?= base_url(); ?>pendaftaran/hapus/<?= $dftr['id'] ?>">hapus</a></td>
                
            </tr>
            <?php $i++; ?>
        <?php endforeach;?>
    </table>

    <a class="adaftar" href="<?php echo base_url(); ?>tambah">Tambah Data</a>