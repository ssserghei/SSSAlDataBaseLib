Unit Normalize_Core;

Interface

Uses
    SysUtils,
    SchTypes,
    SchLib,
    SchServer,
    Dialogs;

Procedure NormalizeComponent(Comp : ISch_Component);

Implementation

Procedure NormalizeComponent(Comp : ISch_Component);
Begin
    If Comp = Nil Then Exit;

    // Здесь будет вся логика нормализации символа
End;

End.

