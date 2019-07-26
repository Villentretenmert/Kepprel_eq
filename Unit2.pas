unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm2 = class(TForm)
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    PaintBox3: TPaintBox;
    procedure FormResize(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure PaintBox3Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
paintbox3.Canvas.Brush.Color:=clWhite;
paintbox3.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox3.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox3.Canvas.Ellipse
(paintbox3.Width div 2-7,paintbox3.Height div 2-7,
paintbox3.Width div 2+7,paintbox3.Height div 2+7);
end;

procedure TForm2.FormResize(Sender: TObject);
begin
paintbox1.Height:=form2.Height;
paintbox1.Width:=form2.Width;
paintbox2.Height:=form2.Height;
paintbox2.Width:=form2.Width;
paintbox3.Height:=form2.Height;
paintbox3.Width:=form2.Width;
paintbox3.Canvas.Brush.Color:=clWhite;
paintbox3.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox3.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox3.Canvas.Ellipse
(paintbox3.Width div 2-7,paintbox3.Height div 2-7,
paintbox3.Width div 2+7,paintbox3.Height div 2+7);
end;

procedure TForm2.PaintBox3Paint(Sender: TObject);
begin
paintbox3.Canvas.Brush.Color:=clWhite;
paintbox3.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox3.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox3.Canvas.Ellipse
(paintbox3.Width div 2-7,paintbox3.Height div 2-7,
paintbox3.Width div 2+7,paintbox3.Height div 2+7);
end;

end.
