unit uFly;

interface
uses
  Windows;

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

  TFlyRocketPowered=class(TInterfacedObject, IFlyBehavior)
  public
    procedure Fly;
  end;

implementation

{ TFlyWithWings }

procedure TFlyWithWings.Fly;
begin
  MessageBox(0,'I`m flying!', 'FlyWithWings!', MB_OK);
end;


{ TFlyNoWay }

procedure TFlyNoWay.Fly;
begin
  MessageBox(0,'I can`t fly', 'FlyNoWay!', MB_OK);
end;

{ TFlyRocketPowered }

procedure TFlyRocketPowered.Fly;
begin
  MessageBox(0,'I`m flying with a rocket!', 'FlyRocketPowered!', MB_OK);
end;

end.
