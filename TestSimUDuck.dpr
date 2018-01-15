program TestSimUDuck;

uses
  Forms,
  main in 'main.pas' {Form1},
  uFly in 'uFly.pas',
  uQuack in 'uQuack.pas',
  uDuck in 'uDuck.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
