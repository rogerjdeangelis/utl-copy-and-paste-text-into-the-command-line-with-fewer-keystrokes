%let pgm=utl-copy and paste text into the command line with fewer keystrokes;

Copy and paste text into the command line with fewer keystrokes

github
https://tinyurl.com/2p99ar2t

Sort of interesting command macro for the classic 1980's SAS editor

Copy any text in any classic editor pgm, out, log, notebooks to the command line
with just 2 keystrokes (cntl-c and cntl_v use 4 keys

Hihglight the test and type 'pj' on the classic command line (not EE)

I realize cntl-c and cntl-c do the same think, but this uses less key strokes

%macro pj/cmd des="copy any highlighted text ro the command line";
  store;paste;
%mend pj;

INPUT

COMAND ===> pj

00001
00002
00003 Highlight this line and type pj on the command line above
00004
00005

OUTPUT

COMAND ===> Highlight this line and type pj on the command line above

00001
00002
00003 Highlight this line and type pj on the command line above
00004
00005

PROCESS

%macro pj/cmd des="copy any highlighted text to the classic editor command line";
  store;paste;
%mend pj;
