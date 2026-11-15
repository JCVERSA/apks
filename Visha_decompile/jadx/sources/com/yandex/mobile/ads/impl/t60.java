package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

final class t60 implements Handler.Callback, pw0.a, f62.a, yw0.d, e00.a, ni1.a {
    private boolean A;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean H;
    private boolean I;
    private boolean J;
    private int K;

    @Nullable
    private g L;
    private long M;
    private int N;
    private boolean O;

    @Nullable
    private m60 P;
    private final yo1[] b;
    private final Set<yo1> c;
    private final zo1[] d;
    private final f62 e;
    private final g62 f;
    private final cs0 g;
    private final wi h;
    private final hf0 i;
    private final HandlerThread j;
    private final Looper k;
    private final i52.d l;
    private final i52.b m;
    private final long n;
    private final boolean o;
    private final e00 p;
    private final ArrayList<c> q;
    private final jp r;
    private final e s;
    private final tw0 t;
    private final yw0 u;
    private final bs0 v;
    private final long w;
    private fx1 x;
    private zh1 y;
    private d z;
    private boolean G = false;
    private boolean B = false;
    private long Q = C.TIME_UNSET;

    public static final class a {
        private final List<yw0.c> a;
        private final iy1 b;
        private final int c;
        private final long d;

        private a(int i, long j, iy1 iy1Var, ArrayList arrayList) {
            this.a = arrayList;
            this.b = iy1Var;
            this.c = i;
            this.d = j;
        }
    }

    public static class b {
    }

    public static final class c implements Comparable<c> {
        @Override
        public final int compareTo(c cVar) {
            cVar.getClass();
            return 0;
        }
    }

    public static final class d {
        private boolean a;
        public zh1 b;
        public int c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;

        public d(zh1 zh1Var) {
            this.b = zh1Var;
        }

        public final void a(int i) {
            this.a |= i > 0;
            this.c += i;
        }
    }

    public interface e {
        void a(d dVar);
    }

    public static final class f {
        public final vw0.b a;
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public f(vw0.b bVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.a = bVar;
            this.b = j;
            this.c = j2;
            this.d = z;
            this.e = z2;
            this.f = z3;
        }
    }

    public static final class g {
        public final i52 a;
        public final int b;
        public final long c;

        public g(i52 i52Var, int i, long j) {
            this.a = i52Var;
            this.b = i;
            this.c = j;
        }
    }

