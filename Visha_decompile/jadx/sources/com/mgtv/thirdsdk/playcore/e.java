package com.mgtv.thirdsdk.playcore;

import android.app.Activity;
import android.graphics.Bitmap;
import androidx.collection.SimpleArrayMap;
import com.hunantv.imgo.net.entity.LiveItemSourceEntity;
import com.hunantv.imgo.net.entity.LiveSourceEntity;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.media.report.ReportParams;
import com.mgmi.ssp.PreRollVideoAd;
import com.mgtv.ssp.play.playsdk.VideoDefinitions;
import com.mgtv.task.g;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class e {
    private static final String aO = "e";
    public String A;
    public String B;
    public int E;
    public PlayerRealUrlEntity F;
    public String G;
    public String H;
    public boolean I;
    public boolean J;
    public PlayerRealUrlEntity L;
    public String M;
    public String N;
    public int P;
    public boolean R;
    public boolean S;
    public int T;
    public boolean U;
    public boolean W;
    public boolean X;
    public boolean Y;
    public Activity a;
    public boolean aA;
    d aD;
    public boolean aE;
    public boolean aF;
    public String aG;
    public String aH;
    public boolean aJ;
    public Bitmap aM;
    public PreRollVideoAd aN;
    private int aP;
    public boolean aa;
    public boolean ab;
    public boolean ac;
    public boolean ae;
    public int af;
    public boolean ag;
    public boolean ah;
    public boolean ai;
    public LiveSourceEntity aj;
    public List<LiveItemSourceEntity> ak;
    public LiveItemSourceEntity al;
    public int am;
    public String an;
    public boolean ao;
    public boolean ap;
    public long ar;
    public boolean as;
    public boolean at;
    public boolean au;
    public boolean av;
    public boolean aw;
    public int ax;
    public int ay;
    public boolean az;
    public VideoSDKReport b;
    public m c;
    public g d;
    public g e;
    public g f;
    public g g;
    public String h;
    public String i;
    public List<PlayerAuthDataEntity.PointEntity> j;
    public String k;
    public PlayerAuthRouterEntity l;
    public PlayerAuthRouterEntity m;
    public PlayerAuthRouterEntity n;
    public List<PlayerAuthRouterEntity> o;
    public PlayerAuthDataEntity p;
    public int t;
    public Map<Integer, Long> u;
    public boolean v;
    public PlayerAuthDataEntity.AuthButtons w;
    public int x;
    public int y;
    public String z;
    public List<Integer> q = new ArrayList();
    public List<String> r = new ArrayList();
    public List<VideoDefinitions> s = new ArrayList();
    public int C = 0;
    public String D = "";
    public com.hunantv.imgo.net.entity.a K = new com.hunantv.imgo.net.entity.a();
    public int O = -1000;
    public int Q = 2;
    public float V = 1.0f;
    public boolean Z = false;
    public long ad = -1;
    private SimpleArrayMap<Integer, Long[]> aQ = new SimpleArrayMap<>();
    public List<Integer> aq = new ArrayList();
    public ReportParams aB = new ReportParams();
    public int aC = 1;
    public boolean aI = true;
    public boolean aK = false;
    public boolean aL = false;

    public e(d dVar) {
        this.aD = dVar;
    }

    public void a(boolean z) {
        this.aI = z;
    }

    public void b() {
        if (this.ar == 0) {
            this.ar = System.currentTimeMillis();
        }
    }

    public void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.ar;
        if (jCurrentTimeMillis <= j || j <= 0) {
            return;
        }
        this.aq.add(Integer.valueOf((int) (System.currentTimeMillis() - this.ar)));
        this.ar = 0L;
    }

    public void d() {
        List<Integer> list = this.aq;
        if (list != null) {
            list.clear();
        }
    }

    public boolean e() {
        List<PlayerAuthRouterEntity> list = this.o;
        return list != null && list.size() > 0 && a(this.t, this.o);
    }

    public void f() {
        this.N = this.M;
    }

    public void g() {
    }

    public void h() {
    }

    public void i() {
    }

    public void j() {
    }

    public int k() {
        return this.aP;
    }

    public void l() {
    }

    public void m() {
        com.hunantv.imgo.log.e.b(aO, "resetData", true);
        this.aF = false;
        this.aE = false;
        this.aG = "";
        this.M = null;
        this.x = 0;
        this.B = "";
        this.N = "";
        this.A = null;
        this.L = null;
        this.m = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.C = 0;
        this.am = -1;
        this.ad = -1L;
        this.ao = false;
        this.v = false;
        this.ag = false;
        this.R = false;
        this.h = "";
        this.j = null;
        this.k = "";
        this.q.clear();
        this.r.clear();
        this.s.clear();
        this.w = null;
        this.x = 0;
        this.y = 0;
        this.z = "";
        this.A = "";
        this.B = "";
        this.C = 0;
        this.D = "";
        this.as = false;
        this.ap = false;
        this.ag = false;
        this.aJ = false;
        this.af = 0;
        this.aQ.clear();
        this.ae = false;
        this.aP = 0;
        this.ac = false;
        this.Y = false;
        System.out.println("isVideoPrepare  playdata resetData  " + this.X);
        this.X = false;
        this.W = false;
        this.T = 0;
        this.U = false;
        this.M = "";
        this.N = "";
        this.at = false;
        this.au = false;
        this.ah = false;
        this.ai = false;
        PreferencesUtil.a("uuid", "");
        com.hunantv.imgo.util.b.a(0);
        this.ay = 0;
        this.az = false;
        this.aA = false;
        this.aL = false;
    }

    public int n() {
        d dVar = this.aD;
        if (dVar != null) {
            return dVar.getVideoWidth();
        }
        return 0;
    }

    public int o() {
        d dVar = this.aD;
        if (dVar != null) {
            return dVar.getVideoHeight();
        }
        return 0;
    }

    public List<VideoDefinitions> p() {
        return this.s;
    }

    public List<String> a() {
        List<String> list;
        PlayerAuthDataEntity playerAuthDataEntity = this.p;
        return (playerAuthDataEntity == null || (list = playerAuthDataEntity.videoDomains) == null) ? new ArrayList() : list;
    }

    public void b(int... iArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i : iArr) {
            Long[] lArr = this.aQ.get(Integer.valueOf(i));
            if (lArr != null) {
                lArr[1] = Long.valueOf(jCurrentTimeMillis);
            }
        }
    }

    public void a(int... iArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i : iArr) {
            Long[] lArr = new Long[2];
            lArr[0] = Long.valueOf(jCurrentTimeMillis);
            this.aQ.put(Integer.valueOf(i), lArr);
        }
    }

    public void b(int i) {
        this.aP = i;
        d dVar = this.aD;
        if (dVar != null) {
            dVar.onPlayStatusChange(i);
        }
    }

    public long a(int i) {
        Long l;
        Long[] lArr = this.aQ.get(Integer.valueOf(i));
        if (lArr == null || lArr[0] == null || (l = lArr[1]) == null) {
            return 0L;
        }
        return l.longValue() - lArr[0].longValue();
    }

    public boolean a(int i, List<PlayerAuthRouterEntity> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).definition < i) {
                this.l = list.get(i2);
                this.t = list.get(i2).definition;
                return true;
            }
        }
        return false;
    }

    public e() {
    }
}
