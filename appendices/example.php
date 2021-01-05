function handlePost(): void {
    $input = $_POST["name"];
    $a=$_POST["pass"];
    $magic_number=5;
    if ($a==$magic_number){
      echo $input." ";
      echo $a;
     }else{
      echo "Welcome!";
    }
}

<<__EntryPoint>>
function main(): noreturn{
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    handlePost();
  }
  exit(0);
}