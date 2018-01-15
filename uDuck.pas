unit uDuck;

interface
uses
  uFly, uQuack;

type

  TDuck=class
  protected
    FlyBehavior:IFlyBehavior;
    QuackBehavior:IQuackBehavior;
  public
    procedure PerformQuack;
    procedure Swim;
    procedure Display;
    procedure PerformFly;    
  end;

implementation

{ TDuck }

procedure TDuck.Display;
begin

end;

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

end;

end.
