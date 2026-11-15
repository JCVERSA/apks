package defpackage;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.vb;
import com.google.android.gms.internal.ads.zzaa;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzii;
import com.google.android.gms.internal.ads.zzko;
import defpackage.l6j;
import defpackage.lfj;
import defpackage.zrg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

public final class l6j extends r6i implements o3j {
    public static final int X = 0;
    public int A;
    public int B;
    public boolean C;
    public kaj D;
    public l3j E;
    public uye F;
    public ipe G;
    public Object H;
    public Surface I;
    public int J;
    public s5h K;
    public hvg L;
    public float M;
    public boolean N;
    public boolean O;
    public boolean P;
    public int Q;
    public ipe R;
    public o9j S;
    public int T;
    public long U;
    public final t4j V;
    public bpj W;
    public final arj b;
    public final uye c;
    public final oeg d = new oeg(tbg.a);
    public final Context e;
    public final l1f f;
    public final x9j[] g;
    public final x9j[] h;
    public final zqj i;
    public final olg j;
    public final vb k;
    public final xqg l;
    public final CopyOnWriteArraySet m;
    public final y2f n;
    public final List o;
    public final boolean p;
    public final qaj q;
    public final Looper r;
    public final mrj s;
    public final tbg t;
    public final a6j u;
    public final c6j v;
    public final oaj w;
    public final paj x;
    public final long y;
    public final tag z;

    static {
        sme.b("media3.exoplayer");
    }

