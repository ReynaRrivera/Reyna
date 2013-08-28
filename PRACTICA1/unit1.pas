unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);

  var

    nombre:String;
    extension:String;
    Archivo:String;
    Aux:String;
    Ubicacion:String;
    Ub:String;
    Punto:String;

    F:TextFile;

  begin

    nombre:=Edit1.Text;
    extension:=Edit2.Text;
    Punto:='.';
    Ub:='C:\lazarus\';
    Aux:=Concat(Punto,extension);
    Ubicacion:=Concat(nombre,Aux);
    Archivo:=Concat(Ub,Ubicacion);
    AssignFile(F,Archivo);

    Rewrite( F );


  end;





end.

