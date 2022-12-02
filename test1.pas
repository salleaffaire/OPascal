
Program test1;

Type 
  IntegerArray = Array [1..100] Of Integer;

Var 
  Buckets : IntegerArray;
  PBucket : ^Integer;
  Counter : Integer;

Begin
  Writeln('Hello world!');

  For Counter := 0 To Length(Buckets) - 1 Do
    Begin
      Writeln(Counter);
    End;

End.
