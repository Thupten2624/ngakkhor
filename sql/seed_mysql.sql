USE ngakkhor_taxonomy;
INSERT INTO source_pages(url,title,language_code,fetched_at,raw_html,raw_text) VALUES
('https://ngakkhor.com/dudjom_tersar_arbol_taxonomico_FASE_15.html','Árbol Taxonómico Completo: Dudjom Tersar & Dudjom Lingpa','es',NOW(),'<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,viewport-fit=cover,user-scalable=no">
<meta name="theme-color" content="#0a1628">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="Vajrayana">
<link rel="manifest" href="manifest.json">
<link rel="apple-touch-icon" href="icons/icon-180x180.png">
<title>Vajrayana · Práctica</title>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;1,300&family=Jost:wght@300;400;500&display=swap" rel="stylesheet">
<style>
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
:root{
  --bg:#0a1628;--bg2:#0f1e36;--bg3:#162440;
  --s:#1a2d4a;--s2:#1f3558;--bord:#2a3f5f;--bord2:#1e3050;
  --lapis:#2563a8;--lapis2:#3577c0;
  --cyan:#4ab8cc;--cyan2:#38a0b4;--cyandim:rgba(74,184,204,.13);
  --tx:#e8edf5;--txm:#8fa3c0;--txd:#506480;
  --red:#e05555;--reddim:rgba(224,85,85,.15);
  --gold:#c9a84c;--golddim:rgba(201,168,76,.14);
  --grn:#4acc8a;--grndim:rgba(74,204,138,.13);
  --r:14px;--rs:8px;--rxs:5px;
  --sh:0 2px 8px rgba(0,0,0,.3),0 1px 2px rgba(0,0,0,.2);
  --shl:0 8px 32px rgba(0,0,0,.45);
  --glow:0 0 24px rgba(74,184,204,.11);
  --st:env(safe-area-inset-top,0px);--sb:env(safe-area-inset-bottom,0px);
}
@media(prefers-color-scheme:light){:root{
  --bg:#f0f4fa;--bg2:#e8eef8;--bg3:#dde5f2;--s:#fff;--s2:#f5f8ff;
  --bord:#d0daea;--bord2:#e0e8f5;--lapis:#1a4a8a;--lapis2:#2563a8;
  --cyan:#2a90a8;--cyan2:#1e7a90;--cyandim:rgba(42,144,168,.1);
  --tx:#0f1e36;--txm:#4a6080;--txd:#8a9cb0;
  --red:#c43030;--reddim:rgba(196,48,48,.1);
  --gold:#8a6820;--golddim:rgba(138,104,32,.1);
  --grn:#1a8a50;--grndim:rgba(26,138,80,.1);
  --sh:0 2px 8px rgba(15,30,54,.08),0 1px 2px rgba(15,30,54,.05);
  --shl:0 8px 32px rgba(15,30,54,.12);--glow:0 0 24px rgba(42,144,168,.07);
}}
html{height:100%;-webkit-tap-highlight-color:transparent;-webkit-touch-callout:none}
body{font-family:''Jost'',sans-serif;font-weight:300;background:var(--bg);color:var(--tx);min-height:100dvh;line-height:1.6;overflow-x:hidden;-webkit-overflow-scrolling:touch}
#app{display:flex;flex-direction:column;min-height:100dvh;padding-top:var(--st)}

/* HEADER */
header{background:rgba(10,22,40,.88);border-bottom:1px solid var(--bord2);padding:0 15px;position:sticky;top:0;z-index:100;backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px)}
@media(prefers-color-scheme:light){header{background:rgba(240,244,250,.93)}}
.hi{display:flex;align-items:center;height:52px;gap:9px}
.hback{width:34px;height:34px;border-radius:50%;border:none;background:var(--s2);color:var(--cyan);font-size:.95rem;cursor:pointer;display:none;align-items:center;justify-content:center;flex-shrink:0}
.hback.on{display:flex}
.htitle{font-family:''Cormorant Garamond'',serif;font-size:1.15rem;font-weight:400;letter-spacing:.02em;color:var(--tx);flex:1;min-width:0;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.hacts{display:flex;gap:5px;margin-left:auto;flex-shrink:0}

/* MAIN */
main{flex:1;overflow-y:auto;-webkit-overflow-scrolling:touch;padding:14px;padding-bottom:calc(66px + var(--sb))}

/* TABS */
.tabs{position:fixed;bottom:0;left:0;right:0;background:rgba(10,22,40,.94);border-top:1px solid var(--bord2);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);display:flex;padding-bottom:var(--sb);z-index:200}
@media(prefers-color-scheme:light){.tabs{background:rgba(240,244,250,.96)}}
.tb{flex:1;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:3px;padding:8px 0 6px;border:none;background:transparent;color:var(--txd);font-family:''Jost'',sans-serif;font-size:.57rem;font-weight:400;cursor:pointer;transition:color .2s;letter-spacing:.05em;text-transform:uppercase}
.tb.active{color:var(--cyan)}
.ti{font-size:1.05rem;line-height:1}

/* VIEWS */
.view{display:none}
.view.active{display:block;animation:fu .15s ease}
@keyframes fu{from{opacity:0;transform:translateY(4px)}to{opacity:1;transform:translateY(0)}}

/* ══ BREADCRUMB ══ */
.bc{display:flex;align-items:center;gap:5px;flex-wrap:wrap;margin-bottom:12px;font-size:.7rem;color:var(--txm)}
.bc-a{cursor:pointer;color:var(--cyan);white-space:nowrap}
.bc-a:active{text-decoration:underline}
.bc-sep{color:var(--txd)}
.bc-cur{color:var(--txm);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:120px}

/* ══ TREE NODES ══ */
.node-list{display:flex;flex-direction:column;gap:7px}

.node-card{background:var(--s);border:1px solid var(--bord);border-radius:var(--r);overflow:hidden;box-shadow:var(--sh)}
.node-card.type-practice{border-left:3px solid var(--cyan)}
.node-card.type-school{border-left:3px solid var(--gold)}
.node-card.type-lineage{border-left:3px solid var(--lapis)}
.node-card.type-cycle{border-left:3px solid var(--grn)}

.node-row{display:flex;align-items:flex-start;padding:12px 12px 10px;gap:9px;cursor:pointer}
.node-row:active{background:var(--s2)}
.node-type-dot{width:7px;height:7px;border-radius:50%;flex-shrink:0;margin-top:6px}
.dot-school{background:var(--gold)}
.dot-lineage{background:var(--lapis2)}
.dot-cycle{background:var(--grn)}
.dot-practice{background:var(--cyan)}
.dot-node{background:var(--txd)}

.node-body{flex:1;min-width:0}
.node-name{font-family:''Cormorant Garamond'',serif;font-size:1.1rem;font-weight:400;color:var(--tx);line-height:1.25}
.node-desc{font-size:.68rem;color:var(--txm);margin-top:2px;line-height:1.5}
.node-meta{font-size:.63rem;color:var(--txd);margin-top:3px;display:flex;gap:8px;flex-wrap:wrap}
.node-tag{font-size:.58rem;text-transform:uppercase;letter-spacing:.07em;padding:1px 6px;border-radius:100px;flex-shrink:0;margin-top:2px}
.tag-school{background:var(--golddim);color:var(--gold)}
.tag-lineage{background:rgba(37,99,168,.22);color:var(--lapis2)}
.tag-cycle{background:var(--grndim);color:var(--grn)}
.tag-practice{background:var(--cyandim);color:var(--cyan)}
.tag-node{background:var(--bord2);color:var(--txm)}
.node-menu{width:30px;height:30px;border-radius:50%;border:none;background:transparent;color:var(--txd);font-size:1rem;cursor:pointer;display:flex;align-items:center;justify-content:center;flex-shrink:0}
.node-arrow{color:var(--txd);font-size:.85rem;flex-shrink:0;margin-top:4px}

