unit uDuck;

interface
uses
  uFly, uQuack, Windows;

type

  TDuck=class
  protected
    FlyBehavior:IFlyBehavior;
    QuackBehavior:IQuackBehavior;
  public
    procedure PerformQuack;
    procedure Swim;
    procedure Display;virtual;abstract;
    procedure PerformFly;
  end;

  TMullardDuck=class(TDuck)
  public
    constructor Create;
    procedure Display;override;
  end;

implementation

{ TDuck }

procedure TDuck.PerformFly;
begin
  FlyBehavior.Fly;
end;

procedure TDuck.PerformQuack;
begin
  QuackBehavior.Quack;
end;

procedure TDuck.Swim;
begin
  MessageBox(0,'All ducks float, even decoys!', 'Duck!', MB_OK);
end;

{ TMullardDuck }

constructor TMullardDuck.Create;
begin
  QuackBehavior:=TQuack.Create;
  FlyBehavior:=TFlyWithWings.Create;
end;

procedure TMullardDuck.Display;
begin
  MessageBox(0,'I`m a real Mallard duck', 'Mallard Duck!', MB_OK);
end;

end.
