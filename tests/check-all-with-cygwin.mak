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
	$(bindir)/is-native.exe \
	$(bindir)/test-shiftseq.exe \
	$(bindir)/test-to-wchar.exe \
	$(bindir)/test-bom-state.exe \
	$(bindir)/test-discard.exe

check : all
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ASCII
#	/* General multi-byte encodings */
	$(bindir)/genutf8 > UTF-8.TXT && \
		env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) UTF-8 && \
		$(RM) -r UTF-8.TXT
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-2BE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-2LE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-4BE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UCS-4LE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16BE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-16LE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32BE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-32LE
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) UTF-7
#	/* 8-bit encodings */
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-1
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-2
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-3
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-4
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-5
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-6
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-7
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-8
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-9
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-10
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-11
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-13
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-14
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-15
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-8859-16
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-R
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-U
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-RU
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1250
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1251
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1252
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1253
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1254
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1255
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) CP1255
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1256
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1257
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1258
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) CP1258
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP850
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP862
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP866
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1131
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacRoman
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCentralEurope
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacIceland
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCroatian
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacRomania
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacCyrillic
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacUkraine
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacGreek
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacTurkish
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacHebrew
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacArabic
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MacThai
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) HP-ROMAN8
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) NEXTSTEP
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ARMSCII-8
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) Georgian-Academy
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) Georgian-PS
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) KOI8-T
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) PT154
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) RK1048
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) MuleLao-1
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1133
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) TIS-620
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP874
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) VISCII
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) TCVN
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) TCVN
#	/* CJK character sets */
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO646-JP
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0201
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0208 # redundant, see EUC-JP
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) JIS_X0212 # redundant, see EUC-JP
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO646-CN
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) GB_2312-80 # redundant, see EUC-CN
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ISO-IR-165
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) KSC_5601 # redundant, see EUC-KR
#	/* CJK encodings */
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-JP
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) SHIFT_JIS
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP932
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-2
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-1
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-MS
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-CN
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) GBK
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP936
	{ cat $(srcdir)/GB18030-2005-BMP.TXT ; $(bindir)/gengb18030z ; } | sort > GB18030-2005.TXT && \
		env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) GB18030:2005 && \
		$(RM) -r GB18030-2005.TXT
	{ cat $(srcdir)/GB18030-2022-BMP.TXT ; $(bindir)/gengb18030z ; } | sort > GB18030-2022.TXT && \
		env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) GB18030:2022 && \
		$(RM) -r GB18030-2022.TXT
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-CN
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-CN-EXT
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) HZ
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-TW
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP950
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:1999
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:1999
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2001
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2001
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2004
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2004
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-HKSCS:2008
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) BIG5-HKSCS:2008
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-KR
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP949
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) JOHAB
	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-KR
#	/* system dependent and extra encodings */
#	/* AIX specific encodings */
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP856
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP922
##	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP943
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1046
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1124
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1129
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1161
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1162
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1163
#	/* OSF/1 specific encodings */
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) DEC-KANJI
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) DEC-HANYU
#	/* DOS specific encodings */
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP437
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP737
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP775
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP852
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP853
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP855
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP857
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP858
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP860
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP861
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP863
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP864
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP865
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP869
	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) CP1125
#	/* z/OS specific encodings, i.e. EBCDIC encodings */
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-037
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-273
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-277
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-278
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-280
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-282
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-284
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-285
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-297
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-423
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-424
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-425
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-500
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-838
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-870
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-871
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-875
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-880
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-905
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-924
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1025
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1026
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1047
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1097
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1112
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1122
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1123
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1130
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1132
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1137
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1140
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1141
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1142
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1143
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1144
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1145
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1146
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1147
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1148
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1149
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1153
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1154
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1155
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1156
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1157
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1158
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1160
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1164
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1165
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-1166
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-4971
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-12712
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) IBM-16804
#	/* Extra encodings */
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) EUC-JISX0213
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) SHIFT_JISX0213
#	env bindir=$(bindir) $(srcdir)/check-stateful $(srcdir) ISO-2022-JP-3
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) BIG5-2003
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) TDS565
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) ATARIST
#	env bindir=$(bindir) $(srcdir)/check-stateless $(srcdir) RISCOS-LATIN1
#	/* transliteration */
	env bindir=$(bindir) $(srcdir)/check-translit $(srcdir) Quotes UTF-8 ISO-8859-1
	env bindir=$(bindir) $(srcdir)/check-translit $(srcdir) Quotes UTF-8 ASCII
	env bindir=$(bindir) $(srcdir)/check-translit $(srcdir) Translit1 ISO-8859-1 ASCII
	env bindir=$(bindir) $(srcdir)/check-translitfailure $(srcdir) TranslitFail1 ISO-8859-1 ASCII
#	/* substitution */
	env bindir=$(bindir) $(srcdir)/check-subst
#	/* EBCDIC specific functionality */
#	env bindir=$(bindir) $(srcdir)/check-ebcdic 'win-build'
#	/* test z/OS file tagging */
#	env bindir=$(bindir) $(srcdir)/check-tag 'win-build'
#	/* shift sequence before invalid multibyte character */
	$(bindir)/test-shiftseq
#	/* conversion to wchar_t */
	$(bindir)/test-to-wchar
#	/* byte-order state */
	$(bindir)/test-bom-state
#	/* discard options */
	$(bindir)/test-discard

