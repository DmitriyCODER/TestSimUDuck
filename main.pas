unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDuck, StdCtrls, uFly;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FMallard:TDuck;
    FModel:TDuck;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  FMallard:=TMallardDuck.Create;
  FMallard.PerformQuack;
  FMallard.PerformFly;

  FModel:=TModelDuck.Create;
  FModel.PerformFly;
  FModel.SetFlyBehavior(TFlyRocketPowered.Create);
  FModel.PerformFly;
end;

end.
