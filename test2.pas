// directive to be used for defining classes
{$mode objfpc}
// directive to be used for using constructor
{$m+}

Program test2;

Type TRectangle = Class
  Private 
    length, width: Integer;

  Public 
    constructor Create(l,w: Integer);

    Procedure setLength(l: Integer);
    Function getLength() : Integer;
    Procedure setWidth(w: Integer);
    Function getWidth() : Integer;

    Procedure Draw();
End;

Constructor TRectangle.create(l,w: Integer);
Begin
  length := l;
  width := w;
End;

Procedure TRectangle.setLength(l: Integer);
Begin
  length := l;
End;

Procedure TRectangle.setWidth(w: Integer);
Begin
  width := w;
End;

Function TRectangle.getlength(): integer;
Begin
  getLength := length;
End;

Function TRectangle.getwidth(): integer;
Begin
  getWidth := width;
End;

Procedure TRectangle.draw;

Var 
  i, j: integer;
Begin
  For i:= 1 To length Do
    Begin
      For j:= 1 To width Do
        write(' * ');
      writeln;
    End;
End;

Var 
  r1: TRectangle;

Begin
  r1 := TRectangle.create(3, 7);

  writeln(' Draw Rectangle: ', r1.getlength(), ' by ' , r1.getwidth());
  r1.draw;
  r1.setlength(4);
  r1.setwidth(6);

  writeln(' Draw Rectangle: ', r1.getlength(), ' by ' , r1.getwidth());
  r1.draw;

End.
