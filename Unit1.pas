unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, unit2;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Timer2: TTimer;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label9: TLabel;
    TrackBar5: TTrackBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    CheckBox2: TCheckBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PaintBox2: TPaintBox;
    TrackBar9: TTrackBar;
    Label16: TLabel;
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TrackBar5Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);
    procedure TrackBar9Change(Sender: TObject);
    procedure PaintBox2Click(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);


  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,y1,r1,ax1,m1,dvx1,vx1,dx1,ay1,dvy1,dy1,vy1,dt,
  x2,y2,r2,ax2,m2,dvx2,vx2,dx2,ay2,dvy2,dy2,vy2,
        r3,ax3,   dvx3,    dx3,ay3,dvy3,dy3,
           ax4,   dvx4,    dx4,ay4,dvy4,dy4:real;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
x1:=trackbar1.Position;
y1:=0 ;
vy1:=trackbar2.position*0.001;
m1:=2-trackbar3.position*0.01;

x2:=trackbar6.Position;
y2:=0 ;
vy2:=trackbar7.position*0.001;
m2:=2-trackbar8.position*0.01;
timer1.Enabled:=true;
timer1.Interval:=1;
{with paintbox1.Canvas do
begin
  pen.Color:=clwhite;
  Moveto (10,10);
  Lineto (paintbox1.Width-10, paintbox1.Height-10);
  paintbox1.Canvas.Brush.Color:=clWhite;
  paintbox1.Canvas.Rectangle(10,10, paintbox1.Width -10, paintbox1.Height -10);
  Lineto (paintbox1.Width-10, paintbox1.Height-10);
  paintbox1.canvas.pixels[10,10]:=clRED;
  paintbox1.canvas.Ellipse(0,0,paintbox1.Width,paintbox1.Height);
  paintbox1.canvas.brush.color:=clRED;
  paintbox1.Canvas.floodfill(paintbox1.Width div 2,paintbox1.Height div 2,clwhite, fsBorder);
end;}
end;




procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:=false;
x1:=trackbar1.Position;
y1:=0 ;
vx1:=0;
vy1:=0;

x2:=trackbar6.Position;
y2:=0 ;
vx2:=0;
vy2:=0;

