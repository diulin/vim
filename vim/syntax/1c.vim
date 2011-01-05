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
" set language preferences
scriptencoding cp1251


syn case ignore

syn keyword 1cStatement		contained Procedure EndProcedure
syn keyword 1cStatement		contained ��������� ��������������
syn keyword 1cStatement		contained Forward �����
syn keyword 1cStatement		contained ������� ������� ������������
syn keyword 1cStatement		contained Function Return EndFunction Export
syn keyword 1cStatement		�����
syn keyword 1cStatement		Var
" syn keyword 1cConditional	contained If Then ElsIf Then Else EndIf
" syn keyword 1cConditional	contained ���� ����� ��������� ����� ����� ���������
syn keyword 1cConditional	If Then ElsIf Then Else EndIf
syn keyword 1cConditional	���� ����� ��������� ����� ����� ���������
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

syn keyword 1cStd	�������������
syn keyword 1cStd	?
syn keyword 1cStd	����
syn keyword 1cStd	����
syn keyword 1cStd	���������
syn keyword 1cStd	�������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	����������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	��������
syn keyword 1cStd	�����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	����
syn keyword 1cStd	�����������
syn keyword 1cStd	��������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����
syn keyword 1cStd	�����
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	���
syn keyword 1cStd	�������������
syn keyword 1cStd	����������
syn keyword 1cStd	��������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	�����������������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������
syn keyword 1cStd	�������
syn keyword 1cStd	���������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	����
syn keyword 1cStd	�����
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������
syn keyword 1cStd	�����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������
syn keyword 1cStd	�����
syn keyword 1cStd	�����������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	���������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	���������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	����
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	������������������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	��������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	���������
syn keyword 1cStd	���
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	������
syn keyword 1cStd	�������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	���������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	����������������������������������
syn keyword 1cStd	���������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������
syn keyword 1cStd	���
syn keyword 1cStd	����
syn keyword 1cStd	�����
syn keyword 1cStd	�������
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����
syn keyword 1cStd	������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������
syn keyword 1cStd	����������
syn keyword 1cStd	����
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������
syn keyword 1cStd	�����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������
syn keyword 1cStd	�������������
syn keyword 1cStd	����������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����������
syn keyword 1cStd	��������
syn keyword 1cStd	���������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	����������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	���
syn keyword 1cStd	����������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����
syn keyword 1cStd	������
syn keyword 1cStd	���
syn keyword 1cStd	�������������
syn keyword 1cStd	����������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������
syn keyword 1cStd	����������������
syn keyword 1cStd	����
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	����������
syn keyword 1cStd	���������
syn keyword 1cStd	���������������������������������
syn keyword 1cStd	���������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���
syn keyword 1cStd	���10
syn keyword 1cStd	������������������
syn keyword 1cStd	��������6����
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����
syn keyword 1cStd	������
syn keyword 1cStd	�����
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������
syn keyword 1cStd	������
syn keyword 1cStd	����
syn keyword 1cStd	������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	����������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	�����������������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������
syn keyword 1cStd	����������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	����������
syn keyword 1cStd	��������������������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	����������������������������
syn keyword 1cStd	��������������������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������
syn keyword 1cStd	�����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�����������������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	����
syn keyword 1cStd	��������
syn keyword 1cStd	���������
syn keyword 1cStd	�����������������
syn keyword 1cStd	��������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������
syn keyword 1cStd	������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������������������������
syn keyword 1cStd	����������
syn keyword 1cStd	��������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������
syn keyword 1cStd	����������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	����
syn keyword 1cStd	������������
syn keyword 1cStd	������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	�����
syn keyword 1cStd	�����������
syn keyword 1cStd	����������
syn keyword 1cStd	����������
syn keyword 1cStd	�����������
syn keyword 1cStd	������������
syn keyword 1cStd	������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�������
syn keyword 1cStd	�������
syn keyword 1cStd	�������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	��������
syn keyword 1cStd	���������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�����������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������
syn keyword 1cStd	����������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����������
syn keyword 1cStd	���������
syn keyword 1cStd	������������������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	�����������
syn keyword 1cStd	�������
syn keyword 1cStd	���������
syn keyword 1cStd	������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	��������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	��������
syn keyword 1cStd	��������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�������������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	����������
syn keyword 1cStd	�������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�������������
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	����������
syn keyword 1cStd	����������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	���������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	���������
syn keyword 1cStd	������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	�������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������
syn keyword 1cStd	���������
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	����������
syn keyword 1cStd	��������
syn keyword 1cStd	��������������
syn keyword 1cStd	��������������������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������
syn keyword 1cStd	������������������
syn keyword 1cStd	��������������
syn keyword 1cStd	��
syn keyword 1cStd	�������
syn keyword 1cStd	���������������
syn keyword 1cStd	�������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����
syn keyword 1cStd	�������������
syn keyword 1cStd	����������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	������������
syn keyword 1cStd	�������
syn keyword 1cStd	�����������
syn keyword 1cStd	������������
syn keyword 1cStd	��������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	�������
syn keyword 1cStd	����������������
syn keyword 1cStd	��������
syn keyword 1cStd	�������������������
syn keyword 1cStd	������������������
syn keyword 1cStd	�����
syn keyword 1cStd	������
syn keyword 1cStd	����������
syn keyword 1cStd	���������������
syn keyword 1cStd	���������������������������
syn keyword 1cStd	�����������������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�������������������
syn keyword 1cStd	����������������
syn keyword 1cStd	�����������������
syn keyword 1cStd	�������������
syn keyword 1cStd	��������
syn keyword 1cStd	����������
syn keyword 1cStd	��������
syn keyword 1cStd	����������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������������������
syn keyword 1cStd	�������������
syn keyword 1cStd	������������
syn keyword 1cStd	�����
syn keyword 1cStd	���
syn keyword 1cStd	�����
syn keyword 1cStd	����������������
syn keyword 1cStd	���������������
syn keyword 1cStd	������������
syn keyword 1cStd	���������
syn keyword 1cStd	���������������������
syn keyword 1cStd	AnsiToOem
syn keyword 1cStd	CreateObject
syn keyword 1cStd	EvalExpr
syn keyword 1cStd	ExecuteBatch
syn keyword 1cStd	Initialize
syn keyword 1cStd	OemToAnsi
syn keyword 1cStd	Windows�������
syn keyword 1cStd	�������


syn match  1cPreProc		"^[ 	]*#���������������� .*"
syn match  1cPreProc		"^[ 	]*#LoadFromFile .*"
syn region 1cString	start=+"+  end=+"+
syn region 1cComment	start="//" end="$"
syn sync ccomment 1cString fromstart

" syn region 1cForwardProc start="^\s*\(���������\|Procedure\|�������\|Function\)" end="\(�����\|Forward\)"

" syn region 1cCustFold   start="//.*{{{" end="//.*}}}"  contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc transparent fold keepend extend
syn region 1cCustFold   start="//.*{{{" end="//.*}}}"  contains=1cProcFold,1cFuncFold,1cIfFold,1cTryFold,1cWhileFold,1cForFold,1cComment,1cStatement,1cString,1cStd transparent fold keepend extend



syn region 1cProcFold start="^\s*\<���������\>" end="^\s*\<��������������\>" contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc transparent fold keepend
syn region 1cFuncFold start="^\s*\<�������\>"   end="^\s*\<������������\>"  contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc transparent fold keepend
syn region 1cIfFold   start="^\s*\<����\>" end="^\s*\<���������;" contains=ALLBUT,1cIfOneLine,1cFuncFold,1cProcFold,1cForwardProc contained transparent fold keepend extend
syn region 1cTryFold   start="^\s*\<�������\>.*" end="^\s*\<������������;.*" contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc contained transparent fold keepend extend
syn region 1cWhileFold   start="^\s*\<����\>.*\<����\>" end="^\s*\<����������;" contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc contained transparent fold keepend extend
syn region 1cForFold   start="^\s*\<���\>.*\<����\>" end="^\s*\<����������;.*" contains=ALLBUT,1cFuncFold,1cProcFold,1cForwardProc contained transparent fold keepend extend
" syn region 1cLotOfComment   start="^\s*//.*" end="^\s*//.*" contains=1cComment contained transparent fold keepend extend


"
" keepend
" keepend extend
syn sync fromstart


highlight link 1cIfOneLine	PreProc

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