/* practice extra section */
.node-prac{padding:0 12px 12px;border-top:1px solid var(--bord2)}
.np-prog-row{display:flex;justify-content:space-between;align-items:center;font-size:.68rem;color:var(--txm);margin:8px 0 4px}
.np-cnt{font-family:''Cormorant Garamond'',serif;font-size:.92rem;color:var(--tx)}
.np-bar{height:3px;background:var(--bord2);border-radius:100px;overflow:hidden;margin-bottom:3px}
.np-fill{height:100%;background:linear-gradient(90deg,var(--lapis),var(--cyan));border-radius:100px;transition:width .5s ease;min-width:2px}
.np-pct{font-size:.62rem;color:var(--txd);text-align:right;margin-bottom:7px}
.np-daily{display:flex;justify-content:space-between;align-items:center;background:var(--cyandim);border-radius:var(--rxs);padding:6px 10px;margin-bottom:7px}
.np-dl{font-size:.67rem;color:var(--txm)}.np-dv{font-family:''Cormorant Garamond'',serif;font-size:.9rem;color:var(--cyan)}
.np-days{display:flex;gap:4px;margin-bottom:7px;flex-wrap:wrap}
.dd{width:24px;height:24px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:.6rem;background:var(--bg3);color:var(--txd)}
.dd.on{background:var(--lapis);color:#fff}.dd.now{background:var(--cyan);color:#fff}
.np-times{display:flex;gap:4px;flex-wrap:wrap;margin-bottom:7px}
.np-t{font-size:.65rem;background:var(--cyandim);color:var(--cyan);padding:2px 7px;border-radius:100px}
.np-proj{font-size:.63rem;color:var(--gold);margin-bottom:7px}
.btn-addsess{width:100%;padding:9px;background:var(--lapis);color:#fff;border:none;border-radius:var(--rxs);font-family:''Jost'',sans-serif;font-size:.8rem;cursor:pointer}
.btn-addsess:active{background:var(--lapis2)}

/* add child button */
.add-child-btn{display:flex;align-items:center;justify-content:center;gap:7px;padding:12px;border:1.5px dashed var(--bord);border-radius:var(--r);background:transparent;color:var(--txm);font-family:''Jost'',sans-serif;font-size:.8rem;cursor:pointer;width:100%;margin-top:4px}
.add-child-btn:active{background:var(--s2)}

/* ══ TODAY ══ */
.hero{background:linear-gradient(135deg,var(--s),var(--s2));border:1px solid var(--bord);border-radius:var(--r);padding:17px;margin-bottom:13px;box-shadow:var(--sh),var(--glow);position:relative;overflow:hidden}
.hero::before{content:'''';position:absolute;top:-28px;right:-28px;width:100px;height:100px;border-radius:50%;background:radial-gradient(circle,var(--cyandim),transparent 70%);pointer-events:none}
.hero-date{font-family:''Cormorant Garamond'',serif;font-size:1.5rem;font-weight:300;color:var(--tx);text-transform:capitalize;margin-bottom:5px}
.streak-row{display:flex;align-items:center;gap:9px;margin-bottom:7px}
.sn{font-family:''Cormorant Garamond'',serif;font-size:1.15rem;color:var(--gold)}
.sl{font-size:.68rem;color:var(--txm)}
.sbar{display:flex;gap:3px}
.sd2{width:25px;height:4px;border-radius:100px;background:var(--bord)}
.sd2.done{background:var(--gold)}.sd2.tod{background:var(--cyan)}
.hero-stats{display:flex;gap:7px;margin-top:11px}
.hsc{flex:1;background:var(--bg2);border-radius:var(--rs);padding:8px 10px;border:1px solid var(--bord2)}
.hscv{font-family:''Cormorant Garamond'',serif;font-size:1.2rem;color:var(--cyan);line-height:1}
.hscl{font-size:.6rem;color:var(--txm);margin-top:2px;text-transform:uppercase;letter-spacing:.06em}
.today-lbl{font-size:.62rem;text-transform:uppercase;letter-spacing:.1em;color:var(--cyan);font-weight:500;margin:13px 0 7px}
.titem{background:var(--s);border:1px solid var(--bord);border-radius:var(--rs);padding:11px;margin-bottom:6px;display:flex;align-items:center;gap:9px}
.titem.done{opacity:.45}
.tchk{width:26px;height:26px;border-radius:50%;border:1.5px solid var(--bord);background:transparent;cursor:pointer;flex-shrink:0;display:flex;align-items:center;justify-content:center;color:transparent;font-size:.72rem;transition:all .2s}
.tchk.on{background:var(--grn);border-color:var(--grn);color:#fff}
.tbody{flex:1;min-width:0}
.tname{font-size:.86rem;color:var(--tx);font-weight:400}
.tmeta{font-size:.67rem;color:var(--txm);margin-top:1px}
.tadd{padding:5px 10px;border-radius:100px;border:1px solid var(--cyan);background:transparent;color:var(--cyan);font-family:''Jost'',sans-serif;font-size:.68rem;cursor:pointer;flex-shrink:0}

/* ══ STATS ══ */
.stats-grid{display:grid;grid-template-columns:1fr 1fr;gap:8px;margin-bottom:16px}
.sc{background:var(--s);border:1px solid var(--bord);border-radius:var(--r);padding:12px;text-align:center;box-shadow:var(--sh)}
.scv{font-family:''Cormorant Garamond'',serif;font-size:1.8rem;font-weight:300;color:var(--cyan);line-height:1;margin-bottom:3px}
.scl{font-size:.59rem;color:var(--txm);text-transform:uppercase;letter-spacing:.07em}
.chart-card{background:var(--s);border:1px solid var(--bord);border-radius:var(--r);padding:14px;margin-bottom:13px;box-shadow:var(--sh)}
.chart-lbl{font-size:.66rem;text-transform:uppercase;letter-spacing:.08em;color:var(--txm);margin-bottom:10px}
.chart-wrap{display:flex;align-items:flex-end;gap:2px;height:54px}
.cbc{flex:1;display:flex;flex-direction:column;align-items:center;gap:3px}
.cbar{width:100%;border-radius:2px 2px 0 0;background:var(--lapis);min-height:2px;transition:height .4s}
.cbar.tod{background:var(--cyan)}
.cdl{font-size:.5rem;color:var(--txd);text-align:center}
.ret-item{background:var(--s);border:1px solid var(--bord);border-radius:var(--rs);padding:10px 12px;margin-bottom:6px;box-shadow:var(--sh)}
.ret-name{font-size:.86rem;color:var(--tx);font-weight:400;margin-bottom:2px}
.ret-dates{font-size:.66rem;color:var(--txm)}
.ret-cnt{font-family:''Cormorant Garamond'',serif;font-size:1.05rem;color:var(--gold)}
.frow2{display:flex;gap:6px;margin-bottom:10px;flex-wrap:wrap}
.fsel{padding:5px 20px 5px 9px;border:1px solid var(--bord);border-radius:100px;font-family:''Jost'',sans-serif;font-size:.7rem;background:var(--s);color:var(--tx);outline:none;cursor:pointer;background-image:url("data:image/svg+xml,%3Csvg xmlns=''http://www.w3.org/2000/svg'' width=''10'' height=''10'' viewBox=''0 0 12 12''%3E%3Cpath fill=''%238fa3c0'' d=''M6 8L1 3h10z''/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:right 7px center;-webkit-appearance:none}
.sess-item{background:var(--s);border:1px solid var(--bord);border-radius:var(--rs);padding:9px 11px;display:flex;align-items:center;gap:9px;margin-bottom:5px}
.s-date{min-width:30px;flex-shrink:0;text-align:center}
.s-day{font-family:''Cormorant Garamond'',serif;font-size:1.15rem;color:var(--cyan);line-height:1}
.s-mon{font-size:.55rem;text-transform:uppercase;color:var(--txm);letter-spacing:.05em}
.s-body{flex:1;min-width:0}
.s-name{font-size:.78rem;color:var(--tx);font-weight:400}
.s-meta{font-size:.63rem;color:var(--txm);margin-top:1px}
.s-note{font-size:.6rem;color:var(--txd);white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.s-cnt{font-family:''Cormorant Garamond'',serif;font-size:1rem;color:var(--tx);flex-shrink:0}
.s-unit{font-size:.55rem;color:var(--txm);text-align:right;font-family:''Jost'',sans-serif}
.s-acts{display:flex;gap:3px;flex-shrink:0}
.sbe{padding:4px 7px;border-radius:100px;border:none;font-family:''Jost'',sans-serif;font-size:.63rem;cursor:pointer}
.sbe-e{background:var(--s2);color:var(--txm)}.sbe-d{background:var(--reddim);color:var(--red)}
.exp-btn{display:flex;align-items:center;justify-content:space-between;width:100%;padding:11px 14px;background:var(--s);border:1px solid var(--bord);border-radius:var(--rs);font-family:''Jost'',sans-serif;font-size:.8rem;color:var(--tx);cursor:pointer;margin-bottom:6px}
.exp-btn:active{background:var(--s2)}

/* BUTTONS */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:5px;padding:10px 16px;border-radius:var(--rs);border:none;font-family:''Jost'',sans-serif;font-size:.82rem;font-weight:400;cursor:pointer;transition:all .15s;min-height:43px;-webkit-tap-highlight-color:transparent}
.btn-p{background:var(--lapis);color:#fff}.btn-p:active{background:var(--lapis2)}
.btn-g{background:transparent;color:var(--txm);border:1px solid var(--bord)}.btn-g:active{background:var(--s2)}
.btn-danger{background:var(--red);color:#fff}
.btn-full{width:100%}.btn-sm{padding:6px 12px;min-height:32px;font-size:.73rem}

/* FORM */
.fg{margin-bottom:12px}
label{display:block;font-size:.65rem;color:var(--txm);text-transform:uppercase;letter-spacing:.07em;margin-bottom:4px}
input[type=text],input[type=number],input[type=date],input[type=time],select,textarea{width:100%;padding:10px 11px;border:1px solid var(--bord);border-radius:var(--rs);font-family:''Jost'',sans-serif;font-size:.98rem;background:var(--bg2);color:var(--tx);outline:none;transition:border-color .2s;-webkit-appearance:none;appearance:none}
input:focus,select:focus,textarea:focus{border-color:var(--cyan)}
input::placeholder,textarea::placeholder{color:var(--txd)}
select{background-image:url("data:image/svg+xml,%3Csvg xmlns=''http://www.w3.org/2000/svg'' width=''10'' height=''10'' viewBox=''0 0 12 12''%3E%3Cpath fill=''%238fa3c0'' d=''M6 8L1 3h10z''/%3E%3C/svg%3E");background-repeat:no-repeat;background-position:right 11px center;padding-right:30px}
textarea{resize:vertical;min-height:65px}
.frow{display:grid;grid-template-columns:1fr 1fr;gap:8px}
.days-row{display:flex;gap:5px;flex-wrap:wrap;margin-top:4px}
.dtog{width:34px;height:34px;border-radius:50%;border:1.5px solid var(--bord);background:var(--bg2);color:var(--txm);font-family:''Jost'',sans-serif;font-size:.67rem;font-weight:500;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:all .15s}
.dtog.sel{background:var(--lapis);color:#fff;border-color:var(--lapis)}
.tlist,.rlist{display:flex;flex-direction:column;gap:6px;margin-top:4px}
.trow,.rrow{display:flex;align-items:center;gap:6px}
.trow input,.rrow select{flex:1}
.trm{width:29px;height:29px;border-radius:50%;border:none;background:var(--reddim);color:var(--red);font-size:.82rem;cursor:pointer;display:flex;align-items:center;justify-content:center;flex-shrink:0}
.addt{margin-top:4px;padding:6px 10px;border-radius:var(--rs);border:1.5px dashed var(--bord);background:transparent;color:var(--txm);font-family:''Jost'',sans-serif;font-size:.73rem;cursor:pointer;width:100%;text-align:center}

/* SHEET */
.shov{display:none;position:fixed;inset:0;background:rgba(5,10,20,.65);z-index:500;align-items:flex-end;justify-content:center}
.shov.open{display:flex}
.sheet{background:var(--bg2);border-radius:20px 20px 0 0;border-top:1px solid var(--bord);padding:0 16px;padding-bottom:calc(18px + var(--sb));max-width:600px;width:100%;max-height:92dvh;overflow-y:auto;-webkit-overflow-scrolling:touch;animation:su .21s cubic-bezier(.34,1.2,.64,1)}
@keyframes su{from{transform:translateY(100%)}to{transform:translateY(0)}}
.shdl{width:36px;height:4px;background:var(--bord);border-radius:100px;margin:10px auto 14px}
.shtitle{font-family:''Cormorant Garamond'',serif;font-size:1.35rem;font-weight:400;color:var(--tx);margin-bottom:14px;line-height:1.3}
.shacts{display:flex;flex-direction:column;gap:7px;margin-top:14px}
.mi{display:flex;align-items:center;gap:10px;padding:11px 0;border:none;background:transparent;font-family:''Jost'',sans-serif;font-size:.86rem;color:var(--tx);cursor:pointer;width:100%;border-bottom:1px solid var(--bord2)}
.mi:last-child{border-bottom:none}
.mi.danger{color:var(--red)}

/* TOAST */
.toast{position:fixed;bottom:calc(63px + var(--sb) + 10px);left:50%;transform:translateX(-50%) translateY(14px);background:var(--lapis);color:#fff;padding:7px 16px;border-radius:100px;font-size:.74rem;z-index:9999;opacity:0;transition:all .22s;white-space:nowrap;max-width:calc(100vw - 30px);text-align:center;pointer-events:none}
.toast.show{opacity:1;transform:translateX(-50%) translateY(0)}
.ib{display:none;position:fixed;bottom:calc(60px + var(--sb) + 8px);left:10px;right:10px;background:var(--lapis);color:#fff;border-radius:var(--r);padding:10px 12px;box-shadow:var(--shl);z-index:300;align-items:center;gap:8px;font-size:.73rem;line-height:1.5}
.ib.show{display:flex}
.ibx{background:rgba(255,255,255,.15);border:none;color:#fff;border-radius:50%;width:22px;height:22px;font-size:.68rem;cursor:pointer;display:flex;align-items:center;justify-content:center;flex-shrink:0}

@media(max-width:380px){.frow{grid-template-columns:1fr}.days-row{gap:4px}.dtog{width:30px;height:30px}}
</style>
</head>
<body>
<div id="app">
<header><div class="hi">
  <button class="hback" id="hback" onclick="navBack()">&#8592;</button>
  <div class="htitle" id="htitle">Vajrayana</div>
  <div class="hacts" id="hacts"></div>
</div></header>
<main id="ms">
  <div id="vw-today"  class="view active"></div>
  <div id="vw-tree"   class="view"></div>
  <div id="vw-stats"  class="view"></div>
</main>
<nav class="tabs">
  <button class="tb active" onclick="showTab(''today'')"><span class="ti">&#9788;</span>Hoy</button>
  <button class="tb"        onclick="showTab(''tree'')"> <span class="ti">&#9783;</span>Árbol</button>
  <button class="tb"        onclick="showTab(''stats'')"><span class="ti">&#9650;</span>Registros</button>
</nav>
</div>

<!-- NODE FORM -->
<div id="sh-node" class="shov" onclick="shOvClose(event,''sh-node'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle" id="sh-node-title">Nuevo nodo</h2>
  <input type="hidden" id="n-id"/>
  <input type="hidden" id="n-parent"/>
  <div class="fg"><label>Nombre</label><input type="text" id="n-name" placeholder="Nombre…"/></div>
  <div class="fg"><label>Tipo</label>
    <select id="n-type" onchange="togglePracFields()">
      <option value="node">Nodo genérico</option>
      <option value="school">Escuela</option>
      <option value="lineage">Linaje</option>
      <option value="cycle">Ciclo / Colección</option>
      <option value="practice">Práctica registrable</option>
    </select>
  </div>
  <div class="fg"><label>Descripción</label><textarea id="n-desc" rows="2" placeholder="Descripción, tradición, maestro…"></textarea></div>
  <!-- Practice-only fields -->
  <div id="prac-fields" style="display:none">
    <div class="frow">
      <div class="fg"><label>Unidad</label>
        <select id="n-unit">
          <option value="mantras">Mantras</option><option value="repeticiones">Repeticiones</option>
          <option value="vueltas">Vueltas mala</option><option value="postraciones">Postraciones</option>
          <option value="ciclos">Ciclos</option><option value="oraciones">Oraciones</option><option value="sesiones">Sesiones</option>
        </select>
      </div>
      <div class="fg"><label>Meta diaria</label><input type="number" id="n-daily" inputmode="numeric" placeholder="108"/></div>
    </div>
    <div class="frow">
      <div class="fg"><label>Meta total</label><input type="number" id="n-goal" inputmode="numeric" placeholder="100000"/></div>
      <div class="fg"><label>Acumulado</label><input type="number" id="n-current" inputmode="numeric" placeholder="0"/></div>
    </div>
    <div class="fg"><label>Mantra / texto</label><textarea id="n-mantra" rows="2" placeholder="OM VAJRASATTVA HUM…"></textarea></div>
    <div class="fg"><label>Días de práctica</label>
      <div class="days-row" id="days-row">
        <button class="dtog" data-d="1">L</button><button class="dtog" data-d="2">M</button>
        <button class="dtog" data-d="3">X</button><button class="dtog" data-d="4">J</button>
        <button class="dtog" data-d="5">V</button><button class="dtog" data-d="6">S</button>
        <button class="dtog" data-d="0">D</button>
      </div>
    </div>
    <div class="fg"><label>Horas</label><div class="tlist" id="tlist"></div><button class="addt" onclick="addTR()">+ Hora</button></div>
    <div class="fg"><label>Recordatorios</label><div class="rlist" id="rlist"></div><button class="addt" onclick="addRR()">+ Recordatorio</button></div>
  </div>
  <div class="shacts">
    <button class="btn btn-p btn-full" onclick="saveNode()">Guardar</button>
    <button class="btn btn-g btn-full" onclick="closeSheet(''sh-node'')">Cancelar</button>
  </div>
</div></div>

<!-- NODE MENU -->
<div id="sh-menu" class="shov" onclick="shOvClose(event,''sh-menu'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle" id="sh-menu-title"></h2>
  <button class="mi" onclick="menuAddChild()">Añadir hijo</button>
  <button class="mi" onclick="menuEdit()">Editar</button>
  <button class="mi" id="menu-add-sess-btn" onclick="menuAddSess()" style="display:none">Añadir sesión</button>
  <button class="mi danger" onclick="menuDelete()">Eliminar</button>
</div></div>

<!-- ADD SESSION -->
<div id="sh-sess" class="shov" onclick="shOvClose(event,''sh-sess'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle" id="sh-sess-title">Añadir sesión</h2>
  <div class="fg"><label>Cantidad</label><input type="number" id="q-qty" inputmode="numeric" placeholder="108"/></div>
  <div class="fg"><label>Duración (min)</label><input type="number" id="q-dur" inputmode="numeric" placeholder="30"/></div>
  <div class="fg"><label>Notas</label><input type="text" id="q-notes" placeholder="Dedicatoria…"/></div>
  <div class="shacts">
    <button class="btn btn-p btn-full" onclick="confirmAddSess()">Guardar</button>
    <button class="btn btn-g btn-full" onclick="closeSheet(''sh-sess'')">Cancelar</button>
  </div>
</div></div>

<!-- EDIT SESSION -->
<div id="sh-esess" class="shov" onclick="shOvClose(event,''sh-esess'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle">Editar sesión</h2>
  <input type="hidden" id="es-id"/>
  <div class="fg"><label>Práctica</label><select id="es-node"></select></div>
  <div class="frow">
    <div class="fg"><label>Cantidad</label><input type="number" id="es-qty" inputmode="numeric"/></div>
    <div class="fg"><label>Duración (min)</label><input type="number" id="es-dur" inputmode="numeric"/></div>
  </div>
  <div class="fg"><label>Fecha</label><input type="date" id="es-date"/></div>
  <div class="fg"><label>Notas</label><textarea id="es-notes" rows="2"></textarea></div>
  <div class="shacts">
    <button class="btn btn-p btn-full" onclick="saveEditSess()">Guardar</button>
    <button class="btn btn-g btn-full" onclick="closeSheet(''sh-esess'')">Cancelar</button>
  </div>
</div></div>

<!-- RETREAT -->
<div id="sh-ret" class="shov" onclick="shOvClose(event,''sh-ret'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle">Nuevo retiro</h2>
  <div class="fg"><label>Nombre</label><input type="text" id="ret-name" placeholder="Retiro de Vajrasattva…"/></div>
  <div class="frow">
    <div class="fg"><label>Inicio</label><input type="date" id="ret-s"/></div>
    <div class="fg"><label>Fin</label><input type="date" id="ret-e"/></div>
  </div>
  <div class="fg"><label>Total acumulado</label><input type="number" id="ret-n" inputmode="numeric" placeholder="0"/></div>
  <div class="fg"><label>Notas</label><textarea id="ret-notes" rows="2"></textarea></div>
  <div class="shacts">
    <button class="btn btn-p btn-full" onclick="saveRet()">Guardar retiro</button>
    <button class="btn btn-g btn-full" onclick="closeSheet(''sh-ret'')">Cancelar</button>
  </div>
</div></div>

<!-- CONFIRM -->
<div id="sh-conf" class="shov" onclick="shOvClose(event,''sh-conf'')"><div class="sheet">
  <div class="shdl"></div>
  <h2 class="shtitle">Confirmar</h2>
  <p id="conf-txt" style="font-size:.82rem;color:var(--txm);line-height:1.65;margin-bottom:4px"></p>
  <div class="shacts">
    <button class="btn btn-danger btn-full" id="conf-btn">Eliminar</button>
    <button class="btn btn-g btn-full" onclick="closeSheet(''sh-conf'')">Cancelar</button>
  </div>
</div></div>

<div class="ib" id="ib"><span style="flex:1">Safari: <strong>Compartir</strong> → <strong>Añadir a pantalla de inicio</strong></span><button class="ibx" onclick="dimIB()">&#10005;</button></div>
<div class="toast" id="toast"></div>

<script>
// ══════════════════════════════════════════════════
// DB  — tree stored as flat list with parentId
// node: { id, parentId, name, type, desc, order,
//   — if practice: unit, goal, daily, current, mantra, days[], times[], reminders[] }
// sessions: { id, nodeId, date, mantras, duration, notes }
// ══════════════════════════════════════════════════
const DB = {
  get nodes()    { return JSON.parse(localStorage.getItem(''vj5_nodes'')   ||''[]'') },
  get sessions() { return JSON.parse(localStorage.getItem(''vj5_sess'')    ||''[]'') },
  get retreats() { return JSON.parse(localStorage.getItem(''vj5_ret'')     ||''[]'') },
  saveNodes:    v => localStorage.setItem(''vj5_nodes'',  JSON.stringify(v)),
  saveSessions: v => localStorage.setItem(''vj5_sess'',   JSON.stringify(v)),
  saveRetreats: v => localStorage.setItem(''vj5_ret'',    JSON.stringify(v)),
};

const MONTHS=[''ene'',''feb'',''mar'',''abr'',''may'',''jun'',''jul'',''ago'',''sep'',''oct'',''nov'',''dic''];
const DNAMES=[''domingo'',''lunes'',''martes'',''miércoles'',''jueves'',''viernes'',''sábado''];
const DLBLS=[''D'',''L'',''M'',''X'',''J'',''V'',''S''];
const DORDER=[1,2,3,4,5,6,0]; const DOLBLS=[''L'',''M'',''X'',''J'',''V'',''S'',''D''];
function today(){return new Date().toISOString().split(''T'')[0]}
function todayDow(){return new Date().getDay()}
function uid(){return ''_''+Math.random().toString(36).slice(2,9)+Date.now().toString(36)}

function childrenOf(parentId){
  return DB.nodes.filter(n=>n.parentId===(parentId||null)).sort((a,b)=>(a.order||0)-(b.order||0));
}
function allDescendantIds(id){
  const kids=DB.nodes.filter(n=>n.parentId===id);
  return kids.reduce((acc,k)=>[...acc,k.id,...allDescendantIds(k.id)],[]);
}
function allPracticeNodes(){return DB.nodes.filter(n=>n.type===''practice'')}

// ══════════════════════════════════════════════════
// NAV
// ══════════════════════════════════════════════════
let curTab=''today'';
let treeStack=[]; // array of nodeIds drilled into

function showTab(tab){
  curTab=tab; treeStack=[];
  [''today'',''tree'',''stats''].forEach(v=>document.getElementById(''vw-''+v).classList.remove(''active''));
  document.querySelectorAll(''.tb'').forEach(b=>b.classList.remove(''active''));
  document.getElementById(''vw-''+tab).classList.add(''active'');
  const ti=[''today'',''tree'',''stats''].indexOf(tab);
  if(ti>=0) document.querySelectorAll(''.tb'')[ti].classList.add(''active'');
  updateHeader();
  if(tab===''today'') renderToday();
  if(tab===''tree'')  renderTree();
  if(tab===''stats'') renderStats();
  document.getElementById(''ms'').scrollTop=0;
}

function drillInto(nodeId){
  treeStack.push(nodeId);
  renderTree();
  document.getElementById(''ms'').scrollTop=0;
}

function navBack(){
  if(treeStack.length){treeStack.pop();renderTree();return;}
  showTab(''today'');
}

function updateHeader(){
  const back=document.getElementById(''hback'');
  const title=document.getElementById(''htitle'');
  const acts=document.getElementById(''hacts'');
  if(curTab===''tree''){
    if(treeStack.length){
      back.classList.add(''on'');
      const cur=DB.nodes.find(n=>n.id===treeStack[treeStack.length-1]);
      title.textContent=cur?cur.name:'''';
      acts.innerHTML=`<button class="btn btn-p btn-sm" onclick="openNewNode(''${treeStack[treeStack.length-1]}'')">+ Añadir</button>`;
    } else {
      back.classList.remove(''on'');
      title.textContent=''Árbol del Dharma'';
      acts.innerHTML=`<button class="btn btn-p btn-sm" onclick="openNewNode(null)">+ Raíz</button>`;
    }
  } else if(curTab===''today''){
    back.classList.remove(''on''); title.textContent=''Vajrayana''; acts.innerHTML='''';
  } else if(curTab===''stats''){
    back.classList.remove(''on''); title.textContent=''Registros''; acts.innerHTML='''';
  }
}

