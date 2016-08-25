@ECHO OFF

if not .%TESTBIN%. == .. goto :next1
set TESTBIN=.
:next1
if not .%SRCDIR%. == .. goto :start
set SRCDIR=.
:start

call %SRCDIR%\check-stateless %SRCDIR% ASCII
@rem	/* General multi-byte encodings */
del /f %SRCDIR%\UTF-8.TXT
%TESTBIN%/genutf8 > %SRCDIR%\UTF-8.TXT && call %SRCDIR%\check-stateless %SRCDIR% UTF-8 && del /f %SRCDIR%\genutf8.dSYM %SRCDIR%\UTF-8.TXT
call %SRCDIR%\check-stateful %SRCDIR% UCS-2BE
call %SRCDIR%\check-stateful %SRCDIR% UCS-2LE
call %SRCDIR%\check-stateful %SRCDIR% UCS-4BE
call %SRCDIR%\check-stateful %SRCDIR% UCS-4LE
call %SRCDIR%\check-stateful %SRCDIR% UTF-16
call %SRCDIR%\check-stateful %SRCDIR% UTF-16BE
call %SRCDIR%\check-stateful %SRCDIR% UTF-16LE
call %SRCDIR%\check-stateful %SRCDIR% UTF-32
call %SRCDIR%\check-stateful %SRCDIR% UTF-32BE
call %SRCDIR%\check-stateful %SRCDIR% UTF-32LE
call %SRCDIR%\check-stateful %SRCDIR% UTF-7
@rem	/* 8-bit encodings */
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-1
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-2
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-3
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-4
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-5
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-6
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-7
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-8
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-9
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-10
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-11
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-13
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-14
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-15
call %SRCDIR%\check-stateless %SRCDIR% ISO-8859-16
call %SRCDIR%\check-stateless %SRCDIR% KOI8-R
call %SRCDIR%\check-stateless %SRCDIR% KOI8-U
call %SRCDIR%\check-stateless %SRCDIR% KOI8-RU
call %SRCDIR%\check-stateless %SRCDIR% CP1250
call %SRCDIR%\check-stateless %SRCDIR% CP1251
call %SRCDIR%\check-stateless %SRCDIR% CP1252
call %SRCDIR%\check-stateless %SRCDIR% CP1253
call %SRCDIR%\check-stateless %SRCDIR% CP1254
call %SRCDIR%\check-stateless %SRCDIR% CP1255
call %SRCDIR%\check-stateful %SRCDIR% CP1255
call %SRCDIR%\check-stateless %SRCDIR% CP1256
call %SRCDIR%\check-stateless %SRCDIR% CP1257
call %SRCDIR%\check-stateless %SRCDIR% CP1258
call %SRCDIR%\check-stateful %SRCDIR% CP1258
call %SRCDIR%\check-stateless %SRCDIR% CP850
call %SRCDIR%\check-stateless %SRCDIR% CP862
call %SRCDIR%\check-stateless %SRCDIR% CP866
call %SRCDIR%\check-stateless %SRCDIR% CP1131
call %SRCDIR%\check-stateless %SRCDIR% MacRoman
call %SRCDIR%\check-stateless %SRCDIR% MacCentralEurope
call %SRCDIR%\check-stateless %SRCDIR% MacIceland
call %SRCDIR%\check-stateless %SRCDIR% MacCroatian
call %SRCDIR%\check-stateless %SRCDIR% MacRomania
call %SRCDIR%\check-stateless %SRCDIR% MacCyrillic
call %SRCDIR%\check-stateless %SRCDIR% MacUkraine
call %SRCDIR%\check-stateless %SRCDIR% MacGreek
call %SRCDIR%\check-stateless %SRCDIR% MacTurkish
call %SRCDIR%\check-stateless %SRCDIR% MacHebrew
call %SRCDIR%\check-stateless %SRCDIR% MacArabic
call %SRCDIR%\check-stateless %SRCDIR% MacThai
call %SRCDIR%\check-stateless %SRCDIR% HP-ROMAN8
call %SRCDIR%\check-stateless %SRCDIR% NEXTSTEP
call %SRCDIR%\check-stateless %SRCDIR% ARMSCII-8
call %SRCDIR%\check-stateless %SRCDIR% Georgian-Academy
call %SRCDIR%\check-stateless %SRCDIR% Georgian-PS
call %SRCDIR%\check-stateless %SRCDIR% KOI8-T
call %SRCDIR%\check-stateless %SRCDIR% PT154
call %SRCDIR%\check-stateless %SRCDIR% RK1048
call %SRCDIR%\check-stateless %SRCDIR% MuleLao-1
call %SRCDIR%\check-stateless %SRCDIR% CP1133
call %SRCDIR%\check-stateless %SRCDIR% TIS-620
call %SRCDIR%\check-stateless %SRCDIR% CP874
call %SRCDIR%\check-stateless %SRCDIR% VISCII
call %SRCDIR%\check-stateless %SRCDIR% TCVN
call %SRCDIR%\check-stateful %SRCDIR% TCVN
@rem	/* CJK character sets */
call %SRCDIR%\check-stateless %SRCDIR% ISO646-JP
call %SRCDIR%\check-stateless %SRCDIR% JIS_X0201
@rem	%SRCDIR%\check-stateless %SRCDIR% JIS_X0208 # redundant, see EUC-JP
@rem	%SRCDIR%\check-stateless %SRCDIR% JIS_X0212 # redundant, see EUC-JP
call %SRCDIR%\check-stateless %SRCDIR% ISO646-CN
@rem	%SRCDIR%\check-stateless %SRCDIR% GB_2312-80 # redundant, see EUC-CN
call %SRCDIR%\check-stateless %SRCDIR% ISO-IR-165
@rem	%SRCDIR%\check-stateless %SRCDIR% KSC_5601 # redundant, see EUC-KR
@rem	/* CJK encodings */
call %SRCDIR%\check-stateless %SRCDIR% EUC-JP
call %SRCDIR%\check-stateless %SRCDIR% SHIFT_JIS
call %SRCDIR%\check-stateless %SRCDIR% CP932
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-JP
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-JP-2
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-JP-1
call %SRCDIR%\check-stateless %SRCDIR% EUC-CN
call %SRCDIR%\check-stateless %SRCDIR% GBK
call %SRCDIR%\check-stateless %SRCDIR% CP936
del /f %SRCDIR%\gb18030-test.tmp %SRCDIR%\GB18030.TXT
copy %SRCDIR%\GB18030-BMP.TXT %SRCDIR%\gb18030-test.tmp && %TESTBIN%/gengb18030z >> %SRCDIR%\gb18030-test.tmp && sort %SRCDIR%\gb18030-test.tmp > %SRCDIR%\GB18030.TXT && call %SRCDIR%\check-stateless %SRCDIR% GB18030 && del /f %SRCDIR%\gengb18030z.dSYM %SRCDIR%\GB18030.TXT %SRCDIR%\gb18030-test.tmp
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-CN
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-CN-EXT
call %SRCDIR%\check-stateful %SRCDIR% HZ
call %SRCDIR%\check-stateless %SRCDIR% EUC-TW
call %SRCDIR%\check-stateless %SRCDIR% BIG5
call %SRCDIR%\check-stateless %SRCDIR% CP950
call %SRCDIR%\check-stateless %SRCDIR% BIG5-HKSCS:1999
call %SRCDIR%\check-stateful %SRCDIR% BIG5-HKSCS:1999
call %SRCDIR%\check-stateless %SRCDIR% BIG5-HKSCS:2001
call %SRCDIR%\check-stateful %SRCDIR% BIG5-HKSCS:2001
call %SRCDIR%\check-stateless %SRCDIR% BIG5-HKSCS:2004
call %SRCDIR%\check-stateful %SRCDIR% BIG5-HKSCS:2004
call %SRCDIR%\check-stateless %SRCDIR% BIG5-HKSCS:2008
call %SRCDIR%\check-stateful %SRCDIR% BIG5-HKSCS:2008
call %SRCDIR%\check-stateless %SRCDIR% EUC-KR
call %SRCDIR%\check-stateless %SRCDIR% CP949
call %SRCDIR%\check-stateless %SRCDIR% JOHAB
call %SRCDIR%\check-stateful %SRCDIR% ISO-2022-KR
@rem	/* system dependent and extra encodings */
@rem	/* DOS specific encodings */
call %SRCDIR%\check-stateless %SRCDIR% CP437
call %SRCDIR%\check-stateless %SRCDIR% CP737
call %SRCDIR%\check-stateless %SRCDIR% CP775
call %SRCDIR%\check-stateless %SRCDIR% CP852
call %SRCDIR%\check-stateless %SRCDIR% CP853
call %SRCDIR%\check-stateless %SRCDIR% CP855
call %SRCDIR%\check-stateless %SRCDIR% CP857
call %SRCDIR%\check-stateless %SRCDIR% CP858
call %SRCDIR%\check-stateless %SRCDIR% CP860
call %SRCDIR%\check-stateless %SRCDIR% CP861
call %SRCDIR%\check-stateless %SRCDIR% CP863
call %SRCDIR%\check-stateless %SRCDIR% CP864
call %SRCDIR%\check-stateless %SRCDIR% CP865
call %SRCDIR%\check-stateless %SRCDIR% CP869
call %SRCDIR%\check-stateless %SRCDIR% CP1125
@rem	/* transliteration */
call %SRCDIR%\check-translit %SRCDIR% Quotes UTF-8 ISO-8859-1
call %SRCDIR%\check-translit %SRCDIR% Quotes UTF-8 ASCII
call %SRCDIR%\check-translit %SRCDIR% Translit1 ISO-8859-1 ASCII
call %SRCDIR%\check-translitfailure %SRCDIR% TranslitFail1 ISO-8859-1 ASCII
@rem	/* substitution */
call %SRCDIR%\check-subst
@rem	/* shift sequence before invalid multibyte character */
%TESTBIN%/test-shiftseq
@rem	/* conversion to wchar_t */
%TESTBIN%/test-to-wchar
