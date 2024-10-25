<div class="ep">
<h1 class="h1e">Edit Profil</h1>
<form action="<?= base_url() ?>profil/updateProfil" method="post">
    <input type="hidden" name="id" value="<?=$user['id']?>"><br><br>
    <label for="">edit nama</label>
    <input type="text" name="nama" value="<?=$user['nama']?>"><br>
    <label for="">edit username</label>
    <input type="text" name="username" value="<?=$user['username']?>"><br>
    <label for="">edit password</label><br>
    <input type="password" name="password" value="<?=$user['password']?>"><br><br>
    <input type="submit" value="Edit Profil">
</form>
</div>