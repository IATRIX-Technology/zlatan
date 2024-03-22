unit Zlatan;

interface

uses
    System.SysUtils, System.Classes, vcl.Dialogs;

type
    TZlatan = class(TComponent)
    private
        { Private declarations }
    protected
        { Protected declarations }
    public
        { Public declarations }
        procedure Hello;
    published
        { Published declarations }
    end;

procedure Register;

implementation

procedure Register;
begin
    RegisterComponents('Zlatan Helper', [TZlatan]);
end;

{ TZlatan }

procedure TZlatan.Hello;
begin
    ShowMessage('Olá');
end;

end.
