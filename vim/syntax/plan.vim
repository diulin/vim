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
syn keyword 1cConditional	���� ����� ��������� ����� ����� ���������
syn keyword 1cStatement		Procedure EndProcedure Forward
syn keyword 1cStatement		��������� �������������� �����
syn keyword 1cStatement		������� ������� ������������
syn keyword 1cStatement		Function Return EndFunction Export

syn keyword 1cStatement		�����
syn keyword 1cStatement		Var

syn keyword 1cRepeat		���� ���� ���������� ���������� ��������
syn keyword 1cRepeat		While Do EndDo Continue Break
syn keyword 1cRepeat		��� �� ���� ����������
syn keyword 1cRepeat		For To Do EndDo

syn keyword 1cException		������� ���������� ������������ �����������������
syn keyword 1cException		Try Except EndTry Raise

syn keyword 1cLabel		������� 
syn keyword 1cLabel		Goto 

syn keyword 1cSymbol		������������������ ���������������� ���������������
syn keyword 1cSymbol		PageBreak LineBreak TabSymbol

" [�������������� �������]
syn keyword 1cStd		��� ��� ��� ���� ���10 ���
" [��������� �������]
syn keyword 1cStd		�������� ������������ ����� ����� ������ ��� ���� ���� ����� ����������� ����������������� ������������������ ����������������� ���� ���� OemToAnsi AnsiToOem ���� �������
" [������� ������ � �����]
syn keyword 1cStd		����������� ����������� ������������� ��������� ��������� ����������� ����������� ������� ������� ��������� ��������� ������� ��������� ��������� ��������������� ������������ �������������� ��������� ��������������������������� ��������������������������
" [������� ������ � ��������]
syn keyword 1cStd		������������
" [������� �������������� �����]
syn keyword 1cStd		���� ������ �����
" [������� ������ � �������� ���������]
syn keyword 1cStd		���������������������������� �������������������������
" [��������� � ������� ��������������]
syn keyword 1cStd		������� ������ ������ ����������
" [������� ��� ������ ������� ����� ������]
syn keyword 1cStd		�������������� ����������� ������������ ���������� ������������ ������������������
" [��������� � ������� ������ ����������]
syn keyword 1cStd		������ �������������� �������� ��������������������� ��������� ?	������ ����
" [������� ����� ����������]
syn keyword 1cStd		���������������� ������������� ��������������� ��������������������� ������������������ ������������ ������������������ ������������������� ��������� ���������������� ���������������������� ���������������� ������������
" [��������� ������ � ������������]
syn keyword 1cStd		���������������� ����������������������� ������������������
" [����������� ��������� � �������]
syn keyword 1cStd		������������� �������������� ������������ �������������������� ����������� �������������� �������������� ���������������������� ������������ ������������������������ �������������������� ���������������������� �������������� ������������������� ���������������������� ������������������������� ����������� �������������� �����������������
" [��������� � ������� ��������� ��������]
syn keyword 1cStd		�������������������� ��������������������� ��������������� ���������������� ������������� ��������������� ����������������� ��������������������
" [��������� � ������� ���������� ������������ ����]
syn keyword 1cStd		���������� �������������� ��������������� ������������������ ����������������� �������������� ��������������
" [��������� � ������� ���������� �������������� ����]
syn keyword 1cStd		������������������� ������������������ ���������� ��������������� �������������� ��������������������������� ������������� ���������������� ����������������� ������������������������������
" [��������� � ������� ���������� �������]
syn keyword 1cStd		����������������������


syn match  1cPreProc		"^[ 	]*#���������������� .*"
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
