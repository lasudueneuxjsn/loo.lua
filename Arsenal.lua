--// Protected by Karrot 1.0 - discord.gg/vPY3XmntKU

return (function()local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIllllI=269;local karrotlIIlllIl=138;local karrotlIIlllII=3;local karrotlIIlIllI=function(a)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';a=string.gsub(a,'[^'..b..'=]','')return a:gsub('.',function(c)if c=='='then return''end;local d,e='',b:find(c)-1;for f=6,1,-1 do d=d..(e%2^f-e%2^(f-1)>0 and'1'or'0')end;return d end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(c)if#c~=8 then return''end;local g=0;for f=1,8 do g=g+(c:sub(f,f)=='1'and 2^(8-f)or 0)end;return string.char(g)end)end;local karrotlIIlllIl=290;local karrotlIIlIlIl=(function()local function a(b)local c={}for d=0,255 do c[d]={}end;c[0][0]=b[1]*255;local e=1;for f=0,7 do for d=0,e-1 do for g=0,e-1 do local h=c[d][g]-b[1]*e;c[d][g+e]=h+b[2]*e;c[d+e][g]=h+b[3]*e;c[d+e][g+e]=h+b[4]*e end end;e=e*2 end;return c end;local i=a{0,1,1,0}local function j(self,k)local l,d,g=self.S,self.i,self.j;local m={}local n=string.char;for o=1,k do d=(d+1)%256;g=(g+l[d])%256;l[d],l[g]=l[g],l[d]m[o]=n(l[(l[d]+l[g])%256])end;self.i,self.j=d,g;return table.concat(m)end;local function p(self,q)local r=j(self,#q)local s={}local t=string.byte;local n=string.char;for d=1,#q do s[d]=n(i[t(q,d)][t(r,d)])end;return table.concat(s)end;local function u(self,v)local l=self.S;local g,w=0,#v;local t=string.byte;for d=0,255 do g=(g+l[d]+t(v,d%w+1))%256;l[d],l[g]=l[g],l[d]end end;function new(v)local l={}local s={S=l,i=0,j=0,generate=j,cipher=p,schedule=u}for d=0,255 do l[d]=d end;if v then s:schedule(v)end;return s end;return new end)();local fev=getfenv or function()return _ENV end;local karrotlIIlIlII=(function()if not bit then local bit_=nil pcall(function()bit_=require('bit') end)bit=bit_ end local bit=bit or bit32 or(function()local a={_TYPE='module',_NAME='bit.numberlua',_VERSION='0.3.1.20120131'}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return''end;F=true;E=-E end;w=z(w,16^E-1)return('%0'..E..(F and'X'or'x')):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a end)()local unpack=table.unpack or unpack;local a3;local a4;local a5;local a6=50;local a7={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local a8={[0]='ABC','ABx','ABC','ABC','ABC','ABx','ABC','ABx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','AsBx','ABC','ABC','ABC','ABx','ABC'}local a9={[0]={b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgR'},{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgU'},{b='OpArgR',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgN',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgN',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgU',c='OpArgN'}}local function aa(ab,s,e,d)local ac=0;for i=s,e,d do ac=ac+string.byte(ab,i,i)*256^(i-s)end;return ac end;local function ad(ae,af,ag,ah)local ai=(-1)^bit.rshift(ah,7)local aj=bit.rshift(ag,7)+bit.lshift(bit.band(ah,0x7F),1)local ak=ae+bit.lshift(af,8)+bit.lshift(bit.band(ag,0x7F),16)local al=1;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7F then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-127)*(1+al/2^23)end;local function am(ae,af,ag,ah,an,ao,ap,aq)local ai=(-1)^bit.rshift(aq,7)local aj=bit.lshift(bit.band(aq,0x7F),4)+bit.rshift(ap,4)local ak=bit.band(ap,0x0F)*2^48;local al=1;ak=ak+ao*2^40+an*2^32+ah*2^24+ag*2^16+af*2^8+ae;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7FF then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-1023)*(al+ak/2^52)end;local function ar(ab,s,e)return aa(ab,s,e-1,1)end;local function as(ab,s,e)return aa(ab,e-1,s,-1)end;local function at(ab,s)return ad(string.byte(ab,s,s+3))end;local function au(ab,s)local ae,af,ag,ah=string.byte(ab,s,s+3)return ad(ah,ag,af,ae)end;local function av(ab,s)return am(string.byte(ab,s,s+7))end;local function aw(ab,s)local ae,af,ag,ah,an,ao,ap,aq=string.byte(ab,s,s+7)return am(aq,ap,ao,an,ah,ag,af,ae)end;local ax={[4]={little=at,big=au},[8]={little=av,big=aw}}local function ay(S)local az=S.index;local aA=string.byte(S.source,az,az)S.index=az+1;return aA end;local function aB(S,aC)local aD=S.index+aC;local aE=string.sub(S.source,S.index,aD-1)S.index=aD;return aE end;local function aF(S)local aC=S:s_szt()local aE;if aC~=0 then aE=string.sub(aB(S,aC),1,-2)end;return aE end;local function aG(aC,aH)return function(S)local aD=S.index+aC;local aI=aH(S.source,S.index,aD)S.index=aD;return aI end end;local function aJ(aC,aH)return function(S)local aK=aH(S.source,S.index)S.index=S.index+aC;return aK end end;local function aL(S)local aM=S:s_int()local aN={}for i=1,aM do local aO=S:s_ins()local aP=bit.band(aO,0x3F)local aQ=a8[aP]local aR=a9[aP]local aS={value=aO,op=a7[aP],A=bit.band(bit.rshift(aO,6),0xFF)}if aQ=='ABC'then aS.B=bit.band(bit.rshift(aO,23),0x1FF)aS.C=bit.band(bit.rshift(aO,14),0x1FF)aS.is_KB=aR.b=='OpArgK'and aS.B>0xFF;aS.is_KC=aR.c=='OpArgK'and aS.C>0xFF elseif aQ=='ABx'then aS.Bx=bit.band(bit.rshift(aO,14),0x3FFFF)aS.is_K=aR.b=='OpArgK'elseif aQ=='AsBx'then aS.sBx=bit.band(bit.rshift(aO,14),0x3FFFF)-131071 end;aN[i]=aS end;return aN end;local function aT(S)local aM=S:s_int()local aU={}for i=1,aM do local aV=ay(S)local k;if aV==1 then k=ay(S)~=0 elseif aV==3 then k=S:s_num()elseif aV==4 then k=aF(S)end;aU[i]=k end;return aU end;local function aW(S,ab)local aM=S:s_int()local aX={}for i=1,aM do aX[i]=a5(S,ab)end;return aX end;local function aY(S)local aM=S:s_int()local aZ={}for i=1,aM do aZ[i]=S:s_int()end;return aZ end;local function a_(S)local aM=S:s_int()local b0={}for i=1,aM do b0[i]={varname=aF(S),startpc=S:s_int(),endpc=S:s_int()}end;return b0 end;local function b1(S)local aM=S:s_int()local b2={}for i=1,aM do b2[i]=aF(S)end;return b2 end;function a5(S,b3)local b4={}local ab=aF(S)or b3;b4.source=ab;S:s_int()S:s_int()b4.numupvals=ay(S)b4.numparams=ay(S)ay(S)ay(S)b4.code=aL(S)b4.const=aT(S)b4.subs=aW(S,ab)b4.lines=aY(S)a_(S)b1(S)for _,v in ipairs(b4.code)do if v.is_K then v.const=b4.const[v.Bx+1]else if v.is_KB then v.const_B=b4.const[v.B-0xFF]end;if v.is_KC then v.const_C=b4.const[v.C-0xFF]end end end;return b4 end;function a3(ab)local b5;local b6;local b7;local b8;local b9;local ba;local bb;local bc={index=1,source=ab}assert(aB(bc,4)=='\27Lua','invalid Lua signature')assert(ay(bc)==0x51,'invalid Lua version')assert(ay(bc)==0,'invalid Lua format')b6=ay(bc)~=0;b7=ay(bc)b8=ay(bc)b9=ay(bc)ba=ay(bc)bb=ay(bc)~=0;b5=b6 and ar or as;bc.s_int=aG(b7,b5)bc.s_szt=aG(b8,b5)bc.s_ins=aG(b9,b5)if bb then bc.s_num=aG(ba,b5)elseif ax[ba]then bc.s_num=aJ(ba,ax[ba][b6 and'little'or'big'])else error('unsupported float size')end;return a5(bc,'@virtual')end;local function bd(be,bf)for i,bg in pairs(be)do if bg.index>=bf then bg.value=bg.store[bg.index]bg.store=bg;bg.index='value'be[i]=nil end end end;local function bh(be,bf,bi)local bj=be[bf]if not bj then bj={index=bf,store=bi}be[bf]=bj end;return bj end;local function bk(...)return select('#',...),{...}end;local function bl(bm,bn)local ab=bm.source;local bo=bm.lines[bm.pc-1]local b3,bp,bq=string.match(bn,'^(.-):(%d+):%s+(.+)')local br='%s:%i: [%s:%i] %s'bo=bo or'0'b3=b3 or'?'bp=bp or'0'bq=bq or bn;error(string.format(br,ab,bo,b3,bp,bq),0)end;local function bs(bm)local aN=bm.code;local bt=bm.subs;local bu=bm.env;local bv=bm.upvals;local bw=bm.varargs;local bx=-1;local by={}local bi=bm.stack;local bz=bm.pc;while true do local bA=aN[bz]local aP=bA.op;bz=bz+1;if aP<18 then if aP<8 then if aP<3 then if aP<1 then for i=bA.A,bA.B do bi[i]=nil end elseif aP>1 then local bg=bv[bA.B]bi[bA.A]=bg.store[bg.index]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB+bC end elseif aP>3 then if aP<6 then if aP>4 then local A=bA.A;local B=bA.B;local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[A+1]=bi[B]bi[A]=bi[B][bf]else bi[bA.A]=bu[bA.const]end elseif aP>6 then local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[bA.A]=bi[bA.B][bf]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB-bC end else bi[bA.A]=bi[bA.B]end elseif aP>8 then if aP<13 then if aP<10 then bu[bA.const]=bi[bA.A]elseif aP>10 then if aP<12 then local A=bA.A;local B=bA.B;local C=bA.C;local bD;local bE,bF;if B==0 then bD=bx-A else bD=B-1 end;bE,bF=bk(bi[A](unpack(bi,A+1,A+bD)))if C==0 then bx=A+bE-1 else bE=C-1 end;for i=1,bE do bi[A+i-1]=bF[i]end else local bg=bv[bA.B]bg.store[bg.index]=bi[bA.A]end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB*bC end elseif aP>13 then if aP<16 then if aP>14 then local A=bA.A;local B=bA.B;local bD;if B==0 then bD=bx-A else bD=B-1 end;bd(by,0)return bk(bi[A](unpack(bi,A+1,A+bD)))else local bf,bG;if bA.is_KB then bf=bA.const_B else bf=bi[bA.B]end;if bA.is_KC then bG=bA.const_C else bG=bi[bA.C]end;bi[bA.A][bf]=bG end elseif aP>16 then bi[bA.A]={}else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB/bC end else bi[bA.A]=bA.const end else local A=bA.A;local bH=bi[A+2]local bf=bi[A]+bH;local bI=bi[A+1]local bJ;if bH==math.abs(bH)then bJ=bf<=bI else bJ=bf>=bI end;if bJ then bi[bA.A]=bf;bi[bA.A+3]=bf;bz=bz+bA.sBx end end elseif aP>18 then if aP<28 then if aP<23 then if aP<20 then bi[bA.A]=#bi[bA.B]elseif aP>20 then if aP<22 then local A=bA.A;local B=bA.B;local bK={}local aM;if B==0 then aM=bx-A+1 else aM=B-1 end;for i=1,aM do bK[i]=bi[A+i-1]end;bd(by,0)return aM,bK else local aE=bi[bA.B]for i=bA.B+1,bA.C do aE=aE..bi[i]end;bi[bA.A]=aE end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB%bC end elseif aP>23 then if aP<26 then if aP>24 then bd(by,bA.A)else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB==bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 end elseif aP>26 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB^bC end else bi[bA.A]=bA.B~=0;if bA.C~=0 then bz=bz+1 end end elseif aP>28 then if aP<33 then if aP<30 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<=bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 elseif aP>30 then if aP<32 then local aX=bt[bA.Bx+1]local bL=aX.numupvals;local bM;if bL~=0 then bM={}for i=1,bL do local bN=aN[bz+i-1]if bN.op==a7[0]then bM[i-1]=bh(by,bN.B,bi)elseif bN.op==a7[4]then bM[i-1]=bv[bN.B]end end;bz=bz+bL end;bi[bA.A]=a4(aX,bu,bM)else local A=bA.A;local B=bA.B;if not bi[B]==(bA.C~=0)then bz=bz+1 else bi[A]=bi[B]end end else bi[bA.A]=-bi[bA.B]end elseif aP>33 then if aP<36 then if aP>34 then local A=bA.A;local aM=bA.B;if aM==0 then aM=bw.size;bx=A+aM-1 end;for i=1,aM do bi[A+i-1]=bw.list[i]end else local A=bA.A;local bO,bI,bH;bO=assert(tonumber(bi[A]),'`for` initial value must be a number')bI=assert(tonumber(bi[A+1]),'`for` limit must be a number')bH=assert(tonumber(bi[A+2]),'`for` step must be a number')bi[A]=bO-bH;bi[A+1]=bI;bi[A+2]=bH;bz=bz+bA.sBx end elseif aP>36 then local A=bA.A;local C=bA.C;local aM=bA.B;local bP=bi[A]local bQ;if aM==0 then aM=bx-A end;if C==0 then C=bA[bz].value;bz=bz+1 end;bQ=(C-1)*a6;for i=1,aM do bP[i+bQ]=bi[A+i]end else bi[bA.A]=not bi[bA.B]end else if not bi[bA.A]==(bA.C~=0)then bz=bz+1 end end else local A=bA.A;local aH=bi[A]local bR=bi[A+1]local bf=bi[A+2]local bS=A+3;local bK;bi[bS+2]=bf;bi[bS+1]=bR;bi[bS]=aH;bK={aH(bR,bf)}for i=1,bA.C do bi[bS+i-1]=bK[i]end;if bi[bS]~=nil then bi[A+2]=bi[bS]else bz=bz+1 end end else bz=bz+bA.sBx end;bm.pc=bz end end;function a4(bR,bu,b2)local bT=bR.code;local bU=bR.subs;local bV=bR.lines;local bW=bR.source;local bX=bR.numparams;local function bY(...)local bi={}local bZ={}local b_=0;local c0,c1=bk(...)local bm;local c2,bn,bK;for i=1,bX do bi[i-1]=c1[i]end;if bX<c0 then b_=c0-bX;for i=1,b_ do bZ[i]=c1[bX+i]end end;bm={varargs={list=bZ,size=b_},code=bT,subs=bU,lines=bV,source=bW,env=bu,upvals=b2,stack=bi,pc=1}c2,bn,bK=pcall(bs,bm,...)if c2 then return unpack(bK,1,bn)else bl(bm,bn)end;return end;return bY end;return function(c3,bu)return a4(a3(c3),bu or fev(0))end end)();local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIIl="\104\78\90\56\110\71\120\101\74\113\78\48\106\80\111\57\112\54\118\86\47\74\73\69\106\115\55\72\101\88\47\51\102\72\66\71\88\119\116\99\48\98\50\47\47\80\104\87\104\66\101\118\66\72\70\85\109\112\110\80\108\86\87\106\101\73\66\103\117\110\48\120\99\109\47\121\67\104\83\108\108\78\69\51\89\75\51\106\101\82\57\70\86\88\68\84\51\116\109\78\48\118\71\120\110\87\88\105\122\47\79\66\47\71\121\56\102\87\122\114\54\74\84\101\75\54\69\48\50\119\66\121\120\89\97\65\119\101\98\74\72\79\116\100\71\86\52\54\109\121\80\104\57\90\111\47\49\104\48\108\77\79\67\67\50\90\68\72\103\104\76\100\83\78\117\112\111\67\109\54\70\87\70\114\121\70\105\67\77\57\48\80\107\100\76\89\98\112\109\81\65\99\109\75\89\104\120\48\53\121\111\51\76\112\99\70\115\112\81\119\117\109\75\89\48\57\86\100\78\74\111\122\107\54\75\66\118\56\101\116\82\114\56\120\77\51\100\115\87\72\52\108\121\89\116\65\104\114\73\54\119\51\110\43\103\67\73\87\103\55\74\71\85\117\49\101\121\108\57\108\53\65\78\97\101\100\115\121\81\83\82\86\70\112\81\117\57\82\81\103\90\120\115\72\65\72\116\43\79\75\56\84\112\66\116\52\107\73\69\65\120\47\114\47\118\110\97\52\75\65\71\70\51\83\52\75\49\47\77\112\66\101\86\74\48\71\85\43\102\87\67\99\104\86\57\118\109\90\49\87\56\102\110\101\88\79\116\101\51\81\77\80\71\69\108\84\120\73\119\51\109\107\108\48\118\107\68\102\57\116\54\71\87\103\71\66\84\87\113\51\90\77\47\72\80\73\118\55\77\99\83\114\106\76\49\85\107\115\119\116\50\52\52\55\75\118\108\112\110\85\43\115\57\65\122\66\121\121\97\106\72\113\72\116\54\86\89\103\114\77\80\101\101\79\50\57\101\48\98\109\105\109\75\78\112\87\88\97\98\113\79\55\43\89\68\115\116\53\66\56\105\77\104\52\79\48\118\48\86\79\76\69\110\107\82\71\86\65\81\69\120\88\98\110\49\99\87\98\70\89\98\66\108\116\106\106\114\70\88\102\117\106\109\70\88\74\70\57\66\98\113\49\115\82\50\79\117\121\97\47\120\76\76\53\99\116\104\72\101\116\111\84\74\69\103\54\66\89\82\110\81\71\75\110\80\102\50\104\66\118\104\52\120\81\90\79\49\86\118\108\82\83\81\74\43\72\90\110\112\54\85\79\66\71\50\53\106\54\55\101\47\112\76\98\122\57\110\50\104\122\50\86\97\105\50\113\69\43\65\75\52\57\88\117\103\112\114\117\51\120\87\118\121\84\78\83\50\75\112\117\107\73\51\66\119\120\51\102\79\98\105\84\75\116\80\88\90\113\115\69\82\111\67\115\72\80\121\101\76\115\77\78\90\56\57\117\47\86\120\90\97\121\115\74\111\120\47\75\90\70\110\65\67\77\107\105\111\116\107\107\86\121\121\48\49\86\107\89\85\76\68\121\121\100\84\108\110\74\119\109\104\67\105\111\102\103\103\56\109\88\65\84\117\99\48\104\100\102\110\116\78\115\55\50\81\121\84\117\43\53\71\43\73\65\71\111\104\102\116\120\116\68\120\107\112\67\121\102\72\98\88\79\77\49\66\113\43\105\115\68\84\106\110\55\115\65\57\100\50\65\116\57\101\89\50\122\52\113\47\99\104\97\70\86\98\120\86\79\89\122\86\90\112\114\48\70\51\65\84\87\116\49\69\77\65\110\84\119\106\68\72\43\77\89\85\50\74\48\52\102\98\51\80\104\51\74\108\100\116\109\121\81\57\57\89\101\121\120\119\82\72\52\89\55\105\121\105\116\110\66\98\98\72\72\86\69\88\109\105\111\86\114\121\117\57\108\99\71\110\47\122\98\47\82\51\82\108\89\112\103\74\86\83\115\112\49\84\87\54\77\82\70\107\118\84\83\48\54\82\107\54\88\112\100\106\79\109\75\83\120\120\65\48\51\104\43\66\115\43\52\88\90\108\74\116\67\89\116\115\101\115\76\112\73\117\101\110\107\102\97\102\57\79\100\122\68\87\97\47\43\117\65\65\53\100\69\82\78\98\82\90\53\77\120\52\111\67\118\50\119\116\113\119\66\82\74\51\84\43\48\76\66\57\43\116\73\74\89\122\77\90\108\115\117\111\103\108\88\78\111\55\89\111\99\86\66\57\56\49\54\104\69\57\79\90\122\117\102\81\99\112\89\88\119\83\75\71\78\114\66\72\69\106\50\87\113\99\84\108\82\104\89\53\43\57\78\57\113\65\75\104\79\70\108\117\103\97\115\82\103\73\120\75\97\113\74\101\56\57\119\101\109\71\69\98\73\103\107\86\50\88\99\89\68\87\88\53\73\50\56\53\117\70\71\87\51\66\75\112\47\103\55\111\103\99\83\102\97\50\119\74\69\97\87\122\76\70\87\50\107\87\109\70\116\87\76\66\104\86\79\121\50\120\105\101\102\82\86\67\122\114\100\49\52\118\84\117\115\77\116\82\73\98\55\111\106\89\56\84\53\122\49\81\122\81\89\52\98\75\116\80\81\89\113\113\52\102\69\80\66\48\69\117\69\89\72\103\122\105\81\103\118\120\82\90\68\86\111\120\121\77\73\43\102\81\105\121\119\74\111\111\47\82\55\105\52\55\55\80\73\53\54\57\107\43\97\86\113\55\113\70\121\43\83\50\102\108\113\74\121\47\51\52\50\104\66\54\67\51\54\114\90\119\88\104\57\106\70\87\120\111\43\56\77\87\107\76\117\69\117\43\54\113\73\90\49\120\53\120\47\52\52\90\122\80\49\120\87\109\106\78\85\111\89\52\75\73\101\50\120\89\67\113\114\104\109\102\108\82\117\82\115\120\76\98\104\107\105\65\71\75\66\66\114\68\109\83\102\119\76\76\121\85\98\68\108\85\72\118\114\106\82\85\77\81\85\111\108\100\87\82\88\111\109\70\68\56\50\82\88\48\120\56\118\56\74\86\119\86\69\77\102\116\71\102\68\107\76\54\74\116\56\68\56\68\120\86\101\65\115\122\70\86\103\69\105\110\111\48\120\56\66\105\71\48\67\88\103\56\81\83\67\117\51\84\56\79\110\85\118\70\90\107\72\107\121\109\52\98\90\79\107\55\99\53\98\74\68\121\115\114\73\112\98\120\77\56\77\72\122\103\112\84\52\69\49\116\114\111\50\71\76\107\82\115\109\110\51\113\68\82\69\53\101\85\43\112\79\81\70\103\108\101\81\75\97\55\106\71\84\43\70\73\103\114\115\65\113\76\117\98\100\116\104\50\67\69\88\102\89\82\86\49\104\98\70\47\55\53\117\51\81\74\117\84\119\50\84\116\77\102\57\103\52\65\104\73\54\110\101\49\69\101\68\105\106\102\57\80\48\79\105\56\65\114\110\55\52\74\86\100\86\110\65\79\100\80\115\50\52\105\75\113\52\72\109\66\76\50\65\71\89\70\54\53\70\113\122\47\88\70\80\80\43\43\105\79\48\66\70\67\43\104\71\83\85\47\101\82\74\113\71\57\54\74\53\47\79\116\107\109\71\68\112\87\114\66\102\85\118\54\43\49\48\111\84\75\80\109\86\83\73\78\79\90\56\98\86\52\117\87\102\54\121\79\56\70\87\122\118\90\89\88\55\53\120\98\70\79\121\122\121\90\51\56\57\48\88\118\112\121\65\88\68\82\110\82\81\106\52\49\114\72\52\107\103\69\49\101\80\100\111\97\97\110\100\88\85\47\97\85\84\66\67\122\108\120\103\71\76\111\115\99\98\55\121\81\49\81\47\67\108\81\86\81\113\100\54\106\85\101\89\111\102\98\54\88\53\87\101\50\79\106\65\122\101\82\85\110\118\100\48\43\55\114\81\49\56\110\88\122\51\102\101\71\111\103\90\66\105\73\103\90\78\112\120\109\49\114\54\79\52\50\104\81\117\113\90\67\118\108\74\47\122\52\70\117\53\48\119\106\43\51\74\112\113\78\77\109\66\80\107\90\47\115\90\51\57\65\56\78\88\113\75\50\82\116\73\48\102\43\110\121\75\121\52\68\108\43\90\97\49\80\108\50\120\115\83\67\85\56\113\54\90\100\113\65\48\104\69\90\72\69\49\67\68\72\106\101\88\121\100\115\98\86\84\116\54\119\116\74\104\117\72\81\116\116\83\116\79\117\100\117\90\85\97\88\47\54\82\118\122\112\48\100\55\98\111\114\70\83\56\79\85\101\114\107\113\79\119\122\82\51\115\86\66\81\67\68\87\55\87\107\118\118\111\65\108\72\72\110\66\121\85\118\57\121\97\73\109\105\79\115\71\109\80\74\48\121\85\68\75\55\70\87\82\100\66\117\78\51\89\85\85\57\85\119\84\105\53\102\109\67\100\110\51\73\122\49\72\54\106\111\54\73\55\81\86\116\73\56\81\72\52\81\82\114\69\110\79\117\98\108\88\114\97\74\112\55\69\67\116\53\101\57\84\105\70\117\97\106\51\70\118\82\81\113\105\109\51\111\43\71\56\54\109\49\102\73\109\75\121\86\114\49\98\82\68\107\81\102\118\74\65\104\101\99\49\49\120\54\117\120\78\121\78\43\85\68\70\110\119\105\84\90\78\89\105\69\113\56\71\115\71\90\70\105\121\51\111\114\57\48\100\106\76\51\102\121\86\72\53\120\120\70\121\97\43\98\108\90\109\73\54\71\43\104\78\84\86\85\74\86\55\97\107\86\56\105\82\104\69\77\112\107\84\112\114\73\112\98\69\102\54\100\115\103\120\68\68\43\108\74\43\105\117\113\112\72\90\101\110\117\112\48\100\82\118\90\71\113\122\72\122\120\52\85\89\84\118\110\108\69\77\89\110\43\55\49\112\89\99\110\122\82\87\114\68\81\48\103\54\120\115\84\101\84\111\108\70\119\80\106\84\113\83\85\50\68\90\81\82\90\119\105\74\121\52\109\48\57\100\115\87\104\72\56\82\86\97\101\110\86\68\121\43\80\116\107\55\48\48\98\122\52\79\84\88\66\55\114\55\110\110\55\98\118\73\70\56\81\107\120\90\97\99\67\85\121\86\68\113\75\105\53\56\86\108\103\71\122\118\81\82\106\52\111\102\110\80\70\107\72\111\102\47\65\79\81\73\66\122\107\122\65\72\87\57\54\103\122\49\119\90\51\115\120\77\81\74\70\50\111\74\85\99\72\83\77\114\115\107\107\116\68\86\85\57\78\57\113\98\112\43\65\49\79\43\51\98\82\103\119\103\120\121\70\49\105\50\113\84\111\77\112\116\113\54\53\65\111\103\115\47\73\101\76\120\75\80\99\89\84\51\55\89\102\102\109\43\99\119\70\43\47\53\122\85\97\77\67\67\97\101\72\75\88\109\89\67\111\43\86\114\100\98\115\70\75\121\107\43\49\47\48\90\103\101\68\67\57\90\120\75\43\49\76\117\77\121\110\85\71\51\77\73\79\68\98\103\71\50\104\78\68\75\78\106\70\98\72\103\113\107\77\83\85\84\75\53\117\111\66\76\48\113\102\107\118\76\102\103\117\73\53\68\81\120\48\114\65\73\119\120\68\109\73\86\112\122\104\53\77\74\76\53\43\113\107\87\100\119\48\88\67\68\81\66\104\83\68\114\118\84\112\109\103\115\51\112\112\43\104\75\109\47\113\121\84\51\69\85\54\120\120\50\43\57\82\79\53\79\83\53\55\77\52\102\43\108\111\54\104\99\76\76\51\105\90\51\119\102\56\55\111\57\122\117\113\57\85\85\120\67\114\43\82\114\73\70\108\104\97\79\50\67\50\66\71\104\74\72\83\74\85\52\57\57\101\81\120\103\81\87\69\56\98\104\107\88\56\52\80\86\99\117\100\68\113\51\98\57\119\101\97\48\114\87\109\81\51\104\101\51\54\122\102\81\66\68\86\107\98\57\72\47\119\71\87\67\90\121\113\79\118\99\81\87\56\122\47\120\86\70\74\77\54\68\106\121\81\71\111\122\83\52\97\97\105\118\102\86\122\115\115\74\117\71\73\102\122\100\43\118\51\110\69\103\83\81\78\100\77\111\81\54\52\116\106\113\56\77\76\56\99\115\122\81\80\102\105\119\108\119\66\99\65\98\79\112\76\74\103\90\118\117\115\72\54\73\77\113\72\103\120\77\108\47\79\66\111\51\107\89\78\108\78\99\76\79\112\50\71\109\105\82\120\47\73\76\66\47\57\48\84\112\79\74\110\80\84\121\90\85\112\72\73\112\114\120\117\83\74\110\70\71\117\112\83\70\105\53\66\113\81\97\66\120\119\117\82\104\104\57\102\56\79\99\77\85\43\97\65\73\83\84\120\72\88\116\73\122\121\113\70\98\115\79\43\86\113\114\87\113\72\106\106\113\109\113\82\47\66\122\105\103\70\105\100\117\85\71\49\89\104\102\56\49\115\67\76\97\49\106\87\121\79\54\77\117\78\119\119\110\52\52\90\88\99\108\43\113\119\66\73\121\47\110\105\116\85\89\57\52\66\51\117\110\98\78\120\78\69\71\120\52\81\101\121\103\81\73\81\82\74\71\112\122\74\120\119\114\74\66\70\50\43\77\121\111\43\48\72\48\69\48\85\76\88\52\90\49\102\57\90\67\100\51\56\105\85\47\48\90\57\106\117\97\72\51\118\50\55\122\77\66\65\89\116\53\73\112\101\79\122\74\70\68\114\97\83\104\98\48\99\72\79\80\103\81\80\97\100\47\114\121\85\54\84\112\55\49\48\67\67\88\109\102\107\56\103\51\119\49\52\90\82\109\84\114\57\50\72\88\100\80\99\77\112\105\84\76\84\49\47\54\74\77\112\88\77\49\55\68\98\48\79\69\117\87\88\56\81\107\99\56\109\82\86\106\69\117\56\87\55\77\119\88\49\56\107\52\110\52\67\104\71\55\71\122\72\43\83\56\121\84\48\105\113\98\87\90\77\106\106\78\47\120\102\75\57\117\90\53\70\54\105\54\85\84\69\82\55\117\49\103\120\48\110\49\57\79\73\47\119\97\51\118\82\67\65\122\89\57\101\55\76\99\47\119\52\90\55\54\82\116\85\54\83\56\116\122\72\67\114\53\56\79\101\67\74\118\55\101\81\71\106\99\43\117\86\70\118\83\57\89\74\118\109\122\79\103\106\77\107\56\87\114\57\119\99\84\54\108\55\48\121\75\119\88\43\121\81\105\70\122\72\83\67\86\107\71\105\112\103\98\109\101\112\114\54\69\80\72\66\48\74\109\97\72\52\55\77\68\77\83\115\120\57\69\67\112\84\107\47\115\85\81\107\111\66\68\104\56\116\109\86\97\88\90\69\55\104\103\50\90\84\56\98\114\121\99\81\98\101\50\73\122\69\102\88\110\89\74\78\113\98\49\98\65\74\65\116\82\120\109\118\77\121\48\111\81\78\65\115\114\105\90\78\122\55\100\66\88\105\67\85\98\86\51\74\85\68\90\71\49\71\111\49\53\53\112\48\112\69\48\74\108\120\52\104\57\100\52\80\110\83\121\113\101\86\107\67\54\101\100\69\84\67\104\85\105\111\82\118\89\67\65\82\108\106\115\50\47\53\113\53\81\72\52\77\89\50\43\83\71\109\49\117\121\112\81\105\80\109\110\114\50\70\103\77\82\73\53\97\56\114\86\114\49\78\82\50\56\107\78\90\76\87\84\113\107\112\67\98\84\79\90\53\120\81\121\101\77\116\84\51\80\118\43\76\72\72\77\121\117\43\78\116\79\70\113\80\49\110\121\69\89\76\78\97\43\75\87\108\98\78\115\100\68\106\109\110\117\79\90\81\99\48\74\102\105\50\68\83\89\105\84\55\109\80\57\89\57\71\85\70\53\108\117\66\53\104\77\103\82\57\87\80\104\73\84\107\43\82\74\120\83\75\69\103\76\55\104\74\85\90\54\104\74\78\88\53\90\87\70\78\84\113\53\81\78\117\115\97\47\85\50\116\43\68\83\68\49\80\113\88\116\79\107\51\53\86\47\66\57\117\113\120\78\109\48\115\113\120\110\49\121\122\77\89\65\89\70\81\99\90\107\67\101\82\99\57\48\120\100\115\115\105\115\88\54\76\81\78\73\97\116\52\87\76\72\97\105\104\57\88\89\104\113\84\70\85\115\52\82\119\121\49\72\72\119\49\114\67\88\102\65\121\110\74\68\52\55\113\88\77\77\57\117\77\43\54\101\86\83\103\106\55\115\69\105\106\110\118\102\77\85\106\49\48\120\80\47\102\57\100\109\53\104\120\119\76\113\43\83\120\73\70\50\55\89\69\112\71\115\82\108\86\81\55\75\53\82\51\52\51\122\83\80\80\122\113\66\100\83\52\105\101\110\57\122\48\86\65\73\75\52\122\109\82\118\119\61";local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIII='NGI2d3Q8YSp3KmsvYWc9K0c6dw==';local karrotlIIlIIlI=function(a,b)local c=karrotlIIlIlIl(karrotlIIlIllI(a))local d=c["\99\105\112\104\101\114"](c,karrotlIIlIllI(b))return karrotlIIlIllI(d)end;local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIII='OS5nRkJxRlY8XydZaSZ2OXdEb3t7I2EkNmcvbyxdZVYvZy86Mjg=';function karrotlIIlIlll(a,b)local c=karrotlIIlIllI(a,b);local d=karrotlIIllIlI;return c,d end;return karrotlIIlIlII(karrotlIIlIIlI(karrotlIIllIll,karrotlIIlIIIl),getfenv(0))()end)()