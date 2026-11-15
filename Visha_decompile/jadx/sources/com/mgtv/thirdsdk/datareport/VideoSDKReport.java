package com.mgtv.thirdsdk.datareport;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.a.a;
import com.hunantv.imgo.a.d;
import com.hunantv.imgo.a.f;
import com.hunantv.imgo.a.g;
import com.hunantv.imgo.a.h;
import com.hunantv.imgo.a.i;
import com.hunantv.imgo.a.j;
import com.hunantv.imgo.a.k;
import com.hunantv.imgo.data.BigDataBufferData;
import com.hunantv.imgo.data.BigDataHeartBeatData;
import com.hunantv.imgo.data.CommonData;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.LiveAPlayData;
import com.hunantv.imgo.data.PlayErrorData;
import com.hunantv.imgo.data.VodAPlayData;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.u;
import com.mgtv.json.JsonInterface;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.thirdsdk.datareport.a.c;
import com.mgtv.thirdsdk.playcore.callback.PlayerListener;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.transsion.push.PushConstants;
import java.net.SocketTimeoutException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class VideoSDKReport implements PlayerListener.OnBufferListener, PlayerListener.OnCompletionListener, PlayerListener.OnInfoListener, PlayerListener.OnTickListener {
    private static final String S = "com.mgtv.thirdsdk.datareport.VideoSDKReport";
    private static VideoSDKReport au;
    protected boolean A;
    protected String B;
    protected String C;
    protected String D;
    protected String E;
    protected String F;
    protected String G;
    protected String H;
    protected boolean I;
    protected boolean J;
    protected boolean K;
    protected boolean L;
    protected String M;
    protected String N;
    protected String O;
    protected String P;
    protected c Q;
    protected int R;
    private boolean U;
    private int V;
    private String W;
    private d Y;
    private com.hunantv.imgo.a.c Z;
    String a;
    private f aa;
    private j ab;
    private h ac;
    private g ad;
    private i ae;
    private String af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private boolean al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private String aq;
    private String ar;
    private com.hunantv.imgo.net.c as;
    private String av;
    String b;
    String c;
    protected ImgoPlayerView e;
    protected Context f;
    protected int g;
    protected int i;
    protected int j;
    protected int k;
    protected String m;
    protected int p;
    protected String r;
    protected String w;
    protected String x;
    private boolean T = true;
    boolean d = false;
    protected boolean h = true;
    protected String l = "";
    protected boolean n = false;
    protected int o = 0;
    protected int q = 0;
    protected int s = 0;
    protected int t = 0;
    protected int u = 2;
    protected boolean v = false;
    protected int y = 1;
    protected boolean z = true;
    private boolean at = true;
    private com.hunantv.imgo.b.c X = com.hunantv.imgo.b.c.a();

    public static class GUID implements JsonInterface {
        public String data;
        public int status;
    }

    public VideoSDKReport(Context context) {
        this.f = context;
        this.ac = h.a(context);
        this.Y = d.a(this.f);
        this.Z = com.hunantv.imgo.a.c.a(this.f);
        this.aa = f.a(this.f);
        this.ab = j.a(this.f);
        this.ad = g.a(this.f);
        this.ae = i.a(this.f);
    }

    private void A() {
        String str = S;
        n.c(str, "videoSDKReport endHeartReport  isBigDataCompleteSend:" + this.z);
        if (!this.z) {
            n.c(str, "  心跳结束  ");
            BigDataHeartBeatData bigDataHeartBeatData = new BigDataHeartBeatData(b.x(), b.n());
            if (this.al) {
                bigDataHeartBeatData.setAct("heartbeat");
                bigDataHeartBeatData.setBid(CommonData.BID_LIVE_PLAY);
            }
            RequestParams requestParamsB = b(bigDataHeartBeatData.getRequestParams());
            requestParamsB.put("ht", 2);
            requestParamsB.put("idx", this.i);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("isfull", n());
            requestParamsB.put("tss", this.P);
            requestParamsB.put("cpn", com.hunantv.imgo.b.c.a().a(true, false) + "");
            a(requestParamsB);
            this.Y.a(requestParamsB);
            this.i = this.i + 1;
        }
        g(true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void B() {
        VodAPlayData vodAPlayData = new VodAPlayData();
        vodAPlayData.setVid(this.a);
        vodAPlayData.setFpid(this.x);
        vodAPlayData.setFpn(this.w);
        vodAPlayData.setP2p(this.V);
        String str = this.X.f;
        if (str != null) {
            vodAPlayData.setSuuid(str);
        }
        vodAPlayData.setPay(this.s);
        if (TextUtils.isEmpty(this.aj)) {
            vodAPlayData.setUrl(this.m);
        } else {
            vodAPlayData.setUrl(this.aj + this.l);
        }
        if (TextUtils.isEmpty(this.ak)) {
            vodAPlayData.setCdnip(u.h(this.m));
        } else {
            vodAPlayData.setCdnip(u.h(this.ak));
        }
        vodAPlayData.setAp(1);
        vodAPlayData.setAcp(this.d ? 1 : 0);
        vodAPlayData.setPt(this.U ? 3 : 0);
        vodAPlayData.setDef(this.y);
        vodAPlayData.setCh(b.x());
        vodAPlayData.setPlid(this.ag);
        vodAPlayData.setCid(this.af);
        ImgoPlayerView imgoPlayerView = this.e;
        if (imgoPlayerView != null) {
            vodAPlayData.setCt(imgoPlayerView.getCurrentPosition());
        } else {
            vodAPlayData.setCt(0);
        }
        vodAPlayData.setFpa(u.a((Object) m()));
        String str2 = this.ah;
        String str3 = this.ai;
        vodAPlayData.setCpn(com.hunantv.imgo.b.c.a().a(true, false));
        vodAPlayData.setBdid(str2);
        vodAPlayData.setBsid(str3);
        vodAPlayData.setIsad(this.A ? 1 : 0);
        vodAPlayData.setSumt(this.B);
        vodAPlayData.setHsumt(this.C);
        vodAPlayData.setFirstt(this.D);
        vodAPlayData.setAdt(this.E);
        vodAPlayData.setTwot(this.F);
        vodAPlayData.setThreet(this.G);
        vodAPlayData.setPret(this.H);
        vodAPlayData.setIsftm(this.I ? "1" : "0");
        vodAPlayData.setIsqs(this.J ? "1" : "0");
        vodAPlayData.setIsqst(this.K ? "1" : "0");
        vodAPlayData.setIsaps(this.L ? "1" : "0");
        vodAPlayData.setCdtp(this.O);
        vodAPlayData.setP2pt(this.M);
        vodAPlayData.setMp(this.N);
        j jVar = this.ab;
        if (jVar != null) {
            jVar.a(vodAPlayData);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void C() {
        int i;
        LiveAPlayData liveAPlayData = new LiveAPlayData();
        liveAPlayData.setFpid(this.x);
        liveAPlayData.setFpn(this.w);
        liveAPlayData.setP2p(this.V);
        liveAPlayData.setLiveId(this.am);
        liveAPlayData.setActiveid(this.an);
        liveAPlayData.setSid(com.hunantv.imgo.b.c.a().h);
        liveAPlayData.setLid(this.ao);
        liveAPlayData.setIsad(this.A ? 1 : 0);
        String str = this.X.f;
        if (str != null) {
            liveAPlayData.setSuuid(str);
        }
        liveAPlayData.setPay(this.s);
        if (TextUtils.isEmpty(this.aj)) {
            liveAPlayData.setUrl(this.m);
        } else {
            liveAPlayData.setUrl(this.aj + this.l);
        }
        if (TextUtils.isEmpty(this.ak)) {
            liveAPlayData.setCdnip(u.h(this.m));
        } else {
            liveAPlayData.setCdnip(u.h(this.ak));
        }
        liveAPlayData.setAcp(this.d ? 1 : 0);
        if (this.U) {
            i = 3;
        } else {
            i = this.al ? 4 : 0;
        }
        liveAPlayData.setPt(i);
        liveAPlayData.setDef(this.y);
        liveAPlayData.setCh(b.x());
        ImgoPlayerView imgoPlayerView = this.e;
        if (imgoPlayerView != null) {
            liveAPlayData.setCt(imgoPlayerView.getCurrentPosition());
        } else {
            liveAPlayData.setCt(0);
        }
        liveAPlayData.setFpa(u.a((Object) m()));
        liveAPlayData.setIsad(this.A ? 1 : 0);
        j jVar = this.ab;
        if (jVar != null) {
            jVar.a(liveAPlayData);
        }
    }

    private void D() {
        if (this.as == null) {
            com.hunantv.imgo.net.c cVar = new com.hunantv.imgo.net.c(this.f);
            this.as = cVar;
            cVar.a(new com.hunantv.imgo.net.c.b() {
                @Override
                public void a(int i) {
                    VideoSDKReport.this.j(i);
                }
            });
            this.as.a();
        }
    }

    private void E() {
        a("fin", "", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    private void F() {
        String str = this.ap;
        String str2 = this.aq;
        String str3 = this.a;
        String str4 = this.b;
        boolean z = this.d;
        a("vv", "", "0", null, str, str2, str3, str4, z ? 1 : 0, this.ar, this.c);
    }

    public void b() {
        this.X.f = UUID.randomUUID().toString();
        this.av = null;
    }

    public void c(String str) {
        this.ar = str;
    }

    public void d(String str) {
        this.an = str;
    }

    public void e(String str) {
        this.am = str;
    }

    public void f(String str) {
        this.O = str;
    }

    public void g(String str) {
        this.P = str;
    }

    public void h() {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.d();
        }
        if (!this.T) {
            l();
        }
        D();
    }

    public void i() {
        PreferencesUtil.a("pref_pvsource_app_background_time", System.currentTimeMillis());
        this.T = false;
    }

    public void j() {
        n.c(S, "videoSDKReport onDestroy:");
        d(false);
        A();
        e();
        c cVar = this.Q;
        if (cVar != null) {
            cVar.e();
        }
        h hVar = this.ac;
        if (hVar != null) {
            hVar.d();
        }
        com.hunantv.imgo.net.c cVar2 = this.as;
        if (cVar2 != null) {
            cVar2.b();
            this.as = null;
        }
    }

    public void k() {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.e();
        }
        this.Q = null;
        this.e = null;
    }

    public void l() {
        if (System.currentTimeMillis() - PreferencesUtil.b("pref_pvsource_app_background_time", 0L) > 30000) {
            String string = UUID.randomUUID().toString();
            com.hunantv.imgo.b.c cVar = this.X;
            cVar.g = string;
            String str = cVar.i;
            String str2 = cVar.k;
            PreferencesUtil.a("pref_key_rdc", "");
            PreferencesUtil.a("pref_key_rch", "");
            com.hunantv.imgo.b.c.a().q = "";
            if (!u.i(str)) {
                this.X.i = "6300";
                this.ac.a(str, str2, "", "", "6300", "2");
            }
        }
        PreferencesUtil.a("pref_pvsource_app_background_time", System.currentTimeMillis());
    }

    public String m() {
        return this.W;
    }

    public int n() {
        DisplayMetrics displayMetrics = BaseApplication.getContext().getResources().getDisplayMetrics();
        return (displayMetrics == null || displayMetrics.widthPixels <= displayMetrics.heightPixels) ? 0 : 1;
    }

    public String o() {
        return this.a;
    }

    @Override
    public void onBufferUpdate(String str) {
        n.c(S, "  onBufferUpdate netSpeed:" + str);
    }

    @Override
    public void onBuffering(int i) {
    }

    @Override
    public void onCompletion(int i, int i2) {
        n.c(S, "  onCompletion  isBigDataCompleteSend:" + this.z);
        d(true);
        if (i == 30020 || i == 30030 || i == 30031 || i == 30032) {
            l("");
            a(i, i2);
        }
        A();
    }

    @Override
    public void onEndBuffer(int i) {
        int i2;
        n.c(S, "  onEndBuffer type:" + i);
        if (i == 0) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i != 1) {
                i2 = i == 2 ? 3 : 4;
            }
        }
        ImgoPlayerView imgoPlayerView = this.e;
        long j = imgoPlayerView == null ? 0L : imgoPlayerView.getLastBufferTime().buffertime;
        if (this.al || j <= 0 || this.Z == null) {
            return;
        }
        RequestParams requestParamsB = b(new BigDataBufferData(b.x(), b.n(), this.U ? 3 : 0).getRequestParams(this.f));
        requestParamsB.put("idx", this.g);
        requestParamsB.put("bftype", i2);
        requestParamsB.put("td", j);
        requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, "");
        requestParamsB.put("cpn", com.hunantv.imgo.b.c.a().a(true, false) + "");
        this.Z.a(requestParamsB);
        this.g = this.g + 1;
    }

    @Override
    public boolean onInfo(int i, int i2) {
        if (i == 900) {
            n.c(S, "onStart  id:" + this.a + "    NeedPostVV:" + this.h);
            if (this.h) {
                b(0);
                c(0);
                e(0);
                d(0);
                g(false);
                l(false);
                if (this.al) {
                    C();
                } else {
                    B();
                }
                F();
                e(false);
            }
        }
        return false;
    }

    @Override
    public void onStartBuffer(int i) {
        n.c(S, "  onStartBuffer type:" + i);
        c cVar = this.Q;
        if (cVar != null) {
            cVar.d(i);
        }
    }

    @Override
    public void onTick(int i, int i2, int i3) {
        if (this.Y == null) {
            return;
        }
        String str = S;
        n.c(str, "onTick postion:" + i + " tickcount:" + i2 + " tickdelay:" + i3);
        if (i2 % 300 == 0 && this.q < 5) {
            int iA = PreferencesUtil.a("intradayReportCounter", 0);
            n.a(str, "当天上报总次数：" + iA);
            if (!com.hunantv.imgo.util.f.a(new Date(System.currentTimeMillis()), new Date(PreferencesUtil.b("reporttime", 0L)))) {
                PreferencesUtil.putInt("intradayReportCounter", 0);
                PreferencesUtil.a("reporttime", System.currentTimeMillis());
                this.q++;
                n.a(str, "非同一天-----totalCounter=" + this.q);
            } else if (iA < 100) {
                this.q++;
                n.a(str, "同一天-----totalCounter=" + this.q);
            }
        }
        BigDataHeartBeatData bigDataHeartBeatData = new BigDataHeartBeatData(b.x(), b.n());
        if (this.al) {
            bigDataHeartBeatData.setAct("heartbeat");
            bigDataHeartBeatData.setBid(CommonData.BID_LIVE_PLAY);
        }
        RequestParams requestParamsB = b(bigDataHeartBeatData.getRequestParams());
        requestParamsB.put("isfull", n());
        requestParamsB.put("cpn", com.hunantv.imgo.b.c.a().a(true, false) + "");
        if (this.n) {
            this.k += this.j;
            this.j = 0;
            this.n = false;
        }
        int i4 = this.k + i2;
        n.a(str, this.k + "||" + i2 + "||" + i4);
        if (i4 == 3) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 0);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            this.Y.a(requestParamsB);
            this.i++;
        } else if (i4 == 5) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 1);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            this.Y.a(requestParamsB);
            this.i++;
        } else if (i4 == 15) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 3);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            n.c(str, "3 心跳开始");
            this.Y.a(requestParamsB);
            this.i++;
        } else if (i4 == 45) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 4);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            n.c(str, "4 心跳开始");
            this.Y.a(requestParamsB);
            this.i++;
        } else if (i4 == 60) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 5);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            n.c(str, "5 心跳开始");
            this.Y.a(requestParamsB);
            this.i++;
        } else if ((i4 - 60) % 120 == 0) {
            requestParamsB.put("idx", this.i);
            requestParamsB.put("ht", 6);
            requestParamsB.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParamsB.put("tss", this.P);
            a(requestParamsB);
            n.c(str, "6 心跳开始");
            this.Y.a(requestParamsB);
            this.i++;
        }
        this.j++;
    }

    public String p() {
        return this.b;
    }

    public String q() {
        return this.c;
    }

    public void r(String str) {
        this.C = str;
    }

    public void s(String str) {
        this.D = str;
    }

    public void t(String str) {
        this.E = str;
    }

    public void u(String str) {
        this.F = str;
    }

    public void v(String str) {
        this.G = str;
    }

    public void w(String str) {
        this.H = str;
    }

    public void x(String str) {
        this.ak = str;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    public void y(String str) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.e(str);
        }
    }

    public void z() {
        try {
            a("pclick", "full", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
        } catch (Throwable unused) {
        }
    }

    public static VideoSDKReport a() {
        if (au == null) {
            synchronized (VideoSDKReport.class) {
                try {
                    if (au == null) {
                        au = new VideoSDKReport(BaseApplication.getContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return au;
    }

    public void c() {
        h hVar = this.ac;
        if (hVar != null) {
            hVar.a(com.hunantv.imgo.b.c.a().a(false, true), this.b, this.af, this.ag, "", "", "", this.U ? "3" : "1", this.ah, this.ai, "", n(), 0);
        }
    }

    public void d() {
        h hVar = this.ac;
        if (hVar != null) {
            hVar.a(com.hunantv.imgo.b.c.a().a(true, true), this.b, this.af, this.ag, "", "", "", this.U ? "3" : "1", this.ah, this.ai, "", n(), 0, true);
        }
    }

    public void e() {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.c();
        }
    }

    public void f() {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.g();
        }
    }

    public void g() {
        ImgoPlayerView imgoPlayerView;
        if (this.Q == null || (imgoPlayerView = this.e) == null) {
            return;
        }
        if (imgoPlayerView.isCompletion() || this.e.getCurrentPosition() != 0) {
            this.Q.f();
        }
    }

    public void m(String str) {
        this.a = str;
    }

    public void o(String str) {
        this.c = str;
    }

    public void p(String str) {
        this.m = str;
    }

    public void q(String str) {
        this.B = str;
    }

    public void r() {
        if (this.at) {
            this.at = false;
            k.a(BaseApplication.getContext()).a();
            a.a(BaseApplication.getContext()).a();
        }
    }

    public void s() {
        g gVar = this.ad;
        if (gVar != null) {
            gVar.a(this.X.f);
        }
    }

    public void t() {
        h.f();
        h hVar = this.ac;
        if (hVar != null) {
            hVar.a();
        }
        D();
    }

    public void u() {
        a("pclick", "pause", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    public void v() {
        a("pclick", "replay", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    public void w() {
        a("pclick", "exit", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    public void b(String str) {
        this.aq = str;
    }

    public void i(String str) {
        this.M = str;
    }

    public void m(boolean z) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.c(z);
        }
    }

    public void o(boolean z) {
        this.A = z;
    }

    public void y() {
        try {
            a("pclick", "portrait", "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
        } catch (Throwable unused) {
        }
    }

    public void b(boolean z) {
        this.al = z;
    }

    public void e(boolean z) {
        this.h = z;
    }

    public void f(boolean z) {
        this.v = z;
    }

    public void i(boolean z) {
        this.I = z;
    }

    public void n(String str) {
        this.b = str;
    }

    public void x() {
        a("pclick", PushConstants.PUSH_SERVICE_TYPE_CLICK, "0", null, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    private RequestParams b(RequestParams requestParams) {
        int i;
        boolean z = this.v;
        if (this.e != null) {
            requestParams.put("vid", this.a);
            requestParams.put("pay", 0);
            requestParams.put("ct", this.e.getCurrentPosition() / 1000);
            requestParams.put("istry", z ? 1 : 0);
            if (this.U) {
                i = 3;
            } else {
                i = this.al ? 4 : 0;
            }
            requestParams.put("pt", i);
            requestParams.put("cf", 1);
            requestParams.put("vts", this.e.getDuration() / 1000);
            requestParams.put("def", this.y);
            requestParams.put("ap", this.d ? 1 : 0);
            requestParams.put("suuid", this.X.f);
            requestParams.put("bdid", this.ah);
            requestParams.put(CmcdConfiguration.KEY_CONTENT_ID, this.af);
            requestParams.put("plid", this.ag);
            requestParams.put("cpn", com.hunantv.imgo.b.c.a().a(true, false));
            requestParams.put("lid", this.am);
            requestParams.put("activeid", this.an);
            requestParams.put("bsid", this.ai);
            requestParams.put("isad", this.A ? "1" : "0");
            requestParams.put("pver", "");
            requestParams.put("sid", this.X.h);
            requestParams.put("liveId", this.am);
        }
        return requestParams;
    }

    public void e(int i) {
        this.j = i;
    }

    public void f(int i) {
        this.y = i;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(i);
        }
    }

    public void g(boolean z) {
        this.z = z;
    }

    public void i(int i) {
        this.R = i;
        this.U = i == 1;
    }

    public void k(String str) {
        this.aj = str;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.c(str);
        }
    }

    public void n(boolean z) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(z);
        }
    }

    public void g(int i) {
        this.o = i;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.c(i);
        }
    }

    public void h(String str) {
        this.r = str;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(str);
        }
    }

    public void c(boolean z) {
        this.U = z;
    }

    public void d(boolean z) {
        n.c(S, "videoSDKReport onPlayCompletion:");
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b();
        }
        if (z) {
            E();
        }
    }

    public void a(boolean z) {
        this.d = z;
    }

    public void c(int i, int i2) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.d(true);
            this.Q.b(i, i2);
        }
    }

    public void k(boolean z) {
        this.K = z;
    }

    public void a(String str) {
        this.ap = str;
    }

    public void h(boolean z) {
        this.L = z;
    }

    public void a(int i) {
        this.V = i;
    }

    public void h(int i) {
        this.p = i;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(i);
        }
    }

    private void a(RequestParams requestParams) {
        requestParams.put("switcher", 0);
        requestParams.put("submit", 0);
    }

    public void c(int i) {
        this.i = i;
    }

    public void d(int i) {
        this.k = i;
    }

    public void j(int i) {
        n.c(S, "netWorkChange networkType:" + i);
        k.a(BaseApplication.getContext()).a();
        if (1 == i) {
            PreferencesUtil.a("pref_scan_wifi_time", com.hunantv.imgo.util.f.b(System.currentTimeMillis()));
        }
    }

    public void a(int i, int i2) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(i, i2, "vod");
        }
        g();
        ImgoPlayerView imgoPlayerView = this.e;
        if (imgoPlayerView == null || imgoPlayerView.isBeforeFirstFrame()) {
            return;
        }
        g(3);
    }

    public void l(boolean z) {
        this.n = z;
    }

    public void l(String str) {
        this.l = str;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.f(str);
        }
    }

    public void j(String str) {
        this.N = str;
    }

    public void j(boolean z) {
        this.J = z;
    }

    public void a(String str, int i, int i2) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, i, i2);
        }
    }

    public void a(PlayerAuthRouterEntity playerAuthRouterEntity) {
        if (playerAuthRouterEntity != null) {
            this.aj = playerAuthRouterEntity.url;
        }
        c cVar = this.Q;
        if (cVar != null) {
            cVar.c(this.aj);
        }
    }

    public void a(PlayerAuthDataEntity playerAuthDataEntity) {
        if (playerAuthDataEntity != null && playerAuthDataEntity.user != null) {
            com.hunantv.imgo.data.a.a().a(playerAuthDataEntity.user.isVip != 0);
            PreferencesUtil.a("uuid", playerAuthDataEntity.user.uuid);
        } else {
            com.hunantv.imgo.data.a.a().a(false);
        }
        if (playerAuthDataEntity != null) {
            this.af = playerAuthDataEntity.fstlvlId;
            this.ag = playerAuthDataEntity.clipId;
            this.ah = playerAuthDataEntity.plId;
            this.ai = playerAuthDataEntity.seriesId;
        }
        c cVar = this.Q;
        if (cVar != null) {
            cVar.d(b(playerAuthDataEntity));
        }
        r();
    }

    public void b(int i, int i2) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(i, i2);
            ImgoPlayerView imgoPlayerView = this.e;
            if (imgoPlayerView == null || imgoPlayerView.isBeforeFirstFrame()) {
                return;
            }
            this.o = 3;
        }
    }

    public void b(int i) {
        this.g = i;
    }

    private String b(PlayerAuthDataEntity playerAuthDataEntity) {
        if (playerAuthDataEntity != null) {
            try {
                List<PlayerAuthRouterEntity> list = playerAuthDataEntity.videoSources;
                if (list != null && list.size() > 0) {
                    String[] strArrSplit = playerAuthDataEntity.videoSources.get(0).url.split("gsid=");
                    if (TextUtils.isEmpty(playerAuthDataEntity.videoSources.get(0).url) && playerAuthDataEntity.videoSources.size() > 1) {
                        strArrSplit = playerAuthDataEntity.videoSources.get(1).url.split("gsid=");
                    }
                    if (strArrSplit.length == 2) {
                        return strArrSplit[1].split("&")[0];
                    }
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public void a(String str, String str2, String str3, String str4) {
        this.af = str2;
        this.ah = str3;
        this.ag = str2;
        this.ai = str4;
        c cVar = this.Q;
        if (cVar != null) {
            cVar.d("");
        }
        r();
    }

    public void b(int i, String str, Throwable th, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(i, str, th, false, bVar);
        }
    }

    public void a(PlayerRealUrlEntity playerRealUrlEntity) {
        if (playerRealUrlEntity != null) {
            this.ak = playerRealUrlEntity.info;
        }
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(playerRealUrlEntity);
        }
    }

    public void b(String str, String str2, int i, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar == null) {
            return;
        }
        cVar.a(str, str2, i, bVar);
    }

    public void b(String str, int i) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(true);
            this.Q.b(str, i);
        }
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, int i2, com.hunantv.imgo.net.entity.b bVar) {
        c cVar;
        if (bVar == null || (cVar = this.Q) == null) {
            return;
        }
        cVar.a(str, playerAuthRouterEntity, i, i2, bVar);
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, String str2, String str3, boolean z, int i2, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, playerAuthRouterEntity, i, str2, str3, z, i2, bVar);
        }
    }

    public void a(PlayerAuthRouterEntity playerAuthRouterEntity, PlayerRealUrlEntity playerRealUrlEntity, int i, String str, int i2, int i3, boolean z) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(playerAuthRouterEntity, playerRealUrlEntity, i, str, i2, i3, z);
        }
    }

    public void a(final int i, final String str, final Throwable th, final com.hunantv.imgo.net.entity.b bVar) {
        ThreadManager.execute(new Runnable() {
            @Override
            public void run() {
                String str2;
                if (new com.mgtv.thirdsdk.playcore.b.a().a()) {
                    Throwable th2 = th;
                    if (th2 == null) {
                        str2 = "101" + i;
                    } else if (th2 instanceof SocketTimeoutException) {
                        str2 = "103000";
                    } else if (th2 instanceof HttpFormatException) {
                        str2 = "102000";
                    } else {
                        str2 = "101" + i;
                    }
                    VideoSDKReport.this.a(str2, str, true, i, bVar);
                }
            }
        });
    }

    public void a(String str, String str2, boolean z, int i, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, str2, z, i, bVar);
        }
    }

    public void a(boolean z, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(z, bVar);
        }
    }

    public void a(int i, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(true);
            this.Q.c(false);
            this.Q.a(i, bVar);
        }
    }

    public void a(String str, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.b(true);
            this.Q.c(false);
            this.Q.a("204000", bVar);
        }
    }

    public void a(String str, int i, int i2, String str2, Throwable th) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, i, i2, str2, th);
        }
    }

    public void a(String str, int i, int i2, Throwable th) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, i, i2, th);
        }
    }

    public void a(int i, String str, boolean z, Throwable th, int i2) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(i, str, z, th, i2);
        }
    }

    public void a(String str, String str2, int i, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar == null) {
            return;
        }
        cVar.b(str, str2, i, bVar);
    }

    public void a(String str, String str2, com.hunantv.imgo.net.entity.b bVar) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a("", str2, bVar);
        }
    }

    public void a(String str, int i) {
        c cVar = this.Q;
        if (cVar != null) {
            cVar.a(str, i);
        }
    }

    public void a(ImgoPlayerView imgoPlayerView) {
        n.c(S, "setPlayer player:" + imgoPlayerView);
        this.e = imgoPlayerView;
        this.Q = new c(imgoPlayerView);
    }

    public void a(String str, String str2) {
        if (this.ae != null) {
            PlayErrorData playErrorData = new PlayErrorData();
            playErrorData.setSptype(str);
            playErrorData.setSpec(str2);
            playErrorData.setSuuid(this.X.f);
            playErrorData.setVid(this.b);
            playErrorData.setIsqs(this.J ? "1" : "0");
            this.ae.a(playErrorData);
        }
    }

    private void a(String str, String str2, String str3, ErrorData errorData, String str4, String str5, String str6, String str7, int i, String str8, String str9) {
        f fVar = this.aa;
        if (fVar != null) {
            fVar.a(this.R);
            this.aa.a(str, str2, str3, errorData, str4, str5, str6, str7, i, str8, str9);
        }
    }

    public void a(boolean z, ErrorData errorData) {
        a("page", "", z ? "0" : "1", errorData, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    public void a(boolean z, ErrorData errorData, String str) {
        a("ad", "", z ? "0" : "1", errorData, this.ap, this.aq, this.a, this.b, -1, this.ar, this.c);
    }

    public void a(int i, String str, String str2, String str3) {
        a(PushConstants.PUSH_SERVICE_TYPE_SHOW, "", "0", null, str3, str2, "", str, -1, i + "", "");
    }

    public void a(String str, String str2, ErrorData errorData, String str3) {
        f fVar = this.aa;
        if (fVar != null) {
            fVar.a(str, str2, errorData, str3);
        }
    }

    public void a(long j, boolean z, ErrorData errorData) {
        f fVar;
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        if (jCurrentTimeMillis <= 0 || (fVar = this.aa) == null) {
            return;
        }
        fVar.a(jCurrentTimeMillis, z ? "0" : "1", errorData);
    }

    public void a(long j, boolean z, ErrorData errorData, String str) {
        f fVar;
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        if (jCurrentTimeMillis <= 0 || (fVar = this.aa) == null) {
            return;
        }
        fVar.a(jCurrentTimeMillis, z ? "0" : "1", errorData, str);
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        a("download", str2, "0", null, str, this.aq, str3, str4, -1, "", str5);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(long j, long j2, long j3, long j4, String str, String str2) {
        f fVar;
        String str3 = this.b;
        if (str3 == null || str3.equals(this.av) || (fVar = this.aa) == null) {
            return;
        }
        this.av = this.b;
        fVar.a(this.R);
        this.aa.a("time_cost", str2, j, j2, j3, j4, "0", str, this.aq, this.a, this.b, this.d ? 1 : 0);
    }
}
