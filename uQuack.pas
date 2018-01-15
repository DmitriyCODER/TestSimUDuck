unit uQuack;

interface

type

  IQuackBehavior=interface
    procedure Quack;
  end;

  TQuack=class(TInterfacedObject, IQuackBehavior)
  public
    procedure Quack;
  end;

  TSqueak=class(TInterfacedObject, IQuackBehavior)
  public
    procedure Quack;
  end;

  TMuteQuack=class(TInterfacedObject, IQuackBehavior)
  public
    procedure Quack;
  end;

implementation

{ TQuack }

procedure TQuack.Quack;
begin

end;

{ TSqueak }

procedure TSqueak.Quack;
begin

end;

{ TMuteQuack }

procedure TMuteQuack.Quack;
begin

end;

end.