with paintbox1.canvas do
begin
moveto(paintbox1.Width div 2 + trackbar1.Position, paintbox1.Height div 2);
end;
with paintbox2.canvas do
begin
moveto(paintbox2.Width div 2 + trackbar6.Position, paintbox2.Height div 2);
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
paintbox1.Canvas.Brush.Color:=clWhite;
paintbox1.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox1.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox1.Canvas.Ellipse
(paintbox1.Width div 2-7,paintbox1.Height div 2-7,
paintbox1.Width div 2+7,paintbox1.Height div 2+7);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
timer2.Enabled:=true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then
timer2.Enabled:=true else if checkbox1.checked=false then
timer2.Enabled:=false;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
timer2.Interval:=strtoint(edit1.text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
label1.Caption:=floattostr(trackbar1.position);
label4.Caption:=floattostr(trackbar2.position*0.001);
label6.Caption:=floattostr(2-trackbar3.Position*0.01);
label11.Caption:=floattostr(trackbar6.position);
label13.Caption:=floattostr(trackbar7.position*0.001);
label15.Caption:=floattostr(2-trackbar8.Position*0.01);
with paintbox1.canvas do
begin
moveto(paintbox1.Width div 2 + trackbar1.Position, paintbox1.Height div 2);
end;
with paintbox2.canvas do
begin
moveto(paintbox2.Width div 2 + trackbar6.Position, paintbox2.Height div 2);
end;
dt:=0.01; label8.Caption:='10^(-2)';
end;


procedure TForm1.PaintBox1Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
paintbox1.Canvas.Brush.Color:=clWhite;
paintbox1.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox1.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox1.Canvas.Ellipse
(paintbox1.Width div 2-7,paintbox1.Height div 2-7,
paintbox1.Width div 2+7,paintbox1.Height div 2+7);
end;

procedure TForm1.PaintBox2Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i:integer;
begin
for i := 0 to 1000 do
begin
  if checkbox2.Checked=true then begin
  r1:=sqrt(x1*x1+y1*y1);
  r2:=sqrt(x2*x2+y2*y2);
  r3:=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
  if r3>0.04218 then begin                        ax3:=-m1*(x2-x1)/(r3*r3*r3);
  ax1:=-m1*x1/(r1*r1*r1)-ax3;                dvx3:=ax3*dt;
  dvx1:=ax1*dt-dvx3;
  vx1:=vx1+dvx1;
  dx1:=vx1*dt;
  x1:=x1+dx1;
                                             ay3:=-m1*(y2-y1)/(r3*r3*r3);
  ay1:=-m1*y1/(r1*r1*r1)-ay3;                dvy3:=ay3*dt;
  dvy1:=ay1*dt-dvy3;
  vy1:=vy1+dvy1;
  dy1:=vy1*dt;
  y1:=y1+dy1;
                                             ax4:=-m2*(x1-x2)/(r3*r3*r3);
  ax2:=-m2*x2/(r2*r2*r2)-ax4;                dvx4:=ax4*dt;
  dvx2:=ax2*dt-dvx4;
  vx2:=vx2+dvx2;
  dx2:=vx2*dt;
  x2:=x2+dx2;
                                             ay4:=-m2*(y1-y2)/(r3*r3*r3);
  ay2:=-m2*y2/(r2*r2*r2)-ay4;                dvy4:=ay4*dt;
  dvy2:=ay2*dt-dvy4;
  vy2:=vy2+dvy2;
  dy2:=vy2*dt;
  y2:=y2+dy2;
  end else begin
  timer1.Enabled:=false;
  end;


  end else begin
  r1:=sqrt(x1*x1+y1*y1);
  r2:=sqrt(x2*x2+y2*y2);
  if r1>0.04218 then if r2>0.04218 then begin

  ax1:=-m1*x1/(r1*r1*r1);
  dvx1:=ax1*dt;
  vx1:=vx1+dvx1;
  dx1:=vx1*dt;
  x1:=x1+dx1;

  ay1:=-m1*y1/(r1*r1*r1);
  dvy1:=ay1*dt;
  vy1:=vy1+dvy1;
  dy1:=vy1*dt;
  y1:=y1+dy1;

  ax2:=-m2*x2/(r2*r2*r2);
  dvx2:=ax2*dt;
  vx2:=vx2+dvx2;
  dx2:=vx2*dt;
  x2:=x2+dx2;

  ay2:=-m2*y2/(r2*r2*r2);
  dvy2:=ay2*dt;
  vy2:=vy2+dvy2;
  dy2:=vy2*dt;
  y2:=y2+dy2;
  end else
  timer1.Enabled:=false;
  end;

  end;
  paintbox1.canvas.Pen.Color:=clBlue;
paintbox1.canvas.lineto(trunc(x1+paintbox1.Width/2), trunc(y1+paintbox1.Height/2));
paintbox2.canvas.Pen.Color:=clBlack;
paintbox2.canvas.lineto(trunc(x2+paintbox2.Width/2), trunc(y2+paintbox2.Height/2));
with unit2.Form2 do begin
paintbox1.canvas.Pen.Color:=clBlue;
paintbox1.canvas.lineto(trunc(x1+paintbox1.Width/2), trunc(y1+paintbox1.Height/2));
paintbox2.canvas.Pen.Color:=clBlack;
paintbox2.canvas.lineto(trunc(x2+paintbox2.Width/2), trunc(y2+paintbox2.Height/2));
end;
{button1.Top:=trunc(y1+paintbox1.Height/2);
button1.Left:=trunc(x1+paintbox1.Width/2);    }
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
paintbox1.Canvas.Brush.Color:=clWhite;
paintbox1.Canvas.Rectangle(0,0,paintbox1.Width,paintbox1.Height);
paintbox1.Canvas.Brush.Color:=clGradientActiveCaption;
paintbox1.Canvas.Ellipse
(paintbox1.Width div 2-7,paintbox1.Height div 2-7,
paintbox1.Width div 2+7,paintbox1.Height div 2+7);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
label1.Caption:=floattostr(trackbar1.position);
x1:=trackbar1.Position + paintbox1.Width div 2;
with paintbox1.canvas do
begin
moveto(paintbox1.Width div 2 + trackbar1.Position, paintbox1.Height div 2);
end;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
label4.Caption:=floattostr(trackbar2.position*0.001);
vy1:=trackbar2.position*0.001;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
label6.Caption:=floattostr(2-trackbar3.Position*0.01);
m1:=2-trackbar3.position*0.01;
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
if trackbar4.Position=1 then begin label8.Caption:='10^(-5)'; dt:=0.00001;  end;
if trackbar4.Position=2 then begin label8.Caption:='10^(-4)'; dt:=0.0001;   end;
if trackbar4.Position=3 then begin label8.Caption:='10^(-3)'; dt:=0.001;    end;
if trackbar4.Position=4 then begin label8.Caption:='10^(-2)'; dt:=0.01;     end;
if trackbar4.Position=5 then begin label8.Caption:='10^(-1)'; dt:=0.1;      end;
if trackbar4.Position=6 then begin label8.Caption:='10^(0)';  dt:=1;        end;
if trackbar4.Position=7 then begin label8.Caption:='10^(1)';  dt:=10;       end;
if trackbar4.Position=8 then begin label8.Caption:='10^(2)';  dt:=100;      end;
if trackbar4.Position=9 then begin label8.Caption:='10^(3)';  dt:=1000;      end;

end;

procedure TForm1.TrackBar5Change(Sender: TObject);
begin
timer2.Interval:=trackbar5.Position;
edit1.Text:=floattostr(trackbar5.Position);
end;

procedure TForm1.TrackBar6Change(Sender: TObject);
begin
label11.Caption:=floattostr(trackbar6.position);
x2:=-trackbar6.Position + paintbox1.Width div 2;
with paintbox2.canvas do
begin
moveto(paintbox2.Width div 2 + trackbar6.Position, paintbox2.Height div 2);
end;
end;

procedure TForm1.TrackBar7Change(Sender: TObject);
begin
label13.Caption:=floattostr(trackbar7.position*0.001);
vy2:=trackbar7.position*0.001;
end;

procedure TForm1.TrackBar8Change(Sender: TObject);
begin
label15.Caption:=floattostr(2-trackbar8.Position*0.01);
m2:=2-trackbar8.position*0.01;
end;


procedure TForm1.TrackBar9Change(Sender: TObject);
begin
dt:=trackbar9.Position*0.0001;
label16.Visible:=true;
label16.Caption:='dt = '+floattostr(trackbar9.Position*0.0001);
label16.Left:=22+round(trackbar9.Position*0.6);
end;

end.