    public l6j(j3j j3jVar, l1f l1fVar) {
        j3j j3jVar2;
        tbg tbgVar;
        try {
            zrg.e("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.6.0] [" + kfh.b + "]");
            this.e = j3jVar.a.getApplicationContext();
            this.q = (qaj) j3jVar.h.apply(j3jVar.b);
            this.Q = j3jVar.j;
            this.L = j3jVar.k;
            this.J = j3jVar.l;
            this.N = false;
            this.y = j3jVar.p;
            f6j f6jVar = null;
            a6j a6jVar = new a6j(this, f6jVar);
            this.u = a6jVar;
            this.v = new c6j(f6jVar);
            x9j[] x9jVarArrC0 = rif.c0(((v2j) j3jVar.c).b.a, new Handler(j3jVar.i), a6jVar, a6jVar, a6jVar, a6jVar);
            this.g = x9jVarArrC0;
            int length = x9jVarArrC0.length;
            this.h = new x9j[2];
            int i = 0;
            while (true) {
                x9j[] x9jVarArr = this.h;
                int length2 = x9jVarArr.length;
                if (i >= 2) {
                    break;
                }
                x9j x9jVar = this.g[i];
                x9jVarArr[i] = null;
                i++;
            }
            zqj zqjVar = (zqj) j3jVar.e.zza();
            this.i = zqjVar;
            j3j.a(((y2j) j3jVar.d).b);
            qrj qrjVarC = qrj.c(((d3j) j3jVar.g).b);
            this.s = qrjVarC;
            this.p = j3jVar.m;
            this.D = j3jVar.n;
            Looper looper = j3jVar.i;
            this.r = looper;
            tbg tbgVar2 = j3jVar.b;
            this.t = tbgVar2;
            this.f = l1fVar;
            xqg xqgVar = new xqg(looper, tbgVar2, new yog(this) {
                @Override
                public final void a(Object obj, enj enjVar) {
                }
            });
            this.l = xqgVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.m = copyOnWriteArraySet;
            this.o = new ArrayList();
            this.W = new bpj(0);
            this.E = l3j.b;
            int length3 = this.g.length;
            arj arjVar = new arj(new baj[2], new tqj[2], naf.b, null);
            this.b = arjVar;
            this.n = new y2f();
            txe txeVar = new txe();
            txeVar.c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zqjVar.e();
            txeVar.d(29, true);
            txeVar.d(23, false);
            txeVar.d(25, false);
            txeVar.d(33, false);
            txeVar.d(26, false);
            txeVar.d(34, false);
            uye uyeVarE = txeVar.e();
            this.c = uyeVarE;
            txe txeVar2 = new txe();
            txeVar2.b(uyeVarE);
            txeVar2.a(4);
            txeVar2.a(10);
            this.F = txeVar2.e();
            this.j = tbgVar2.a(looper, null);
            t4j t4jVar = new t4j(this);
            this.V = t4jVar;
            this.S = o9j.h(arjVar);
            this.q.F(l1fVar, looper);
            final tfj tfjVar = new tfj(j3jVar.s);
            vb vbVar = new vb(this.e, this.g, this.h, zqjVar, arjVar, (t7j) j3jVar.f.zza(), qrjVarC, 0, false, this.q, this.D, j3jVar.t, j3jVar.o, false, false, looper, tbgVar2, t4jVar, tfjVar, null, this.E);
            this.k = vbVar;
            Looper looperH0 = vbVar.h0();
            this.M = 1.0f;
            ipe ipeVar = ipe.B;
            this.G = ipeVar;
            this.R = ipeVar;
            this.T = -1;
            int i2 = hzf.a;
            this.O = true;
            qaj qajVar = this.q;
            if (qajVar == null) {
                throw null;
            }
            xqgVar.b(qajVar);
            qrjVarC.a(new Handler(looper), this.q);
            copyOnWriteArraySet.add(this.u);
            if (kfh.a >= 31) {
                final Context context = this.e;
                j3jVar2 = j3jVar;
                final boolean z = j3jVar2.q;
                tbgVar = tbgVar2;
                tbgVar.a(vbVar.h0(), null).f(new Runnable() {
                    @Override
                    public final void run() {
                        lfj lfjVarU = lfj.u(context);
                        if (lfjVarU == null) {
                            zrg.f("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z) {
                            this.g(lfjVarU);
                        }
                        tfjVar.b(lfjVarU.t());
                    }
                });
            } else {
                j3jVar2 = j3jVar;
                tbgVar = tbgVar2;
            }
            tag tagVar = new tag(0, looperH0, looper, tbgVar, new w4j(this));
            this.z = tagVar;
            tagVar.b(new Runnable() {
                @Override
                public final void run() {
                    l6j.n(this.zza);
                }
            });
            new l0j(j3jVar2.a, looperH0, j3jVar2.i, this.u, tbgVar);
            this.w = new oaj(j3jVar2.a, looperH0, tbgVar);
            this.x = new paj(j3jVar2.a, looperH0, tbgVar);
            int i3 = xdj.a;
            zhf zhfVar = zhf.d;
            this.K = s5h.c;
            vbVar.o0(this.L, false);
            H(1, 3, this.L);
            H(2, 4, Integer.valueOf(this.J));
            H(2, 5, 0);
            H(1, 9, Boolean.valueOf(this.N));
            H(2, 7, this.v);
            H(6, 8, this.v);
            H(-1, 16, Integer.valueOf(this.Q));
            this.d.e();
        } catch (Throwable th) {
            this.d.e();
            throw th;
        }
    }

    public static o9j C(o9j o9jVar, int i) {
        o9j o9jVarF = o9jVar.f(i);
        return (i == 1 || i == 4) ? o9jVarF.a(false) : o9jVarF;
    }

    public static void n(l6j l6jVar) {
        int i = kfh.a;
        l6jVar.z.c(Integer.valueOf(fnf.c(l6jVar.e).generateAudioSessionId()));
    }

    public static void o(l6j l6jVar, g7j g7jVar) {
        boolean z;
        long j;
        int i = l6jVar.A - g7jVar.c;
        l6jVar.A = i;
        boolean z2 = true;
        if (g7jVar.d) {
            l6jVar.B = g7jVar.e;
            l6jVar.C = true;
        }
        if (i == 0) {
            w4f w4fVar = g7jVar.b.a;
            if (!l6jVar.S.a.o() && w4fVar.o()) {
                l6jVar.T = -1;
                l6jVar.U = 0L;
            }
            if (!w4fVar.o()) {
                List listY = ((v9j) w4fVar).y();
                int size = listY.size();
                List list = l6jVar.o;
                n7g.f(size == list.size());
                for (int i2 = 0; i2 < listY.size(); i2++) {
                    ((e6j) list.get(i2)).a((w4f) listY.get(i2));
                }
            }
            boolean z3 = l6jVar.C;
            long j2 = C.TIME_UNSET;
            if (z3) {
                if (g7jVar.b.b.equals(l6jVar.S.b) && g7jVar.b.d == l6jVar.S.s) {
                    z2 = false;
                }
                if (z2) {
                    if (w4fVar.o() || g7jVar.b.b.b()) {
                        j = g7jVar.b.d;
                    } else {
                        o9j o9jVar = g7jVar.b;
                        bnj bnjVar = o9jVar.b;
                        j = o9jVar.d;
                        l6jVar.A(w4fVar, bnjVar, j);
                    }
                    z = z2;
                    j2 = j;
                } else {
                    z = z2;
                }
            } else {
                z = false;
            }
            l6jVar.C = false;
            l6jVar.K(g7jVar.b, 1, z, l6jVar.B, j2, -1, false);
        }
    }

    public static void p(l6j l6jVar, int i, final int i2) {
        l6jVar.M();
        Integer numValueOf = Integer.valueOf(i2);
        l6jVar.H(1, 10, numValueOf);
        l6jVar.H(2, 10, numValueOf);
        iog iogVar = new iog() {
            @Override
            public final void zza(Object obj) {
                int i3 = l6j.X;
                ((qze) obj).zza(i2);
            }
        };
        xqg xqgVar = l6jVar.l;
        xqgVar.d(21, iogVar);
        xqgVar.c();
    }

    public static void t(l6j l6jVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        l6jVar.I(surface);
        l6jVar.I = surface;
    }

    public static long z(o9j o9jVar) {
        e4f e4fVar = new e4f();
        y2f y2fVar = new y2f();
        w4f w4fVar = o9jVar.a;
        w4fVar.n(o9jVar.b.a, y2fVar);
        long j = o9jVar.c;
        if (j != C.TIME_UNSET) {
            return j;
        }
        long j2 = w4fVar.e(y2fVar.c, e4fVar, 0L).k;
        return 0L;
    }

    public final long A(w4f w4fVar, bnj bnjVar, long j) {
        w4fVar.n(bnjVar.a, this.n);
        return j;
    }

    public final Pair B(w4f w4fVar, int i, long j) {
        if (w4fVar.o()) {
            this.T = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.U = j;
            return null;
        }
        if (i == -1 || i >= w4fVar.c()) {
            i = w4fVar.g(false);
            long j2 = w4fVar.e(i, this.a, 0L).k;
            j = kfh.Q(0L);
        }
        return w4fVar.l(this.a, this.n, i, kfh.N(j));
    }

    public final o9j D(o9j o9jVar, w4f w4fVar, Pair pair) {
        n7g.d(w4fVar.o() || pair != null);
        w4f w4fVar2 = o9jVar.a;
        long jX = x(o9jVar);
        o9j o9jVarG = o9jVar.g(w4fVar);
        if (w4fVar.o()) {
            bnj bnjVarI = o9j.i();
            long jN = kfh.N(this.U);
            o9j o9jVarB = o9jVarG.c(bnjVarI, jN, jN, jN, 0L, npj.d, this.b, zzfww.zzn()).b(bnjVarI);
            o9jVarB.q = o9jVarB.s;
            return o9jVarB;
        }
        bnj bnjVar = o9jVarG.b;
        Object obj = bnjVar.a;
        int i = kfh.a;
        boolean zEquals = obj.equals(pair.first);
        bnj bnjVar2 = !zEquals ? new bnj(pair.first, -1L) : bnjVar;
        long jLongValue = ((Long) pair.second).longValue();
        long jN2 = kfh.N(jX);
        if (!w4fVar2.o()) {
            w4fVar2.n(obj, this.n);
        }
        if (!zEquals || jLongValue < jN2) {
            bnj bnjVar3 = bnjVar2;
            n7g.f(!bnjVar3.b());
            o9j o9jVarB2 = o9jVarG.c(bnjVar3, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? npj.d : o9jVarG.h, !zEquals ? this.b : o9jVarG.i, !zEquals ? zzfww.zzn() : o9jVarG.j).b(bnjVar3);
            o9jVarB2.q = jLongValue;
            return o9jVarB2;
        }
        if (jLongValue != jN2) {
            bnj bnjVar4 = bnjVar2;
            n7g.f(!bnjVar4.b());
            long jMax = Math.max(0L, o9jVarG.r - (jLongValue - jN2));
            long j = o9jVarG.q;
            if (o9jVarG.k.equals(bnjVar)) {
                j = jLongValue + jMax;
            }
            o9j o9jVarC = o9jVarG.c(bnjVar4, jLongValue, jLongValue, jLongValue, jMax, o9jVarG.h, o9jVarG.i, o9jVarG.j);
            o9jVarC.q = j;
            return o9jVarC;
        }
        int iA = w4fVar.a(o9jVarG.k.a);
        if (iA != -1) {
            y2f y2fVar = this.n;
            if (w4fVar.d(iA, y2fVar, false).c == w4fVar.n(bnjVar2.a, y2fVar).c) {
                return o9jVarG;
            }
        }
        Object obj2 = bnjVar2.a;
        y2f y2fVar2 = this.n;
        w4fVar.n(obj2, y2fVar2);
        long jF = bnjVar2.b() ? y2fVar2.f(bnjVar2.b, bnjVar2.c) : y2fVar2.d;
        o9j o9jVarB3 = o9jVarG.c(bnjVar2, o9jVarG.s, o9jVarG.s, o9jVarG.d, jF - o9jVarG.s, o9jVarG.h, o9jVarG.i, o9jVarG.j).b(bnjVar2);
        o9jVarB3.q = jF;
        return o9jVarB3;
    }

    public final t9j E(s9j s9jVar) {
        int iW = w(this.S);
        w4f w4fVar = this.S.a;
        if (iW == -1) {
            iW = 0;
        }
        tbg tbgVar = this.t;
        vb vbVar = this.k;
        return new t9j(vbVar, s9jVar, w4fVar, iW, tbgVar, vbVar.h0());
    }

    public final void F(final g7j g7jVar) {
        this.j.f(new Runnable() {
            @Override
            public final void run() {
                l6j.o(this.zza, g7jVar);
            }
        });
    }

    public final void G(final int i, final int i2) {
        if (i == this.K.b() && i2 == this.K.a()) {
            return;
        }
        this.K = new s5h(i, i2);
        xqg xqgVar = this.l;
        xqgVar.d(24, new iog() {
            @Override
            public final void zza(Object obj) {
                int i3 = l6j.X;
                ((qze) obj).u(i, i2);
            }
        });
        xqgVar.c();
        H(2, 14, new s5h(i, i2));
    }

    public final void H(int i, int i2, Object obj) {
        x9j[] x9jVarArr = this.g;
        int length = x9jVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            x9j x9jVar = x9jVarArr[i3];
            if (i == -1 || x9jVar.zzb() == i) {
                t9j t9jVarE = E(x9jVar);
                t9jVarE.f(i2);
                t9jVarE.e(obj);
                t9jVarE.d();
            }
        }
        x9j[] x9jVarArr2 = this.h;
        int length2 = x9jVarArr2.length;
        for (int i4 = 0; i4 < 2; i4++) {
            x9j x9jVar2 = x9jVarArr2[i4];
            if (x9jVar2 != null && (i == -1 || x9jVar2.zzb() == i)) {
                t9j t9jVarE2 = E(x9jVar2);
                t9jVarE2.f(i2);
                t9jVarE2.e(obj);
                t9jVarE2.d();
            }
        }
    }

