unit ZlatanThreads;

interface

uses
    System.SysUtils, System.Classes;

type
    TZlatanThreads = class(TComponent)
    private
        { Private declarations }
    protected
        { Protected declarations }
    public
        { Public declarations }
    published
        { Published declarations }
    end;

procedure Register;

implementation

procedure Register;
begin
    RegisterComponents('Zlatan Helper', [TZlatanThreads]);
end;

end.
