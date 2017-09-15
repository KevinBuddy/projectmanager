unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLstBox, RzButton,shellapi;

type
  TForm3 = class(TForm)
    RzButton3: TRzButton;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
  private
    { Private declarations }
  public
    { Public declarations }
    ddirStr:string;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
