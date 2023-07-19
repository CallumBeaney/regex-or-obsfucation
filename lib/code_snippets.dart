class Snippet {
  String type; /* o =obfuscation; r =regex */
  List<String> code;
  String? source;
  String? author;
  String? authSite;

  Snippet({
    required this.type,
    required this.code,
    this.source,
    this.author,
    this.authSite,
  });

  // String asString() {
  //   // for debugging
  //   return 'Snippet(type: $type\n code: $code\n source: $source\n author: $author\n authSite: $authSite)\n -------------- \n';
  // }
}

List<Snippet> snippetsList = [
  Snippet(
    type: 'o',
    code: [
      's[999],*r=s,*d,c;main(a,b){char*v=1[d=b];for(;c=*v++%93;)for(b=c&2,b=c%7?a&&(c&17?c&1?(*r+=b-1):(r+=b-1):syscall(4-!b,b,r,1),0):v;b&&c|a**r;v=d)main(!c,&a);d=v;}',
    ],
    source: 'https://j.mearie.org/post/1181041789/brainfuck-interpreter-in-2-lines-of-c',
    author: 'Kang Seonghoon writing a brainfuck interpreter',
    authSite: 'https://github.com/lifthrasiir',
  ),
  Snippet(
    type: 'o',
    code: [
      '8?c>13&& c<23&&C(3)<2?C\n[1][144+ 7*c+C(3)]:0:C(\n3) && c< -14&&c>- 24?C[\n1] [7 *c +400+C(3 )]:0:\n0) :! C  (3)?**C> 21&&C',
      '(*C[2]? C[2][1]?*(C[2]+2)?1 :0:0:0)',
      '*C[2]=0;}else C(1)+=*C[\n2]==58?2+(C[2][3]&&\n*(C[2]+3)<\'x\'):*C[2]\n==\'s\'?(C[2][1]-=48):\n*C[2]>=65?3-(*C[2]==\\',
    ],
    source: 'https://www.ioccc.org/2012/deckmyn/deckmyn.c',
    author: 'Philip Blakely',
    authSite: 'https://www.ioccc.org/2012/blakely/hint.html',
  ),
  Snippet(
    type: 'o',
    code: [
      '(r<:-3:> && r<:-2:> == r<:-1:>)',
      'm(Y<:j:>);',
      'e<:-10:> = (j < 1 ? 1:(j>1?2:j))-1;',
      '(n(l(a))&&n(l(b))&&a!=b&&!p(b)&&!p(a))'
    ],
    source: 'https://www.ioccc.org/2020/ferguson2/index.html',
    author: 'Cody Boone Ferguson',
    authSite: 'https://ioccc.xexyl.net',
  ),
  Snippet(
    type: 'o',
    code: [
      '=“([{“}])”§_/)Ä<=”,\$œp',
      "L = ARBNO(ARBNO(NOTANY('([{}])')) | '(' *L ')' | '[' *L ']' | '{' *L '}')'",
      "\$=>[i:0loop split&'c->'i+dec/??index\"([{^_^}])\"c<=3prints(∧c=",
      "0=i)?->\"\\n\"->c]",
    ],
    source: "https://codegolf.stackexchange.com/questions/261554/split-a-string-on-unnested-commas",
    author: 'Someone trying to "Split a string on unnested commas" on Code Golf',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      'n=>g=(e,...a)=>n?g(e,...a,S=m=n--):a.map(p=>a.map(q=>p!=q&&[..."+-*/"].map(o=>g(e,`(\${s=p+o+q})`,...a.filter(s=>s!=p&s!=q,(d=eval(s)-e)*d<m&&(m=d*d,S=s))))))&&S',
      'hoa.n1.xvNZss.ussmmms.i[\\(k\\)-db)bs_MB.cd2"+-*/"NtQ]S'
      // 'ＮθＦＮ⊞υ⟦Ｉ⊕ι⊕ιＸ²ι⟧ＦυＦΦυ¬＆§ι²§κ²«≔§ι¹η≔§κ¹ζ¿ζＦＥ⟦∕ηζ⁻ηζ×ηζ⁺ηζ⟧⟦⪫()⁺⁺§ι⁰§/-*+μ§κ⁰λ⁺§ι²§κ²⟧⊞υλ»≔↔⁻Ｅυ§ι¹θη§§υ⌕η⌊η⁰',
    ],
    source: "https://codegolf.stackexchange.com/questions/262167/approximate-e-using-small-numbers",
    author: 'Someone approximating e using small numbers on Code Golf',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      '"]I^x[I]k\\I^o[IZ~\\IZ~[I^|[I^l[I^j[I^}[I^n[I]m\\I]h"',
      'xyyyxx(*xyyx){xyyyx= *xyyx++-xyyyyyx;xyyyxx(xyyyx--)xyyxx(*xyyx-xyyyyyyx);/*x*/',
    ],
    source: 'https://www.ioccc.org/1986/pawka/pawka.c',
    author: 'Michael H. Pawka',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      'QO0 (Q=0L;Q<1<<1<<1<<1<<1;Q+=Q<0100)',
      'O=1,l=0,lll=O+O+O+l,OQ=056;',
      '(I != 1<<1&&(O1O(QI[0]),O10(1011-1010)))',
      'lOL*llL="%2x ";',
    ],
    source: 'https://www.ioccc.org/1986/bright/bright.c',
    author: 'Walter Bright',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      'S(t=h=0,y=q+1;h<H&&t<O;E){C(t&&L)M;C(!t)S(h=q-p+2;--h;\\',
      'U[H].x=x;U[H].y=y;U[H++].z=e;p=p>y?y:p;q=q<y?y:q;v();',
      'C(--O&&(**++Z-45||1[*Z])&&--Z&&L)M',
      'T(_,S,C,R,A,M,B,L,E) _ V,i,o,l,e,t=1,n[4]',
    ],
    source: 'https://www.ioccc.org/2019/yang/prog.c',
    author: 'Don Yang',
    authSite: 'http://uguu.org/',
  ),
  Snippet(
    type: 'o',
    code: [
      // '[(＋*ー+・･)];',
      '<(0){{;({(/**/{({;;});});});}%>',
      '(0x80000000==-0x80000000 and —++-0<< 1==1)',
      'x=(1<<1)|1;O0("||");>+++x',
      'if (two == (int)round(pow(two,(int)round(pow(two,(int)round(pow (two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow (two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two (int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow (two,(int)round(pow(two,(int)round(pow(two,(int)round pow(two, (int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow (two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round( pow (two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two , (int)round(pow(２,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round pow (two. (int)round(pow(two,(int)round(pow(two,(int)round(pow(two,(int)round(pow(two, 2))))))))))))))))))))))))))))))))))))...',
    ],
    source: 'https://github.com/CallumBeaney/scripts/blob/master/giveUpChecker/check.c',
    author: 'Callum Beaney (the bloke wot made this game)',
    authSite: 'https://github.com/CallumBeaney',
  ),
  Snippet(
    type: 'o',
    code: [
      '____ (__) {_____ ________: _______ ________________________________[________];}',
      '_____ 0b00000101*_____________: _______ ________________________________[0b00000101];',
      '_______________________________::_________ << _(___);',
    ],
    source: 'https://pastebin.com/V1zVMQ4f',
    author: 'Ayumi Toshiyuki writing a "very simple Hello World"',
    authSite:
        'https://www.reddit.com/r/obfuscatedcode/comments/8ykt24/i_did_a_very_simple_hello_world_in_c/',
  ),
  Snippet(
    type: 'o',
    code: [
      '\${[\${[\${[\${[\${[\${[\${[\${[\${\${![]}.=[]}.=\${![]}{!![]}]}.=\${!![\${[\${[\${[\${[\${[\${[\${[]}++]}++]}++]}++]}++]}++]}++]}{![]+![]+![]}]}.=\${[\${[\${[\${[\${[]}++]}++]}++]}++]}{![]}]}.=\${[\${[\${[\${[\${[\${[\${[\${[]}++]}++]}++]}++]}++]}++]}++]}{![]+![]}.\${[]}{![]+![]}]}.=\${![]}^\${!![\${[\${[\${[]}++]}++]}++]}{![]+![]+![]}]}.=\${[]}{!![]}]}.=\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[\${[]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}++]}{![]+![]+![]+![]}.\${[]}{![]+![]+![]+![]}]}.=\${[\${[\${[\${[]}++]}++]}++]}{![]+![]}.\${![]}{![]+![]+![]}]}.=\${[\${![]}=\${![]}{!![]}]}{!![\${!![\${!![\${![]}++]}++]}++]}^\${!![\${[\${[\${[]}++]}++]}++]}',
      ':; ______=\$? __=\${#______} ____=\$[__+__] ________=\$[__+____] _____=\$[____+____]__________=\$[____+_____] _________=\$[__+__________] ______________=(/????/\$\$/????) ____________=\${______________[\$______]} _____________=\${____________##*/} _______________=(\${____________//\\// })________________=\${_______________: -\$__:\$__}\$________________________________=\${________________:\$______:\$________}___________=\${_____________:\$______:\$__} _________________=\${___________^}. <(\$___________________<<<__________________=\\({\$_________________..\${___________}}\\))&&_______=(\${__________________[@]:\$______:\$____\$__________})___=(\${_______[@],,})&&\${___[\$_____]}\${___[\$____]}\${___[\$_________]}\${___[\$__\$_____]} -\${___[\$_____]} \${_______[ \$_________]}\${___[\${_____}]}\${___[\$__\$__]}\${___[\$__\$__]}\${___[\$__\$_____]} \${_______[\$____\$____]}\${___[\$__\$_____]}\${___[\$__\$_________]}\${___[ \$__\$__]}\${___[\$________]}\\\$______\$[\$_____#\$____\$____\$__]',
      'u *l=x;w(w(w(y(x))))w(y(x))v{p(x)w(w(y(x)))w(y(x))y(x)p(x)w(w(w(y(x))))w(y(x))p(x)w(y(x))y(x)p(x)w(w(w(y(x))))y(x)w(w(d(x)))e(x)}p(x)w(y(x))z(x)p(x)y(x)z(x)w(w(y(x)))w(y(x))y(x)w(z(x))w(y(x))y(x)z(x)p(x)w(y(x))z(x)p(x)w(e(x))e(x)z(x)w(d(x))z(x)w(y(x))y(x)z(x)w(w(e(x)))w(e(x))z(x)w(w(w(e(x))))z(x)p(x)y(x)z(x)',
      'int V[3] = {BING(x=227380393,BANG(BOOM)+BOOM), x+(w=BOOM+BANG(BANG(BOOM)),BING(47*y=17453197,BOOM)), x+y+BING(w*w*17*185527,BANG(BOOM))};'
    ],
    source: 'https://codegolf.stackexchange.com/questions/22533/weirdest-obfuscated-hello-world/',
    author: 'Someone attempting the \'Weirdest obfuscated "Hello World!"\'',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      // 'e(a,4)W(z+a%2*c,l+a/2*c,g)',
      // 'S[a*Y+H*U]=G+(1<<V-1)>>V;',
      // 'i[a]=k*(n(25+(B+(a<d/8)*2)*10)+1)*(A?P:O);',
      'o[C?j*f+a:a*f+j]+=*i*(8-J)+i[1]*J+4>>3',
      'y[3][1<<20],i[2048],X[166],p,r=1,f,s,O,P',
      'p+=b<33?(b^8)*2%5:(b^6)%3*4+(*x++^8)*2%5+4;',
    ],
    source: 'https://www.ioccc.org/2018/bellard/prog.c',
    author: 'Fabrice Bellard',
    authSite: 'https://bellard.org',
  ),
  Snippet(
    type: 'o',
    code: [
      // 'X(c,3,w(1),G(2,3))X(u,3,G(1,3),w(2))P N(P l,P L,P _)',
      'I/6?l:N(l+I/_*L,L*6/_,3-_)',
      '_-9?l(l(17,l(1,_)),Z()):8',
      'B(g,/)B(r,+)X(e,2,9,w(1))X(O,2,w(2),l(w(1),M-8)',
      'I=_*2+!!(M&1<<S);',
    ],
    source: 'https://www.ioccc.org/2019/lynn/prog.c',
    author: 'Joshua Karns',
    authSite: null,
  ),
  Snippet(
    type: 'o',
    code: [
      'select((select(s),\$|=1)[0])',
    ],
    source: 'https://stackoverflow.com/a/765287',
    author: 'Randal Schwartz',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '(?:(?:\\r\\n)?[ \\t])*(?:(?:(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t] )+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?: \\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:( ?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[  \\t]))*"(?:(?:\\r\\n)?[ \\t])*))*@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\0 31]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\ ](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+ (?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?: (?:\\r\\n)?[ \\t])*))*|(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z |(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n) ?[ \\t])*)*\\<(?:(?:\\r\\n)?[ \\t])*(?:@(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\ r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[  \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n) ?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t] )*))*(?:,@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[  \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])* )(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t] )+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*) *:(?:(?:\\r\\n)?[ \\t])*)?(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+ |\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r \\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?: \\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t ]))*"(?:(?:\\r\\n)?[ \\t])*))*@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031 ]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\]( ?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(? :(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(? :\\r\\n)?[ \\t])*))*\\>(?:(?:\\r\\n)?[ \\t])*)|(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(? :(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)? [ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)*:(?:(?:\\r\\n)?[ \\t])*(?:(?:(?:[^()<>@,;:\\\\".\\[\\]  \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]| \\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<> @,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|" (?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*))*@(?:(?:\\r\\n)?[ \\t] )*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\ ".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(? :[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[ \\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*|(?:[^()<>@,;:\\\\".\\[\\] \\000- \\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|( ?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)*\\<(?:(?:\\r\\n)?[ \\t])*(?:@(?:[^()<>@,; :\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([ ^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\" .\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\ ]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*(?:,@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\ [\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\ r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\]  \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\] |\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*)*:(?:(?:\\r\\n)?[ \\t])*)?(?:[^()<>@,;:\\\\".\\[\\] \\0 00-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\ .|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@, ;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|"(? :[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*))*@(?:(?:\\r\\n)?[ \\t])* (?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\". \\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[ ^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\] ]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*\\>(?:(?:\\r\\n)?[ \\t])*)(?:,\\s*( ?:(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\ ".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:( ?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[ \\["()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t ])*))*@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t ])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(? :\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+| \\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*|(?: [^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\ ]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)*\\<(?:(?:\\r\\n) ?[ \\t])*(?:@(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\[" ()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n) ?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<> @,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*(?:,@(?:(?:\\r\\n)?[  \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@, ;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t] )*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\ ".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*)*:(?:(?:\\r\\n)?[ \\t])*)? (?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\["()<>@,;:\\\\". \\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?: \\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\[ "()<>@,;:\\\\".\\[\\]]))|"(?:[^\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*"(?:(?:\\r\\n)?[ \\t]) *))*@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t]) +|\\Z|(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*)(?:\\ .(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z |(?=[\\["()<>@,;:\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\](?:(?:\\r\\n)?[ \\t])*))*\\>(?:( ?:\\r\\n)?[ \\t])*))*)?;\\s*)',
    ],
    source: '',
    author: 'Paul Warren in "Mail::RFC822::Address: regexp-based address validation"',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '(?:\n   (?:ByVal|ByRef)\n   [ \\t]+(?:_[ \\t]*(?:\'.*?)?\\n[ \\t]+)*\n)?',
      '(\\w[\\w\\d_]*|_[\\w\\d_]+) (?# Argument 5 name)',
      // '                                             )?\n                                      )?\n                               )?\n                        )?\n                )?\n        )?\n)?',
    ],
    source:
        'https://www.reddit.com/r/programminghorror/comments/vfwju/when_problems_are_tough_use_regular_expressions/',
    author: '[deleted] on r/programminghorror',
    authSite: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
  ),
  Snippet(
    type: 'r',
    code: [
      '/^#?([a-f\\d]{2})([a-f\\d]{2})([a-f\\d]{2})\$/i',
    ],
    source: 'https://stackoverflow.com/questions/5623838/rgb-to-hex-and-hex-to-rgb',
    author: 'Tim Down showing how to convert RGB colour data to hex codes',
    authSite: 'https://www.timdown.co.uk',
  ),
  Snippet(
    type: 'r',
    code: [
      'r\'(\\[([^\\]]*[^\\\\])\\]\\(([^\\]]*[^\\\\])\\))|(?<!\\\\)[\\[\\]()>#+=|{}.!-]\'',
    ],
    source: 'https://twitter.com/MikePFrank/status/1674281960552771584',
    author: 'Michael P. Frank trying to generate correctly formatted Telegram markdown',
    authSite: 'https://web1.eng.famu.fsu.edu/~mpf/',
  ),
  Snippet(
    type: 'r',
    code: [
      '`\\[.+\\]\\(\\s*<*(https?://|steam://)\\S+\\s*([\u{0022}|\'|\']+[\\w|\\s]*[\u{0022}|\'|\']+|)\\s*\\)`',
      '`\\[.+\\]\\(.+\\)`',
    ],
    source: 'https://twitter.com/panley01/status/1674130466943774721',
    author: 'Twitter user Panley, looking to block masked links',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '\\d{4}\\-(0?[1-9]|1[012])\\-(0?[1-9]|[12][0-9]|3[01])*',
      '^\\d{4}\\-(0[1-9]|1[012])\\-(0[1-9]|[12][0-9]|3[01])\$',
      '^\\d{4}\\-(0?[1-9]|1[012])\\-(0?[1-9]|[12][0-9]|3[01])\$',
    ],
    source: 'https://stackoverflow.com/questions/22061723/regex-date-validation-for-yyyy-mm-dd',
    author: 'vinod answering "Regex date validation for yyyy-mm-dd" on SO',
    authSite: 'https://stackoverflow.com/users/1120560/vinod',
  ),
  Snippet(
    type: 'r',
    code: [
      '(?:[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+)*|"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\]',
    ],
    source: 'https://stackoverflow.com/a/201378',
    author: 'bortzmeyer validating an email address on SO',
    authSite: 'https://stackoverflow.com/users/15625/bortzmeyer',
  ),
  Snippet(
    type: 'r',
    code: [
      '/^([\\w\\!\\#\$\\%\\&\\\'\\*\\+\\-\\/\\=\\?\\^\\`\\{\\|\\}\\~]+\\.)*[\\w\\!\\#\$\\%\\&\\\'\\*\\+\\-\\/\\=\\?\\^\\`\\{\\|\\}\\~]+@((((([a-z0-9]{1}[a-z0-9\\-]{0,62}[a-z0-9]{1})|[a-z])\\.)+[a-z]{2,6})|(\\d{1,3}\\.){3}\\d{1,3}(\\:\\d{1,5})?)\$/i',
      '/\\A([a-z0-9!#\$%&\'*+\\/=?^_`{|}~-]+(\\.[a-z0-9!#\$%&\'*+\\/=?^_`{|}~-]+)*|"([\\040-\\041\\043-\\133\\135-\\176]|\\134[\\040-\\176])*")@([0-9a-z]([0-9a-z-]*[0-9a-z])?(\\.[0-9a-z]([0-9a-z-]*[0-9a-z])?)+|\\[((0|[1-9][0-9]{0,2})(.(0|[1-9][0-9]{0,2})){3}|IPv6:([0-9a-f]{1,4}(:[0-9a-f]{1,4}){7}|([0-9a-f]{1,4}(:[0-9a-f]{1,4}){0,5})?::([0-9a-f]{1,4}(:[0-9a-f]{1,4}){0,5})?|[0-9a-f]{1,4}(:[0-9a-f]{1,4}){3}:(0|[1-9][0-9]{0,2})(.(0|[1-9][0-9]{0,2})){3}|([0-9a-f]{1,4}(:[0-9a-f]{1,4}){0,3})?::([0-9a-f]{1,4}(:[0-9a-f]{1,4}){0,3})?:(0|[1-9][0-9]{0,2})(.(0|[1-9][0-9]{0,2})){3}))\\])\\Z/i',
      '/^(?!(?:(?:\\x22?\\x5C[\\x00-\\x7E]\\x22?)|(?:\\x22?[^\\x5C\\x22]\\x22?)){255,})(?!(?:(?:\\x22?\\x5C[\\x00-\\x7E]\\x22?)|(?:\\x22?[^\\x5C\\x22]\\x22?)){65,}@)(?:(?:[\\x21\\x23-\\x27\\x2A\\x2B\\x2D\\x2F-\\x39\\x3D\\x3F\\x5E-\\x7E]+)|(?:\\x22(?:[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x21\\x23-\\x5B\\x5D-\\x7F]|(?:\\x5C[\\x00-\\x7F]))*\\x22))(?:\\.(?:(?:[\\x21\\x23-\\x27\\x2A\\x2B\\x2D\\x2F-\\x39\\x3D\\x3F\\x5E-\\x7E]+)|(?:\\x22(?:[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x21\\x23-\\x5B\\x5D-\\x7F]|(?:\\x5C[\\x00-\\x7F]))*\\x22)))*@(?:(?:(?!.*[^.]{64,})(?:(?:(?:xn--)?[a-z0-9]+(?:-[a-z0-9]+)*\\.){1,126}){1,}(?:(?:[a-z][a-z0-9]*)|(?:(?:xn--)[a-z0-9]+))(?:-[a-z0-9]+)*)|(?:\\[(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){7})|(?:(?!(?:.*[a-f0-9][:\\]]){7,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,5})?)))|(?:(?:IPv6:(?:(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){5}:)|(?:(?!(?:.*[a-f0-9]:){5,})(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3})?::(?:[a-f0-9]{1,4}(?::[a-f0-9]{1,4}){0,3}:)?)))?(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))(?:\\.(?:(?:25[0-5])|(?:2[0-4][0-9])|(?:1[0-9]{2})|(?:[1-9]?[0-9]))){3}))\\]))\$/iD',
      '/^[-a-z0-9~!\$%^&*_=+}{\\\'?]+(\\.[-a-z0-9~!\$%^&*_=+}{\\\'?]+)*@([a-z0-9_][-a-z0-9_]*(\\.[-a-z0-9_]+)*\\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,5})?\$/i',
      '/^[-_a-z0-9\\\'+*\$^&%=~!?{}]++(?:\\.[-_a-z0-9\\\'+*\$^&%=~!?{}]+)*+@(?:(?![-.])[-a-z0-9.]+(?<![-.])\\.[a-z]{2,6}|\\d{1,3}(?:\\.\\d{1,3}){3})(?::\\d++)?\$/iD',
      '/^[-a-z0-9~!\$%^&*_=+}{\\\'?]+(\\.[-a-z0-9~!\$%^&*_=+}{\\\'?]+)*@([a-z0-9_][-a-z0-9_]*(\\.[-a-z0-9_]+)*\\.([a-z][a-z]+)|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,5})?\$/i',
      '^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+\$',
    ],
    source: null,
    author: 'anon. writer: "Comparing E-mail Address Validating Regular Expressions"',
    authSite: 'https://fightingforalostcause.net/content/misc/2006/compare-email-regex.php',
  ),
  Snippet(
    type: 'r',
    code: [
      '(([^\\[\\]])+)(\\[([^\\[^\\]])+\\])',
      '((\\+([\\d]{1,2})\\s+)?([\\d]{3}-[\\d]{3}-[\\d]{4}))',
      '^([\\p{L}\'-][\\s]{0,1})+\$',
      '^\\s*([^\\s-]+)\\s*-\\s*(.+)\\s*',
      '\\*([^\\*]*)\\*',
      '^(\\(([0-9]{1,2}),([0-9]{1,2})\\))',
      '([0-9]+\\.+ )',
    ],
    source: null,
    author: 'Alex Baker',
    authSite: 'https://github.com/alexobviously',
  ),
  Snippet(
    type: 'r',
    code: [
      '(\\w)(.+?)(@)(\\w)(.+?)(.\\w+\$)',
    ],
    source: 'https://regex101.com/library/khjjfj',
    author: 'ernesto janebro',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9][A-Za-z]?))))\\s?[0-9][A-Za-z]{2})',
    ],
    source: 'https://stackoverflow.com/a/164994',
    author: 'The British Government',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '<([a-z]+) *[^/]*?>',
    ],
    source:
        'https://stackoverflow.com/questions/1732348/regex-match-open-tags-except-xhtml-self-contained-tags/1732454#1732454',
    author: 'Jeff',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '(function(a){if((function(a){if(/(android|bb\\d+|meego).+mobile|avantgo|bada\\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\\-|your|zeto|zte\\-/i.test(a.substr(0,4))) check = true;})(navigator.userAgent||navigator.vendor||window.opera);',
    ],
    source: 'https://stackoverflow.com/a/11381730',
    author: 'detectmobilebrowsers.com',
    authSite: 'http://detectmobilebrowsers.com',
  ),
  Snippet(
    type: 'r',
    code: [
      '(?<=\\[)(?>\\[(?<c>)|[^\\[\\]]+|\\](?<-c>))*(?(c)(?!))(?=\\])',
      '(?<=\\W|^)[\\p{L}][\\w\\.\\[\\]\\`]*',
    ],
    source:
        'https://www.reddit.com/r/programminghorror/comments/atfjwp/comment/eh12xpj/?utm_source=share&utm_medium=web2x&context=3',
    author: 'Matti-Koopa',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '/\\{([^\\a{}]*)(?:[\\s]*)([^{}]*)\\}/g',
    ],
    source:
        'https://www.reddit.com/r/regex/comments/viv8i5/asg_saw_this_on_the_street_what_does_it_do/',
    author: 'v4nadium',
    authSite: null,
  ),
  Snippet(
    type: 'r',
    code: [
      '.?|(..+?)\\1+',
    ],
    source:
        'https://stackoverflow.com/questions/2795065/how-to-determine-if-a-number-is-a-prime-with-regex',
    author: 'RosettaCode: "How to determine a prime with regex"',
    authSite: 'https://rosettacode.org/wiki/Primality_by_trial_division#By_Regular_Expression',
  ),
  Snippet(
    // Misc unauthored ones
    type: 'r',
    code: [
      // '(?<=\\b\\w+\\b[^\\w\\r\\n]*)\\w+',
      // '(?<=(?<=^|(?<=\\s)|(?<=-)).*?(\\b[A-Z][a-z]+.*?\\b))(?=.*\\b\\1\\b)',
      // '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)[A-Za-z\\d]{8,}\$',
      // '(?:(?![aeiou])[a-z]){4,}',
      '(?<=\\{)([^}]+)(?=\\})',
      '^(?:(?!\\d{4}-\\d{2}-\\d{2}).)*\$',
      '^(?=.*\\b(\\w+)\\b.*(?<=\\b\\1\\b)\\b(\\w+)\\b.*(?<=\\b\\2\\b)\\b(\\w+)\\b.*(?<=\\b\\3\\b)).*\$',
      '[a-zA-Z]{2,4}(\\.\\d{1,2})?\$',
      '(?!(\\w)(\\w)\\19\\20*\\18\\21*\\12\\22*\\4\\23*\\8\\24*\$)',
      '(?<=^|\\b|[^\\w-])((ht|f)tps?:\\/\\/[^\\s/\$.?#].[^\\s]*)',
    ],
  ),
];