// ══════════════════════════════════════════════════
// TREE VIEW
// ══════════════════════════════════════════════════
function renderTree(){
  updateHeader();
  const parentId=treeStack.length?treeStack[treeStack.length-1]:null;
  const children=childrenOf(parentId);
  const el=document.getElementById(''vw-tree'');

  // Breadcrumb
  let bc='''';
  if(treeStack.length){
    bc=''<div class="bc"><span class="bc-a" onclick="treeStack=[];renderTree()">Raíz</span>'';
    treeStack.forEach((id,i)=>{
      const n=DB.nodes.find(x=>x.id===id);
      if(i<treeStack.length-1) bc+=`<span class="bc-sep">›</span><span class="bc-a" onclick="treeStack=treeStack.slice(0,${i+1});renderTree()">${n?n.name:id}</span>`;
      else bc+=`<span class="bc-sep">›</span><span class="bc-cur">${n?n.name:id}</span>`;
    });
    bc+=''</div>'';
  }

  let html=bc+''<div class="node-list">'';
  if(!children.length){
    html+=`<div style="text-align:center;padding:40px 0 20px;color:var(--txm)">
      <div style="font-family:''Cormorant Garamond'',serif;font-size:1.25rem;color:var(--tx);margin-bottom:6px">
        ${parentId?''Sin subnodos aún'':''Árbol vacío''}
      </div>
      <div style="font-size:.78rem">Pulsa el botón + para añadir ${parentId?''subnodos o prácticas'':''nodos raíz''}</div>
    </div>`;
  } else {
    html+=children.map(n=>nodeCardHTML(n)).join('''');
  }
  html+=`</div>
  <button class="add-child-btn" onclick="openNewNode(${parentId?`''${parentId}''`:''null''})">
    + Añadir ${parentId?''subnodo / práctica'':''nodo raíz''}
  </button>`;
  el.innerHTML=html;
}

