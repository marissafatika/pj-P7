<table border="1">
        <tr>
            <th>No</th>
            <th>Nama Event</th>
            <th>Penyelenggara</th>
            <th colspan="2">Aksi</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($jenis_lomba as $lmb) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td><?= $lmb['nama_lomba']?></td>
                <td><?= $lmb['penyelenggara']?></td>
                <td><a class="a-edit" href="<?= base_url(); ?>data_event/edit/<?= $lmb['id'] ?>">edit</a></td>
                <td><a class="a-hapus" onclick="return confirm('Yakin Hapus?')" href="<?= base_url(); ?>data_event/hapus/<?= $lmb['id'] ?>">hapus</a></td>
                
            </tr>
            <?php $i++; ?>
        <?php endforeach;?>
    </table>

    <a class="adaftar" href="<?= base_url(); ?>tambah2">Tambah Data</a>