    public final void I(Object obj) {
        Object obj2 = this.H;
        boolean z = false;
        if (obj2 != null && obj2 != obj) {
            z = true;
        }
        boolean zT0 = this.k.t0(obj, z ? this.y : C.TIME_UNSET);
        if (z) {
            Object obj3 = this.H;
            Surface surface = this.I;
            if (obj3 == surface) {
                surface.release();
                this.I = null;
            }
        }
        this.H = obj;
        if (zT0) {
            return;
        }
        J(zzii.zzd(new zzko(3), 1003));
    }

    public final void J(zzii zziiVar) {
        o9j o9jVar = this.S;
        o9j o9jVarB = o9jVar.b(o9jVar.b);
        o9jVarB.q = o9jVarB.s;
        o9jVarB.r = 0L;
        o9j o9jVarC = C(o9jVarB, 1);
        if (zziiVar != null) {
            o9jVarC = o9jVarC.e(zziiVar);
        }
        this.A++;
        this.k.r0();
        K(o9jVarC, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0292  */
    /* JADX WARN: Code duplicated, block: B:102:0x029f  */
    /* JADX WARN: Code duplicated, block: B:104:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:106:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:109:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:111:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:116:0x030b  */
    /* JADX WARN: Code duplicated, block: B:118:0x031b  */
    /* JADX WARN: Code duplicated, block: B:121:0x032a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0338  */
    /* JADX WARN: Code duplicated, block: B:129:0x034b  */
    /* JADX WARN: Code duplicated, block: B:132:0x035c  */
    /* JADX WARN: Code duplicated, block: B:135:0x0371  */
    /* JADX WARN: Code duplicated, block: B:138:0x0387  */
    /* JADX WARN: Code duplicated, block: B:144:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:147:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:148:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:150:0x03de  */
    /* JADX WARN: Code duplicated, block: B:151:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:154:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:155:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:157:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:160:0x040a  */
    /* JADX WARN: Code duplicated, block: B:162:0x041c  */
    /* JADX WARN: Code duplicated, block: B:164:0x0420  */
    /* JADX WARN: Code duplicated, block: B:167:0x042d  */
    /* JADX WARN: Code duplicated, block: B:170:0x043d  */
    /* JADX WARN: Code duplicated, block: B:173:0x0456 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:175:0x045a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0460 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:181:0x0465  */
    /* JADX WARN: Code duplicated, block: B:184:0x046c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x0473  */
    /* JADX WARN: Code duplicated, block: B:194:0x047f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:196:0x0483  */
    /* JADX WARN: Code duplicated, block: B:199:0x048b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:203:0x0492  */
    /* JADX WARN: Code duplicated, block: B:208:0x04a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:211:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:214:0x04b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:217:0x04b6  */
    /* JADX WARN: Code duplicated, block: B:220:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00df  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:43:0x0100  */
    /* JADX WARN: Code duplicated, block: B:47:0x010d  */
    /* JADX WARN: Code duplicated, block: B:50:0x011c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0129 A[LOOP:1: B:51:0x0123->B:53:0x0129, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0148  */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Code duplicated, block: B:62:0x0176  */
    /* JADX WARN: Code duplicated, block: B:63:0x0178  */
    /* JADX WARN: Code duplicated, block: B:66:0x017f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0181  */
    /* JADX WARN: Code duplicated, block: B:70:0x0186  */
    /* JADX WARN: Code duplicated, block: B:73:0x018f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0191  */
    /* JADX WARN: Code duplicated, block: B:76:0x0194  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:86:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:88:0x0200  */
    /* JADX WARN: Code duplicated, block: B:90:0x0208  */
    /* JADX WARN: Code duplicated, block: B:91:0x020b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0213  */
    /* JADX WARN: Code duplicated, block: B:94:0x021a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0246  */
    /* JADX WARN: Code duplicated, block: B:98:0x0277  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r4v0, types: [w4f] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v9, types: [w4f] */
    /* JADX WARN: Type inference failed for: r8v28, types: [txe] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
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
    public final void K(final o9j o9jVar, final int i, boolean z, int i2, long j, int i3, boolean z2) {
        int i4;
        boolean z3;
        Pair pair;
        boolean z4;
        boolean z5;
        int i5;
        Pair pair2;
        boolean zBooleanValue;
        final int iIntValue;
        final cme cmeVar;
        une uneVarA;
        List list;
        int i6;
        hre hreVar;
        int i7;
        w4f w4fVarZzo;
        ipe ipeVarT;
        boolean zEquals;
        boolean z6;
        boolean z7;
        boolean z8;
        zzii zziiVar;
        zzii zziiVar2;
        arj arjVar;
        arj arjVar2;
        uye uyeVar;
        r6i r6iVar;
        w4f w4fVarZzo2;
        boolean z9;
        w4f w4fVarZzo3;
        ?? r13;
        int iK;
        int i8;
        boolean z10;
        ?? Zzo;
        int iZze;
        ?? r6;
        w4f w4fVarZzo4;
        long j2;
        ?? r12;
        w4f w4fVarZzo5;
        ?? r9;
        boolean zO;
        ?? r2;
        ?? r3;
        ?? r4;
        ?? r5;
        ?? r10;
        ?? r11;
        ?? r14;
        uye uyeVarE;
        xqg xqgVar;
        y2f y2fVar;
        int i9;
        Object obj;
        cme cmeVar2;
        Object obj2;
        int i10;
        long jZ;
        long jZ2;
        int iZze2;
        Object obj3;
        cme cmeVar3;
        Object obj4;
        int i11;
        long jQ;
        long jQ2;
        bnj bnjVar;
        final int i12 = i2;
        o9j o9jVar2 = this.S;
        this.S = o9jVar;
        ?? r7 = o9jVar2.a;
        w4f w4fVar = o9jVar.a;
        boolean zEquals2 = r7.equals(w4fVar);
        if (!w4fVar.o() || !r7.o()) {
            if (w4fVar.o() != r7.o()) {
                pair2 = new Pair(Boolean.TRUE, 3);
            } else {
                bnj bnjVar2 = o9jVar2.b;
                Object obj5 = bnjVar2.a;
                y2f y2fVar2 = this.n;
                int i13 = r7.n(obj5, y2fVar2).c;
                e4f e4fVar = this.a;
                Object obj6 = r7.e(i13, e4fVar, 0L).a;
                bnj bnjVar3 = o9jVar.b;
                if (obj6.equals(w4fVar.e(w4fVar.n(bnjVar3.a, y2fVar2).c, e4fVar, 0L).a)) {
                    if (!z) {
                        i4 = i12;
                        z3 = false;
                    } else if (i12 != 0) {
                        i4 = i12;
                        z3 = true;
                    } else if (bnjVar2.d < bnjVar3.d) {
                        pair = new Pair(Boolean.TRUE, 0);
                        i12 = 0;
                        z4 = true;
                    } else {
                        z3 = true;
                        i4 = 0;
                    }
                    pair = new Pair(Boolean.FALSE, -1);
                    int i14 = i4;
                    z4 = z3;
                    i12 = i14;
                } else {
                    if (z) {
                        if (i12 == 0) {
                            i12 = 0;
                            z4 = true;
                            i5 = 1;
                        } else {
                            z4 = true;
                            z5 = true;
                        }
                        pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
                    } else {
                        z4 = false;
                        z5 = false;
                    }
                    if (z4 && i12 == 1) {
                        z4 = z5;
                        i5 = 2;
                    } else {
                        if (zEquals2) {
                            throw new IllegalStateException();
                        }
                        i5 = 3;
                    }
                    pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
                }
            }
            zBooleanValue = ((Boolean) pair.first).booleanValue();
            iIntValue = ((Integer) pair.second).intValue();
            if (zBooleanValue) {
                if (w4fVar.o()) {
                    cmeVar = null;
                } else {
                    cmeVar = w4fVar.e(w4fVar.n(o9jVar.b.a, this.n).c, this.a, 0L).c;
                }
                this.R = ipe.B;
            } else {
                cmeVar = null;
            }
            if (zBooleanValue || !o9jVar2.j.equals(o9jVar.j)) {
                uneVarA = this.R.a();
                list = o9jVar.j;
                for (i6 = 0; i6 < list.size(); i6++) {
                    hreVar = (hre) list.get(i6);
                    for (i7 = 0; i7 < hreVar.a(); i7++) {
                        hreVar.b(i7).a(uneVarA);
                    }
                }
                this.R = uneVarA.T();
            }
            w4fVarZzo = zzo();
            if (w4fVarZzo.o()) {
                ipeVarT = this.R;
            } else {
                cme cmeVar4 = w4fVarZzo.e(zze(), this.a, 0L).c;
                une uneVarA2 = this.R.a();
                uneVarA2.y(cmeVar4.d);
                ipeVarT = uneVarA2.T();
            }
            zEquals = ipeVarT.equals(this.G);
            this.G = ipeVarT;
            if (o9jVar2.l != o9jVar.l) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (o9jVar2.e != o9jVar.e) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z7 || z6) {
                L();
            }
            if (o9jVar2.g != o9jVar.g) {
                z8 = true;
            } else {
                z8 = false;
            }
            if (!zEquals2) {
                this.l.d(0, new iog() {
                    @Override
                    public final void zza(Object obj7) {
                        int i15 = l6j.X;
                        ((qze) obj7).q(o9jVar.a, i);
                    }
                });
            }
            if (z4) {
                y2fVar = new y2f();
                if (r7.o()) {
                    i9 = i3;
                    obj = null;
                    cmeVar2 = null;
                    obj2 = null;
                    i10 = -1;
                } else {
                    Object obj7 = o9jVar2.b.a;
                    r7.n(obj7, y2fVar);
                    int i15 = y2fVar.c;
                    int iA = r7.a(obj7);
                    e4f e4fVar2 = this.a;
                    obj = r7.e(i15, e4fVar2, 0L).a;
                    cmeVar2 = e4fVar2.c;
                    obj2 = obj7;
                    i9 = i15;
                    i10 = iA;
                }
                if (i12 == 0) {
                    bnjVar = o9jVar2.b;
                    if (bnjVar.b()) {
                        jZ = y2fVar.f(bnjVar.b, bnjVar.c);
                        jZ2 = z(o9jVar2);
                    } else {
                        if (bnjVar.e != -1) {
                            jZ = z(this.S);
                        } else {
                            jZ = y2fVar.d;
                        }
                        jZ2 = jZ;
                    }
                } else if (o9jVar2.b.b()) {
                    jZ = o9jVar2.s;
                    jZ2 = z(o9jVar2);
                } else {
                    jZ = o9jVar2.s;
                    jZ2 = jZ;
                }
                int i16 = kfh.a;
                bnj bnjVar4 = o9jVar2.b;
                final v0f v0fVar = new v0f(obj, i9, cmeVar2, obj2, i10, kfh.Q(jZ), kfh.Q(jZ2), bnjVar4.b, bnjVar4.c);
                iZze2 = zze();
                if (this.S.a.o()) {
                    obj3 = null;
                    cmeVar3 = null;
                    obj4 = null;
                    i11 = -1;
                } else {
                    o9j o9jVar3 = this.S;
                    Object obj8 = o9jVar3.b.a;
                    o9jVar3.a.n(obj8, this.n);
                    int iA2 = this.S.a.a(obj8);
                    w4f w4fVar2 = this.S.a;
                    e4f e4fVar3 = this.a;
                    i11 = iA2;
                    obj3 = w4fVar2.e(iZze2, e4fVar3, 0L).a;
                    cmeVar3 = e4fVar3.c;
                    obj4 = obj8;
                }
                jQ = kfh.Q(j);
                if (this.S.b.b()) {
                    jQ2 = kfh.Q(z(this.S));
                } else {
                    jQ2 = jQ;
                }
                bnj bnjVar5 = this.S.b;
                final v0f v0fVar2 = new v0f(obj3, iZze2, cmeVar3, obj4, i11, jQ, jQ2, bnjVar5.b, bnjVar5.c);
                this.l.d(11, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).d(v0fVar, v0fVar2, i12);
                    }
                });
            } else {
                z6 = z6;
                zEquals = zEquals;
                z7 = z7;
                z8 = z8;
            }
            if (zBooleanValue) {
                this.l.d(1, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).e(cmeVar, iIntValue);
                    }
                });
            }
            zziiVar = o9jVar2.f;
            zziiVar2 = o9jVar.f;
            if (zziiVar != zziiVar2) {
                xqgVar = this.l;
                xqgVar.d(10, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).z(o9jVar.f);
                    }
                });
                if (zziiVar2 != null) {
                    xqgVar.d(10, new iog() {
                        @Override
                        public final void zza(Object obj9) {
                            int i17 = l6j.X;
                            ((qze) obj9).s(o9jVar.f);
                        }
                    });
                }
            }
            arjVar = o9jVar2.i;
            arjVar2 = o9jVar.i;
            if (arjVar != arjVar2) {
                this.i.g(arjVar2.e);
                this.l.d(2, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).H(o9jVar.i.d);
                    }
                });
            }
            if (!zEquals) {
                final ipe ipeVar = this.G;
                this.l.d(14, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).K(ipeVar);
                    }
                });
            }
            if (z8) {
                this.l.d(3, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).zzc(o9jVar.g);
                    }
                });
            }
            if (z7 || z6) {
                this.l.d(-1, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        o9j o9jVar4 = o9jVar;
                        ((qze) obj9).S(o9jVar4.l, o9jVar4.e);
                    }
                });
            }
            if (z7) {
                this.l.d(4, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).zzi(o9jVar.e);
                    }
                });
            }
            if (z6 || o9jVar2.m != o9jVar.m) {
                this.l.d(5, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        o9j o9jVar4 = o9jVar;
                        ((qze) obj9).I(o9jVar4.l, o9jVar4.m);
                    }
                });
            }
            if (o9jVar2.n != o9jVar.n) {
                this.l.d(6, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).zzj(o9jVar.n);
                    }
                });
            }
            if (o9jVar2.j() != o9jVar.j()) {
                this.l.d(7, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).a(o9jVar.j());
                    }
                });
            }
            if (!o9jVar2.o.equals(o9jVar.o)) {
                this.l.d(12, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        int i17 = l6j.X;
                        ((qze) obj9).w(o9jVar.o);
                    }
                });
            }
            uyeVar = this.F;
            l1f l1fVar = this.f;
            uye uyeVar2 = this.c;
            int i17 = kfh.a;
            boolean zZzx = l1fVar.zzx();
            r6iVar = (r6i) l1fVar;
            w4fVarZzo2 = r6iVar.zzo();
            if (w4fVarZzo2.o() && w4fVarZzo2.e(r6iVar.zze(), r6iVar.a, 0L).g) {
                z9 = true;
            } else {
                z9 = false;
            }
            w4fVarZzo3 = r6iVar.zzo();
            if (w4fVarZzo3.o()) {
                i8 = -1;
                r13 = 0;
                z10 = false;
            } else {
                int iZze3 = r6iVar.zze();
                r6iVar.zzi();
                r6iVar.zzw();
                r13 = 0;
                r13 = 0;
                iK = w4fVarZzo3.k(iZze3, 0, false);
                i8 = -1;
                if (iK != -1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            Zzo = r6iVar.zzo();
            if (Zzo.o()) {
                r6 = r13;
            } else {
                iZze = r6iVar.zze();
                r6iVar.zzi();
                r6iVar.zzw();
                if (Zzo.j(iZze, r13, r13) != i8) {
                    r6 = 1;
                } else {
                    r6 = r13;
                }
            }
            w4fVarZzo4 = r6iVar.zzo();
            if (!w4fVarZzo4.o()) {
                j2 = 0;
                if (w4fVarZzo4.e(r6iVar.zze(), r6iVar.a, 0L).b()) {
                    r12 = 1;
                }
                w4fVarZzo5 = r6iVar.zzo();
                if (w4fVarZzo5.o() && w4fVarZzo5.e(r6iVar.zze(), r6iVar.a, j2).h) {
                    r9 = 1;
                } else {
                    r9 = r13;
                }
                zO = l1fVar.zzo().o();
                ?? txeVar = new txe();
                txeVar.b(uyeVar2);
                boolean z11 = !zZzx;
                txeVar.d(4, z11);
                if (z9 || zZzx) {
                    r2 = r13;
                } else {
                    r2 = 1;
                }
                txeVar.d(5, r2);
                if (z10 || zZzx) {
                    r3 = r13;
                } else {
                    r3 = 1;
                }
                txeVar.d(6, r3);
                if (!zO || (!(z10 || r12 == 0 || z9) || zZzx)) {
                    r4 = r13;
                } else {
                    r4 = 1;
                }
                txeVar.d(7, r4);
                if (r6 != 0 || zZzx) {
                    r5 = r13;
                } else {
                    r5 = 1;
                }
                txeVar.d(8, r5);
                if (!zO || ((r6 == 0 && (r12 == 0 || r9 == 0)) || zZzx)) {
                    r10 = r13;
                } else {
                    r10 = 1;
                }
                txeVar.d(9, r10);
                txeVar.d(10, z11);
                if (z9 || zZzx) {
                    r11 = r13;
                } else {
                    r11 = 1;
                }
                txeVar.d(11, r11);
                if (z9 || zZzx) {
                    r14 = r13;
                } else {
                    r14 = 1;
                }
                txeVar.d(12, r14);
                uyeVarE = txeVar.e();
                this.F = uyeVarE;
                if (!uyeVarE.equals(uyeVar)) {
                    this.l.d(13, new iog() {
                        @Override
                        public final void zza(Object obj9) {
                            ((qze) obj9).D(this.a.F);
                        }
                    });
                }
                this.l.c();
            }
            j2 = 0;
            r12 = r13;
            w4fVarZzo5 = r6iVar.zzo();
            if (w4fVarZzo5.o()) {
                r9 = r13;
            } else {
                r9 = r13;
            }
            zO = l1fVar.zzo().o();
            ?? txeVar2 = new txe();
            txeVar2.b(uyeVar2);
            boolean z12 = !zZzx;
            txeVar2.d(4, z12);
            if (z9) {
                r2 = r13;
            } else {
                r2 = r13;
            }
            txeVar2.d(5, r2);
            if (z10) {
                r3 = r13;
            } else {
                r3 = r13;
            }
            txeVar2.d(6, r3);
            if (zO) {
                r4 = r13;
            } else {
                r4 = r13;
            }
            txeVar2.d(7, r4);
            if (r6 != 0) {
                r5 = r13;
            } else {
                r5 = r13;
            }
            txeVar2.d(8, r5);
            if (zO) {
                r10 = r13;
            } else {
                r10 = r13;
            }
            txeVar2.d(9, r10);
            txeVar2.d(10, z12);
            if (z9) {
                r11 = r13;
            } else {
                r11 = r13;
            }
            txeVar2.d(11, r11);
            if (z9) {
                r14 = r13;
            } else {
                r14 = r13;
            }
            txeVar2.d(12, r14);
            uyeVarE = txeVar2.e();
            this.F = uyeVarE;
            if (!uyeVarE.equals(uyeVar)) {
                this.l.d(13, new iog() {
                    @Override
                    public final void zza(Object obj9) {
                        ((qze) obj9).D(this.a.F);
                    }
                });
            }
            this.l.c();
        }
        pair2 = new Pair(Boolean.FALSE, -1);
        pair = pair2;
        z4 = z;
        zBooleanValue = ((Boolean) pair.first).booleanValue();
        iIntValue = ((Integer) pair.second).intValue();
        if (zBooleanValue) {
            if (w4fVar.o()) {
                cmeVar = w4fVar.e(w4fVar.n(o9jVar.b.a, this.n).c, this.a, 0L).c;
            } else {
                cmeVar = null;
            }
            this.R = ipe.B;
        } else {
            cmeVar = null;
        }
        if (zBooleanValue) {
            uneVarA = this.R.a();
            list = o9jVar.j;
            while (i6 < list.size()) {
                hreVar = (hre) list.get(i6);
                while (i7 < hreVar.a()) {
                    hreVar.b(i7).a(uneVarA);
                }
            }
            this.R = uneVarA.T();
        } else {
            uneVarA = this.R.a();
            list = o9jVar.j;
            while (i6 < list.size()) {
                hreVar = (hre) list.get(i6);
                while (i7 < hreVar.a()) {
                    hreVar.b(i7).a(uneVarA);
                }
            }
            this.R = uneVarA.T();
        }
        w4fVarZzo = zzo();
        if (w4fVarZzo.o()) {
            ipeVarT = this.R;
        } else {
            cme cmeVar5 = w4fVarZzo.e(zze(), this.a, 0L).c;
            une uneVarA3 = this.R.a();
            uneVarA3.y(cmeVar5.d);
            ipeVarT = uneVarA3.T();
        }
        zEquals = ipeVarT.equals(this.G);
        this.G = ipeVarT;
        if (o9jVar2.l != o9jVar.l) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (o9jVar2.e != o9jVar.e) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (z7) {
            L();
        } else {
            L();
        }
        if (o9jVar2.g != o9jVar.g) {
            z8 = true;
        } else {
            z8 = false;
        }
        if (!zEquals2) {
            this.l.d(0, new iog() {
                @Override
                public final void zza(Object obj9) {
                    int i18 = l6j.X;
                    ((qze) obj9).q(o9jVar.a, i);
                }
            });
        }
        if (z4) {
            y2fVar = new y2f();
            if (r7.o()) {
                Object obj9 = o9jVar2.b.a;
                r7.n(obj9, y2fVar);
                int i18 = y2fVar.c;
                int iA3 = r7.a(obj9);
                e4f e4fVar4 = this.a;
                obj = r7.e(i18, e4fVar4, 0L).a;
                cmeVar2 = e4fVar4.c;
                obj2 = obj9;
                i9 = i18;
                i10 = iA3;
            } else {
                i9 = i3;
                obj = null;
                cmeVar2 = null;
                obj2 = null;
                i10 = -1;
            }
            if (i12 == 0) {
                bnjVar = o9jVar2.b;
                if (bnjVar.b()) {
                    jZ = y2fVar.f(bnjVar.b, bnjVar.c);
                    jZ2 = z(o9jVar2);
                } else {
                    if (bnjVar.e != -1) {
                        jZ = z(this.S);
                    } else {
                        jZ = y2fVar.d;
                    }
                    jZ2 = jZ;
                }
            } else if (o9jVar2.b.b()) {
                jZ = o9jVar2.s;
                jZ2 = z(o9jVar2);
            } else {
                jZ = o9jVar2.s;
                jZ2 = jZ;
            }
            int i19 = kfh.a;
            bnj bnjVar6 = o9jVar2.b;
            final v0f v0fVar3 = new v0f(obj, i9, cmeVar2, obj2, i10, kfh.Q(jZ), kfh.Q(jZ2), bnjVar6.b, bnjVar6.c);
            iZze2 = zze();
            if (this.S.a.o()) {
                o9j o9jVar4 = this.S;
                Object obj10 = o9jVar4.b.a;
                o9jVar4.a.n(obj10, this.n);
                int iA4 = this.S.a.a(obj10);
                w4f w4fVar3 = this.S.a;
                e4f e4fVar5 = this.a;
                i11 = iA4;
                obj3 = w4fVar3.e(iZze2, e4fVar5, 0L).a;
                cmeVar3 = e4fVar5.c;
                obj4 = obj10;
            } else {
                obj3 = null;
                cmeVar3 = null;
                obj4 = null;
                i11 = -1;
            }
            jQ = kfh.Q(j);
            if (this.S.b.b()) {
                jQ2 = kfh.Q(z(this.S));
            } else {
                jQ2 = jQ;
            }
            bnj bnjVar7 = this.S.b;
            final v0f v0fVar4 = new v0f(obj3, iZze2, cmeVar3, obj4, i11, jQ, jQ2, bnjVar7.b, bnjVar7.c);
            this.l.d(11, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).d(v0fVar3, v0fVar4, i12);
                }
            });
        } else {
            z6 = z6;
            zEquals = zEquals;
            z7 = z7;
            z8 = z8;
        }
        if (zBooleanValue) {
            this.l.d(1, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).e(cmeVar, iIntValue);
                }
            });
        }
        zziiVar = o9jVar2.f;
        zziiVar2 = o9jVar.f;
        if (zziiVar != zziiVar2) {
            xqgVar = this.l;
            xqgVar.d(10, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).z(o9jVar.f);
                }
            });
            if (zziiVar2 != null) {
                xqgVar.d(10, new iog() {
                    @Override
                    public final void zza(Object obj11) {
                        int i110 = l6j.X;
                        ((qze) obj11).s(o9jVar.f);
                    }
                });
            }
        }
        arjVar = o9jVar2.i;
        arjVar2 = o9jVar.i;
        if (arjVar != arjVar2) {
            this.i.g(arjVar2.e);
            this.l.d(2, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).H(o9jVar.i.d);
                }
            });
        }
        if (!zEquals) {
            final ipe ipeVar2 = this.G;
            this.l.d(14, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).K(ipeVar2);
                }
            });
        }
        if (z8) {
            this.l.d(3, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).zzc(o9jVar.g);
                }
            });
        }
        if (z7) {
            this.l.d(-1, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    o9j o9jVar5 = o9jVar;
                    ((qze) obj11).S(o9jVar5.l, o9jVar5.e);
                }
            });
        } else {
            this.l.d(-1, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    o9j o9jVar5 = o9jVar;
                    ((qze) obj11).S(o9jVar5.l, o9jVar5.e);
                }
            });
        }
        if (z7) {
            this.l.d(4, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).zzi(o9jVar.e);
                }
            });
        }
        if (z6) {
            this.l.d(5, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    o9j o9jVar5 = o9jVar;
                    ((qze) obj11).I(o9jVar5.l, o9jVar5.m);
                }
            });
        } else {
            this.l.d(5, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    o9j o9jVar5 = o9jVar;
                    ((qze) obj11).I(o9jVar5.l, o9jVar5.m);
                }
            });
        }
        if (o9jVar2.n != o9jVar.n) {
            this.l.d(6, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).zzj(o9jVar.n);
                }
            });
        }
        if (o9jVar2.j() != o9jVar.j()) {
            this.l.d(7, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).a(o9jVar.j());
                }
            });
        }
        if (!o9jVar2.o.equals(o9jVar.o)) {
            this.l.d(12, new iog() {
                @Override
                public final void zza(Object obj11) {
                    int i110 = l6j.X;
                    ((qze) obj11).w(o9jVar.o);
                }
            });
        }
        uyeVar = this.F;
        l1f l1fVar2 = this.f;
        uye uyeVar3 = this.c;
        int i110 = kfh.a;
        boolean zZzx2 = l1fVar2.zzx();
        r6iVar = (r6i) l1fVar2;
        w4fVarZzo2 = r6iVar.zzo();
        if (w4fVarZzo2.o()) {
            z9 = false;
        } else {
            z9 = false;
        }
        w4fVarZzo3 = r6iVar.zzo();
        if (w4fVarZzo3.o()) {
            i8 = -1;
            r13 = 0;
            z10 = false;
        } else {
            int iZze4 = r6iVar.zze();
            r6iVar.zzi();
            r6iVar.zzw();
            r13 = 0;
            r13 = 0;
            iK = w4fVarZzo3.k(iZze4, 0, false);
            i8 = -1;
            if (iK != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        Zzo = r6iVar.zzo();
        if (Zzo.o()) {
            r6 = r13;
        } else {
            iZze = r6iVar.zze();
            r6iVar.zzi();
            r6iVar.zzw();
            if (Zzo.j(iZze, r13, r13) != i8) {
                r6 = 1;
            } else {
                r6 = r13;
            }
        }
        w4fVarZzo4 = r6iVar.zzo();
        if (!w4fVarZzo4.o()) {
            j2 = 0;
            if (w4fVarZzo4.e(r6iVar.zze(), r6iVar.a, 0L).b()) {
                r12 = 1;
            }
            w4fVarZzo5 = r6iVar.zzo();
            if (w4fVarZzo5.o()) {
                r9 = r13;
            } else {
                r9 = r13;
            }
            zO = l1fVar2.zzo().o();
            ?? txeVar3 = new txe();
            txeVar3.b(uyeVar3);
            boolean z13 = !zZzx2;
            txeVar3.d(4, z13);
            if (z9) {
                r2 = r13;
            } else {
                r2 = r13;
            }
            txeVar3.d(5, r2);
            if (z10) {
                r3 = r13;
            } else {
                r3 = r13;
            }
            txeVar3.d(6, r3);
            if (zO) {
                r4 = r13;
            } else {
                r4 = r13;
            }
            txeVar3.d(7, r4);
            if (r6 != 0) {
                r5 = r13;
            } else {
                r5 = r13;
            }
            txeVar3.d(8, r5);
            if (zO) {
                r10 = r13;
            } else {
                r10 = r13;
            }
            txeVar3.d(9, r10);
            txeVar3.d(10, z13);
            if (z9) {
                r11 = r13;
            } else {
                r11 = r13;
            }
            txeVar3.d(11, r11);
            if (z9) {
                r14 = r13;
            } else {
                r14 = r13;
            }
            txeVar3.d(12, r14);
            uyeVarE = txeVar3.e();
            this.F = uyeVarE;
            if (!uyeVarE.equals(uyeVar)) {
                this.l.d(13, new iog() {
                    @Override
                    public final void zza(Object obj11) {
                        ((qze) obj11).D(this.a.F);
                    }
                });
            }
            this.l.c();
        }
        j2 = 0;
        r12 = r13;
        w4fVarZzo5 = r6iVar.zzo();
        if (w4fVarZzo5.o()) {
            r9 = r13;
        } else {
            r9 = r13;
        }
        zO = l1fVar2.zzo().o();
        ?? txeVar4 = new txe();
        txeVar4.b(uyeVar3);
        boolean z14 = !zZzx2;
        txeVar4.d(4, z14);
        if (z9) {
            r2 = r13;
        } else {
            r2 = r13;
        }
        txeVar4.d(5, r2);
        if (z10) {
            r3 = r13;
        } else {
            r3 = r13;
        }
        txeVar4.d(6, r3);
        if (zO) {
            r4 = r13;
        } else {
            r4 = r13;
        }
        txeVar4.d(7, r4);
        if (r6 != 0) {
            r5 = r13;
        } else {
            r5 = r13;
        }
        txeVar4.d(8, r5);
        if (zO) {
            r10 = r13;
        } else {
            r10 = r13;
        }
        txeVar4.d(9, r10);
        txeVar4.d(10, z14);
        if (z9) {
            r11 = r13;
        } else {
            r11 = r13;
        }
        txeVar4.d(11, r11);
        if (z9) {
            r14 = r13;
        } else {
            r14 = r13;
        }
        txeVar4.d(12, r14);
        uyeVarE = txeVar4.e();
        this.F = uyeVarE;
        if (!uyeVarE.equals(uyeVar)) {
            this.l.d(13, new iog() {
                @Override
                public final void zza(Object obj11) {
                    ((qze) obj11).D(this.a.F);
                }
            });
        }
        this.l.c();
    }

    public final void L() {
        int iZzg = zzg();
        if (iZzg != 2 && iZzg != 3) {
            this.w.a(false);
            this.x.a(false);
        } else {
            M();
            boolean z = this.S.p;
            this.w.a(zzv());
            this.x.a(zzv());
        }
    }

    public final void M() {
        this.d.b();
        Looper looper = this.r;
        if (Thread.currentThread() != looper.getThread()) {
            Object[] objArr = {Thread.currentThread().getName(), looper.getThread().getName()};
            int i = kfh.a;
            String str = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", objArr);
            if (this.O) {
                throw new IllegalStateException(str);
            }
            zrg.g("ExoPlayerImpl", str, this.P ? null : new IllegalStateException());
            this.P = true;
        }
    }

    @Override
    public final void a(Surface surface) {
        M();
        I(surface);
        int i = surface == null ? 0 : -1;
        G(i, i);
    }

    @Override
    public final void c(float f) {
        M();
        int i = kfh.a;
        final float fMax = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.M == fMax) {
            return;
        }
        this.M = fMax;
        this.k.q0(fMax);
        xqg xqgVar = this.l;
        xqgVar.d(22, new iog() {
            @Override
            public final void zza(Object obj) {
                int i2 = l6j.X;
                ((qze) obj).c(fMax);
            }
        });
        xqgVar.c();
    }

    @Override
    public final void d(taj tajVar) {
        M();
        this.q.M(tajVar);
    }

    @Override
    public final void e(knj knjVar) {
        M();
        List listSingletonList = Collections.singletonList(knjVar);
        M();
        M();
        w(this.S);
        zzl();
        this.A++;
        List list = this.o;
        if (!list.isEmpty()) {
            int size = list.size();
            for (int i = size - 1; i >= 0; i--) {
                list.remove(i);
            }
            this.W = this.W.h(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < listSingletonList.size(); i2++) {
            h9j h9jVar = new h9j((knj) listSingletonList.get(i2), this.p);
            arrayList.add(h9jVar);
            list.add(i2, new e6j(h9jVar.b, h9jVar.a));
        }
        this.W = this.W.g(0, arrayList.size());
        v9j v9jVar = new v9j(list, this.W);
        if (!v9jVar.o() && v9jVar.c() < 0) {
            throw new zzaa(v9jVar, -1, C.TIME_UNSET);
        }
        int iG = v9jVar.g(false);
        o9j o9jVarD = D(this.S, v9jVar, B(v9jVar, iG, C.TIME_UNSET));
        int i3 = o9jVarD.e;
        if (iG != -1 && i3 != 1) {
            i3 = 4;
            if (!v9jVar.o() && iG < v9jVar.c()) {
                i3 = 2;
            }
        }
        o9j o9jVarC = C(o9jVarD, i3);
        this.k.u0(arrayList, iG, kfh.N(C.TIME_UNSET), this.W);
        K(o9jVarC, 0, (this.S.b.a.equals(o9jVarC.b.a) || this.S.a.o()) ? false : true, 4, y(o9jVarC), -1, false);
    }

    @Override
    public final void f(boolean z) {
        M();
        o9j o9jVar = this.S;
        int i = o9jVar.n;
        int i2 = 0;
        if (i == 1) {
            if (z) {
                i = 1;
            } else {
                i = 1;
                i2 = 1;
            }
        }
        if (o9jVar.l == z && i == i2 && o9jVar.m == 1) {
            return;
        }
        this.A++;
        o9j o9jVarD = o9jVar.d(z, 1, i2);
        this.k.p0(z, 1, i2);
        K(o9jVarD, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override
    public final void g(taj tajVar) {
        this.q.N(tajVar);
    }

    @Override
    public final void h(int i, long j, int i2, boolean z) {
        M();
        if (i == -1) {
            return;
        }
        n7g.d(i >= 0);
        w4f w4fVar = this.S.a;
        if (w4fVar.o() || i < w4fVar.c()) {
            this.q.zzv();
            this.A++;
            if (zzx()) {
                zrg.f("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                g7j g7jVar = new g7j(this.S);
                g7jVar.a(1);
                this.V.a.F(g7jVar);
                return;
            }
            o9j o9jVarC = this.S;
            int i3 = o9jVarC.e;
            if (i3 == 3 || (i3 == 4 && !w4fVar.o())) {
                o9jVarC = C(this.S, 2);
            }
            int iZze = zze();
            o9j o9jVarD = D(o9jVarC, w4fVar, B(w4fVar, i, j));
            this.k.n0(w4fVar, i, kfh.N(j));
            K(o9jVarD, 0, true, 1, y(o9jVarD), iZze, false);
        }
    }

    public final zzii j() {
        M();
        return this.S.f;
    }

    public final int w(o9j o9jVar) {
        w4f w4fVar = o9jVar.a;
        return w4fVar.o() ? this.T : w4fVar.n(o9jVar.b.a, this.n).c;
    }

    public final long x(o9j o9jVar) {
        bnj bnjVar = o9jVar.b;
        if (!bnjVar.b()) {
            return kfh.Q(y(o9jVar));
        }
        w4f w4fVar = o9jVar.a;
        w4fVar.n(bnjVar.a, this.n);
        long j = o9jVar.c;
        if (j != C.TIME_UNSET) {
            return kfh.Q(0L) + kfh.Q(j);
        }
        long j2 = w4fVar.e(w(o9jVar), this.a, 0L).k;
        return kfh.Q(0L);
    }

    public final long y(o9j o9jVar) {
        w4f w4fVar = o9jVar.a;
        if (w4fVar.o()) {
            return kfh.N(this.U);
        }
        long j = o9jVar.s;
        bnj bnjVar = o9jVar.b;
        if (bnjVar.b()) {
            return j;
        }
        A(w4fVar, bnjVar, j);
        return j;
    }

    @Override
    public final void zzA() {
        zrg.e("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.6.0] [" + kfh.b + "] [" + sme.a() + "]");
        M();
        this.w.a(false);
        this.x.a(false);
        if (!this.k.s0()) {
            xqg xqgVar = this.l;
            xqgVar.d(10, new iog() {
                @Override
                public final void zza(Object obj) {
                    int i = l6j.X;
                    ((qze) obj).s(zzii.zzd(new zzko(1), 1003));
                }
            });
            xqgVar.c();
        }
        this.l.e();
        this.j.a(null);
        mrj mrjVar = this.s;
        qaj qajVar = this.q;
        mrjVar.b(qajVar);
        o9j o9jVar = this.S;
        boolean z = o9jVar.p;
        o9j o9jVarC = C(o9jVar, 1);
        this.S = o9jVarC;
        o9j o9jVarB = o9jVarC.b(o9jVarC.b);
        this.S = o9jVarB;
        o9jVarB.q = o9jVarB.s;
        this.S.r = 0L;
        qajVar.zzR();
        Surface surface = this.I;
        if (surface != null) {
            surface.release();
            this.I = null;
        }
        int i = hzf.a;
    }

    @Override
    public final int zzc() {
        M();
        if (zzx()) {
            return this.S.b.b;
        }
        return -1;
    }

    @Override
    public final int zzd() {
        M();
        if (zzx()) {
            return this.S.b.c;
        }
        return -1;
    }

    @Override
    public final int zze() {
        M();
        int iW = w(this.S);
        if (iW == -1) {
            return 0;
        }
        return iW;
    }

    @Override
    public final int zzf() {
        M();
        if (this.S.a.o()) {
            return 0;
        }
        o9j o9jVar = this.S;
        return o9jVar.a.a(o9jVar.b.a);
    }

    @Override
    public final int zzg() {
        M();
        return this.S.e;
    }

    @Override
    public final int zzh() {
        M();
        return this.S.n;
    }

    @Override
    public final int zzi() {
        M();
        return 0;
    }

    @Override
    public final long zzj() {
        M();
        if (zzx()) {
            o9j o9jVar = this.S;
            return o9jVar.k.equals(o9jVar.b) ? kfh.Q(this.S.q) : zzm();
        }
        M();
        if (this.S.a.o()) {
            return this.U;
        }
        o9j o9jVar2 = this.S;
        long j = 0;
        if (o9jVar2.k.d != o9jVar2.b.d) {
            return kfh.Q(o9jVar2.a.e(zze(), this.a, 0L).l);
        }
        long j2 = o9jVar2.q;
        if (this.S.k.b()) {
            o9j o9jVar3 = this.S;
            o9jVar3.a.n(o9jVar3.k.a, this.n).g(this.S.k.b);
        } else {
            j = j2;
        }
        o9j o9jVar4 = this.S;
        A(o9jVar4.a, o9jVar4.k, j);
        return kfh.Q(j);
    }

    @Override
    public final long zzk() {
        M();
        return x(this.S);
    }

    @Override
    public final long zzl() {
        M();
        return kfh.Q(y(this.S));
    }

    @Override
    public final long zzm() {
        M();
        if (!zzx()) {
            w4f w4fVarZzo = zzo();
            return w4fVarZzo.o() ? C.TIME_UNSET : kfh.Q(w4fVarZzo.e(zze(), this.a, 0L).l);
        }
        o9j o9jVar = this.S;
        bnj bnjVar = o9jVar.b;
        w4f w4fVar = o9jVar.a;
        Object obj = bnjVar.a;
        y2f y2fVar = this.n;
        w4fVar.n(obj, y2fVar);
        return kfh.Q(y2fVar.f(bnjVar.b, bnjVar.c));
    }

    @Override
    public final long zzn() {
        M();
        return kfh.Q(this.S.r);
    }

    @Override
    public final w4f zzo() {
        M();
        return this.S.a;
    }

    @Override
    public final naf zzp() {
        M();
        return this.S.i.d;
    }

    @Override
    public final void zzq() {
        M();
        o9j o9jVar = this.S;
        if (o9jVar.e != 1) {
            return;
        }
        o9j o9jVarE = o9jVar.e(null);
        o9j o9jVarC = C(o9jVarE, true != o9jVarE.a.o() ? 2 : 4);
        this.A++;
        this.k.m0();
        K(o9jVarC, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override
    public final void zzu() {
        M();
        J(null);
        int i = hzf.a;
        zzfww zzfwwVarZzn = zzfww.zzn();
        long j = this.S.s;
        zzfww.zzl(zzfwwVarZzn);
    }

    @Override
    public final boolean zzv() {
        M();
        return this.S.l;
    }

    @Override
    public final boolean zzw() {
        M();
        return false;
    }

    @Override
    public final boolean zzx() {
        M();
        return this.S.b.b();
    }

    @Override
    public final int zzy() {
        M();
        int length = this.g.length;
        return 2;
    }
}
