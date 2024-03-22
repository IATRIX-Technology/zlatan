unit Zlatan;

interface

uses
    System.SysUtils, System.Classes, vcl.Dialogs, DB, DBClient;

type
    TZlatan = class(TComponent)
    private
        { Private declarations }
    protected
        { Protected declarations }
    public
        { Public declarations }
        function RandomInt(nStart, nEnd: Integer): Integer;
        function RandomDouble(nStart, nEnd: Double): Double;
        function RandomChoiceArray<T>(const arr: array of T): T;
        procedure RandomChoiceClientDataSet(CDS: TClientDataSet);
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

function TZlatan.RandomInt(nStart, nEnd: Integer): Integer;
begin
    Randomize;
    Result := Random((nEnd - nStart) + 1) + nStart;
end;

function TZlatan.RandomDouble(nStart, nEnd: Double): Double;
begin
    Randomize;
    Result := Random * (nEnd - nStart) + nStart;
end;

function TZlatan.RandomChoiceArray<T>(const arr: array of T): T;
begin
    if Length(arr) = 0 then
        raise Exception.Create('O vetor não pode ser vazio!');
    Result := arr[RandomInt(0, High(arr))];
end;

procedure TZlatan.RandomChoiceClientDataSet(cds: TClientDataSet);
var
    _RecordCount: Integer;
begin
    _RecordCount := cds.RecordCount;
    cds.First;
    if _RecordCount = 0 then Exit;
    cds.MoveBy(RandomInt(0, _RecordCount-1));
end;

end.