function nodeCardHTML(n){
  const hasCh=childrenOf(n.id).length>0;
  const isPrac=n.type===''practice'';
  const typeLbl={school:''Escuela'',lineage:''Linaje'',cycle:''Ciclo'',practice:''Práctica'',node:''Nodo''}[n.type]||''Nodo'';
  const dotCls={school:''dot-school'',lineage:''dot-lineage'',cycle:''dot-cycle'',practice:''dot-practice'',node:''dot-node''}[n.type]||''dot-node'';
  const tagCls={school:''tag-school'',lineage:''tag-lineage'',cycle:''tag-cycle'',practice:''tag-practice'',node:''tag-node''}[n.type]||''tag-node'';
  const dow=todayDow();

  let pracHTML='''';
  if(isPrac){
    const total=n.current||0; const goal=n.goal||100000;
    const pct=Math.min(100,(total/goal)*100);
    const dayDots=DORDER.map((d,i)=>{const on=(n.days||[]).includes(d);const now2=d===dow;return`<div class="dd ${on?(now2?''now'':''on''):''''}">${DOLBLS[i]}</div>`;}).join('''');
    const times=(n.times||[]).map(t=>`<span class="np-t">${t}</span>`).join('''');
    let proj='''';
    const sess=DB.sessions.filter(s=>s.nodeId===n.id);
    if(sess.length>=3&&total<goal){const l7=sess.filter(s=>(new Date()-new Date(s.date+''T12:00:00''))<7*86400000);const avg=l7.reduce((a,s)=>a+(s.mantras||0),0)/7;if(avg>0){const dl=Math.ceil((goal-total)/avg);const fd=new Date();fd.setDate(fd.getDate()+dl);proj=`<div class="np-proj">A este ritmo: ${fd.toLocaleDateString(''es-ES'',{day:''numeric'',month:''long'',year:''numeric''})}</div>`;}}
    pracHTML=`<div class="node-prac">
      <div class="np-prog-row"><span>${n.unit||''mantras''}</span><span class="np-cnt" id="nc-${n.id}">${total.toLocaleString(''es-ES'')}</span></div>
      <div class="np-bar"><div class="np-fill" id="nf-${n.id}" style="width:${pct}%"></div></div>
      <div class="np-pct">Meta: ${goal.toLocaleString(''es-ES'')} · <span id="np-${n.id}">${pct.toFixed(1)}</span>%</div>
      <div class="np-daily"><span class="np-dl">Meta diaria</span><span class="np-dv">${(n.daily||108).toLocaleString(''es-ES'')} ${n.unit||''mantras''}</span></div>
      <div class="np-days">${dayDots}</div>
      ${times?`<div class="np-times">${times}</div>`:''''}
      ${n.mantra?`<div style="font-size:.67rem;color:var(--txm);font-style:italic;margin-bottom:7px;line-height:1.5">${n.mantra}</div>`:''''}
      ${proj}
      <button class="btn-addsess" onclick="openAddSess(''${n.id}'')">+ Añadir sesión</button>
    </div>`;
  }

  const childCount=childrenOf(n.id).length;

  return `<div class="node-card type-${n.type||''node''}" id="nc-card-${n.id}">
    <div class="node-row" onclick="handleNodeTap(''${n.id}'')">
      <div class="node-type-dot ${dotCls}"></div>
      <div class="node-body">
        <div class="node-name">${n.name}</div>
        ${n.desc?`<div class="node-desc">${n.desc}</div>`:''''}
        <div class="node-meta">
          ${childCount?`<span>${childCount} sub${childCount!==1?''nodos'':''nodo''}</span>`:''''}
          ${isPrac&&(n.days||[]).length?`<span>${(n.days||[]).length} días/sem</span>`:''''}
        </div>
      </div>
      <span class="node-tag ${tagCls}">${typeLbl}</span>
      ${hasCh||!isPrac?''<div class="node-arrow">›</div>'':''''}
      <button class="node-menu" onclick="event.stopPropagation();openMenu(''${n.id}'')">···</button>
    </div>
    ${pracHTML}
  </div>`;
}

function handleNodeTap(id){
  const n=DB.nodes.find(x=>x.id===id); if(!n) return;
  const hasCh=childrenOf(id).length>0;
  if(hasCh||(n.type!==''practice'')) drillInto(id);
  // if practice with no children, just stays open (prac section already visible)
}

// ══════════════════════════════════════════════════
// NODE CRUD
// ══════════════════════════════════════════════════
let editNodeId=null;
let editNodeParent=null;

function togglePracFields(){
  const v=document.getElementById(''n-type'').value===''practice'';
  document.getElementById(''prac-fields'').style.display=v?''block'':''none'';
}

function openNewNode(parentId){
  editNodeId=null; editNodeParent=parentId;
  document.getElementById(''sh-node-title'').textContent=''Nuevo nodo'';
  document.getElementById(''n-id'').value='''';
  document.getElementById(''n-parent'').value=parentId||'''';
  document.getElementById(''n-name'').value='''';
  document.getElementById(''n-type'').value=''node'';
  document.getElementById(''n-desc'').value='''';
  document.getElementById(''n-unit'').value=''mantras'';
  document.getElementById(''n-daily'').value='''';
  document.getElementById(''n-goal'').value='''';
  document.getElementById(''n-current'').value='''';
  document.getElementById(''n-mantra'').value='''';
  document.querySelectorAll(''.dtog'').forEach(b=>b.classList.remove(''sel''));
  document.getElementById(''tlist'').innerHTML='''';
  document.getElementById(''rlist'').innerHTML='''';
  document.getElementById(''prac-fields'').style.display=''none'';
  openSheet(''sh-node'');
  setTimeout(()=>document.getElementById(''n-name'').focus(),350);
}

function openEditNode(id){
  const n=DB.nodes.find(x=>x.id===id); if(!n) return;
  editNodeId=id;
  document.getElementById(''sh-node-title'').textContent=''Editar · ''+n.name;
  document.getElementById(''n-id'').value=n.id;
  document.getElementById(''n-parent'').value=n.parentId||'''';
  document.getElementById(''n-name'').value=n.name||'''';
  document.getElementById(''n-type'').value=n.type||''node'';
  document.getElementById(''n-desc'').value=n.desc||'''';
  document.getElementById(''n-unit'').value=n.unit||''mantras'';
  document.getElementById(''n-daily'').value=n.daily||'''';
  document.getElementById(''n-goal'').value=n.goal||'''';
  document.getElementById(''n-current'').value=n.current||0;
  document.getElementById(''n-mantra'').value=n.mantra||'''';
  togglePracFields();
  document.querySelectorAll(''.dtog'').forEach(b=>b.classList.toggle(''sel'',(n.days||[]).includes(parseInt(b.dataset.d))));
  document.getElementById(''tlist'').innerHTML=''''; (n.times||[]).forEach(t=>addTR(t));
  document.getElementById(''rlist'').innerHTML=''''; (n.reminders||[]).forEach(r=>addRR(r));
  openSheet(''sh-node'');
}

document.querySelectorAll(''.dtog'').forEach(b=>b.addEventListener(''click'',()=>b.classList.toggle(''sel'')));

function addTR(v){const r=document.createElement(''div'');r.className=''trow'';r.innerHTML=`<input type="time" value="${v||''07:00''}"/><button class="trm" onclick="this.parentElement.remove()">&#10005;</button>`;document.getElementById(''tlist'').appendChild(r);}
function addRR(v){const r=document.createElement(''div'');r.className=''rrow'';r.innerHTML=`<select><option value="5" ${v==5?''selected'':''''}>5 min antes</option><option value="10" ${v==10?''selected'':''''}>10 min antes</option><option value="15" ${v==15?''selected'':''''}>15 min antes</option><option value="30" ${v==30?''selected'':''''}>30 min antes</option><option value="60" ${v==60?''selected'':''''}>1 hora antes</option><option value="120" ${v==120?''selected'':''''}>2 horas antes</option></select><button class="trm" onclick="this.parentElement.remove()">&#10005;</button>`;document.getElementById(''rlist'').appendChild(r);}

function saveNode(){
  const name=document.getElementById(''n-name'').value.trim();
  if(!name){showToast(''El nombre es obligatorio'');return;}
  const type=document.getElementById(''n-type'').value;
  const isPrac=type===''practice'';
  const days=Array.from(document.querySelectorAll(''.dtog.sel'')).map(b=>parseInt(b.dataset.d));
  const times=Array.from(document.querySelectorAll(''#tlist input'')).map(i=>i.value).filter(Boolean);
  const reminders=Array.from(document.querySelectorAll(''#rlist select'')).map(s=>parseInt(s.value));
  const nodes=DB.nodes;
  const obj={
    name, type,
    desc:document.getElementById(''n-desc'').value.trim(),
    parentId:document.getElementById(''n-parent'').value||null,
    ...(isPrac?{
      unit:document.getElementById(''n-unit'').value,
      goal:parseInt(document.getElementById(''n-goal'').value)||100000,
      daily:parseInt(document.getElementById(''n-daily'').value)||108,
      current:parseInt(document.getElementById(''n-current'').value)||0,
      mantra:document.getElementById(''n-mantra'').value.trim(),
      days, times, reminders,
    }:{})
  };
  if(editNodeId){
    const idx=nodes.findIndex(x=>x.id===editNodeId);
    nodes[idx]={...nodes[idx],...obj};
    DB.saveNodes(nodes); showToast(''Actualizado'');
  } else {
    const siblings=childrenOf(obj.parentId||null);
    obj.id=uid(); obj.order=siblings.length; obj.createdAt=new Date().toISOString();
    nodes.push(obj); DB.saveNodes(nodes); showToast(''Creado'');
  }
  if(isPrac) scheduleReminders(obj.id||editNodeId);
  closeSheet(''sh-node'');
  renderTree();
  if(curTab===''today'') renderToday();
}

// ══════════════════════════════════════════════════
// NODE MENU
// ══════════════════════════════════════════════════
let menuNodeId=null;
function openMenu(id){
  menuNodeId=id;
  const n=DB.nodes.find(x=>x.id===id);
  document.getElementById(''sh-menu-title'').textContent=n?n.name:'''';
  const sessBtn=document.getElementById(''menu-add-sess-btn'');
  sessBtn.style.display=n?.type===''practice''?''flex'':''none'';
  openSheet(''sh-menu'');
}
function menuAddChild(){closeSheet(''sh-menu'');setTimeout(()=>openNewNode(menuNodeId),160);}
function menuEdit(){closeSheet(''sh-menu'');setTimeout(()=>openEditNode(menuNodeId),160);}
function menuAddSess(){closeSheet(''sh-menu'');setTimeout(()=>openAddSess(menuNodeId),160);}
function menuDelete(){
  closeSheet(''sh-menu'');
  setTimeout(()=>{
    const n=DB.nodes.find(x=>x.id===menuNodeId);
    const descIds=allDescendantIds(menuNodeId);
    const total=descIds.length;
    document.getElementById(''conf-txt'').textContent=
      `¿Eliminar "${n?.name}"?${total?` Se eliminarán también ${total} subnodo${total!==1?''s'':''''} y todas sus sesiones.`:''''}`;
    document.getElementById(''conf-btn'').onclick=()=>deleteNode(menuNodeId);
    openSheet(''sh-conf'');
  },160);
}
function deleteNode(id){
  const descIds=allDescendantIds(id);
  const allIds=[id,...descIds];
  DB.saveNodes(DB.nodes.filter(n=>!allIds.includes(n.id)));
  DB.saveSessions(DB.sessions.filter(s=>!allIds.includes(s.nodeId)));
  closeSheet(''sh-conf'');
  // if we deleted a node we''re currently inside, pop back
  if(treeStack.includes(id)) treeStack=treeStack.slice(0,treeStack.indexOf(id));
  renderTree();
  if(curTab===''today'') renderToday();
  showToast(''Eliminado'');
}

// ══════════════════════════════════════════════════
// SESSIONS
// ══════════════════════════════════════════════════
let quickNodeId=null;
function openAddSess(id){
  quickNodeId=id;
  const n=DB.nodes.find(x=>x.id===id);
  document.getElementById(''sh-sess-title'').textContent=n?n.name:''Añadir sesión'';
  document.getElementById(''q-qty'').value='''';
  document.getElementById(''q-dur'').value='''';
  document.getElementById(''q-notes'').value='''';
  openSheet(''sh-sess'');
  setTimeout(()=>document.getElementById(''q-qty'').focus(),330);
}
function confirmAddSess(){
  const qty=parseInt(document.getElementById(''q-qty'').value);
  if(!qty||qty<1){showToast(''Introduce una cantidad válida'');return;}
  const dur=parseInt(document.getElementById(''q-dur'').value)||null;
  const notes=document.getElementById(''q-notes'').value.trim();
  const nodes=DB.nodes; const idx=nodes.findIndex(x=>x.id===quickNodeId); if(idx<0)return;
  nodes[idx].current=(nodes[idx].current||0)+qty;
  DB.saveNodes(nodes);
  const sess=DB.sessions;
  sess.unshift({id:uid(),nodeId:quickNodeId,date:today(),mantras:qty,duration:dur,notes,createdAt:new Date().toISOString()});
  DB.saveSessions(sess);
  // animate
  const ce=document.getElementById(''nc-''+quickNodeId);
  const fe=document.getElementById(''nf-''+quickNodeId);
  const pe=document.getElementById(''np-''+quickNodeId);
  if(ce){const nt=nodes[idx].current;const np=Math.min(100,(nt/(nodes[idx].goal||100000))*100);animN(ce,nt);if(fe)fe.style.width=np+''%'';if(pe)pe.textContent=np.toFixed(1);}
  closeSheet(''sh-sess'');
  showToast(`+${qty.toLocaleString(''es-ES'')} ${nodes[idx].unit||''mantras''} guardados`);
  if(curTab===''today'') renderToday();
}
function animN(el,target){const from=parseInt(el.textContent.replace(/\\D/g,''''))||0;const diff=target-from;const steps=24;let i=0;const t=setInterval(()=>{i++;el.textContent=Math.round(from+diff*(i/steps)).toLocaleString(''es-ES'');if(i>=steps){el.textContent=target.toLocaleString(''es-ES'');clearInterval(t);}},16);}

function openEditSess(id){
  const s=DB.sessions.find(x=>x.id===id);if(!s)return;
  const pracs=allPracticeNodes();
  document.getElementById(''es-node'').innerHTML=pracs.map(n=>`<option value="${n.id}" ${n.id===s.nodeId?''selected'':''''}>${n.name}</option>`).join('''');
  document.getElementById(''es-id'').value=s.id;
  document.getElementById(''es-qty'').value=s.mantras||'''';
  document.getElementById(''es-dur'').value=s.duration||'''';
  document.getElementById(''es-date'').value=s.date;
  document.getElementById(''es-notes'').value=s.notes||'''';
  openSheet(''sh-esess'');
}
function saveEditSess(){
  const id=document.getElementById(''es-id'').value;
  const sess=DB.sessions;const idx=sess.findIndex(x=>x.id===id);if(idx<0)return;
  const oldN=sess[idx].nodeId;const newN=document.getElementById(''es-node'').value;
  sess[idx]={...sess[idx],nodeId:newN,mantras:parseInt(document.getElementById(''es-qty'').value)||0,duration:parseInt(document.getElementById(''es-dur'').value)||null,date:document.getElementById(''es-date'').value,notes:document.getElementById(''es-notes'').value.trim()};
  DB.saveSessions(sess);recalcNode(oldN);if(newN!==oldN)recalcNode(newN);
  closeSheet(''sh-esess'');renderStats();showToast(''Sesión actualizada'');
}
function confDelSess(id){
  document.getElementById(''conf-txt'').textContent=''¿Eliminar esta sesión?'';
  document.getElementById(''conf-btn'').onclick=()=>{
    const s=DB.sessions.find(x=>x.id===id);
    DB.saveSessions(DB.sessions.filter(x=>x.id!==id));
    if(s?.nodeId)recalcNode(s.nodeId);
    closeSheet(''sh-conf'');renderStats();showToast(''Sesión eliminada'');
  };
  openSheet(''sh-conf'');
}
function recalcNode(nid){
  const total=DB.sessions.filter(s=>s.nodeId===nid).reduce((a,s)=>a+(s.mantras||0),0);
  const nodes=DB.nodes;const idx=nodes.findIndex(x=>x.id===nid);
  if(idx>=0){nodes[idx].current=total;DB.saveNodes(nodes);}
}

// ══════════════════════════════════════════════════
// TODAY
// ══════════════════════════════════════════════════
function calcStreak(){
  const days=[...new Set(DB.sessions.map(s=>s.date))].sort().reverse();
  let streak=0;let d=new Date();
  for(let i=0;i<365;i++){
    const ds=d.toISOString().split(''T'')[0];
    if(days.includes(ds)){streak++;d.setDate(d.getDate()-1);}
    else if(i===0){d.setDate(d.getDate()-1);}else break;
  }
  const last7=[];
  for(let i=6;i>=0;i--){const dd=new Date();dd.setDate(dd.getDate()-i);last7.push(days.includes(dd.toISOString().split(''T'')[0]));}
  return{current:streak,last7};
}

function renderToday(){
  const dow=todayDow();
  const pracs=allPracticeNodes();
  const sess=DB.sessions;
  const tSess=sess.filter(s=>s.date===today());
  const tMan=tSess.reduce((a,s)=>a+(s.mantras||0),0);
  const tPracs=pracs.filter(p=>(p.days||[]).includes(dow));
  const doneIds=new Set(tSess.map(s=>s.nodeId));
  const streak=calcStreak();
  const dateStr=new Date().toLocaleDateString(''es-ES'',{weekday:''long'',day:''numeric'',month:''long''});
  const sdots=streak.last7.map((d,i)=>`<div class="sd2 ${d?(i===6?''tod'':''done''):''''}"></div>`).join('''');
  let tiHTML='''';
  if(tPracs.length){
    const done=tPracs.filter(p=>doneIds.has(p.id)).length;
    tiHTML=`<div class="today-lbl">Hoy · ${done}/${tPracs.length} completadas</div>`+
    tPracs.map(p=>{
      const isDone=doneIds.has(p.id);
      return`<div class="titem ${isDone?''done'':''''}" id="ti-${p.id}">
        <button class="tchk ${isDone?''on'':''''}" onclick="toggleChk(''${p.id}'')">&#10003;</button>
        <div class="tbody"><div class="tname">${p.name}</div><div class="tmeta">${p.daily||108} ${p.unit||''mantras''} · ${(p.times||[]).join('', '')||''sin hora''}</div></div>
        <button class="tadd" onclick="openAddSess(''${p.id}'')">+ Añadir</button>
      </div>`;
    }).join('''');
  } else {
    tiHTML=`<div style="padding:14px 0;font-size:.78rem;color:var(--txm);text-align:center">No hay prácticas programadas para hoy.<br><span style="font-size:.7rem;color:var(--txd)">Edita las prácticas en el Árbol y configura sus días.</span></div>`;
  }
  document.getElementById(''vw-today'').innerHTML=`
    <div class="hero">
      <div class="hero-date">${dateStr}</div>
      <div class="streak-row"><span class="sn">${streak.current}</span><span class="sl">día${streak.current!==1?''s'':''''} consecutivo${streak.current!==1?''s'':''''}</span></div>
      <div class="sbar">${sdots}</div>
      <div class="hero-stats">
        <div class="hsc"><div class="hscv">${tMan.toLocaleString(''es-ES'')}</div><div class="hscl">Hoy</div></div>
        <div class="hsc"><div class="hscv">${tPracs.length}</div><div class="hscl">Programadas</div></div>
        <div class="hsc"><div class="hscv">${tSess.length}</div><div class="hscl">Sesiones</div></div>
      </div>
    </div>
    ${tiHTML}`;
}
function toggleChk(id){const el=document.querySelector(`#ti-${id} .tchk`);const item=document.getElementById(''ti-''+id);if(el){el.classList.toggle(''on'');item.classList.toggle(''done'');}}

// ══════════════════════════════════════════════════
// STATS
// ══════════════════════════════════════════════════
function renderStats(){
  const sess=DB.sessions;const pracs=allPracticeNodes();const rets=DB.retreats;
  const totalMan=pracs.reduce((a,p)=>a+(p.current||0),0);
  const totalMin=sess.reduce((a,s)=>a+(s.duration||0),0);
  const streak=calcStreak();
  // chart
  const chartData=[];for(let i=29;i>=0;i--){const d=new Date();d.setDate(d.getDate()-i);const ds=d.toISOString().split(''T'')[0];const tot=sess.filter(s=>s.date===ds).reduce((a,s)=>a+(s.mantras||0),0);chartData.push({tot,isToday:i===0,lbl:DLBLS[d.getDay()]});}
  const maxV=Math.max(...chartData.map(c=>c.tot),1);
  const chartHTML=chartData.map(c=>`<div class="cbc"><div class="cbar ${c.isToday?''tod'':''''}" style="height:${Math.max(2,(c.tot/maxV)*50)}px"></div><div class="cdl" ${c.isToday?''style="color:var(--cyan)"'':''''}>${c.lbl}</div></div>`).join('''');
  // filter
  const fv=document.getElementById(''sf-node'')?.value||'''';
  const fp=parseInt(document.getElementById(''sf-per'')?.value)||0;
  let fSess=[...sess];
  if(fv)fSess=fSess.filter(s=>s.nodeId===fv);
  if(fp){const cut=new Date();cut.setDate(cut.getDate()-fp);fSess=fSess.filter(s=>new Date(s.date)>=cut);}
  const sessHTML=fSess.length?fSess.map(s=>{const n=pracs.find(x=>x.id===s.nodeId);const d=new Date(s.date+''T12:00:00'');return`<div class="sess-item"><div class="s-date"><div class="s-day">${d.getDate()}</div><div class="s-mon">${MONTHS[d.getMonth()]}</div></div><div class="s-body"><div class="s-name">${n?n.name:''Eliminada''}</div><div class="s-meta">${s.duration?s.duration+'' min · '':''''}${n?.unit||''''}</div>${s.notes?`<div class="s-note">${s.notes}</div>`:''''}</div><div><div class="s-cnt">${s.mantras?s.mantras.toLocaleString(''es-ES''):''—''}</div><div class="s-unit">${n?.unit||''''}</div></div><div class="s-acts"><button class="sbe sbe-e" onclick="openEditSess(''${s.id}'')">Editar</button><button class="sbe sbe-d" onclick="confDelSess(''${s.id}'')">Borrar</button></div></div>`;}).join(''''):`<div style="text-align:center;padding:22px;color:var(--txm);font-size:.78rem">Sin sesiones</div>`;
  const retsHTML=rets.length?rets.map(r=>`<div class="ret-item"><div style="display:flex;justify-content:space-between;align-items:flex-start"><div><div class="ret-name">${r.name}</div><div class="ret-dates">${r.start||''''} → ${r.end||''en curso''}</div>${r.notes?`<div style="font-size:.65rem;color:var(--txm);margin-top:2px">${r.notes}</div>`:''''}</div><div class="ret-cnt">${(r.count||0).toLocaleString(''es-ES'')}</div></div></div>`).join(''''):`<div style="font-size:.76rem;color:var(--txm);text-align:center;padding:12px 0">Sin retiros</div>`;
  document.getElementById(''vw-stats'').innerHTML=`
    <div style="display:flex;align-items:flex-start;justify-content:space-between;margin-bottom:14px;gap:8px">
      <div><div style="font-family:''Cormorant Garamond'',serif;font-size:1.8rem;font-weight:300;color:var(--tx)">Registros</div></div>
    </div>
    <div class="stats-grid">
      <div class="sc"><div class="scv">${totalMan.toLocaleString(''es-ES'')}</div><div class="scl">Total acumulado</div></div>
      <div class="sc"><div class="scv">${sess.length}</div><div class="scl">Sesiones</div></div>
      <div class="sc"><div class="scv">${Math.round(totalMin/60)||0}</div><div class="scl">Horas práctica</div></div>
      <div class="sc"><div class="scv" style="color:var(--gold)">${streak.current}</div><div class="scl">Racha actual</div></div>
    </div>
    <div class="chart-card"><div class="chart-lbl">Últimos 30 días</div><div class="chart-wrap">${chartHTML}</div></div>
    <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:8px"><div style="font-size:.66rem;text-transform:uppercase;letter-spacing:.08em;color:var(--txm)">Retiros</div><button class="btn btn-p btn-sm" onclick="openSheet(''sh-ret'')">+ Retiro</button></div>
    <div style="margin-bottom:16px">${retsHTML}</div>
    <div style="font-size:.66rem;text-transform:uppercase;letter-spacing:.08em;color:var(--txm);margin-bottom:8px">Exportar</div>
    <button class="exp-btn" onclick="exportCSV()"><span>Sesiones CSV</span><span style="color:var(--cyan)">&#8595;</span></button>
    <button class="exp-btn" onclick="exportJSON()"><span>Copia de seguridad JSON</span><span style="color:var(--cyan)">&#8595;</span></button>
    <div style="display:flex;justify-content:space-between;align-items:center;margin:16px 0 8px"><div style="font-size:.66rem;text-transform:uppercase;letter-spacing:.08em;color:var(--txm)">Historial</div></div>
    <div class="frow2">
      <select class="fsel" id="sf-node" onchange="renderStats()"><option value="">Todas las prácticas</option>${pracs.map(n=>`<option value="${n.id}">${n.name}</option>`).join('''')}</select>
      <select class="fsel" id="sf-per" onchange="renderStats()"><option value="">Siempre</option><option value="7">7 días</option><option value="30">30 días</option><option value="90">90 días</option></select>
    </div>
    <div>${sessHTML}</div>`;
}

function saveRet(){const name=document.getElementById(''ret-name'').value.trim();if(!name){showToast(''El nombre es obligatorio'');return;}const rets=DB.retreats;rets.unshift({id:uid(),name,start:document.getElementById(''ret-s'').value,end:document.getElementById(''ret-e'').value,count:parseInt(document.getElementById(''ret-n'').value)||0,notes:document.getElementById(''ret-notes'').value.trim(),createdAt:new Date().toISOString()});DB.saveRetreats(rets);closeSheet(''sh-ret'');renderStats();showToast(''Retiro guardado'');}
function exportCSV(){const sess=DB.sessions;const nodes=DB.nodes;let csv=''Fecha,Práctica,Cantidad,Unidad,Duración(min),Notas\\n'';sess.forEach(s=>{const n=nodes.find(x=>x.id===s.nodeId);csv+=`${s.date},"${n?.name||''''}",${s.mantras||0},"${n?.unit||''''}",${s.duration||''''},"${(s.notes||'''').replace(/"/g,''""'')}"\\n`;});dl(''vajrayana-sesiones.csv'',csv,''text/csv'');}
function exportJSON(){dl(''vajrayana-backup.json'',JSON.stringify({nodes:DB.nodes,sessions:DB.sessions,retreats:DB.retreats,exportedAt:new Date().toISOString()},null,2),''application/json'');}
function dl(name,content,type){const a=document.createElement(''a'');a.href=URL.createObjectURL(new Blob([content],{type}));a.download=name;a.click();}

// NOTIFICATIONS
async function reqNotif(){if(!(''Notification''in window))return false;if(Notification.permission===''granted'')return true;if(Notification.permission===''denied'')return false;return(await Notification.requestPermission())===''granted'';}
function scheduleReminders(nid){if(!navigator.serviceWorker?.controller)return;const n=DB.nodes.find(x=>x.id===nid);if(!n?.times?.length||!n?.reminders?.length||!n?.days?.length)return;if(!n.days.includes(todayDow()))return;const now=new Date();n.times.forEach(t=>n.reminders.forEach(m=>{const[h,mn]=t.split('':'').map(Number);const target=new Date(now);target.setHours(h,mn-m,0,0);const delay=target-now;if(delay>0&&delay<86400000)navigator.serviceWorker.controller.postMessage({type:''SCHEDULE_REMINDER'',delay,title:''Vajrayana · Práctica'',body:`En ${m} min: ${n.name}`,tag:`r-${n.id}-${t}`});}));}
function scheduleAll(){DB.nodes.filter(n=>n.type===''practice'').forEach(n=>scheduleReminders(n.id));}

// SHEETS
function openSheet(id){document.getElementById(id).classList.add(''open'');document.body.style.overflow=''hidden'';}
function closeSheet(id){document.getElementById(id).classList.remove(''open'');document.body.style.overflow='''';}
function shOvClose(e,id){if(e.target.id===id)closeSheet(id);}
document.querySelectorAll(''.shov'').forEach(ov=>{const sh=ov.querySelector(''.sheet'');let sy=0;sh.addEventListener(''touchstart'',e=>{sy=e.touches[0].clientY;},{passive:true});sh.addEventListener(''touchmove'',e=>{if(e.touches[0].clientY-sy>70)closeSheet(ov.id);},{passive:true});});

// TOAST
let tt=null;
function showToast(msg){const el=document.getElementById(''toast'');el.textContent=msg;el.classList.add(''show'');clearTimeout(tt);tt=setTimeout(()=>el.classList.remove(''show''),2300);}
function dimIB(){document.getElementById(''ib'').classList.remove(''show'');localStorage.setItem(''vj5_ib'',''1'');}

// SW
if(''serviceWorker''in navigator){window.addEventListener(''load'',()=>{navigator.serviceWorker.register(''./sw.js'').then(async()=>{if(await reqNotif())setTimeout(scheduleAll,1000);}).catch(e=>console.log(''SW:'',e));});}

// ══════════════════════════════════════════════════
// SEED — precargado editable
// ══════════════════════════════════════════════════
function seed(){
  if(DB.nodes.length) return;
  const now=new Date().toISOString();
  const nodes=[];
  let order=0;
  function addN(id,parentId,name,type,desc,extra={}){nodes.push({id,parentId,name,type,desc,order:order++,createdAt:now,...extra});}

  // ── NYINGMA
  addN(''nyingma'',null,''Nyingma'',''school'',''Escuela Antigua, s. VIII · Padmasambhava'');
    addN(''ny-kama'',''nyingma'',''Kama'',''lineage'',''Linaje largo de transmisión oral'');
      addN(''ny-k-mahayoga'',''ny-kama'',''Mahayoga'',''cycle'',''Tantras de la fase de generación · Guhyagarbha Tantra'');
        addN(''ny-k-maha-p1'',''ny-k-mahayoga'',''Sadhana Mahayoga'',''practice'',''Práctica de generación'',{unit:''repeticiones'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''ny-k-anuyoga'',''ny-kama'',''Anuyoga'',''cycle'',''Tantras de la fase de consumación'');
        addN(''ny-k-anu-p1'',''ny-k-anuyoga'',''Práctica Anuyoga'',''practice'',''Fase de consumación'',{unit:''ciclos'',goal:10000,daily:21,current:0,days:[],times:[],reminders:[]});
      addN(''ny-k-ati'',''ny-kama'',''Atiyoga / Dzogchen'',''cycle'',''La Gran Perfección'');
        addN(''ny-k-ati-trekcho'',''ny-k-ati'',''Trekchö'',''practice'',''Cortar desde la raíz · Rigpa'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
        addN(''ny-k-ati-togal'',''ny-k-ati'',''Tögal'',''practice'',''Cruzar directamente · Visión luminosa'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
    addN(''ny-terma'',''nyingma'',''Terma'',''lineage'',''Tesoros revelados (>5000)'');
      addN(''lnt'',''ny-terma'',''Longchen Nyingtik'',''cycle'',''Jigme Lingpa tertön · Corazón del Gran Espacio'');
        addN(''lnt-ngondro'',''lnt'',''Ngöndro Longchen Nyingtik'',''practice'',''Prácticas preliminares del LNT'',{unit:''repeticiones'',goal:111000,daily:111,current:0,mantra:'''',days:[1,2,3,4,5],times:[''07:00''],reminders:[15]});
        addN(''lnt-rigdzin'',''lnt'',''Rigdzin Düpa'',''practice'',''Acumulación del Vidyadhara'',{unit:''mantras'',goal:100000,daily:108,current:0,mantra:''OM AH HUM VAJRA GURU PADMA SIDDHI HUM'',days:[1,2,3,4,5,6,0],times:[''08:00''],reminders:[10]});
        addN(''lnt-yumka'',''lnt'',''Yumka Dechen Gyalmo'',''practice'',''Reina del Gran Gozo · dakini'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
        addN(''lnt-khandro'',''lnt'',''Khandro Nyingtik'',''practice'',''Corazón de la Dakini'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
      addN(''dudjom'',''ny-terma'',''Dudjom Tersar'',''cycle'',''Dudjom Lingpa (1835-1904)'');
        addN(''dud-ngondro'',''dudjom'',''Ngöndro Dudjom Tersar'',''practice'',''Preliminares de la Nueva Transmisión'',{unit:''repeticiones'',goal:111000,daily:111,current:0,days:[1,2,3,4,5],times:[''07:30''],reminders:[15]});
        addN(''dud-troma'',''dudjom'',''Troma Nakmo'',''practice'',''Dakini Negra Iracunda · Chöd'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
        addN(''dud-padma'',''dudjom'',''Padma Khandro'',''practice'',''Dakini del Loto'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''chokling'',''ny-terma'',''Chokling Tersar'',''cycle'',''Chokgyur Lingpa (1829-1870)'');
        addN(''chok-kilaya'',''chokling'',''Vajrakilaya'',''practice'',''Kila de vajra · rompe obstáculos'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
        addN(''chok-drolo'',''chokling'',''Dorje Drolö'',''practice'',''Emanación iracunda de Padmasambhava'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''rinchen'',''ny-terma'',''Rinchen Terdzö'',''cycle'',''Jamgön Kongtrul · 63 vols · 900+ wang'');
        addN(''rinchen-dakini'',''rinchen'',''Dakini Nyingtik'',''practice'',''Sadhanas dakini de longevidad (tshe grub)'',{unit:''repeticiones'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''nyingtik-yabshi'',''ny-terma'',''Nyingtik Yabshi'',''cycle'',''Los cuatro grandes Nyingtik'');
        addN(''vima'',''nyingtik-yabshi'',''Vima Nyingtik'',''practice'',''Corazón de Vimalamitra'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
    addN(''ny-sublin'',''nyingma'',''Sub-linajes Nyingma'',''lineage'',''Mindrolling · Dorje Drak · Katok · Palyul · Shechen'');
      addN(''mindrolling'',''ny-sublin'',''Mindrolling'',''node'',''Terdak Lingpa'');
      addN(''palyul'',''ny-sublin'',''Palyul'',''node'',''Karma Chakme'');
      addN(''shechen'',''ny-sublin'',''Shechen'',''node'',''Shechen Gyaltsap'');

  // ── KAGYU
  addN(''kagyu'',null,''Kagyu'',''school'',''Línea Oral · Marpa > Milarepa > Gampopa'');
    addN(''karma-kagyu'',''kagyu'',''Karma Kagyu'',''lineage'',''Linaje de los Karmapas'');
      addN(''kk-ngondro'',''karma-kagyu'',''Ngöndro Karma Kamtsang'',''practice'',''Preliminares del Karma Kagyu'',{unit:''repeticiones'',goal:111000,daily:111,current:0,days:[1,2,3,4,5],times:[''07:00''],reminders:[15]});
      addN(''kk-mahamudra'',''karma-kagyu'',''Mahamudra · Cuatro Yogas'',''practice'',''Un solo yoga · simple · sin elaboración · Mahamudra'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[1,2,3,4,5,6,0],times:[''06:00''],reminders:[10]});
      addN(''six-yogas'',''karma-kagyu'',''Six Yogas of Naropa'',''cycle'',''Tummo · Luz Clara · Cuerpo Ilusorio · Sueño · Bardo · Phowa'');
        addN(''tummo'',''six-yogas'',''Tummo (Fuego Interior)'',''practice'',''Vase breathing · calor interior · nadi-vayu'',{unit:''ciclos'',goal:10000,daily:21,current:0,days:[1,2,3,4,5,6,0],times:[''06:00''],reminders:[10]});
        addN(''luz-clara'',''six-yogas'',''Yoga de la Luz Clara'',''practice'',''Práctica del sueño profundo y bardo'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
        addN(''phowa'',''six-yogas'',''Phowa'',''practice'',''Transferencia de conciencia · canal central'',{unit:''repeticiones'',goal:10000,daily:21,current:0,days:[],times:[],reminders:[]});
    addN(''shangpa'',''kagyu'',''Shangpa Kagyu'',''lineage'',''Khyungpo Naljor · transmisión de Niguma'');
      addN(''niguma-6'',''shangpa'',''Six Yogas of Niguma'',''practice'',''Transmisión paralela de Niguma'',{unit:''ciclos'',goal:10000,daily:21,current:0,days:[],times:[],reminders:[]});
      addN(''amulet-mm'',''shangpa'',''Amulet Mahamudra'',''practice'',''Mahamudra Amuleto del Shangpa'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
    addN(''drikung'',''kagyu'',''Drikung Kagyu'',''lineage'',''Kyobpa Jigten Sumgön'');
      addN(''drik-mm'',''drikung'',''Five Profound Paths Mahamudra'',''practice'',''Los cinco profundos caminos'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});
    addN(''drukpa'',''kagyu'',''Drukpa Kagyu'',''lineage'',''Lingje Repa'');
      addN(''dru-p'',''drukpa'',''Realms of Awakening'',''practice'',''Práctica principal del Drukpa Kagyu'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[],times:[],reminders:[]});

  // ── SAKYA
  addN(''sakya'',null,''Sakya'',''school'',''Familia Khön · fundada 1073 · Virupa > Drogmi Lotsawa'');
    addN(''lamdre'',''sakya'',''Lamdre Tsongsum'',''lineage'',''Sakya Pandita · El Camino y su Fruto'');
      addN(''sakya-ngondro'',''lamdre'',''Ngöndro Sakya'',''practice'',''4.100.000 postraciones · Extraordinario Ngöndro'',{unit:''postraciones'',goal:4100000,daily:300,current:0,days:[1,2,3,4,5,6,0],times:[''07:00''],reminders:[15]});
      addN(''hevajra'',''lamdre'',''Hevajra'',''practice'',''Yidam principal del Lamdre'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''vajrayogini-s'',''lamdre'',''Vajrayogini (Sakya)'',''practice'',''Naro Khechari · dakini del Sakya'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
    addN(''thirteen'',''sakya'',''Thirteen Golden Dharmas'',''lineage'',''Las trece enseñanzas de oro del Sakya'');
      addN(''kurukulle'',''thirteen'',''Kurukulle'',''practice'',''Deidad del magnetismo rojo'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});

  // ── GELUG
  addN(''gelug'',null,''Gelug'',''school'',''Je Tsongkhapa (1357-1419) · Ganden'');
    addN(''gelug-kama'',''gelug'',''Kama Gelug · Yidams'',''lineage'',''Lamrim Chenmo + Cuatro Tantras principales'');
      addN(''ganden-ngondro'',''gelug-kama'',''Ngöndro Ganden Lhagyama'',''practice'',''Guru yoga de Migtsema'',{unit:''repeticiones'',goal:100000,daily:108,current:0,days:[1,2,3,4,5],times:[''07:00''],reminders:[15]});
      addN(''yamantaka'',''gelug-kama'',''Yamantaka'',''practice'',''Vajrabhairava · vencedor de la muerte · Manjushri iracundo'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[1,3,5],times:[''08:00''],reminders:[10]});
      addN(''guhyasamaja'',''gelug-kama'',''Guhyasamaja'',''practice'',''Tantra de la Asamblea Secreta · padre tantra'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[2,4,6],times:[''08:00''],reminders:[10]});
      addN(''chakrasamvara'',''gelug-kama'',''Chakrasamvara'',''practice'',''Heruka · madre tantra · no-dualidad'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[6,0],times:[''09:00''],reminders:[30]});
      addN(''vajrayogini-g'',''gelug-kama'',''Vajrayogini (Gelug)'',''practice'',''Vajravarahi · dakini principal del Gelug'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''hayagriva'',''gelug-kama'',''Hayagriva'',''practice'',''Cabeza de caballo · deidad iracunda'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
    addN(''kalachakra'',''gelug'',''Kalachakra'',''lineage'',''Rueda del Tiempo · Jonang/Gelug'');
      addN(''kala-main'',''kalachakra'',''Kalachakra'',''practice'',''Rueda del Tiempo · Anuttara'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[0],times:[''10:00''],reminders:[30]});
      addN(''kala-ngondro'',''kalachakra'',''Kalachakra Ngöndro'',''practice'',''Preliminares del Kalachakra'',{unit:''repeticiones'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});

  // ── BON
  addN(''bon'',null,''Bon'',''school'',''Tradición pre-budista tibetana · Shenrab Miwoche'');
    addN(''yung-bon'',''bon'',''Yungdrung Bon'',''lineage'',''Bon eterno · Zhang Zhung Nyengyü'');
      addN(''bon-dzogchen'',''yung-bon'',''Dzogchen Yungdrung'',''practice'',''Gran Perfección del Bon'',{unit:''sesiones'',goal:1000,daily:1,current:0,days:[6,0],times:[''07:00''],reminders:[10]});
      addN(''bon-shenrab'',''yung-bon'',''Práctica de Shenrab Miwoche'',''practice'',''Fundador del Bon · sadhana principal'',{unit:''mantras'',goal:100000,daily:108,current:0,days:[],times:[],reminders:[]});
      addN(''bon-tsalung'',''yung-bon'',''Tsa Lung (Bon)'',''practice'',''Canales y vientos del Bon'',{unit:''ciclos'',goal:10000,daily:21,current:0,days:[],times:[],reminders:[]});

  DB.saveNodes(nodes);
}

seed();
renderToday();
if(/iphone|ipad|ipod/i.test(navigator.userAgent)&&!window.navigator.standalone&&!localStorage.getItem(''vj5_ib'')){setTimeout(()=>document.getElementById(''ib'').classList.add(''show''),3000);}
</script>
</body>
</html>
','ÁRBOL TAXONÓMICO COMPLETO · Dudjom Tersar · Dudjom Lingpa · Dudjom Rinpoche · Wang · Lung · Tri · prácticas y requisitos.');
INSERT INTO node_types(code,label) VALUES ('cycle','cycle') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO node_types(code,label) VALUES ('lineage','lineage') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO node_types(code,label) VALUES ('node','node') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO node_types(code,label) VALUES ('practice','practice') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO node_types(code,label) VALUES ('school','school') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO units(code,label) VALUES ('ciclos','ciclos') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO units(code,label) VALUES ('mantras','mantras') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO units(code,label) VALUES ('postraciones','postraciones') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO units(code,label) VALUES ('repeticiones','repeticiones') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO units(code,label) VALUES ('sesiones','sesiones') ON DUPLICATE KEY UPDATE label=VALUES(label);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('nyingma',NULL,1,'Nyingma','school','Escuela Antigua, s. VIII · Padmasambhava',0,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-kama','nyingma',1,'Kama','lineage','Linaje largo de transmisión oral',1,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-mahayoga','ny-kama',1,'Mahayoga','cycle','Tantras de la fase de generación · Guhyagarbha Tantra',2,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-maha-p1','ny-k-mahayoga',1,'Sadhana Mahayoga','practice','Práctica de generación',3,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('ny-k-maha-p1','repeticiones',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-anuyoga','ny-kama',1,'Anuyoga','cycle','Tantras de la fase de consumación',4,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-anu-p1','ny-k-anuyoga',1,'Práctica Anuyoga','practice','Fase de consumación',5,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('ny-k-anu-p1','ciclos',10000,21,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-ati','ny-kama',1,'Atiyoga / Dzogchen','cycle','La Gran Perfección',6,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-ati-trekcho','ny-k-ati',1,'Trekchö','practice','Cortar desde la raíz · Rigpa',7,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('ny-k-ati-trekcho','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-k-ati-togal','ny-k-ati',1,'Tögal','practice','Cruzar directamente · Visión luminosa',8,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('ny-k-ati-togal','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-terma','nyingma',1,'Terma','lineage','Tesoros revelados (>5000)',9,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lnt','ny-terma',1,'Longchen Nyingtik','cycle','Jigme Lingpa tertön · Corazón del Gran Espacio',10,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lnt-ngondro','lnt',1,'Ngöndro Longchen Nyingtik','practice','Prácticas preliminares del LNT',11,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('lnt-ngondro','repeticiones',111000,111,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-ngondro',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-ngondro',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-ngondro',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-ngondro',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-ngondro',5);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('lnt-ngondro','07:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('lnt-ngondro',15);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lnt-rigdzin','lnt',1,'Rigdzin Düpa','practice','Acumulación del Vidyadhara',12,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('lnt-rigdzin','mantras',100000,108,0,'OM AH HUM VAJRA GURU PADMA SIDDHI HUM');
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',5);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('lnt-rigdzin',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('lnt-rigdzin','08:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('lnt-rigdzin',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lnt-yumka','lnt',1,'Yumka Dechen Gyalmo','practice','Reina del Gran Gozo · dakini',13,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('lnt-yumka','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lnt-khandro','lnt',1,'Khandro Nyingtik','practice','Corazón de la Dakini',14,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('lnt-khandro','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('dudjom','ny-terma',1,'Dudjom Tersar','cycle','Dudjom Lingpa (1835-1904)',15,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('dud-ngondro','dudjom',1,'Ngöndro Dudjom Tersar','practice','Preliminares de la Nueva Transmisión',16,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('dud-ngondro','repeticiones',111000,111,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('dud-ngondro',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('dud-ngondro',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('dud-ngondro',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('dud-ngondro',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('dud-ngondro',5);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('dud-ngondro','07:30:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('dud-ngondro',15);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('dud-troma','dudjom',1,'Troma Nakmo','practice','Dakini Negra Iracunda · Chöd',17,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('dud-troma','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('dud-padma','dudjom',1,'Padma Khandro','practice','Dakini del Loto',18,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('dud-padma','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('chokling','ny-terma',1,'Chokling Tersar','cycle','Chokgyur Lingpa (1829-1870)',19,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('chok-kilaya','chokling',1,'Vajrakilaya','practice','Kila de vajra · rompe obstáculos',20,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('chok-kilaya','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('chok-drolo','chokling',1,'Dorje Drolö','practice','Emanación iracunda de Padmasambhava',21,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('chok-drolo','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('rinchen','ny-terma',1,'Rinchen Terdzö','cycle','Jamgön Kongtrul · 63 vols · 900+ wang',22,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('rinchen-dakini','rinchen',1,'Dakini Nyingtik','practice','Sadhanas dakini de longevidad (tshe grub)',23,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('rinchen-dakini','repeticiones',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('nyingtik-yabshi','ny-terma',1,'Nyingtik Yabshi','cycle','Los cuatro grandes Nyingtik',24,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('vima','nyingtik-yabshi',1,'Vima Nyingtik','practice','Corazón de Vimalamitra',25,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('vima','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ny-sublin','nyingma',1,'Sub-linajes Nyingma','lineage','Mindrolling · Dorje Drak · Katok · Palyul · Shechen',26,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('mindrolling','ny-sublin',1,'Mindrolling','node','Terdak Lingpa',27,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('palyul','ny-sublin',1,'Palyul','node','Karma Chakme',28,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('shechen','ny-sublin',1,'Shechen','node','Shechen Gyaltsap',29,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kagyu',NULL,1,'Kagyu','school','Línea Oral · Marpa > Milarepa > Gampopa',30,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('karma-kagyu','kagyu',1,'Karma Kagyu','lineage','Linaje de los Karmapas',31,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kk-ngondro','karma-kagyu',1,'Ngöndro Karma Kamtsang','practice','Preliminares del Karma Kagyu',32,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('kk-ngondro','repeticiones',111000,111,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-ngondro',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-ngondro',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-ngondro',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-ngondro',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-ngondro',5);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('kk-ngondro','07:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('kk-ngondro',15);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kk-mahamudra','karma-kagyu',1,'Mahamudra · Cuatro Yogas','practice','Un solo yoga · simple · sin elaboración · Mahamudra',33,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('kk-mahamudra','sesiones',1000,1,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',5);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('kk-mahamudra',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('kk-mahamudra','06:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('kk-mahamudra',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('six-yogas','karma-kagyu',1,'Six Yogas of Naropa','cycle','Tummo · Luz Clara · Cuerpo Ilusorio · Sueño · Bardo · Phowa',34,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('tummo','six-yogas',1,'Tummo (Fuego Interior)','practice','Vase breathing · calor interior · nadi-vayu',35,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('tummo','ciclos',10000,21,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',5);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('tummo',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('tummo','06:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('tummo',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('luz-clara','six-yogas',1,'Yoga de la Luz Clara','practice','Práctica del sueño profundo y bardo',36,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('luz-clara','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('phowa','six-yogas',1,'Phowa','practice','Transferencia de conciencia · canal central',37,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('phowa','repeticiones',10000,21,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('shangpa','kagyu',1,'Shangpa Kagyu','lineage','Khyungpo Naljor · transmisión de Niguma',38,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('niguma-6','shangpa',1,'Six Yogas of Niguma','practice','Transmisión paralela de Niguma',39,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('niguma-6','ciclos',10000,21,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('amulet-mm','shangpa',1,'Amulet Mahamudra','practice','Mahamudra Amuleto del Shangpa',40,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('amulet-mm','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('drikung','kagyu',1,'Drikung Kagyu','lineage','Kyobpa Jigten Sumgön',41,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('drik-mm','drikung',1,'Five Profound Paths Mahamudra','practice','Los cinco profundos caminos',42,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('drik-mm','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('drukpa','kagyu',1,'Drukpa Kagyu','lineage','Lingje Repa',43,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('dru-p','drukpa',1,'Realms of Awakening','practice','Práctica principal del Drukpa Kagyu',44,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('dru-p','sesiones',1000,1,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('sakya',NULL,1,'Sakya','school','Familia Khön · fundada 1073 · Virupa > Drogmi Lotsawa',45,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('lamdre','sakya',1,'Lamdre Tsongsum','lineage','Sakya Pandita · El Camino y su Fruto',46,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('sakya-ngondro','lamdre',1,'Ngöndro Sakya','practice','4.100.000 postraciones · Extraordinario Ngöndro',47,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('sakya-ngondro','postraciones',4100000,300,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',5);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('sakya-ngondro',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('sakya-ngondro','07:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('sakya-ngondro',15);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('hevajra','lamdre',1,'Hevajra','practice','Yidam principal del Lamdre',48,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('hevajra','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('vajrayogini-s','lamdre',1,'Vajrayogini (Sakya)','practice','Naro Khechari · dakini del Sakya',49,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('vajrayogini-s','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('thirteen','sakya',1,'Thirteen Golden Dharmas','lineage','Las trece enseñanzas de oro del Sakya',50,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kurukulle','thirteen',1,'Kurukulle','practice','Deidad del magnetismo rojo',51,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('kurukulle','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('gelug',NULL,1,'Gelug','school','Je Tsongkhapa (1357-1419) · Ganden',52,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('gelug-kama','gelug',1,'Kama Gelug · Yidams','lineage','Lamrim Chenmo + Cuatro Tantras principales',53,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('ganden-ngondro','gelug-kama',1,'Ngöndro Ganden Lhagyama','practice','Guru yoga de Migtsema',54,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('ganden-ngondro','repeticiones',100000,108,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('ganden-ngondro',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('ganden-ngondro',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('ganden-ngondro',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('ganden-ngondro',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('ganden-ngondro',5);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('ganden-ngondro','07:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('ganden-ngondro',15);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('yamantaka','gelug-kama',1,'Yamantaka','practice','Vajrabhairava · vencedor de la muerte · Manjushri iracundo',55,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('yamantaka','mantras',100000,108,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('yamantaka',1);
INSERT INTO practice_days(node_id,weekday) VALUES ('yamantaka',3);
INSERT INTO practice_days(node_id,weekday) VALUES ('yamantaka',5);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('yamantaka','08:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('yamantaka',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('guhyasamaja','gelug-kama',1,'Guhyasamaja','practice','Tantra de la Asamblea Secreta · padre tantra',56,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('guhyasamaja','mantras',100000,108,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('guhyasamaja',2);
INSERT INTO practice_days(node_id,weekday) VALUES ('guhyasamaja',4);
INSERT INTO practice_days(node_id,weekday) VALUES ('guhyasamaja',6);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('guhyasamaja','08:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('guhyasamaja',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('chakrasamvara','gelug-kama',1,'Chakrasamvara','practice','Heruka · madre tantra · no-dualidad',57,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('chakrasamvara','mantras',100000,108,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('chakrasamvara',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('chakrasamvara',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('chakrasamvara','09:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('chakrasamvara',30);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('vajrayogini-g','gelug-kama',1,'Vajrayogini (Gelug)','practice','Vajravarahi · dakini principal del Gelug',58,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('vajrayogini-g','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('hayagriva','gelug-kama',1,'Hayagriva','practice','Cabeza de caballo · deidad iracunda',59,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('hayagriva','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kalachakra','gelug',1,'Kalachakra','lineage','Rueda del Tiempo · Jonang/Gelug',60,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kala-main','kalachakra',1,'Kalachakra','practice','Rueda del Tiempo · Anuttara',61,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('kala-main','mantras',100000,108,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('kala-main',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('kala-main','10:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('kala-main',30);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('kala-ngondro','kalachakra',1,'Kalachakra Ngöndro','practice','Preliminares del Kalachakra',62,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('kala-ngondro','repeticiones',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('bon',NULL,1,'Bon','school','Tradición pre-budista tibetana · Shenrab Miwoche',63,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('yung-bon','bon',1,'Yungdrung Bon','lineage','Bon eterno · Zhang Zhung Nyengyü',64,'2026-01-01 00:00:00');
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('bon-dzogchen','yung-bon',1,'Dzogchen Yungdrung','practice','Gran Perfección del Bon',65,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('bon-dzogchen','sesiones',1000,1,0,NULL);
INSERT INTO practice_days(node_id,weekday) VALUES ('bon-dzogchen',6);
INSERT INTO practice_days(node_id,weekday) VALUES ('bon-dzogchen',0);
INSERT INTO practice_times(node_id,time_of_day) VALUES ('bon-dzogchen','07:00:00');
INSERT INTO practice_reminders(node_id,minutes_before) VALUES ('bon-dzogchen',10);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('bon-shenrab','yung-bon',1,'Práctica de Shenrab Miwoche','practice','Fundador del Bon · sadhana principal',66,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('bon-shenrab','mantras',100000,108,0,NULL);
INSERT INTO taxonomy_nodes(id,parent_id,source_page_id,name,node_type,description,display_order,created_at) VALUES ('bon-tsalung','yung-bon',1,'Tsa Lung (Bon)','practice','Canales y vientos del Bon',67,'2026-01-01 00:00:00');
INSERT INTO practice_profiles(node_id,unit_code,goal_value,daily_target,current_value,mantra) VALUES ('bon-tsalung','ciclos',10000,21,0,NULL);
