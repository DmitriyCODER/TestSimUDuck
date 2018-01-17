unit uQuack;

interface
uses
  Windows;

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
  MessageBox(0,'Quack', 'Quack', MB_OK);
end;

{ TSqueak }

procedure TSqueak.Quack;
begin
  MessageBox(0,'Squeak', 'Squeak', MB_OK);
end;

{ TMuteQuack }

procedure TMuteQuack.Quack;
begin
  MessageBox(0,'<<Silence>>', 'MuteQuack', MB_OK);
end;

end.
