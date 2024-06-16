" Syntax highlighting for OSYRIS log files
"
" written by stmer
"
" Times, dates, flight IDs, STARs, Areas, monitoring
" criteria
syntax match Constant /\<[A-Z0-9\-_]\{5,}\>/
syntax match Constant /\d\{2}:\d\{2}:\d\{2}/
syntax match Constant /\d\{4}-\d\{2}-\d\{2}/
syntax match Constant /\d\+s/
syntax keyword Constant ZEROTIME UNLIMITED
syntax match Constant /id:[ ]*\d\+/
syntax match Constant /Id \d\+/
syntax match Constant /\<\w*Area\w*\>/
syntax match Constant /\<Hld\w*\>/
syntax match Constant /[\+\-]\d\d\d\.\d\+/
syntax match Constant /<invalid>/

" Callsigns, RWYs, fixes
syntax match Identifier /\<[A-Z][A-Z0-9]\{1,6}\>/
syntax match Identifier /\<\d\d[RCL]\>/

" Events
syntax match Type /EVENT\[.*\]:/
syntax match Type /EVENT(\d\+)\[.*\]:/
syntax match Type /END OF EVENT:/
syntax match Type /END OF EVENT(\d\+):/

" Separators, source code references
syntax match Comment /++.\+/
syntax match Comment /(\w\+\.C:\d\+)/

" Line start
syntax match PreProc /^.*: Debug:/
syntax match PreProc /^.*: Info:/
syntax match PreProc /^.*: Note:/
syntax match PreProc /^.*: Stat:/

syntax match Error /^.*: Warning:/
syntax match Error /^.*: Error:/

" Several fixed keywords
syntax match Keyword /TRJ_[A-Z_]\+/
syntax match Keyword /ERR_[A-Z_]\+/
syntax match Keyword /WAR_[A-Z_]\+/
syntax match Keyword /MONITOR_[A-Z_]\+/
syntax match Keyword /TP_[A-Z_]\+/
syntax keyword Keyword PREFERRED MAXACC NONE SPEED CHANGES INBOUND CAS TAS GROUND ADVISORY REPLACE IGNORE_ETO ABOVE_MAX_SPD WAY_POINT_PASSING INB SLT PLN CONTEXT DEFAULT FREE
syntax match Keyword /<*====*>*/
syntax match Keyword / [MHJUS] /

" Don't highlight (exclude from callsign match)
syntax keyword NoHighlight STAR ETO FPL RWY RTO TMA FIR O4D ATD ID WTC SPD CAT SID SSR ETA
syntax match NoHighlight / M\w. /
syntax match NoHighlight / S-- /
syntax match NoHighlight / MR T/
syntax match NoHighlight /[em] TP/

" Folding
"syntax region firstLevelEvent start=/EVENT(4)[^:]/ end=/Periodic/ transparent fold
