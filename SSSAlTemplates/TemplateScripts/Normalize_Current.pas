procedure ChangeSymbolFontAndGraphics(const SymbolName: String);
var
    Lib: TLibrary;
    Symbol: TSymbol;
    Param: TParameter;
    i: Integer; // Добавили переменную для цикла
begin
    // Получаем библиотеку
    Lib := GetLibrary;
    if Lib = nil then
    begin
        ShowMessage('Библиотека не найдена!');
        Exit;
    end;

    // Ищем символ по имени
    Symbol := Lib.FindSymbol(SymbolName);
    if Symbol = nil then
    begin
        ShowMessage('Символ не найден: ' + SymbolName);
        Exit;
    end;

    // Изменяем шрифт
    for i := 0 to Symbol.Parameters.Count - 1 do // Используем цикл for
    begin
        Param := Symbol.Parameters.Items[i]; // Получаем параметр по индексу
        Param.FontName := 'Tahoma';
        Param.FontSize := 10;
    end;

    // Изменяем графику
    Symbol.GraphicLines.Color := clBlue; // Синий цвет
    Symbol.GraphicLines.LineWidth := 1; // Маленькие линии

    // Сохраняем изменения
    Lib.Save;
    ShowMessage('Изменения применены к символу: ' + SymbolName);
end;

procedure ChangeAllSymbolsFontAndGraphics;
var
    Lib: TLibrary;
    Symbol: TSymbol;
    Param: TParameter;
    i: Integer; // Добавили переменную для цикла
begin
    // Получаем библиотеку
    Lib := GetLibrary;
    if Lib = nil then
    begin
        ShowMessage('Библиотека не найдена!');
        Exit;
    end;

    // Проходим по всем символам в библиотеке
    for Symbol in Lib.Symbols do
    begin
        // Изменяем шрифт
        for i := 0 to Symbol.Parameters.Count - 1 do // Используем цикл for
        begin
            Param := Symbol.Parameters.Items[i]; // Получаем параметр по индексу
            Param.FontName := 'Tahoma';
            Param.FontSize := 10;
        end;

        // Изменяем графику
        Symbol.GraphicLines.Color := clBlue; // Синий цвет
        Symbol.GraphicLines.LineWidth := 1; // Маленькие линии
    end;

    // Сохраняем изменения
    Lib.Save;
    ShowMessage('Изменения применены ко всем символам в библиотеке.');
end;

