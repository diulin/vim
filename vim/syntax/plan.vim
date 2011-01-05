" Vim syntax file
" Language:	1c
" Version: 7.7
" Last Change:	2004 August 19
" Maintainer:  Diulin Andriy  <Diulin@mail.ru>
" Previous Maintainer:

" Contributors:

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


syn case ignore
""syn sync lines=250

"syn keyword 1cConditional 
syn keyword 1cConditional	If Then ElsIf Then Else EndIf
syn keyword 1cConditional	Если Тогда ИначеЕсли Тогда Иначе КонецЕсли
syn keyword 1cStatement		Procedure EndProcedure Forward
syn keyword 1cStatement		Процедура КонецПроцедуры Далее
syn keyword 1cStatement		Функция Возврат КонецФункции
syn keyword 1cStatement		Function Return EndFunction Export

syn keyword 1cStatement		Перем
syn keyword 1cStatement		Var

syn keyword 1cRepeat		Пока Цикл КонецЦикла Продолжить Прервать
syn keyword 1cRepeat		While Do EndDo Continue Break
syn keyword 1cRepeat		Для По Цикл КонецЦикла
syn keyword 1cRepeat		For To Do EndDo

syn keyword 1cException		Попытка Исключение КонецПопытки ВызватьИсключение
syn keyword 1cException		Try Except EndTry Raise

syn keyword 1cLabel		Перейти 
syn keyword 1cLabel		Goto 

syn keyword 1cSymbol		РазделительСтраниц РазделительСтрок СимволТабуляции
syn keyword 1cSymbol		PageBreak LineBreak TabSymbol

" [Математические функции]
syn keyword 1cStd		Окр Цел Мин Макс Лог10 Лог
" [Строковые функции]
syn keyword 1cStd		СтрДлина ПустаяСтрока СокрЛ СокрП СокрЛП Лев Прав Сред Найти СтрЗаменить СтрЧислоВхождений СтрКоличествоСтрок СтрПолучитьСтроку Врег Нрег OemToAnsi AnsiToOem Симв КодСимв
" [Функции работы с датой]
syn keyword 1cStd		РабочаяДата ТекущаяДата ДобавитьМесяц НачМесяца КонМесяца НачКвартала КонКвартала НачГода КонГода НачНедели КонНедели ДатаГод ДатаМесяц ДатаЧисло НомерНеделиГода НомерДняГода НомерДняНедели ПериодСтр НачалоСтандартногоИнтервала КонецСтандартногоИнтервала
" [Функции работы с временем]
syn keyword 1cStd		ТекущееВремя
" [Функции преобразования типов]
syn keyword 1cStd		Дата Строка Число
" [Функции работы с позицией документа]
syn keyword 1cStd		СформироватьПозициюДокумента РазобратьПозициюДокумента
" [Процедуры и функции форматирования]
syn keyword 1cStd		Пропись Формат Шаблон ФиксШаблон
" [Функции для вызова диалога ввода данных]
syn keyword 1cStd		ВвестиЗначение ВвестиЧисло ВвестиСтроку ВвестиДату ВвестиПериод ВвестиПеречисление
" [Процедуры и функции общего назначения]
syn keyword 1cStd		Вопрос Предупреждение Сообщить ОчиститьОкноСообщений Состояние ?	Сигнал Разм
" [Функции среды исполнения]
syn keyword 1cStd		ЗаголовокСистемы ИмяКомпьютера ИмяПользователя ПолноеИмяПользователя НазваниеНабораПрав ПравоДоступа НазваниеИнтерфейса КаталогПользователя КаталогИБ КаталогПрограммы КаталогВременныхФайлов МонопольныйРежим ОсновнойЯзык
" [Процедуры работы с транзакциями]
syn keyword 1cStd		НачатьТранзакцию ЗафиксироватьТранзакцию ОтменитьТранзакцию
" [Специальные процедуры и функции]
syn keyword 1cStd		СоздатьОбъект СтатусВозврата ОткрытьФорму ОткрытьФормуМодально ТипЗначения ТипЗначенияСтр ПустоеЗначение ПолучитьПустоеЗначение НазначитьВид ЗаписьЖурналаРегистрации ПрефиксАвтоНумерации ПолучитьЗначенияОтбора КомандаСистемы ЗапуститьПриложение ЗавершитьРаботуСистемы НайтиПомеченныеНаУдаление НайтиСсылки УдалитьОбъекты ОбработкаОжидания
" [Процедуры и функции обработки значений]
syn keyword 1cStd		ЗначениеВСтрокуВнутр ЗначениеИзСтрокиВнутр ЗначениеВСтроку ЗначениеИзСтроки ЗначениеВФайл ЗначениеИзФайла СохранитьЗначение ВосстановитьЗначение
" [Процедуры и функции компоненты «Оперативный учет»]
syn keyword 1cStd		ПолучитьТА ПолучитьДатуТА ПолучитьВремяТА ПолучитьДокументТА ПолучитьПозициюТА УстановитьТАна УстановитьТАпо
" [Процедуры и функции компоненты «Бухгалтерский учет»]
syn keyword 1cStd		ВыбранныйПланСчетов ОсновнойПланСчетов СчетПоКоду НачалоПериодаБИ КонецПериодаБИ КонецРассчитанногоПериодаБИ НазначитьСчет ВвестиПланСчетов ВвестиВидСубконто МаксимальноеКоличествоСубконто
" [Процедуры и функции компоненты «Расчет»]
syn keyword 1cStd		ОсновнойЖурналРасчетов


syn match  1cPreProc		"^[ 	]*#ЗагрузитьИзФайла .*"
syn match  1cPreProc		"^[ 	]*#LoadFromFile .*"
syn region 1cString	start=+"+  end=+"+
syn region 1cComment	start="//" end="$"





highlight link 1cConditional	Conditional
highlight link 1cStatement	Statement
highlight link 1cRepeat		Repeat
highlight link 1cException	Exception
highlight link 1cPreProc	PreProc
highlight link 1cSymbol		Constant
highlight link 1cString		String
highlight link 1cComment	Comment
highlight link 1cPredefined	Statement
highlight link 1cStd		Special
