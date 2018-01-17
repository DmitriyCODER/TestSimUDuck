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
    procedure SetFlyBehavior(FB:IFlyBehavior);
    procedure SetQuackBehavior(QB:IQuackBehavior);
  end;

  TMallardDuck=class(TDuck)
  public
    constructor Create;
    procedure Display;override;
  end;

  TModelDuck=class(TDuck)
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

procedure TDuck.SetFlyBehavior(FB: IFlyBehavior);
begin
  FlyBehavior:=FB;
end;

procedure TDuck.SetQuackBehavior(QB: IQuackBehavior);
begin
  QuackBehavior:=QB;
end;

procedure TDuck.Swim;
begin
  MessageBox(0,'All ducks float, even decoys!', 'Duck!', MB_OK);
end;

{ TMallardDuck }

constructor TMallardDuck.Create;
begin
  QuackBehavior:=TQuack.Create;
  FlyBehavior:=TFlyWithWings.Create;
end;

procedure TMallardDuck.Display;
begin
  MessageBox(0,'I`m a real Mallard duck', 'Mallard Duck!', MB_OK);
end;

{ TModelDuck }

constructor TModelDuck.Create;
begin
  FlyBehavior:=TFlyNoWay.Create;
  QuackBehavior:=TQuack.Create;
end;

procedure TModelDuck.Display;
begin
  MessageBox(0,'I`m a model duck', 'Model Duck!', MB_OK);
end;

end.
