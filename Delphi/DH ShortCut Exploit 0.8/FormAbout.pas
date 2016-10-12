unit FormAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, DH_Form_Effects;

type
  TfrmAbout = class(TForm)
    gbAbout: TGroupBox;
    imgDH: TImage;
    panelAbout: TPanel;
    labelAbout: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.FormCreate(Sender: TObject);
var
  effect: T_DH_Form_Effects;
begin
  effect := T_DH_Form_Effects.Create();
  effect.Effect_Marquee_Label_DownUp(panelAbout, labelAbout, 1);
  effect.Free;
end;

end.
