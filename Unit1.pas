unit Unit1;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
 end;

   var
         Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
  var
 b, n,y,e,   p, i:integer;
  t :array of boolean;
  start, stop: Tdatetime;
  h, m, s, ms : word;
  x: extended;

  function potega:integer;
  var c:integer;
  begin

  p:=1;
  c:=1;
  for c := 1 to i do
    p:=p*2;
    c:=c+1;
 potega:=p;
  end;


 begin
start:=Time;

  listbox1.Clear;
n := strtoint(Edit1.Text);//zakres do którego maj¹ byæ wyœwietlane liczby mersena
setlength(t, 32);
for i:=2 to 32 do t[i]:=true;
  i :=1;
  repeat
    i:= i+1;
    b:= 2*i;
    repeat
    t[b] := false;
    b:= b+i;
    until (b>32);
  until i>sqrt(32) ;
   if 3<=n then  listbox1.Items.Add(inttostr(3));
  for i:=2 to 32 do
 if
    (t[i])=true
    then
begin
if i<32 then  //je¿eli i > 31 to 2^i -1 > max integer (2147483647)
    begin
    potega;
   p:=p-1; //p=2^i-1
     x:=4;
     y:=1;
     x:=14;
     y:=y+1;

    for y := 3  to i-1 do
      begin
     x:=(Trunc(x) mod p)*(Trunc(x) mod p)-2;
       end;

       if (trunc(x) mod p)=0 then
       if p<=n then  listbox1.Items.Add(inttostr(p));

  end;
  end;
 stop:=Time;
 DecodeTime(stop-start, h, m, s, ms);
 Label2.caption:=inttostr(m)+'min'+' ' + inttostr(s)+'s'+' ' +inttostr(ms)+'ms';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in [#8,'0', '1', '2', '3', '4', '5','6', '7', '8', '9']) then
Key:=#0;

end;

end.

