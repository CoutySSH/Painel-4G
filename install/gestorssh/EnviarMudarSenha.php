<?php
include("conexao.php");
include_once("functions.php");
if(ProtegePag() == true){
	
if( ($_SESSION['acesso'] == 1) || ($_SESSION['acesso'] == 2)){

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$EditarEmail = (isset($_POST['EditarEmail'])) ? trim($_POST['EditarEmail']) : '';
$EditarID = (isset($_POST['EditarID'])) ? $_POST['EditarID'] : '';
$EditarNome = (isset($_POST['EditarNome'])) ? $_POST['EditarNome'] : '';
$EditarUsuario = (isset($_POST['EditarUsuario'])) ? $_POST['EditarUsuario'] : '';
$EditarSenha = (isset($_POST['EditarSenha'])) ? $_POST['EditarSenha'] : '';
$UsuarioOnline = $_SESSION['id'];

	$ArvoreAdminOnline = ArvoreRev($UsuarioOnline);
	$ArvoreAdminOnline[] = $UsuarioOnline;
	
	
	$SQLUser = "SELECT login FROM login WHERE login = :login AND id != :id";
	$SQLUser = $banco->prepare($SQLUser);
	$SQLUser->bindParam(':login', $EditarUsuario, PDO::PARAM_STR);
	$SQLUser->bindParam(':id', $EditarID, PDO::PARAM_INT);
	$SQLUser->execute();
	$TotalResul = count($SQLUser->fetchAll());

	if(empty($EditarID)){
		echo MensagemAlerta('Erro', 'Como você fez isso?', "danger");
	}
	elseif(empty($EditarUsuario)){
		echo MensagemAlerta('Erro', 'Usuário é um campo obrigatório!', "danger");
	}
	elseif($TotalResul > 0){
		echo MensagemAlerta('Erro', 'Usuário já encontra-se em uso!', "danger");
	}
	elseif(empty($EditarSenha)){
		echo MensagemAlerta('Erro', 'Senha é um campo obrigatório!', "danger");
	}
	elseif(empty($EditarNome)){
		echo MensagemAlerta('Erro', 'Nome é um campo obrigatório!', "danger");
	}
	else{
		
		

	$SQL = "UPDATE login SET
		nome = :nome,
		login = :login,
		senha = :senha,
		email = :email
        WHERE id = :id";
	$SQL = $banco->prepare($SQL);
	$SQL->bindParam(':nome', $EditarNome, PDO::PARAM_STR); 
	$SQL->bindParam(':login', $EditarUsuario, PDO::PARAM_STR); 
	$SQL->bindParam(':senha', $EditarSenha, PDO::PARAM_STR);
	$SQL->bindParam(':email', $EditarEmail, PDO::PARAM_STR);
	$SQL->bindParam(':id', $EditarID, PDO::PARAM_INT);
	$SQL->execute(); 
	
	if(empty($SQL)){
		echo MensagemAlerta('Erro', 'Ocorreu um erro ao alterar', "danger");
	}
	else{
		echo MensagemAlerta('Sucesso', 'Dados alterados com sucesso', "success", "index.php");
	}
		
		
	}
}

}else{
	echo Redirecionar('index.php');
}	

}else{
	echo Redirecionar('login.php');
}	

?>