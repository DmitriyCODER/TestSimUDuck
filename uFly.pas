unit uFly;

interface

type

  IFlyBehavior=interface
    procedure Fly;
  end;

  TFlyWithWings=class(TInterfacedObject, IFlyBehavior)
  public
    procedure Fly;
  end;

  TFlyNoWay=class(TInterfacedObject, IFlyBehavior)
  public
    procedure Fly;
  end;

implementation

{ TFlyWithWings }

procedure TFlyWithWings.Fly;
begin

end;


{ TFlyNoWay }

procedure TFlyNoWay.Fly;
begin

end;

end.