    public t60(yo1[] yo1VarArr, f62 f62Var, g62 g62Var, cs0 cs0Var, wi wiVar, int i, ed edVar, fx1 fx1Var, b00 b00Var, long j, Looper looper, y32 y32Var, e eVar, mi1 mi1Var) {
        this.s = eVar;
        this.b = yo1VarArr;
        this.e = f62Var;
        this.f = g62Var;
        this.g = cs0Var;
        this.h = wiVar;
        this.F = i;
        this.x = fx1Var;
        this.v = b00Var;
        this.w = j;
        this.r = y32Var;
        this.n = cs0Var.e();
        this.o = cs0Var.a();
        zh1 zh1VarA = zh1.a(g62Var);
        this.y = zh1VarA;
        this.z = new d(zh1VarA);
        this.d = new zo1[yo1VarArr.length];
        for (int i2 = 0; i2 < yo1VarArr.length; i2++) {
            yo1VarArr[i2].a(i2, mi1Var);
            this.d[i2] = yo1VarArr[i2].n();
        }
        this.p = new e00(this, y32Var);
        this.q = new ArrayList<>();
        this.c = wx1.a();
        this.l = new i52.d();
        this.m = new i52.b();
        f62Var.a(this, wiVar);
        this.O = true;
        Handler handler = new Handler(looper);
        this.t = new tw0(edVar, handler);
        this.u = new yw0(this, edVar, handler, mi1Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.j = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.k = looper2;
        this.i = y32Var.a(looper2, this);
    }

    public Boolean e() {
        return Boolean.valueOf(this.A);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d  */
    private void f() {
        boolean zA;
        qw0 qw0VarD = this.t.d();
        if (qw0VarD == null) {
            zA = false;
        } else {
            if ((!qw0VarD.d ? 0L : qw0VarD.a.getNextLoadPositionUs()) == Long.MIN_VALUE) {
                zA = false;
            } else {
                qw0 qw0VarD2 = this.t.d();
                long jA = a(qw0VarD2.d ? qw0VarD2.a.getNextLoadPositionUs() : 0L);
                if (qw0VarD2 != this.t.e()) {
                    long j = qw0VarD2.f.b;
                }
                zA = this.g.a(jA, this.p.getPlaybackParameters().b);
            }
        }
        this.E = zA;
        if (zA) {
            this.t.d().a(this.M);
        }
        r();
    }

    private void g() throws m60 {
        a(this.u.a(), true);
    }

    private void j() {
        this.z.a(1);
        a(false, false, false, true);
        this.g.f();
        b(this.y.a.c() ? 4 : 2);
        this.u.a(this.h.a());
        this.i.a(2);
    }

    private void l() {
        a(true, false, true, false);
        this.g.b();
        b(1);
        this.j.quit();
        synchronized (this) {
            this.A = true;
            notifyAll();
        }
    }

    private void m() throws m60 {
        float f2 = this.p.getPlaybackParameters().b;
        qw0 qw0VarF = this.t.f();
        boolean z = true;
        for (qw0 qw0VarE = this.t.e(); qw0VarE != null && qw0VarE.d; qw0VarE = qw0VarE.b()) {
            g62 g62VarB = qw0VarE.b(f2, this.y.a);
            g62 g62VarF = qw0VarE.f();
            if (g62VarF != null && g62VarF.c.length == g62VarB.c.length) {
                int i = 0;
                while (true) {
                    if (i >= g62VarB.c.length) {
                        if (qw0VarE == qw0VarF) {
                            z = false;
                        }
                    } else if (f92.a(g62VarB.b[i], g62VarF.b[i]) && f92.a(g62VarB.c[i], g62VarF.c[i])) {
                        i++;
                    }
                }
            }
            if (z) {
                qw0 qw0VarE2 = this.t.e();
                boolean zA = this.t.a(qw0VarE2);
                boolean[] zArr = new boolean[this.b.length];
                long jA = qw0VarE2.a(g62VarB, this.y.r, zA, zArr);
                zh1 zh1Var = this.y;
                boolean z2 = (zh1Var.e == 4 || jA == zh1Var.r) ? false : true;
                zh1 zh1Var2 = this.y;
                this.y = a(zh1Var2.b, jA, zh1Var2.c, zh1Var2.d, z2, 5);
                if (z2) {
                    b(jA);
                }
                boolean[] zArr2 = new boolean[this.b.length];
                int i2 = 0;
                while (true) {
                    yo1[] yo1VarArr = this.b;
                    if (i2 >= yo1VarArr.length) {
                        break;
                    }
                    yo1 yo1Var = yo1VarArr[i2];
                    boolean zB = b(yo1Var);
                    zArr2[i2] = zB;
                    lt1 lt1Var = qw0VarE2.c[i2];
                    if (zB) {
                        if (lt1Var != yo1Var.g()) {
                            a(yo1Var);
                        } else if (zArr[i2]) {
                            yo1Var.a(this.M);
                        }
                    }
                    i2++;
                }
                a(zArr2);
            } else {
                this.t.a(qw0VarE);
                if (qw0VarE.d) {
                    qw0VarE.a(g62VarB, Math.max(qw0VarE.f.b, qw0VarE.c(this.M)));
                }
            }
            a(true);
            if (this.y.e != 4) {
                f();
                s();
                this.i.a(2);
                return;
            }
            return;
        }
    }

    private void n() {
        qw0 qw0VarE = this.t.e();
        this.C = qw0VarE != null && qw0VarE.f.h && this.B;
    }

    private boolean o() {
        zh1 zh1Var = this.y;
        return zh1Var.l && zh1Var.m == 0;
    }

    private void q() throws m60 {
        this.p.b();
        for (yo1 yo1Var : this.b) {
            if (b(yo1Var) && yo1Var.getState() == 2) {
                yo1Var.stop();
            }
        }
    }

    private void r() {
        qw0 qw0VarD = this.t.d();
        boolean z = this.E || (qw0VarD != null && qw0VarD.a.isLoading());
        zh1 zh1Var = this.y;
        if (z != zh1Var.g) {
            this.y = new zh1(zh1Var.a, zh1Var.b, zh1Var.c, zh1Var.d, zh1Var.e, zh1Var.f, z, zh1Var.h, zh1Var.i, zh1Var.j, zh1Var.k, zh1Var.l, zh1Var.m, zh1Var.n, zh1Var.p, zh1Var.q, zh1Var.r, zh1Var.o);
        }
    }

    private void s() throws m60 {
        long j;
        qw0 qw0VarE = this.t.e();
        if (qw0VarE == null) {
            return;
        }
        long discontinuity = qw0VarE.d ? qw0VarE.a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            b(discontinuity);
            if (discontinuity != this.y.r) {
                zh1 zh1Var = this.y;
                this.y = a(zh1Var.b, discontinuity, zh1Var.c, discontinuity, true, 5);
            }
        } else {
            long jA = this.p.a(qw0VarE != this.t.f());
            this.M = jA;
            long jC = qw0VarE.c(jA);
            long j2 = this.y.r;
            if (!this.q.isEmpty() && !this.y.b.a()) {
                if (this.O) {
                    j2--;
                    this.O = false;
                }
                zh1 zh1Var2 = this.y;
                int iA = zh1Var2.a.a(zh1Var2.b.a);
                int iMin = Math.min(this.N, this.q.size());
                c cVar = iMin > 0 ? this.q.get(iMin - 1) : null;
                while (cVar != null && (iA < 0 || (iA == 0 && 0 > j2))) {
                    int i = iMin - 1;
                    cVar = i > 0 ? this.q.get(iMin - 2) : null;
                    iMin = i;
                }
                if (iMin < this.q.size()) {
                    this.q.get(iMin);
                }
                this.N = iMin;
            }
            this.y.r = jC;
        }
        qw0 qw0VarD = this.t.d();
        zh1 zh1Var3 = this.y;
        if (qw0VarD.d) {
            long bufferedPositionUs = qw0VarD.e ? qw0VarD.a.getBufferedPositionUs() : Long.MIN_VALUE;
            j = bufferedPositionUs == Long.MIN_VALUE ? qw0VarD.f.e : bufferedPositionUs;
        } else {
            j = qw0VarD.f.b;
        }
        zh1Var3.p = j;
        zh1 zh1Var4 = this.y;
        zh1Var4.q = a(zh1Var4.p);
        zh1 zh1Var5 = this.y;
        if (zh1Var5.l && zh1Var5.e == 3 && a(zh1Var5.a, zh1Var5.b)) {
            zh1 zh1Var6 = this.y;
            if (zh1Var6.n.b == 1.0f) {
                float fA = ((b00) this.v).a(a(zh1Var6.a, zh1Var6.b.a, zh1Var6.r), a(this.y.p));
                if (this.p.getPlaybackParameters().b != fA) {
                    this.p.a(new bi1(fA, this.y.n.c));
                    a(this.y.n, this.p.getPlaybackParameters().b, false, false);
                }
            }
        }
    }

    public final void h() {
        this.i.a(22);
    }

    @Override
    public final boolean handleMessage(Message message) throws Throwable {
        qw0 qw0VarF;
        int i = 1000;
        try {
            switch (message.what) {
                case 0:
                    j();
                    break;
                case 1:
                    a(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    b();
                    break;
                case 3:
                    a((g) message.obj);
                    break;
                case 4:
                    b((bi1) message.obj);
                    break;
                case 5:
                    this.x = (fx1) message.obj;
                    break;
                case 6:
                    a(false, true);
                    break;
                case 7:
                    l();
                    return true;
                case 8:
                    c((pw0) message.obj);
                    break;
                case 9:
                    b((pw0) message.obj);
                    break;
                case 10:
                    m();
                    break;
                case 11:
                    a(message.arg1);
                    break;
                case 12:
                    e(message.arg1 != 0);
                    break;
                case 13:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    ni1 ni1Var = (ni1) message.obj;
                    ni1Var.getClass();
                    if (ni1Var.a() != this.k) {
                        this.i.a(15, ni1Var).a();
                    } else {
                        a(ni1Var);
                        int i2 = this.y.e;
                        if (i2 == 3 || i2 == 2) {
                            this.i.a(2);
                        }
                    }
                    break;
                case 15:
                    d((ni1) message.obj);
                    break;
                case 16:
                    bi1 bi1Var = (bi1) message.obj;
                    a(bi1Var, bi1Var.b, true, false);
                    break;
                case 17:
                    a((a) message.obj);
                    break;
                case 18:
                    a((a) message.obj, message.arg1);
                    break;
                case 19:
                    a((b) message.obj);
                    break;
                case 20:
                    a(message.arg1, message.arg2, (iy1) message.obj);
                    break;
                case 21:
                    a((iy1) message.obj);
                    break;
                case 22:
                    g();
                    break;
                case 23:
                    d(message.arg1 != 0);
                    break;
                case 24:
                    c(message.arg1 == 1);
                    break;
                case 25:
                    b(true);
                    break;
                default:
                    return false;
            }
        } catch (eg1 e2) {
            int i3 = e2.c;
            if (i3 == 1) {
                i = e2.b ? 3001 : 3003;
            } else if (i3 == 4) {
                i = e2.b ? 3002 : 3004;
            }
            a(e2, i);
        } catch (g40.a e3) {
            a(e3, e3.b);
        } catch (m60 e4) {
            e = e4;
            if (e.d == 1 && (qw0VarF = this.t.f()) != null) {
                e = e.a(qw0VarF.f.a);
            }
            if (e.j && this.P == null) {
                et0.b("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.P = e;
                hf0 hf0Var = this.i;
                hf0Var.a(hf0Var.a(25, e));
            } else {
                m60 m60Var = this.P;
                if (m60Var != null) {
                    m60Var.addSuppressed(e);
                    e = this.P;
                }
                et0.a("ExoPlayerImplInternal", "Playback error", e);
                a(true, false);
                this.y = this.y.a(e);
            }
        } catch (uv e5) {
            a(e5, e5.b);
        } catch (IOException e6) {
            a(e6, 2000);
        } catch (RuntimeException e7) {
            m60 m60VarA = m60.a(e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            et0.a("ExoPlayerImplInternal", "Playback error", m60VarA);
            a(true, false);
            this.y = this.y.a(m60VarA);
        }
        d dVar = this.z;
        zh1 zh1Var = this.y;
        boolean z = dVar.a | (dVar.b != zh1Var);
        dVar.a = z;
        dVar.b = zh1Var;
        if (z) {
            this.s.a(dVar);
            this.z = new d(this.y);
        }
        return true;
    }

    public final void i() {
        this.i.b(0).a();
    }

    public final synchronized boolean k() {
        if (!this.A && this.j.isAlive()) {
            this.i.a(7);
            a(new t32() {
                @Override
                public final Object get() {
                    return this.b.e();
                }
            }, this.w);
            return this.A;
        }
        return true;
    }

    public final void p() {
        this.i.b(6).a();
    }

    private void a(a aVar, int i) throws m60 {
        this.z.a(1);
        yw0 yw0Var = this.u;
        if (i == -1) {
            i = yw0Var.b();
        }
        a(yw0Var.a(i, aVar.a, aVar.b), false);
    }

    /* JADX WARN: Code duplicated, block: B:191:0x0339  */
    /* JADX WARN: Code duplicated, block: B:258:0x043d  */
    /* JADX WARN: Code duplicated, block: B:264:0x0450  */
    /* JADX WARN: Code duplicated, block: B:266:0x0456  */
    /* JADX WARN: Code duplicated, block: B:268:0x045a  */
    /* JADX WARN: Code duplicated, block: B:26:0x009a  */
    /* JADX WARN: Code duplicated, block: B:270:0x0468  */
    /* JADX WARN: Code duplicated, block: B:277:0x047c  */
    /* JADX WARN: Code duplicated, block: B:279:0x0480  */
    /* JADX WARN: Code duplicated, block: B:282:0x0486  */
    /* JADX WARN: Code duplicated, block: B:284:0x0498  */
    /* JADX WARN: Code duplicated, block: B:285:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:288:0x04af  */
    /* JADX WARN: Code duplicated, block: B:295:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:298:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:301:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:303:0x04d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:308:0x0507  */
    /* JADX WARN: Code duplicated, block: B:310:0x0514  */
    /* JADX WARN: Code duplicated, block: B:312:0x051c  */
    /* JADX WARN: Code duplicated, block: B:314:0x0522  */
    /* JADX WARN: Code duplicated, block: B:316:0x0528  */
    /* JADX WARN: Code duplicated, block: B:318:0x052c  */
    /* JADX WARN: Code duplicated, block: B:320:0x053a  */
    /* JADX WARN: Code duplicated, block: B:327:0x054d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:328:0x054f  */
    /* JADX WARN: Code duplicated, block: B:330:0x055c  */
    /* JADX WARN: Code duplicated, block: B:332:0x0564  */
    /* JADX WARN: Code duplicated, block: B:334:0x056e  */
    /* JADX WARN: Code duplicated, block: B:336:0x0572  */
    /* JADX WARN: Code duplicated, block: B:343:0x058d  */
    /* JADX WARN: Code duplicated, block: B:346:0x0593  */
    /* JADX WARN: Code duplicated, block: B:374:0x0604  */
    /* JADX WARN: Code duplicated, block: B:380:0x0614  */
    /* JADX WARN: Code duplicated, block: B:387:0x0621  */
    /* JADX WARN: Code duplicated, block: B:390:0x0628  */
    /* JADX WARN: Code duplicated, block: B:451:0x05b3 A[EDGE_INSN: B:451:0x05b3->B:352:0x05b3 BREAK  A[LOOP:8: B:344:0x058e->B:351:0x05b0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:457:0x051f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:461:0x0575 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [int] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [int] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    private void b() throws m60, IOException {
        boolean z;
        boolean z2;
        long j;
        boolean z3;
        boolean z4;
        zh1 zh1Var;
        qw0 qw0VarE;
        h70[] h70VarArr;
        int length;
        ?? r5;
        h70 h70Var;
        qw0 qw0VarE2;
        long jA;
        qw0 qw0VarD;
        boolean z5;
        boolean z6;
        yo1[] yo1VarArr;
        int length2;
        ?? r6;
        yo1 yo1Var;
        qw0 qw0VarE3;
        boolean z7;
        boolean z8;
        zh1 zh1Var2;
        int i;
        ?? r7;
        yo1[] yo1VarArr2;
        zh1 zh1Var3;
        qw0 qw0VarD2;
        qw0 qw0VarE4;
        qw0 qw0VarB;
        boolean z9;
        yo1[] yo1VarArr3;
        boolean z10;
        sw0 sw0VarA;
        long jA2 = this.r.a();
        this.i.c();
        if (!this.y.a.c() && this.u.c()) {
            this.t.a(this.M);
            if (this.t.h() && (sw0VarA = this.t.a(this.M, this.y)) != null) {
                qw0 qw0VarA = this.t.a(this.d, this.e, this.g.c(), this.u, sw0VarA, this.f);
                qw0VarA.a.a(this, sw0VarA.b);
                if (this.t.e() == qw0VarA) {
                    b(sw0VarA.b);
                }
                a(false);
            }
            if (this.E) {
                qw0 qw0VarD3 = this.t.d();
                if (qw0VarD3 == null) {
                    z10 = false;
                } else if ((!qw0VarD3.d ? 0L : qw0VarD3.a.getNextLoadPositionUs()) == Long.MIN_VALUE) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                this.E = z10;
                r();
            } else {
                f();
            }
            qw0 qw0VarF = this.t.f();
            if (qw0VarF != null) {
                if (qw0VarF.b() != null && !this.C) {
                    qw0 qw0VarF2 = this.t.f();
                    if (qw0VarF2.d) {
                        int i2 = 0;
                        while (true) {
                            yo1[] yo1VarArr4 = this.b;
                            if (i2 >= yo1VarArr4.length) {
                                if (!qw0VarF.b().d && this.M < qw0VarF.b().d()) {
                                    break;
                                }
                                g62 g62VarF = qw0VarF.f();
                                qw0 qw0VarB2 = this.t.b();
                                g62 g62VarF2 = qw0VarB2.f();
                                i52 i52Var = this.y.a;
                                a(i52Var, qw0VarB2.f.a, i52Var, qw0VarF.f.a, C.TIME_UNSET);
                                if (qw0VarB2.d && qw0VarB2.a.readDiscontinuity() != C.TIME_UNSET) {
                                    long jD = qw0VarB2.d();
                                    for (yo1 yo1Var2 : this.b) {
                                        if (yo1Var2.g() != null) {
                                            yo1Var2.h();
                                            if (yo1Var2 instanceof v42) {
                                                ((v42) yo1Var2).c(jD);
                                            }
                                        }
                                    }
                                    break;
                                }
                                for (int i3 = 0; i3 < this.b.length; i3++) {
                                    boolean zA = g62VarF.a(i3);
                                    boolean zA2 = g62VarF2.a(i3);
                                    if (zA && !this.b[i3].k()) {
                                        boolean z11 = ((sk) this.d[i3]).m() == -2;
                                        ap1 ap1Var = g62VarF.b[i3];
                                        ap1 ap1Var2 = g62VarF2.b[i3];
                                        if (!zA2 || !ap1Var2.equals(ap1Var) || z11) {
                                            yo1 yo1Var3 = this.b[i3];
                                            long jD2 = qw0VarB2.d();
                                            yo1Var3.h();
                                            if (yo1Var3 instanceof v42) {
                                                ((v42) yo1Var3).c(jD2);
                                            }
                                        }
                                    }
                                }
                                break;
                            }
                            yo1 yo1Var4 = yo1VarArr4[i2];
                            lt1 lt1Var = qw0VarF2.c[i2];
                            if (yo1Var4.g() != lt1Var) {
                                break;
                            }
                            if (lt1Var != null && !yo1Var4.e()) {
                                qw0 qw0VarB3 = qw0VarF2.b();
                                if (!qw0VarF2.f.f || !qw0VarB3.d || (!(yo1Var4 instanceof v42) && !(yo1Var4 instanceof p01) && yo1Var4.j() < qw0VarB3.d())) {
                                    break;
                                }
                            }
                            i2++;
                        }
                    }
                } else if (qw0VarF.f.i || this.C) {
                    int i4 = 0;
                    while (true) {
                        yo1[] yo1VarArr5 = this.b;
                        if (i4 >= yo1VarArr5.length) {
                            break;
                        }
                        yo1 yo1Var5 = yo1VarArr5[i4];
                        lt1 lt1Var2 = qw0VarF.c[i4];
                        if (lt1Var2 != null && yo1Var5.g() == lt1Var2 && yo1Var5.e()) {
                            long j2 = qw0VarF.f.e;
                            long jC = (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? -9223372036854775807L : qw0VarF.c() + qw0VarF.f.e;
                            yo1Var5.h();
                            if (yo1Var5 instanceof v42) {
                                ((v42) yo1Var5).c(jC);
                            }
                        }
                        i4++;
                    }
                }
            }
            qw0 qw0VarF3 = this.t.f();
            if (qw0VarF3 != null && this.t.e() != qw0VarF3 && !qw0VarF3.g) {
                qw0 qw0VarF4 = this.t.f();
                g62 g62VarF3 = qw0VarF4.f();
                boolean z12 = false;
                int i5 = 0;
                while (true) {
                    yo1VarArr3 = this.b;
                    if (i5 >= yo1VarArr3.length) {
                        break;
                    }
                    yo1 yo1Var6 = yo1VarArr3[i5];
                    if (b(yo1Var6)) {
                        boolean z13 = yo1Var6.g() != qw0VarF4.c[i5];
                        if (!g62VarF3.a(i5) || z13) {
                            if (!yo1Var6.k()) {
                                h70 h70Var2 = g62VarF3.c[i5];
                                int iB = h70Var2 != null ? h70Var2.b() : 0;
                                jc0[] jc0VarArr = new jc0[iB];
                                for (int i6 = 0; i6 < iB; i6++) {
                                    jc0VarArr[i6] = h70Var2.a(i6);
                                }
                                yo1Var6.a(jc0VarArr, qw0VarF4.c[i5], qw0VarF4.d(), qw0VarF4.c());
                            } else if (yo1Var6.a()) {
                                a(yo1Var6);
                            } else {
                                z12 = true;
                            }
                        }
                    }
                    i5++;
                }
                if (!z12) {
                    a(new boolean[yo1VarArr3.length]);
                }
            }
            boolean z14 = false;
            while (o() && !this.C && (qw0VarE4 = this.t.e()) != null && (qw0VarB = qw0VarE4.b()) != null && this.M >= qw0VarB.d() && qw0VarB.g) {
                if (z14) {
                    d dVar = this.z;
                    zh1 zh1Var4 = this.y;
                    boolean z15 = dVar.a | (dVar.b != zh1Var4);
                    dVar.a = z15;
                    dVar.b = zh1Var4;
                    if (z15) {
                        this.s.a(dVar);
                        this.z = new d(this.y);
                    }
                }
                qw0 qw0VarA2 = this.t.a();
                qw0VarA2.getClass();
                if (this.y.b.a.equals(qw0VarA2.f.a.a)) {
                    vw0.b bVar = this.y.b;
                    if (bVar.b == -1) {
                        vw0.b bVar2 = qw0VarA2.f.a;
                        if (bVar2.b != -1 || bVar.e == bVar2.e) {
                            z9 = false;
                        } else {
                            z9 = true;
                        }
                    } else {
                        z9 = false;
                    }
                } else {
                    z9 = false;
                }
                sw0 sw0Var = qw0VarA2.f;
                vw0.b bVar3 = sw0Var.a;
                long j3 = sw0Var.b;
                this.y = a(bVar3, j3, sw0Var.c, j3, !z9, 0);
                n();
                s();
                z14 = true;
            }
        }
        int i7 = this.y.e;
        if (i7 == 1 || i7 == 4) {
            return;
        }
        qw0 qw0VarE5 = this.t.e();
        if (qw0VarE5 == null) {
            this.i.a(jA2 + 10);
            return;
        }
        u52.a("doSomeWork");
        s();
        if (qw0VarE5.d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            qw0VarE5.a.discardBuffer(this.y.r - this.n, this.o);
            int i8 = 0;
            boolean z16 = true;
            z = true;
            while (true) {
                yo1[] yo1VarArr6 = this.b;
                if (i8 >= yo1VarArr6.length) {
                    break;
                }
                yo1 yo1Var7 = yo1VarArr6[i8];
                if (b(yo1Var7)) {
                    yo1Var7.a(this.M, jElapsedRealtime);
                    z16 = z16 && yo1Var7.a();
                    boolean z17 = qw0VarE5.c[i8] != yo1Var7.g();
                    boolean z18 = z17 || (!z17 && yo1Var7.e()) || yo1Var7.d() || yo1Var7.a();
                    z = z && z18;
                    if (!z18) {
                        yo1Var7.i();
                    }
                }
                i8++;
            }
            z2 = z16;
        } else {
            qw0VarE5.a.maybeThrowPrepareError();
            z = true;
            z2 = true;
        }
        long j4 = qw0VarE5.f.e;
        if (z2 && qw0VarE5.d) {
            j = C.TIME_UNSET;
            z3 = j4 == C.TIME_UNSET || j4 <= this.y.r;
            if (z3 || !this.C) {
                z4 = false;
            } else {
                z4 = false;
                this.C = false;
                a(false, this.y.m, false, 5);
            }
            if (z3 || !qw0VarE5.f.i) {
                zh1Var = this.y;
                if (zh1Var.e != 2) {
                    if (this.y.e == 3) {
                        if (this.K == 0) {
                            qw0VarE2 = this.t.e();
                            long j5 = qw0VarE2.f.e;
                            if (qw0VarE2.d || (j5 != j && this.y.r >= j5 && o())) {
                                this.D = o();
                                b(2);
                                if (this.D) {
                                    for (qw0VarE = this.t.e(); qw0VarE != null; qw0VarE = qw0VarE.b()) {
                                        h70VarArr = qw0VarE.f().c;
                                        length = h70VarArr.length;
                                        for (r5 = z4; r5 < length; r5++) {
                                            h70Var = h70VarArr[r5];
                                            if (h70Var != null) {
                                                h70Var.g();
                                            }
                                        }
                                    }
                                    ((b00) this.v).c();
                                }
                                q();
                            }
                        } else if (!z) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    }
                } else if (this.K == 0) {
                    qw0VarE3 = this.t.e();
                    long j6 = qw0VarE3.f.e;
                    if (!qw0VarE3.d && (j6 == j || this.y.r < j6 || !o())) {
                        b(3);
                        this.P = null;
                        if (o()) {
                            this.D = z4;
                            this.p.a();
                            yo1VarArr = this.b;
                            length2 = yo1VarArr.length;
                            for (r6 = z4; r6 < length2; r6++) {
                                yo1Var = yo1VarArr[r6];
                                if (b(yo1Var)) {
                                    yo1Var.start();
                                }
                            }
                        }
                    } else if (this.y.e == 3) {
                        if (this.K == 0) {
                            qw0VarE2 = this.t.e();
                            long j7 = qw0VarE2.f.e;
                            if (qw0VarE2.d) {
                                this.D = o();
                                b(2);
                                if (this.D) {
                                    while (qw0VarE != null) {
                                        h70VarArr = qw0VarE.f().c;
                                        length = h70VarArr.length;
                                        while (r5 < length) {
                                            h70Var = h70VarArr[r5];
                                            if (h70Var != null) {
                                                h70Var.g();
                                            }
                                        }
                                    }
                                    ((b00) this.v).c();
                                }
                                q();
                            } else {
                                this.D = o();
                                b(2);
                                if (this.D) {
                                    while (qw0VarE != null) {
                                        h70VarArr = qw0VarE.f().c;
                                        length = h70VarArr.length;
                                        while (r5 < length) {
                                            h70Var = h70VarArr[r5];
                                            if (h70Var != null) {
                                                h70Var.g();
                                            }
                                        }
                                    }
                                    ((b00) this.v).c();
                                }
                                q();
                            }
                        } else if (!z) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    }
                } else {
                    if (z) {
                        if (zh1Var.g) {
                            if (a(zh1Var.a, this.t.e().f.a)) {
                                jA = ((b00) this.v).a();
                            } else {
                                jA = j;
                            }
                            qw0VarD = this.t.d();
                            if (qw0VarD.d || ((qw0VarD.e && qw0VarD.a.getBufferedPositionUs() != Long.MIN_VALUE) || !qw0VarD.f.i)) {
                                z5 = z4;
                            } else {
                                z5 = true;
                            }
                            if (qw0VarD.f.a.a() || qw0VarD.d) {
                                z6 = z4;
                            } else {
                                z6 = true;
                            }
                            if (!z5 || z6 || this.g.a(a(this.y.p), this.p.getPlaybackParameters().b, this.D, jA)) {
                            }
                        }
                        b(3);
                        this.P = null;
                        if (o()) {
                            this.D = z4;
                            this.p.a();
                            yo1VarArr = this.b;
                            length2 = yo1VarArr.length;
                            while (r6 < length2) {
                                yo1Var = yo1VarArr[r6];
                                if (b(yo1Var)) {
                                    yo1Var.start();
                                }
                            }
                        }
                    }
                    if (this.y.e == 3) {
                        if (this.K == 0) {
                            qw0VarE2 = this.t.e();
                            long j8 = qw0VarE2.f.e;
                            if (qw0VarE2.d) {
                                this.D = o();
                                b(2);
                                if (this.D) {
                                    while (qw0VarE != null) {
                                        h70VarArr = qw0VarE.f().c;
                                        length = h70VarArr.length;
                                        while (r5 < length) {
                                            h70Var = h70VarArr[r5];
                                            if (h70Var != null) {
                                                h70Var.g();
                                            }
                                        }
                                    }
                                    ((b00) this.v).c();
                                }
                                q();
                            } else {
                                this.D = o();
                                b(2);
                                if (this.D) {
                                    while (qw0VarE != null) {
                                        h70VarArr = qw0VarE.f().c;
                                        length = h70VarArr.length;
                                        while (r5 < length) {
                                            h70Var = h70VarArr[r5];
                                            if (h70Var != null) {
                                                h70Var.g();
                                            }
                                        }
                                    }
                                    ((b00) this.v).c();
                                }
                                q();
                            }
                        } else if (!z) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    }
                }
            } else {
                b(4);
                q();
            }
            if (this.y.e == 2) {
                r7 = z4;
                while (true) {
                    yo1VarArr2 = this.b;
                    if (r7 < yo1VarArr2.length) {
                        break;
                    }
                    if (!b(yo1VarArr2[r7]) && this.b[r7].g() == qw0VarE5.c[r7]) {
                        this.b[r7].i();
                    }
                    r7++;
                }
                zh1Var3 = this.y;
                if (!zh1Var3.g || zh1Var3.q >= 500000 || (qw0VarD2 = this.t.d()) == null) {
                    this.Q = j;
                } else if ((!qw0VarD2.d ? 0L : qw0VarD2.a.getNextLoadPositionUs()) == Long.MIN_VALUE) {
                    this.Q = j;
                } else if (this.Q == j) {
                    this.Q = this.r.b();
                } else if (this.r.b() - this.Q >= 4000) {
                    throw new IllegalStateException("Playback stuck buffering and not loading");
                }
            } else {
                this.Q = j;
            }
            if (o() || this.y.e != 3) {
                z7 = z4;
            } else {
                z7 = true;
            }
            if (!this.J && this.I && z7) {
                z8 = true;
            } else {
                z8 = z4;
            }
            zh1Var2 = this.y;
            if (zh1Var2.o != z8) {
                this.y = new zh1(zh1Var2.a, zh1Var2.b, zh1Var2.c, zh1Var2.d, zh1Var2.e, zh1Var2.f, zh1Var2.g, zh1Var2.h, zh1Var2.i, zh1Var2.j, zh1Var2.k, zh1Var2.l, zh1Var2.m, zh1Var2.n, zh1Var2.p, zh1Var2.q, zh1Var2.r, z8);
            }
            this.I = z4;
            if (!z8 || (i = this.y.e) == 4) {
            }
            if (z7 || i == 2) {
                this.i.a(jA2 + 10);
            } else if (i == 3 && this.K != 0) {
                this.i.a(jA2 + 1000);
            }
            u52.a();
            return;
        }
        j = C.TIME_UNSET;
        if (z3) {
            z4 = false;
        } else {
            z4 = false;
        }
        if (z3) {
            zh1Var = this.y;
            if (zh1Var.e != 2) {
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j9 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            } else if (this.K == 0) {
                qw0VarE3 = this.t.e();
                long j10 = qw0VarE3.f.e;
                if (!qw0VarE3.d) {
                }
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j11 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            } else {
                if (z) {
                    if (zh1Var.g) {
                        if (a(zh1Var.a, this.t.e().f.a)) {
                            jA = ((b00) this.v).a();
                        } else {
                            jA = j;
                        }
                        qw0VarD = this.t.d();
                        if (qw0VarD.d) {
                            z5 = z4;
                        } else {
                            z5 = z4;
                        }
                        if (qw0VarD.f.a.a()) {
                            z6 = z4;
                        } else {
                            z6 = z4;
                        }
                        if (!z5) {
                        }
                    }
                    b(3);
                    this.P = null;
                    if (o()) {
                        this.D = z4;
                        this.p.a();
                        yo1VarArr = this.b;
                        length2 = yo1VarArr.length;
                        while (r6 < length2) {
                            yo1Var = yo1VarArr[r6];
                            if (b(yo1Var)) {
                                yo1Var.start();
                            }
                        }
                    }
                }
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j12 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            }
        } else {
            zh1Var = this.y;
            if (zh1Var.e != 2) {
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j13 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            } else if (this.K == 0) {
                qw0VarE3 = this.t.e();
                long j14 = qw0VarE3.f.e;
                if (!qw0VarE3.d) {
                }
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j15 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            } else {
                if (z) {
                    if (zh1Var.g) {
                        if (a(zh1Var.a, this.t.e().f.a)) {
                            jA = ((b00) this.v).a();
                        } else {
                            jA = j;
                        }
                        qw0VarD = this.t.d();
                        if (qw0VarD.d) {
                            z5 = z4;
                        } else {
                            z5 = z4;
                        }
                        if (qw0VarD.f.a.a()) {
                            z6 = z4;
                        } else {
                            z6 = z4;
                        }
                        if (!z5) {
                        }
                    }
                    b(3);
                    this.P = null;
                    if (o()) {
                        this.D = z4;
                        this.p.a();
                        yo1VarArr = this.b;
                        length2 = yo1VarArr.length;
                        while (r6 < length2) {
                            yo1Var = yo1VarArr[r6];
                            if (b(yo1Var)) {
                                yo1Var.start();
                            }
                        }
                    }
                }
                if (this.y.e == 3) {
                    if (this.K == 0) {
                        qw0VarE2 = this.t.e();
                        long j16 = qw0VarE2.f.e;
                        if (qw0VarE2.d) {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        } else {
                            this.D = o();
                            b(2);
                            if (this.D) {
                                while (qw0VarE != null) {
                                    h70VarArr = qw0VarE.f().c;
                                    length = h70VarArr.length;
                                    while (r5 < length) {
                                        h70Var = h70VarArr[r5];
                                        if (h70Var != null) {
                                            h70Var.g();
                                        }
                                    }
                                }
                                ((b00) this.v).c();
                            }
                            q();
                        }
                    } else if (!z) {
                        this.D = o();
                        b(2);
                        if (this.D) {
                            while (qw0VarE != null) {
                                h70VarArr = qw0VarE.f().c;
                                length = h70VarArr.length;
                                while (r5 < length) {
                                    h70Var = h70VarArr[r5];
                                    if (h70Var != null) {
                                        h70Var.g();
                                    }
                                }
                            }
                            ((b00) this.v).c();
                        }
                        q();
                    }
                }
            }
        }
        if (this.y.e == 2) {
            r7 = z4;
            while (true) {
                yo1VarArr2 = this.b;
                if (r7 < yo1VarArr2.length) {
                    break;
                    break;
                } else {
                    if (!b(yo1VarArr2[r7])) {
                    }
                    r7++;
                }
            }
            zh1Var3 = this.y;
            if (zh1Var3.g) {
                this.Q = j;
            } else {
                this.Q = j;
            }
        } else {
            this.Q = j;
        }
        if (o()) {
            z7 = z4;
        } else {
            z7 = z4;
        }
        if (!this.J) {
            z8 = z4;
        } else {
            z8 = z4;
        }
        zh1Var2 = this.y;
        if (zh1Var2.o != z8) {
            this.y = new zh1(zh1Var2.a, zh1Var2.b, zh1Var2.c, zh1Var2.d, zh1Var2.e, zh1Var2.f, zh1Var2.g, zh1Var2.h, zh1Var2.i, zh1Var2.j, zh1Var2.k, zh1Var2.l, zh1Var2.m, zh1Var2.n, zh1Var2.p, zh1Var2.q, zh1Var2.r, z8);
        }
        this.I = z4;
        if (z8) {
        }
    }

    private long c() {
        qw0 qw0VarF = this.t.f();
        if (qw0VarF == null) {
            return 0L;
        }
        long jC = qw0VarF.c();
        if (!qw0VarF.d) {
            return jC;
        }
        int i = 0;
        while (true) {
            yo1[] yo1VarArr = this.b;
            if (i >= yo1VarArr.length) {
                return jC;
            }
            if (b(yo1VarArr[i]) && this.b[i].g() == qw0VarF.c[i]) {
                long j = this.b[i].j();
                if (j == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jC = Math.max(j, jC);
            }
            i++;
        }
    }

    private void e(boolean z) throws m60 {
        this.G = z;
        if (!this.t.a(this.y.a, z)) {
            b(true);
        }
        a(false);
    }

    public final Looper d() {
        return this.k;
    }

    private void d(final ni1 ni1Var) {
        Looper looperA = ni1Var.a();
        if (!looperA.getThread().isAlive()) {
            et0.d(AbstractID3v1Tag.TAG, "Trying to send message on a dead thread.");
            ni1Var.a(false);
        } else {
            this.r.a(looperA, null).a(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(ni1Var);
                }
            });
        }
    }

    private static void a(ni1 ni1Var) throws m60 {
        synchronized (ni1Var) {
        }
        try {
            ni1Var.c().a(ni1Var.d(), ni1Var.b());
        } finally {
            ni1Var.a(true);
        }
    }

    private void c(pw0 pw0Var) throws m60 {
        if (this.t.a(pw0Var)) {
            qw0 qw0VarD = this.t.d();
            qw0VarD.a(this.p.getPlaybackParameters().b, this.y.a);
            this.g.a(this.b, qw0VarD.f().c);
            if (qw0VarD == this.t.e()) {
                b(qw0VarD.f.b);
                a(new boolean[this.b.length]);
                zh1 zh1Var = this.y;
                vw0.b bVar = zh1Var.b;
                long j = qw0VarD.f.b;
                this.y = a(bVar, j, zh1Var.c, j, false, 5);
            }
            f();
        }
    }

    private void d(boolean z) throws m60 {
        this.B = z;
        n();
        if (!this.C || this.t.f() == this.t.e()) {
            return;
        }
        b(true);
        a(false);
    }

    private void a(yo1 yo1Var) throws m60 {
        if (b(yo1Var)) {
            this.p.a(yo1Var);
            if (yo1Var.getState() == 2) {
                yo1Var.stop();
            }
            yo1Var.c();
            this.K--;
        }
    }

    private void a(boolean[] zArr) throws m60 {
        qw0 qw0VarF = this.t.f();
        g62 g62VarF = qw0VarF.f();
        for (int i = 0; i < this.b.length; i++) {
            if (!g62VarF.a(i) && this.c.remove(this.b[i])) {
                this.b[i].b();
            }
        }
        for (int i2 = 0; i2 < this.b.length; i2++) {
            if (g62VarF.a(i2)) {
                boolean z = zArr[i2];
                yo1 yo1Var = this.b[i2];
                if (!b(yo1Var)) {
                    qw0 qw0VarF2 = this.t.f();
                    boolean z2 = qw0VarF2 == this.t.e();
                    g62 g62VarF2 = qw0VarF2.f();
                    ap1 ap1Var = g62VarF2.b[i2];
                    h70 h70Var = g62VarF2.c[i2];
                    int iB = h70Var != null ? h70Var.b() : 0;
                    jc0[] jc0VarArr = new jc0[iB];
                    for (int i3 = 0; i3 < iB; i3++) {
                        jc0VarArr[i3] = h70Var.a(i3);
                    }
                    boolean z3 = o() && this.y.e == 3;
                    boolean z4 = !z && z3;
                    this.K++;
                    this.c.add(yo1Var);
                    yo1Var.a(ap1Var, jc0VarArr, qw0VarF2.c[i2], this.M, z4, z2, qw0VarF2.d(), qw0VarF2.c());
                    yo1Var.a(11, new s60(this));
                    this.p.b(yo1Var);
                    if (z3) {
                        yo1Var.start();
                    }
                }
            }
        }
        qw0VarF.g = true;
    }

    public final synchronized void c(ni1 ni1Var) {
        if (!this.A && this.j.isAlive()) {
            this.i.a(14, ni1Var).a();
            return;
        }
        et0.d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        ni1Var.a(false);
    }

    private void c(boolean z) {
        if (z == this.J) {
            return;
        }
        this.J = z;
        if (z || !this.y.o) {
            return;
        }
        this.i.a(2);
    }

    private long a(i52 i52Var, Object obj, long j) {
        long jElapsedRealtime;
        i52Var.a(i52Var.a(obj, this.m).d, this.l, 0L);
        i52.d dVar = this.l;
        if (dVar.g != C.TIME_UNSET && dVar.a()) {
            i52.d dVar2 = this.l;
            if (dVar2.j) {
                long j2 = dVar2.h;
                int i = f92.a;
                if (j2 == C.TIME_UNSET) {
                    jElapsedRealtime = System.currentTimeMillis();
                } else {
                    jElapsedRealtime = j2 + SystemClock.elapsedRealtime();
                }
                return f92.a(jElapsedRealtime - this.l.g) - (j + this.m.f);
            }
        }
        return C.TIME_UNSET;
    }

    private Pair<vw0.b, Long> a(i52 i52Var) {
        long jB = 0;
        if (i52Var.c()) {
            return Pair.create(zh1.a(), 0L);
        }
        Pair<Object, Long> pairA = i52Var.a(this.l, this.m, i52Var.a(this.G), C.TIME_UNSET);
        vw0.b bVarA = this.t.a(i52Var, pairA.first, 0L);
        long jLongValue = ((Long) pairA.second).longValue();
        if (bVarA.a()) {
            i52Var.a(bVarA.a, this.m);
            if (bVarA.c == this.m.d(bVarA.b)) {
                jB = this.m.b();
            }
        } else {
            jB = jLongValue;
        }
        return Pair.create(bVarA, Long.valueOf(jB));
    }

    private long a(long j) {
        qw0 qw0VarD = this.t.d();
        if (qw0VarD == null) {
            return 0L;
        }
        return Math.max(0L, j - qw0VarD.c(this.M));
    }

    private void a(IOException iOException, int i) {
        m60 m60VarA = m60.a(iOException, i);
        qw0 qw0VarE = this.t.e();
        if (qw0VarE != null) {
            m60VarA = m60VarA.a(qw0VarE.f.a);
        }
        et0.a("ExoPlayerImplInternal", "Playback error", m60VarA);
        a(false, false);
        this.y = this.y.a(m60VarA);
    }

    private void a(boolean z) {
        long j;
        qw0 qw0VarD = this.t.d();
        vw0.b bVar = qw0VarD == null ? this.y.b : qw0VarD.f.a;
        boolean zEquals = this.y.k.equals(bVar);
        if (!zEquals) {
            this.y = this.y.a(bVar);
        }
        zh1 zh1Var = this.y;
        if (qw0VarD == null) {
            j = zh1Var.r;
        } else if (!qw0VarD.d) {
            j = qw0VarD.f.b;
        } else {
            long bufferedPositionUs = qw0VarD.e ? qw0VarD.a.getBufferedPositionUs() : Long.MIN_VALUE;
            j = bufferedPositionUs == Long.MIN_VALUE ? qw0VarD.f.e : bufferedPositionUs;
        }
        zh1Var.p = j;
        zh1 zh1Var2 = this.y;
        zh1Var2.q = a(zh1Var2.p);
        if ((!zEquals || z) && qw0VarD != null && qw0VarD.d) {
            this.g.a(this.b, qw0VarD.f().c);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v49 ??, still in use, count: 1, list:
          (r0v49 ?? I:??[OBJECT, ARRAY]) from 0x0036: MOVE (r7v26 ?? I:??[OBJECT, ARRAY]) = (r0v49 ?? I:??[OBJECT, ARRAY])
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    private void a(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v49 ??, still in use, count: 1, list:
          (r0v49 ?? I:??[OBJECT, ARRAY]) from 0x0036: MOVE (r7v26 ?? I:??[OBJECT, ARRAY]) = (r0v49 ?? I:??[OBJECT, ARRAY])
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r39v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    private void b(pw0 pw0Var) {
        if (this.t.a(pw0Var)) {
            this.t.a(this.M);
            f();
        }
    }

    private static boolean b(yo1 yo1Var) {
        return yo1Var.getState() != 0;
    }

    public void b(ni1 ni1Var) {
        try {
            a(ni1Var);
        } catch (m60 e2) {
            et0.a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void b(long j) throws m60 {
        qw0 qw0VarE = this.t.e();
        long jD = qw0VarE == null ? j + MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : qw0VarE.d(j);
        this.M = jD;
        this.p.a(jD);
        for (yo1 yo1Var : this.b) {
            if (b(yo1Var)) {
                yo1Var.a(this.M);
            }
        }
        for (qw0 qw0VarE2 = this.t.e(); qw0VarE2 != null; qw0VarE2 = qw0VarE2.b()) {
            for (h70 h70Var : qw0VarE2.f().c) {
                if (h70Var != null) {
                    h70Var.f();
                }
            }
        }
    }

    private void a(bi1 bi1Var, float f2, boolean z, boolean z2) throws m60 {
        int i;
        t60 t60Var = this;
        if (z) {
            if (z2) {
                t60Var.z.a(1);
            }
            zh1 zh1Var = t60Var.y;
            t60Var = this;
            t60Var.y = new zh1(zh1Var.a, zh1Var.b, zh1Var.c, zh1Var.d, zh1Var.e, zh1Var.f, zh1Var.g, zh1Var.h, zh1Var.i, zh1Var.j, zh1Var.k, zh1Var.l, zh1Var.m, bi1Var, zh1Var.p, zh1Var.q, zh1Var.r, zh1Var.o);
        }
        float f3 = bi1Var.b;
        qw0 qw0VarE = t60Var.t.e();
        while (true) {
            i = 0;
            if (qw0VarE == null) {
                break;
            }
            h70[] h70VarArr = qw0VarE.f().c;
            int length = h70VarArr.length;
            while (i < length) {
                h70 h70Var = h70VarArr[i];
                if (h70Var != null) {
                    h70Var.a(f3);
                }
                i++;
            }
            qw0VarE = qw0VarE.b();
        }
        yo1[] yo1VarArr = t60Var.b;
        int length2 = yo1VarArr.length;
        while (i < length2) {
            yo1 yo1Var = yo1VarArr[i];
            if (yo1Var != null) {
                yo1Var.a(f2, bi1Var.b);
            }
            i++;
        }
    }

    private void b(boolean z) throws m60 {
        vw0.b bVar = this.t.e().f.a;
        long jA = a(bVar, this.y.r, true, false);
        if (jA != this.y.r) {
            zh1 zh1Var = this.y;
            this.y = a(bVar, jA, zh1Var.c, zh1Var.d, z, 5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00c8  */
    @CheckResult
    private zh1 a(vw0.b bVar, long j, long j2, long j3, boolean z, int i) {
        List<k01> listH;
        z52 z52Var;
        g62 g62Var;
        z52 z52VarE;
        g62 g62VarF;
        this.O = (!this.O && j == this.y.r && bVar.equals(this.y.b)) ? false : true;
        n();
        zh1 zh1Var = this.y;
        z52 z52Var2 = zh1Var.h;
        g62 g62Var2 = zh1Var.i;
        List<k01> list = zh1Var.j;
        if (this.u.c()) {
            qw0 qw0VarE = this.t.e();
            if (qw0VarE == null) {
                z52VarE = z52.e;
            } else {
                z52VarE = qw0VarE.e();
            }
            z52 z52Var3 = z52VarE;
            if (qw0VarE == null) {
                g62VarF = this.f;
            } else {
                g62VarF = qw0VarE.f();
            }
            g62 g62Var3 = g62VarF;
            h70[] h70VarArr = g62Var3.c;
            kk0.a aVar = new kk0.a();
            boolean z2 = false;
            for (h70 h70Var : h70VarArr) {
                if (h70Var != null) {
                    k01 k01Var = h70Var.a(0).k;
                    if (k01Var == null) {
                        aVar.b(new k01(new k01.b[0]));
                    } else {
                        aVar.b(k01Var);
                        z2 = true;
                    }
                }
            }
            kk0 kk0VarA = z2 ? aVar.a() : kk0.h();
            if (qw0VarE != null) {
                sw0 sw0Var = qw0VarE.f;
                long j4 = sw0Var.c;
                if (j4 != j2) {
                    if (j2 != j4) {
                        sw0Var = new sw0(sw0Var.a, sw0Var.b, j2, sw0Var.d, sw0Var.e, sw0Var.f, sw0Var.g, sw0Var.h, sw0Var.i);
                    }
                    qw0VarE.f = sw0Var;
                } else {
                    g62Var3 = g62Var3;
                }
            } else {
                g62Var3 = g62Var3;
            }
            z52Var = z52Var3;
            listH = kk0VarA;
            g62Var = g62Var3;
        } else if (bVar.equals(this.y.b)) {
            listH = list;
            z52Var = z52Var2;
            g62Var = g62Var2;
        } else {
            z52Var = z52.e;
            g62Var = this.f;
            listH = kk0.h();
        }
        if (z) {
            d dVar = this.z;
            if (!dVar.d || dVar.e == 5) {
                dVar.a = true;
                dVar.d = true;
                dVar.e = i;
            } else if (i != 5) {
                throw new IllegalArgumentException();
            }
        }
        zh1 zh1Var2 = this.y;
        return zh1Var2.a(bVar, j, j2, j3, a(zh1Var2.p), z52Var, g62Var, listH);
    }

    private void b(bi1 bi1Var) throws m60 {
        this.p.a(bi1Var);
        bi1 playbackParameters = this.p.getPlaybackParameters();
        a(playbackParameters, playbackParameters.b, true, true);
    }

    private void b(int i) {
        zh1 zh1Var = this.y;
        if (zh1Var.e != i) {
            if (i != 2) {
                this.Q = C.TIME_UNSET;
            }
            this.y = zh1Var.a(i);
        }
    }

    private void a(b bVar) throws m60 {
        this.z.a(1);
        yw0 yw0Var = this.u;
        bVar.getClass();
        a(yw0Var.d(), false);
    }

    @Override
    public final void a(mx1 mx1Var) {
        this.i.a(9, (pw0) mx1Var).a();
    }

    public final void a(bi1 bi1Var) {
        this.i.a(16, bi1Var).a();
    }

    @Override
    public final void a(pw0 pw0Var) {
        this.i.a(8, pw0Var).a();
    }

    @Override
    public final void a() {
        this.i.a(10);
    }

    private void a(int i, int i2, iy1 iy1Var) throws m60 {
        this.z.a(1);
        a(this.u.a(i, i2, iy1Var), false);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b1 A[PHI: r4 r5 r7
      0x00b1: PHI (r4v3 com.yandex.mobile.ads.impl.vw0$b) = (r4v2 com.yandex.mobile.ads.impl.vw0$b), (r4v9 com.yandex.mobile.ads.impl.vw0$b) binds: [B:30:0x0084, B:32:0x00a9] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r5v2 long) = (r5v1 long), (r5v5 long) binds: [B:30:0x0084, B:32:0x00a9] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0084, B:32:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    private void a(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        boolean z5;
        this.i.c();
        this.P = null;
        this.D = false;
        this.p.b();
        this.M = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        for (yo1 yo1Var : this.b) {
            try {
                a(yo1Var);
            } catch (m60 | RuntimeException e2) {
                et0.a("ExoPlayerImplInternal", "Disable failed.", e2);
            }
        }
        if (z) {
            for (yo1 yo1Var2 : this.b) {
                if (this.c.remove(yo1Var2)) {
                    try {
                        yo1Var2.b();
                    } catch (RuntimeException e3) {
                        et0.a("ExoPlayerImplInternal", "Reset failed.", e3);
                    }
                }
            }
        }
        this.K = 0;
        zh1 zh1Var = this.y;
        vw0.b bVar = zh1Var.b;
        long jLongValue = zh1Var.r;
        if (!this.y.b.a()) {
            zh1 zh1Var2 = this.y;
            i52.b bVar2 = this.m;
            vw0.b bVar3 = zh1Var2.b;
            i52 i52Var = zh1Var2.a;
            if (!i52Var.c() && !i52Var.a(bVar3.a, bVar2).g) {
                j = this.y.r;
            } else {
                j = this.y.c;
            }
        } else {
            j = this.y.c;
        }
        if (z2) {
            this.L = null;
            Pair<vw0.b, Long> pairA = a(this.y.a);
            bVar = (vw0.b) pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            boolean zEquals = bVar.equals(this.y.b);
            j = C.TIME_UNSET;
            if (zEquals) {
                z5 = false;
            } else {
                z5 = true;
            }
        } else {
            z5 = false;
        }
        vw0.b bVar4 = bVar;
        long j2 = jLongValue;
        this.t.c();
        this.E = false;
        zh1 zh1Var3 = this.y;
        i52 i52Var2 = zh1Var3.a;
        int i = zh1Var3.e;
        m60 m60Var = z4 ? null : zh1Var3.f;
        z52 z52Var = z5 ? z52.e : zh1Var3.h;
        g62 g62Var = z5 ? this.f : zh1Var3.i;
        List listH = z5 ? kk0.h() : zh1Var3.j;
        zh1 zh1Var4 = this.y;
        this.y = new zh1(i52Var2, bVar4, j, j2, i, m60Var, false, z52Var, g62Var, listH, bVar4, zh1Var4.l, zh1Var4.m, zh1Var4.n, j2, 0L, j2, false);
        if (z3) {
            this.u.e();
        }
    }

    private void a(i52 i52Var, i52 i52Var2) {
        if (i52Var.c() && i52Var2.c()) {
            return;
        }
        int size = this.q.size() - 1;
        if (size < 0) {
            Collections.sort(this.q);
        } else {
            this.q.get(size).getClass();
            throw null;
        }
    }

    @Nullable
    private static Pair<Object, Long> a(i52 i52Var, g gVar, boolean z, int i, boolean z2, i52.d dVar, i52.b bVar) {
        Object objA;
        i52 i52Var2 = gVar.a;
        if (i52Var.c()) {
            return null;
        }
        i52 i52Var3 = i52Var2.c() ? i52Var : i52Var2;
        try {
            Pair<Object, Long> pairA = i52Var3.a(dVar, bVar, gVar.b, gVar.c);
            if (i52Var.equals(i52Var3)) {
                return pairA;
            }
            if (i52Var.a(pairA.first) != -1) {
                return (i52Var3.a(pairA.first, bVar).g && i52Var3.a(bVar.d, dVar, 0L).p == i52Var3.a(pairA.first)) ? i52Var.a(dVar, bVar, i52Var.a(pairA.first, bVar).d, gVar.c) : pairA;
            }
            if (z && (objA = a(dVar, bVar, i, z2, pairA.first, i52Var3, i52Var)) != null) {
                return i52Var.a(dVar, bVar, i52Var.a(objA, bVar).d, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Nullable
    public static Object a(i52.d dVar, i52.b bVar, int i, boolean z, Object obj, i52 i52Var, i52 i52Var2) {
        int iA = i52Var.a(obj);
        int iA2 = i52Var.a();
        int iA3 = iA;
        int iA4 = -1;
        for (int i2 = 0; i2 < iA2 && iA4 == -1; i2++) {
            iA3 = i52Var.a(iA3, bVar, dVar, i, z);
            if (iA3 == -1) {
                break;
            }
            iA4 = i52Var2.a(i52Var.a(iA3));
        }
        if (iA4 == -1) {
            return null;
        }
        return i52Var2.a(iA4);
    }

    private void a(g gVar) throws Throwable {
        long j;
        long j2;
        vw0.b bVar;
        boolean z;
        long j3;
        long j4;
        long j5;
        zh1 zh1Var;
        int i;
        this.z.a(1);
        Pair<Object, Long> pairA = a(this.y.a, gVar, true, this.F, this.G, this.l, this.m);
        if (pairA == null) {
            Pair<vw0.b, Long> pairA2 = a(this.y.a);
            bVar = (vw0.b) pairA2.first;
            long jLongValue = ((Long) pairA2.second).longValue();
            z = !this.y.a.c();
            j = jLongValue;
            j2 = -9223372036854775807L;
        } else {
            Object obj = pairA.first;
            long jLongValue2 = ((Long) pairA.second).longValue();
            long j6 = gVar.c == C.TIME_UNSET ? -9223372036854775807L : jLongValue2;
            vw0.b bVarA = this.t.a(this.y.a, obj, jLongValue2);
            if (bVarA.a()) {
                this.y.a.a(bVarA.a, this.m);
                jLongValue2 = this.m.d(bVarA.b) == bVarA.c ? this.m.b() : 0L;
            } else if (gVar.c != C.TIME_UNSET) {
                j = jLongValue2;
                j2 = j6;
                bVar = bVarA;
                z = false;
            }
            j = jLongValue2;
            j2 = j6;
            bVar = bVarA;
            z = true;
        }
        try {
            if (this.y.a.c()) {
                this.L = gVar;
            } else {
                if (pairA == null) {
                    if (this.y.e != 1) {
                        b(4);
                    }
                    a(false, true, false, true);
                } else {
                    if (bVar.equals(this.y.b)) {
                        qw0 qw0VarE = this.t.e();
                        long jA = (qw0VarE == null || !qw0VarE.d || j == 0) ? j : qw0VarE.a.a(j, this.x);
                        if (f92.b(jA) == f92.b(this.y.r) && ((i = (zh1Var = this.y).e) == 2 || i == 3)) {
                            long j7 = zh1Var.r;
                            this.y = a(bVar, j7, j2, j7, z, 2);
                            return;
                        }
                        j4 = jA;
                    } else {
                        j4 = j;
                    }
                    long jA2 = a(bVar, j4, this.t.e() != this.t.f(), this.y.e == 4);
                    boolean z2 = (j != jA2) | z;
                    try {
                        zh1 zh1Var2 = this.y;
                        i52 i52Var = zh1Var2.a;
                        a(i52Var, bVar, i52Var, zh1Var2.b, j2);
                        z = z2;
                        j5 = jA2;
                    } catch (Throwable th) {
                        th = th;
                        z = z2;
                        j3 = jA2;
                        this.y = a(bVar, j3, j2, j3, z, 2);
                        throw th;
                    }
                }
                this.y = a(bVar, j5, j2, j5, z, 2);
            }
            j5 = j;
            this.y = a(bVar, j5, j2, j5, z, 2);
        } catch (Throwable th2) {
            th = th2;
            j3 = j;
        }
    }

    private long a(vw0.b bVar, long j, boolean z, boolean z2) throws m60 {
        long jSeekToUs;
        q();
        this.D = false;
        if (z2 || this.y.e == 3) {
            b(2);
        }
        qw0 qw0VarE = this.t.e();
        qw0 qw0VarB = qw0VarE;
        while (qw0VarB != null && !bVar.equals(qw0VarB.f.a)) {
            qw0VarB = qw0VarB.b();
        }
        if (z || qw0VarE != qw0VarB || (qw0VarB != null && qw0VarB.d(j) < 0)) {
            for (yo1 yo1Var : this.b) {
                a(yo1Var);
            }
            if (qw0VarB != null) {
                while (this.t.e() != qw0VarB) {
                    this.t.a();
                }
                this.t.a(qw0VarB);
                qw0VarB.h();
                a(new boolean[this.b.length]);
            }
        }
        if (qw0VarB != null) {
            this.t.a(qw0VarB);
            if (!qw0VarB.d) {
                sw0 sw0Var = qw0VarB.f;
                if (j != sw0Var.b) {
                    sw0Var = new sw0(sw0Var.a, j, sw0Var.c, sw0Var.d, sw0Var.e, sw0Var.f, sw0Var.g, sw0Var.h, sw0Var.i);
                }
                qw0VarB.f = sw0Var;
            } else {
                qw0 qw0Var = qw0VarB;
                if (qw0Var.e) {
                    jSeekToUs = qw0Var.a.seekToUs(j);
                    qw0Var.a.discardBuffer(jSeekToUs - this.n, this.o);
                }
                b(jSeekToUs);
                f();
            }
            jSeekToUs = j;
            b(jSeekToUs);
            f();
        } else {
            this.t.c();
            b(j);
            jSeekToUs = j;
        }
        a(false);
        this.i.a(2);
        return jSeekToUs;
    }

    private void a(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        if (this.H != z) {
            this.H = z;
            if (!z) {
                for (yo1 yo1Var : this.b) {
                    if (!b(yo1Var) && this.c.remove(yo1Var)) {
                        yo1Var.b();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void a(a aVar) throws m60 {
        this.z.a(1);
        if (aVar.c != -1) {
            this.L = new g(new ij1(aVar.a, aVar.b), aVar.c, aVar.d);
        }
        a(this.u.a(aVar.a, aVar.b), false);
    }

    public final void a(int i, long j, iy1 iy1Var, ArrayList arrayList) {
        this.i.a(17, new a(i, j, iy1Var, arrayList)).a();
    }

    public final void a(boolean z, int i) {
        this.i.a(z ? 1 : 0, i).a();
    }

    private void a(boolean z, int i, boolean z2, int i2) throws m60 {
        this.z.a(z2 ? 1 : 0);
        d dVar = this.z;
        dVar.a = true;
        dVar.f = true;
        dVar.g = i2;
        zh1 zh1Var = this.y;
        this.y = new zh1(zh1Var.a, zh1Var.b, zh1Var.c, zh1Var.d, zh1Var.e, zh1Var.f, zh1Var.g, zh1Var.h, zh1Var.i, zh1Var.j, zh1Var.k, z, i, zh1Var.n, zh1Var.p, zh1Var.q, zh1Var.r, zh1Var.o);
        this.D = false;
        for (qw0 qw0VarE = this.t.e(); qw0VarE != null; qw0VarE = qw0VarE.b()) {
            for (h70 h70Var : qw0VarE.f().c) {
                if (h70Var != null) {
                    h70Var.a(z);
                }
            }
        }
        if (!o()) {
            q();
            s();
            return;
        }
        int i3 = this.y.e;
        if (i3 != 3) {
            if (i3 == 2) {
                this.i.a(2);
                return;
            }
            return;
        }
        this.D = false;
        this.p.a();
        for (yo1 yo1Var : this.b) {
            if (b(yo1Var)) {
                yo1Var.start();
            }
        }
        this.i.a(2);
    }

    private void a(int i) throws m60 {
        this.F = i;
        if (!this.t.a(this.y.a, i)) {
            b(true);
        }
        a(false);
    }

    private void a(iy1 iy1Var) throws m60 {
        this.z.a(1);
        a(this.u.a(iy1Var), false);
    }

    private boolean a(i52 i52Var, vw0.b bVar) {
        if (bVar.a() || i52Var.c()) {
            return false;
        }
        i52Var.a(i52Var.a(bVar.a, this.m).d, this.l, 0L);
        if (!this.l.a()) {
            return false;
        }
        i52.d dVar = this.l;
        return dVar.j && dVar.g != C.TIME_UNSET;
    }

    private void a(boolean z, boolean z2) {
        a(z || !this.H, false, true, false);
        this.z.a(z2 ? 1 : 0);
        this.g.d();
        b(1);
    }

    private void a(i52 i52Var, vw0.b bVar, i52 i52Var2, vw0.b bVar2, long j) {
        if (!a(i52Var, bVar)) {
            bi1 bi1Var = bVar.a() ? bi1.e : this.y.n;
            if (this.p.getPlaybackParameters().equals(bi1Var)) {
                return;
            }
            this.p.a(bi1Var);
            return;
        }
        i52Var.a(i52Var.a(bVar.a, this.m).d, this.l, 0L);
        bs0 bs0Var = this.v;
        jw0.e eVar = this.l.l;
        int i = f92.a;
        ((b00) bs0Var).a(eVar);
        if (j != C.TIME_UNSET) {
            ((b00) this.v).a(a(i52Var, bVar.a, j));
            return;
        }
        if (f92.a(!i52Var2.c() ? i52Var2.a(i52Var2.a(bVar2.a, this.m).d, this.l, 0L).b : null, this.l.b)) {
            return;
        }
        ((b00) this.v).a(C.TIME_UNSET);
    }

    private synchronized void a(t32<Boolean> t32Var, long j) {
        long jB = this.r.b() + j;
        boolean z = false;
        while (!t32Var.get().booleanValue() && j > 0) {
            try {
                this.r.getClass();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jB - this.r.b();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }
}
