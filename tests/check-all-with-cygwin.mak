# Makefile for libiconv/tests

#### Start of system configuration section. ####

# Define bindir where to find executables.
ifeq ($(bindir),)
    bindir=.
endif

# Directories used by "make":
srcdir = .

# Programs used by "make":
RM = rm -f

#### End of system configuration section. ####

SHELL = /bin/sh

all :	$(bindir)/gengb18030z.exe \
	$(bindir)/genutf8.exe \
	$(bindir)/iconv.exe \
	$(bindir)/table-from.exe \
	$(bindir)/table-to.exe \
	$(bindir)/test-shiftseq.exe \
	$(bindir)/test-to-wchar.exe

check : all
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ASCII
#	/* General multi-byte encodings */
	$(bindir)/genutf8 > UTF-8.TXT && \
		env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) UTF-8 && \
		$(RM) -r genutf8.dSYM UTF-8.TXT
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-2BE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-2LE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-4BE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-4LE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16BE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16LE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32BE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32LE
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-7
#	/* 8-bit encodings */
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-1
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-2
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-3
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-4
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-5
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-6
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-7
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-8
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-9
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-10
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-11
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-13
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-14
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-15
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-16
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-R
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-U
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-RU
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1250
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1251
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1252
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1253
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1254
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1255
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) CP1255
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1256
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1257
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1258
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) CP1258
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP850
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP862
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP866
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1131
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacRoman
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCentralEurope
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacIceland
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCroatian
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacRomania
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCyrillic
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacUkraine
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacGreek
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacTurkish
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacHebrew
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacArabic
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MacThai
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) HP-ROMAN8
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) NEXTSTEP
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ARMSCII-8
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) Georgian-Academy
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) Georgian-PS
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-T
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) PT154
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) RK1048
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) MuleLao-1
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1133
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) TIS-620
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP874
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) VISCII
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) TCVN
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) TCVN
#	/* CJK character sets */
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO646-JP
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0201
#	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0208 # redundant, see EUC-JP
#	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0212 # redundant, see EUC-JP
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO646-CN
#	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) GB_2312-80 # redundant, see EUC-CN
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-IR-165
#	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) KSC_5601 # redundant, see EUC-KR
#	/* CJK encodings */
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-JP
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) SHIFT_JIS
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP932
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-2
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-1
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-MS
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-CN
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) GBK
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP936
	{ cat $(srcdir)/GB18030-BMP.TXT ; $(bindir)/gengb18030z ; } | sort > GB18030.TXT && \
		env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) GB18030 && \
		$(RM) -r gengb18030z.dSYM GB18030.TXT
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-CN
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-CN-EXT
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) HZ
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-TW
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP950
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:1999
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:1999
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2001
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2001
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2004
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2004
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2008
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2008
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-KR
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP949
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) JOHAB
	env BINDIR=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-KR
#	/* system dependent and extra encodings */
#	/* DOS specific encodings */
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP437
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP737
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP775
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP852
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP853
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP855
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP857
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP858
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP860
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP861
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP863
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP864
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP865
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP869
	env BINDIR=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1125
#	/* transliteration */
	env BINDIR=$(bindir) $(srcdir)/check-translit $(srcdir) Quotes UTF-8 ISO-8859-1
	env BINDIR=$(bindir) $(srcdir)/check-translit $(srcdir) Quotes UTF-8 ASCII
	env BINDIR=$(bindir) $(srcdir)/check-translit $(srcdir) Translit1 ISO-8859-1 ASCII
	env BINDIR=$(bindir) $(srcdir)/check-translitfailure $(srcdir) TranslitFail1 ISO-8859-1 ASCII
#	/* substitution */
	env BINDIR=$(bindir) $(srcdir)/check-subst
#	/* shift sequence before invalid multibyte character */
	$(bindir)/test-shiftseq
#	/* conversion to wchar_t */
	$(bindir)/test-to-wchar

