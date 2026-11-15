package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Sets;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

final class m1 implements Handler.Callback, com.google.android.exoplayer2.source.n.a, na.b0.a, i2.d, o.a, t2.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private h K;
    private long L;
    private int M;
    private boolean N;
    private ExoPlaybackException O;
    private long P;
    private long Q = C.TIME_UNSET;

    private final y2[] f24581a;

    private final Set f24582b;

    private final a3[] f24583c;

    private final na.b0 f24584d;

    private final na.c0 f24585e;

    private final u1 f24586f;

    private final com.google.android.exoplayer2.upstream.e f24587g;

    private final com.google.android.exoplayer2.util.o f24588h;

    private final HandlerThread f24589i;

    private final Looper f24590j;

    private final l3.d f24591k;

    private final l3.b f24592l;

    private final long f24593m;

    private final boolean f24594n;

    private final o f24595o;

    private final ArrayList f24596p;

    private final com.google.android.exoplayer2.util.e f24597q;

    private final f f24598r;

    private final f2 f24599s;

    private final i2 f24600t;

    private final t1 f24601u;

    private final long f24602v;

    private d3 f24603w;

    private m2 f24604x;

    private e f24605y;

    private boolean f24606z;

    class a implements y2.a {
        a() {
        }

        @Override
        public void a() {
            m1.this.H = true;
        }

        @Override
        public void b() {
            m1.this.f24588h.sendEmptyMessage(2);
        }
    }

    private static final class b {

        private final List f24608a;

        private final v9.t f24609b;

        private final int f24610c;

        private final long f24611d;

        b(List list, v9.t tVar, int i10, long j10, a aVar) {
            this(list, tVar, i10, j10);
        }

        private b(List list, v9.t tVar, int i10, long j10) {
            this.f24608a = list;
            this.f24609b = tVar;
            this.f24610c = i10;
            this.f24611d = j10;
        }
    }

    private static class c {
    }

    private static final class d implements Comparable {

        public final t2 f24612a;

        public int f24613b;

        public long f24614c;

        public Object f24615d;

        public d(t2 t2Var) {
            this.f24612a = t2Var;
        }

        @Override
        public int compareTo(d dVar) {
            Object obj = this.f24615d;
            if ((obj == null) != (dVar.f24615d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i10 = this.f24613b - dVar.f24613b;
            return i10 != 0 ? i10 : com.google.android.exoplayer2.util.p0.o(this.f24614c, dVar.f24614c);
        }

        public void b(int i10, long j10, Object obj) {
            this.f24613b = i10;
            this.f24614c = j10;
            this.f24615d = obj;
        }
    }

    public static final class e {

        private boolean f24616a;

        public m2 f24617b;

        public int f24618c;

        public boolean f24619d;

        public int f24620e;

        public boolean f24621f;

        public int f24622g;

        public e(m2 m2Var) {
            this.f24617b = m2Var;
        }

        public void b(int i10) {
            this.f24616a |= i10 > 0;
            this.f24618c += i10;
        }

        public void c(int i10) {
            this.f24616a = true;
            this.f24621f = true;
            this.f24622g = i10;
        }

        public void d(m2 m2Var) {
            this.f24616a |= this.f24617b != m2Var;
            this.f24617b = m2Var;
        }

        public void e(int i10) {
            if (this.f24619d && this.f24620e != 5) {
                com.google.android.exoplayer2.util.a.a(i10 == 5);
                return;
            }
            this.f24616a = true;
            this.f24619d = true;
            this.f24620e = i10;
        }
    }

    public interface f {
        void a(e eVar);
    }

    private static final class g {

        public final com.google.android.exoplayer2.source.o.b f24623a;

        public final long f24624b;

        public final long f24625c;

        public final boolean f24626d;

        public final boolean f24627e;

        public final boolean f24628f;

        public g(com.google.android.exoplayer2.source.o.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f24623a = bVar;
            this.f24624b = j10;
            this.f24625c = j11;
            this.f24626d = z10;
            this.f24627e = z11;
            this.f24628f = z12;
        }
    }

    private static final class h {

        public final l3 f24629a;

        public final int f24630b;

        public final long f24631c;

        public h(l3 l3Var, int i10, long j10) {
            this.f24629a = l3Var;
            this.f24630b = i10;
            this.f24631c = j10;
        }
    }

    public m1(y2[] y2VarArr, na.b0 b0Var, na.c0 c0Var, u1 u1Var, com.google.android.exoplayer2.upstream.e eVar, int i10, boolean z10, g9.a aVar, d3 d3Var, t1 t1Var, long j10, boolean z11, Looper looper, com.google.android.exoplayer2.util.e eVar2, f fVar, g9.u1 u1Var2) {
        this.f24598r = fVar;
        this.f24581a = y2VarArr;
        this.f24584d = b0Var;
        this.f24585e = c0Var;
        this.f24586f = u1Var;
        this.f24587g = eVar;
        this.E = i10;
        this.F = z10;
        this.f24603w = d3Var;
        this.f24601u = t1Var;
        this.f24602v = j10;
        this.P = j10;
        this.A = z11;
        this.f24597q = eVar2;
        this.f24593m = u1Var.getBackBufferDurationUs();
        this.f24594n = u1Var.retainBackBufferFromKeyframe();
        m2 m2VarJ = m2.j(c0Var);
        this.f24604x = m2VarJ;
        this.f24605y = new e(m2VarJ);
        this.f24583c = new a3[y2VarArr.length];
        for (int i11 = 0; i11 < y2VarArr.length; i11++) {
            y2VarArr[i11].h(i11, u1Var2);
            this.f24583c[i11] = y2VarArr[i11].getCapabilities();
        }
        this.f24595o = new o(this, eVar2);
        this.f24596p = new ArrayList();
        this.f24582b = Sets.h();
        this.f24591k = new l3.d();
        this.f24592l = new l3.b();
        b0Var.c(this, eVar);
        this.N = true;
        Handler handler = new Handler(looper);
        this.f24599s = new f2(aVar, handler);
        this.f24600t = new i2(this, aVar, handler, u1Var2);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f24589i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f24590j = looper2;
        this.f24588h = eVar2.createHandler(looper2, this);
    }

    private long A() {
        return B(this.f24604x.f24648p);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void A0(h hVar) throws Throwable {
        long jLongValue;
        long j10;
        boolean z10;
        com.google.android.exoplayer2.source.o.b bVar;
        long j11;
        long j12;
        long j13;
        long jB;
        boolean z11;
        long jB0;
        boolean z12;
        long j14;
        c2 c2VarP;
        m2 m2Var;
        int i10;
        this.f24605y.b(1);
        Pair pairV0 = v0(this.f24604x.f24633a, hVar, true, this.E, this.F, this.f24591k, this.f24592l);
        try {
            if (pairV0 != null) {
                Object obj = pairV0.first;
                jLongValue = ((Long) pairV0.second).longValue();
                long j15 = hVar.f24631c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                com.google.android.exoplayer2.source.o.b bVarB = this.f24599s.B(this.f24604x.f24633a, obj, jLongValue);
                if (bVarB.b()) {
                    this.f24604x.f24633a.l(bVarB.f73504a, this.f24592l);
                    j11 = this.f24592l.n(bVarB.f73505b) == bVarB.f73506c ? this.f24592l.j() : 0L;
                    j12 = j15;
                    bVar = bVarB;
                    z10 = true;
                } else {
                    j10 = j15;
                    z10 = hVar.f24631c == C.TIME_UNSET;
                    bVar = bVarB;
                }
                if (this.f24604x.f24633a.u()) {
                    if (pairV0 == null) {
                        if (this.f24604x.f24637e != 1) {
                            X0(4);
                        }
                        o0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.f24604x.f24634b)) {
                            c2VarP = this.f24599s.p();
                            if (c2VarP == null && c2VarP.f24171d && j11 != 0) {
                                jB = c2VarP.f24168a.b(j11, this.f24603w);
                            } else {
                                jB = j11;
                            }
                            if (com.google.android.exoplayer2.util.p0.e1(jB) == com.google.android.exoplayer2.util.p0.e1(this.f24604x.f24650r) && ((i10 = (m2Var = this.f24604x).f24637e) == 2 || i10 == 3)) {
                                long j16 = m2Var.f24650r;
                                this.f24604x = J(bVar, j16, j12, j16, z10, 2);
                                return;
                            }
                        } else {
                            jB = j11;
                        }
                        if (this.f24604x.f24637e == 4) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        jB0 = B0(bVar, jB, z11);
                        z12 = (j11 != jB0) | z10;
                        try {
                            m2 m2Var2 = this.f24604x;
                            l3 l3Var = m2Var2.f24633a;
                            l1(l3Var, bVar, l3Var, m2Var2.f24634b, j12);
                            z10 = z12;
                            j14 = jB0;
                        } catch (Throwable th2) {
                            th = th2;
                            z10 = z12;
                            j13 = jB0;
                            this.f24604x = J(bVar, j13, j12, j13, z10, 2);
                            throw th;
                        }
                    }
                    this.f24604x = J(bVar, j14, j12, j14, z10, 2);
                    return;
                }
                this.K = hVar;
                j14 = j11;
                this.f24604x = J(bVar, j14, j12, j14, z10, 2);
                return;
            }
            Pair pairY = y(this.f24604x.f24633a);
            bVar = (com.google.android.exoplayer2.source.o.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            z10 = !this.f24604x.f24633a.u();
            j10 = -9223372036854775807L;
            if (this.f24604x.f24633a.u()) {
                if (pairV0 == null) {
                    if (this.f24604x.f24637e != 1) {
                        X0(4);
                    }
                    o0(false, true, false, true);
                } else {
                    if (bVar.equals(this.f24604x.f24634b)) {
                        c2VarP = this.f24599s.p();
                        if (c2VarP == null) {
                            jB = j11;
                        } else {
                            jB = j11;
                        }
                        if (com.google.android.exoplayer2.util.p0.e1(jB) == com.google.android.exoplayer2.util.p0.e1(this.f24604x.f24650r)) {
                            long j17 = m2Var.f24650r;
                            this.f24604x = J(bVar, j17, j12, j17, z10, 2);
                            return;
                        }
                    } else {
                        jB = j11;
                    }
                    if (this.f24604x.f24637e == 4) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    jB0 = B0(bVar, jB, z11);
                    z12 = (j11 != jB0) | z10;
                    m2 m2Var3 = this.f24604x;
                    l3 l3Var2 = m2Var3.f24633a;
                    l1(l3Var2, bVar, l3Var2, m2Var3.f24634b, j12);
                    z10 = z12;
                    j14 = jB0;
                }
                this.f24604x = J(bVar, j14, j12, j14, z10, 2);
                return;
            }
            this.K = hVar;
            j14 = j11;
            this.f24604x = J(bVar, j14, j12, j14, z10, 2);
            return;
        } catch (Throwable th3) {
            th = th3;
            j13 = j11;
        }
        j11 = jLongValue;
        j12 = j10;
    }

    private long B(long j10) {
        c2 c2VarJ = this.f24599s.j();
        if (c2VarJ == null) {
            return 0L;
        }
        return Math.max(0L, j10 - c2VarJ.y(this.L));
    }

    private long B0(com.google.android.exoplayer2.source.o.b bVar, long j10, boolean z10) {
        return C0(bVar, j10, this.f24599s.p() != this.f24599s.q(), z10);
    }

    private void C(com.google.android.exoplayer2.source.n nVar) {
        if (this.f24599s.v(nVar)) {
            this.f24599s.y(this.L);
            T();
        }
    }

    private long C0(com.google.android.exoplayer2.source.o.b bVar, long j10, boolean z10, boolean z11) throws ExoPlaybackException {
        g1();
        this.C = false;
        if (z11 || this.f24604x.f24637e == 3) {
            X0(2);
        }
        c2 c2VarP = this.f24599s.p();
        c2 c2VarJ = c2VarP;
        while (c2VarJ != null && !bVar.equals(c2VarJ.f24173f.f24185a)) {
            c2VarJ = c2VarJ.j();
        }
        if (z10 || c2VarP != c2VarJ || (c2VarJ != null && c2VarJ.z(j10) < 0)) {
            for (y2 y2Var : this.f24581a) {
                m(y2Var);
            }
            if (c2VarJ != null) {
                while (this.f24599s.p() != c2VarJ) {
                    this.f24599s.b();
                }
                this.f24599s.z(c2VarJ);
                c2VarJ.x(1000000000000L);
                p();
            }
        }
        if (c2VarJ != null) {
            this.f24599s.z(c2VarJ);
            if (!c2VarJ.f24171d) {
                c2VarJ.f24173f = c2VarJ.f24173f.b(j10);
            } else if (c2VarJ.f24172e) {
                j10 = c2VarJ.f24168a.seekToUs(j10);
                c2VarJ.f24168a.discardBuffer(j10 - this.f24593m, this.f24594n);
            }
            q0(j10);
            T();
        } else {
            this.f24599s.f();
            q0(j10);
        }
        E(false);
        this.f24588h.sendEmptyMessage(2);
        return j10;
    }

    private void D(IOException iOException, int i10) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i10);
        c2 c2VarP = this.f24599s.p();
        if (c2VarP != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(c2VarP.f24173f.f24185a);
        }
        com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        f1(false, false);
        this.f24604x = this.f24604x.e(exoPlaybackExceptionCreateForSource);
    }

    private void D0(t2 t2Var) {
        if (t2Var.f() == C.TIME_UNSET) {
            E0(t2Var);
            return;
        }
        if (this.f24604x.f24633a.u()) {
            this.f24596p.add(new d(t2Var));
            return;
        }
        d dVar = new d(t2Var);
        l3 l3Var = this.f24604x.f24633a;
        if (!s0(dVar, l3Var, l3Var, this.E, this.F, this.f24591k, this.f24592l)) {
            t2Var.k(false);
        } else {
            this.f24596p.add(dVar);
            Collections.sort(this.f24596p);
        }
    }

    private void E(boolean z10) {
        c2 c2VarJ = this.f24599s.j();
        com.google.android.exoplayer2.source.o.b bVar = c2VarJ == null ? this.f24604x.f24634b : c2VarJ.f24173f.f24185a;
        boolean zEquals = this.f24604x.f24643k.equals(bVar);
        if (!zEquals) {
            this.f24604x = this.f24604x.b(bVar);
        }
        m2 m2Var = this.f24604x;
        m2Var.f24648p = c2VarJ == null ? m2Var.f24650r : c2VarJ.i();
        this.f24604x.f24649q = A();
        if ((!zEquals || z10) && c2VarJ != null && c2VarJ.f24171d) {
            i1(c2VarJ.n(), c2VarJ.o());
        }
    }

    private void E0(t2 t2Var) {
        if (t2Var.c() != this.f24590j) {
            this.f24588h.obtainMessage(15, t2Var).a();
            return;
        }
        l(t2Var);
        int i10 = this.f24604x.f24637e;
        if (i10 == 3 || i10 == 2) {
            this.f24588h.sendEmptyMessage(2);
        }
    }

    private void F(l3 l3Var, boolean z10) throws Throwable {
        int i10;
        int i11;
        boolean z11;
        g gVarU0 = u0(l3Var, this.f24604x, this.K, this.f24599s, this.E, this.F, this.f24591k, this.f24592l);
        com.google.android.exoplayer2.source.o.b bVar = gVarU0.f24623a;
        long j10 = gVarU0.f24625c;
        boolean z12 = gVarU0.f24626d;
        long jB0 = gVarU0.f24624b;
        boolean z13 = (this.f24604x.f24634b.equals(bVar) && jB0 == this.f24604x.f24650r) ? false : true;
        h hVar = null;
        long j11 = C.TIME_UNSET;
        try {
            if (gVarU0.f24627e) {
                if (this.f24604x.f24637e != 1) {
                    X0(4);
                }
                o0(false, false, false, true);
            }
            try {
                if (z13) {
                    i11 = 4;
                    z11 = false;
                    if (!l3Var.u()) {
                        for (c2 c2VarP = this.f24599s.p(); c2VarP != null; c2VarP = c2VarP.j()) {
                            if (c2VarP.f24173f.f24185a.equals(bVar)) {
                                c2VarP.f24173f = this.f24599s.r(l3Var, c2VarP.f24173f);
                                c2VarP.A();
                            }
                        }
                        jB0 = B0(bVar, jB0, z12);
                    }
                } else {
                    try {
                        try {
                            i11 = 4;
                            z11 = false;
                            if (!this.f24599s.F(l3Var, this.L, x())) {
                                z0(false);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            i10 = 4;
                            hVar = null;
                            m2 m2Var = this.f24604x;
                            l3 l3Var2 = m2Var.f24633a;
                            com.google.android.exoplayer2.source.o.b bVar2 = m2Var.f24634b;
                            if (gVarU0.f24628f) {
                                j11 = jB0;
                            }
                            h hVar2 = hVar;
                            l1(l3Var, bVar, l3Var2, bVar2, j11);
                            if (z13 || j10 != this.f24604x.f24635c) {
                                m2 m2Var2 = this.f24604x;
                                Object obj = m2Var2.f24634b.f73504a;
                                l3 l3Var3 = m2Var2.f24633a;
                                this.f24604x = J(bVar, jB0, j10, this.f24604x.f24636d, z13 && z10 && !l3Var3.u() && !l3Var3.l(obj, this.f24592l).f24528f, l3Var.f(obj) == -1 ? i10 : 3);
                            }
                            p0();
                            t0(l3Var, this.f24604x.f24633a);
                            this.f24604x = this.f24604x.i(l3Var);
                            if (!l3Var.u()) {
                                this.K = hVar2;
                            }
                            E(false);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i10 = 4;
                    }
                }
                m2 m2Var3 = this.f24604x;
                l1(l3Var, bVar, m2Var3.f24633a, m2Var3.f24634b, gVarU0.f24628f ? jB0 : -9223372036854775807L);
                if (z13 || j10 != this.f24604x.f24635c) {
                    m2 m2Var4 = this.f24604x;
                    Object obj2 = m2Var4.f24634b.f73504a;
                    l3 l3Var4 = m2Var4.f24633a;
                    this.f24604x = J(bVar, jB0, j10, this.f24604x.f24636d, (!z13 || !z10 || l3Var4.u() || l3Var4.l(obj2, this.f24592l).f24528f) ? z11 : true, l3Var.f(obj2) == -1 ? i11 : 3);
                }
                p0();
                t0(l3Var, this.f24604x.f24633a);
                this.f24604x = this.f24604x.i(l3Var);
                if (!l3Var.u()) {
                    this.K = null;
                }
                E(z11);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            i10 = 4;
        }
    }

    private void F0(final t2 t2Var) {
        Looper looperC = t2Var.c();
        if (looperC.getThread().isAlive()) {
            this.f24597q.createHandler(looperC, null).post(new Runnable() {
                @Override
                public final void run() {
                    this.f24518a.S(t2Var);
                }
            });
        } else {
            com.google.android.exoplayer2.util.s.i("TAG", "Trying to send message on a dead thread.");
            t2Var.k(false);
        }
    }

    private void G(com.google.android.exoplayer2.source.n nVar) throws ExoPlaybackException {
        if (this.f24599s.v(nVar)) {
            c2 c2VarJ = this.f24599s.j();
            c2VarJ.p(this.f24595o.getPlaybackParameters().f24845a, this.f24604x.f24633a);
            i1(c2VarJ.n(), c2VarJ.o());
            if (c2VarJ == this.f24599s.p()) {
                q0(c2VarJ.f24173f.f24186b);
                p();
                m2 m2Var = this.f24604x;
                com.google.android.exoplayer2.source.o.b bVar = m2Var.f24634b;
                long j10 = c2VarJ.f24173f.f24186b;
                this.f24604x = J(bVar, j10, m2Var.f24635c, j10, false, 5);
            }
            T();
        }
    }

    private void G0(long j10) {
        for (y2 y2Var : this.f24581a) {
            if (y2Var.getStream() != null) {
                H0(y2Var, j10);
            }
        }
    }

    private void H(o2 o2Var, float f10, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                this.f24605y.b(1);
            }
            this.f24604x = this.f24604x.f(o2Var);
        }
        m1(o2Var.f24845a);
        for (y2 y2Var : this.f24581a) {
            if (y2Var != null) {
                y2Var.d(f10, o2Var.f24845a);
            }
        }
    }

    private void H0(y2 y2Var, long j10) {
        y2Var.setCurrentStreamFinal();
        if (y2Var instanceof da.p) {
            ((da.p) y2Var).H(j10);
        }
    }

    private void I(o2 o2Var, boolean z10) {
        H(o2Var, o2Var.f24845a, true, z10);
    }

    private void I0(boolean z10, AtomicBoolean atomicBoolean) {
        if (this.G != z10) {
            this.G = z10;
            if (!z10) {
                for (y2 y2Var : this.f24581a) {
                    if (!O(y2Var) && this.f24582b.remove(y2Var)) {
                        y2Var.reset();
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

    private m2 J(com.google.android.exoplayer2.source.o.b bVar, long j10, long j11, long j12, boolean z10, int i10) {
        List listOf;
        v9.y yVar;
        na.c0 c0Var;
        this.N = (!this.N && j10 == this.f24604x.f24650r && bVar.equals(this.f24604x.f24634b)) ? false : true;
        p0();
        m2 m2Var = this.f24604x;
        v9.y yVar2 = m2Var.f24640h;
        na.c0 c0Var2 = m2Var.f24641i;
        List list = m2Var.f24642j;
        if (this.f24600t.s()) {
            c2 c2VarP = this.f24599s.p();
            v9.y yVarN = c2VarP == null ? v9.y.f73559d : c2VarP.n();
            na.c0 c0VarO = c2VarP == null ? this.f24585e : c2VarP.o();
            ImmutableList immutableListT = t(c0VarO.f67017c);
            if (c2VarP != null) {
                d2 d2Var = c2VarP.f24173f;
                if (d2Var.f24187c != j11) {
                    c2VarP.f24173f = d2Var.a(j11);
                }
            }
            yVar = yVarN;
            c0Var = c0VarO;
            listOf = immutableListT;
        } else if (bVar.equals(this.f24604x.f24634b)) {
            listOf = list;
            yVar = yVar2;
            c0Var = c0Var2;
        } else {
            yVar = v9.y.f73559d;
            c0Var = this.f24585e;
            listOf = ImmutableList.of();
        }
        if (z10) {
            this.f24605y.e(i10);
        }
        return this.f24604x.c(bVar, j10, j11, j12, A(), yVar, c0Var, listOf);
    }

    private void J0(b bVar) throws Throwable {
        this.f24605y.b(1);
        if (bVar.f24610c != -1) {
            this.K = new h(new u2(bVar.f24608a, bVar.f24609b), bVar.f24610c, bVar.f24611d);
        }
        F(this.f24600t.B(bVar.f24608a, bVar.f24609b), false);
    }

    private boolean K(y2 y2Var, c2 c2Var) {
        c2 c2VarJ = c2Var.j();
        return c2Var.f24173f.f24190f && c2VarJ.f24171d && ((y2Var instanceof da.p) || (y2Var instanceof com.google.android.exoplayer2.metadata.f) || y2Var.e() >= c2VarJ.m());
    }

    private boolean L() {
        c2 c2VarQ = this.f24599s.q();
        if (!c2VarQ.f24171d) {
            return false;
        }
        int i10 = 0;
        while (true) {
            y2[] y2VarArr = this.f24581a;
            if (i10 >= y2VarArr.length) {
                return true;
            }
            y2 y2Var = y2VarArr[i10];
            v9.s sVar = c2VarQ.f24170c[i10];
            if (y2Var.getStream() != sVar || (sVar != null && !y2Var.hasReadStreamToEnd() && !K(y2Var, c2VarQ))) {
                return false;
            }
            i10++;
        }
    }

    private void L0(boolean z10) {
        if (z10 == this.I) {
            return;
        }
        this.I = z10;
        if (z10 || !this.f24604x.f24647o) {
            return;
        }
        this.f24588h.sendEmptyMessage(2);
    }

    private static boolean M(boolean z10, com.google.android.exoplayer2.source.o.b bVar, long j10, com.google.android.exoplayer2.source.o.b bVar2, l3.b bVar3, long j11) {
        if (z10 || j10 != j11 || !bVar.f73504a.equals(bVar2.f73504a)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.f73505b)) {
            return (bVar3.k(bVar.f73505b, bVar.f73506c) == 4 || bVar3.k(bVar.f73505b, bVar.f73506c) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.t(bVar2.f73505b);
    }

    private void M0(boolean z10) throws ExoPlaybackException {
        this.A = z10;
        p0();
        if (!this.B || this.f24599s.q() == this.f24599s.p()) {
            return;
        }
        z0(true);
        E(false);
    }

    private boolean N() {
        c2 c2VarJ = this.f24599s.j();
        return (c2VarJ == null || c2VarJ.k() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean O(y2 y2Var) {
        return y2Var.getState() != 0;
    }

    private void O0(boolean z10, int i10, boolean z11, int i11) {
        this.f24605y.b(z11 ? 1 : 0);
        this.f24605y.c(i11);
        this.f24604x = this.f24604x.d(z10, i10);
        this.C = false;
        d0(z10);
        if (!a1()) {
            g1();
            k1();
            return;
        }
        int i12 = this.f24604x.f24637e;
        if (i12 == 3) {
            d1();
            this.f24588h.sendEmptyMessage(2);
        } else if (i12 == 2) {
            this.f24588h.sendEmptyMessage(2);
        }
    }

    private boolean P() {
        c2 c2VarP = this.f24599s.p();
        long j10 = c2VarP.f24173f.f24189e;
        return c2VarP.f24171d && (j10 == C.TIME_UNSET || this.f24604x.f24650r < j10 || !a1());
    }

    private static boolean Q(m2 m2Var, l3.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2 = m2Var.f24634b;
        l3 l3Var = m2Var.f24633a;
        return l3Var.u() || l3Var.l(bVar2.f73504a, bVar).f24528f;
    }

    private void Q0(o2 o2Var) {
        this.f24595o.b(o2Var);
        I(this.f24595o.getPlaybackParameters(), true);
    }

    public Boolean R() {
        return Boolean.valueOf(this.f24606z);
    }

    public void S(t2 t2Var) {
        try {
            l(t2Var);
        } catch (ExoPlaybackException e10) {
            com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void S0(int i10) throws ExoPlaybackException {
        this.E = i10;
        if (!this.f24599s.G(this.f24604x.f24633a, i10)) {
            z0(true);
        }
        E(false);
    }

    private void T() {
        boolean zZ0 = Z0();
        this.D = zZ0;
        if (zZ0) {
            this.f24599s.j().d(this.L);
        }
        h1();
    }

    private void T0(d3 d3Var) {
        this.f24603w = d3Var;
    }

    private void U() {
        this.f24605y.d(this.f24604x);
        if (this.f24605y.f24616a) {
            this.f24598r.a(this.f24605y);
            this.f24605y = new e(this.f24604x);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void V(long j10, long j11) {
        if (this.f24596p.isEmpty() || this.f24604x.f24634b.b()) {
            return;
        }
        if (this.N) {
            j10--;
            this.N = false;
        }
        m2 m2Var = this.f24604x;
        int iF = m2Var.f24633a.f(m2Var.f24634b.f73504a);
        int iMin = Math.min(this.M, this.f24596p.size());
        d dVar = iMin > 0 ? (d) this.f24596p.get(iMin - 1) : null;
        while (dVar != null) {
            int i10 = dVar.f24613b;
            if (i10 <= iF && (i10 != iF || dVar.f24614c <= j10)) {
                break;
            }
            int i11 = iMin - 1;
            dVar = i11 > 0 ? (d) this.f24596p.get(iMin - 2) : null;
            iMin = i11;
        }
        if (iMin < this.f24596p.size()) {
            d dVar2 = (d) this.f24596p.get(iMin);
            while (dVar2 != null && dVar2.f24615d != null) {
                int i12 = dVar2.f24613b;
                if (i12 >= iF && (i12 != iF || dVar2.f24614c > j10)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.f24596p.size() ? (d) this.f24596p.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.f24615d != null && dVar2.f24613b == iF) {
                long j12 = dVar2.f24614c;
                if (j12 <= j10 || j12 > j11) {
                    break;
                }
                try {
                    E0(dVar2.f24612a);
                    if (dVar2.f24612a.b() || dVar2.f24612a.j()) {
                        this.f24596p.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.f24596p.size() ? (d) this.f24596p.get(iMin) : null;
                } catch (Throwable th2) {
                    if (dVar2.f24612a.b() || dVar2.f24612a.j()) {
                        this.f24596p.remove(iMin);
                    }
                    throw th2;
                }
            }
            this.M = iMin;
        }
    }

    private void V0(boolean z10) throws ExoPlaybackException {
        this.F = z10;
        if (!this.f24599s.H(this.f24604x.f24633a, z10)) {
            z0(true);
        }
        E(false);
    }

    private void W() {
        d2 d2VarO;
        this.f24599s.y(this.L);
        if (this.f24599s.D() && (d2VarO = this.f24599s.o(this.L, this.f24604x)) != null) {
            c2 c2VarG = this.f24599s.g(this.f24583c, this.f24584d, this.f24586f.getAllocator(), this.f24600t, d2VarO, this.f24585e);
            c2VarG.f24168a.f(this, d2VarO.f24186b);
            if (this.f24599s.p() == c2VarG) {
                q0(d2VarO.f24186b);
            }
            E(false);
        }
        if (!this.D) {
            T();
        } else {
            this.D = N();
            h1();
        }
    }

    private void W0(v9.t tVar) throws Throwable {
        this.f24605y.b(1);
        F(this.f24600t.C(tVar), false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private void X() {
        boolean z10;
        boolean z11 = false;
        while (Y0()) {
            if (z11) {
                U();
            }
            c2 c2Var = (c2) com.google.android.exoplayer2.util.a.e(this.f24599s.b());
            if (this.f24604x.f24634b.f73504a.equals(c2Var.f24173f.f24185a.f73504a)) {
                com.google.android.exoplayer2.source.o.b bVar = this.f24604x.f24634b;
                if (bVar.f73505b == -1) {
                    com.google.android.exoplayer2.source.o.b bVar2 = c2Var.f24173f.f24185a;
                    if (bVar2.f73505b != -1 || bVar.f73508e == bVar2.f73508e) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            d2 d2Var = c2Var.f24173f;
            com.google.android.exoplayer2.source.o.b bVar3 = d2Var.f24185a;
            long j10 = d2Var.f24186b;
            this.f24604x = J(bVar3, j10, d2Var.f24187c, j10, !z10, 0);
            p0();
            k1();
            z11 = true;
        }
    }

    private void X0(int i10) {
        m2 m2Var = this.f24604x;
        if (m2Var.f24637e != i10) {
            if (i10 != 2) {
                this.Q = C.TIME_UNSET;
            }
            this.f24604x = m2Var.g(i10);
        }
    }

    private void Y() {
        c2 c2VarQ = this.f24599s.q();
        if (c2VarQ == null) {
            return;
        }
        int i10 = 0;
        if (c2VarQ.j() != null && !this.B) {
            if (L()) {
                if (c2VarQ.j().f24171d || this.L >= c2VarQ.j().m()) {
                    na.c0 c0VarO = c2VarQ.o();
                    c2 c2VarC = this.f24599s.c();
                    na.c0 c0VarO2 = c2VarC.o();
                    l3 l3Var = this.f24604x.f24633a;
                    l1(l3Var, c2VarC.f24173f.f24185a, l3Var, c2VarQ.f24173f.f24185a, C.TIME_UNSET);
                    if (c2VarC.f24171d && c2VarC.f24168a.readDiscontinuity() != C.TIME_UNSET) {
                        G0(c2VarC.m());
                        return;
                    }
                    for (int i11 = 0; i11 < this.f24581a.length; i11++) {
                        boolean zC = c0VarO.c(i11);
                        boolean zC2 = c0VarO2.c(i11);
                        if (zC && !this.f24581a[i11].isCurrentStreamFinal()) {
                            boolean z10 = this.f24583c[i11].getTrackType() == -2;
                            b3 b3Var = c0VarO.f67016b[i11];
                            b3 b3Var2 = c0VarO2.f67016b[i11];
                            if (!zC2 || !b3Var2.equals(b3Var) || z10) {
                                H0(this.f24581a[i11], c2VarC.m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!c2VarQ.f24173f.f24193i && !this.B) {
            return;
        }
        while (true) {
            y2[] y2VarArr = this.f24581a;
            if (i10 >= y2VarArr.length) {
                return;
            }
            y2 y2Var = y2VarArr[i10];
            v9.s sVar = c2VarQ.f24170c[i10];
            if (sVar != null && y2Var.getStream() == sVar && y2Var.hasReadStreamToEnd()) {
                long j10 = c2VarQ.f24173f.f24189e;
                H0(y2Var, (j10 == C.TIME_UNSET || j10 == Long.MIN_VALUE) ? -9223372036854775807L : c2VarQ.l() + c2VarQ.f24173f.f24189e);
            }
            i10++;
        }
    }

    private boolean Y0() {
        c2 c2VarP;
        c2 c2VarJ;
        return a1() && !this.B && (c2VarP = this.f24599s.p()) != null && (c2VarJ = c2VarP.j()) != null && this.L >= c2VarJ.m() && c2VarJ.f24174g;
    }

    private void Z() throws ExoPlaybackException {
        c2 c2VarQ = this.f24599s.q();
        if (c2VarQ == null || this.f24599s.p() == c2VarQ || c2VarQ.f24174g || !m0()) {
            return;
        }
        p();
    }

    private boolean Z0() {
        if (!N()) {
            return false;
        }
        c2 c2VarJ = this.f24599s.j();
        return this.f24586f.c(c2VarJ == this.f24599s.p() ? c2VarJ.y(this.L) : c2VarJ.y(this.L) - c2VarJ.f24173f.f24186b, B(c2VarJ.k()), this.f24595o.getPlaybackParameters().f24845a);
    }

    private void a0() throws Throwable {
        F(this.f24600t.i(), true);
    }

    private boolean a1() {
        m2 m2Var = this.f24604x;
        return m2Var.f24644l && m2Var.f24645m == 0;
    }

    private void b0(c cVar) {
        this.f24605y.b(1);
        throw null;
    }

    private boolean b1(boolean z10) {
        if (this.J == 0) {
            return P();
        }
        if (!z10) {
            return false;
        }
        m2 m2Var = this.f24604x;
        if (!m2Var.f24639g) {
            return true;
        }
        long jB = c1(m2Var.f24633a, this.f24599s.p().f24173f.f24185a) ? this.f24601u.b() : C.TIME_UNSET;
        c2 c2VarJ = this.f24599s.j();
        return (c2VarJ.q() && c2VarJ.f24173f.f24193i) || (c2VarJ.f24173f.f24185a.b() && !c2VarJ.f24171d) || this.f24586f.b(A(), this.f24595o.getPlaybackParameters().f24845a, this.C, jB);
    }

    private void c0() {
        for (c2 c2VarP = this.f24599s.p(); c2VarP != null; c2VarP = c2VarP.j()) {
            for (na.s sVar : c2VarP.o().f67017c) {
                if (sVar != null) {
                    sVar.a();
                }
            }
        }
    }

    private boolean c1(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar) {
        if (bVar.b() || l3Var.u()) {
            return false;
        }
        l3Var.r(l3Var.l(bVar.f73504a, this.f24592l).f24525c, this.f24591k);
        if (!this.f24591k.i()) {
            return false;
        }
        l3.d dVar = this.f24591k;
        return dVar.f24546i && dVar.f24543f != C.TIME_UNSET;
    }

    private void d0(boolean z10) {
        for (c2 c2VarP = this.f24599s.p(); c2VarP != null; c2VarP = c2VarP.j()) {
            for (na.s sVar : c2VarP.o().f67017c) {
                if (sVar != null) {
                    sVar.b(z10);
                }
            }
        }
    }

    private void d1() {
        this.C = false;
        this.f24595o.f();
        for (y2 y2Var : this.f24581a) {
            if (O(y2Var)) {
                y2Var.start();
            }
        }
    }

    private void e0() {
        for (c2 c2VarP = this.f24599s.p(); c2VarP != null; c2VarP = c2VarP.j()) {
            for (na.s sVar : c2VarP.o().f67017c) {
                if (sVar != null) {
                    sVar.c();
                }
            }
        }
    }

    private void f1(boolean z10, boolean z11) {
        o0(z10 || !this.G, false, true, false);
        this.f24605y.b(z11 ? 1 : 0);
        this.f24586f.onStopped();
        X0(1);
    }

    private void g1() {
        this.f24595o.g();
        for (y2 y2Var : this.f24581a) {
            if (O(y2Var)) {
                r(y2Var);
            }
        }
    }

    private void h0() {
        this.f24605y.b(1);
        o0(false, false, false, true);
        this.f24586f.onPrepared();
        X0(this.f24604x.f24633a.u() ? 4 : 2);
        this.f24600t.v(this.f24587g.b());
        this.f24588h.sendEmptyMessage(2);
    }

    private void h1() {
        c2 c2VarJ = this.f24599s.j();
        boolean z10 = this.D || (c2VarJ != null && c2VarJ.f24168a.isLoading());
        m2 m2Var = this.f24604x;
        if (z10 != m2Var.f24639g) {
            this.f24604x = m2Var.a(z10);
        }
    }

    private void i1(v9.y yVar, na.c0 c0Var) {
        this.f24586f.a(this.f24581a, yVar, c0Var.f67017c);
    }

    private void j(b bVar, int i10) throws Throwable {
        this.f24605y.b(1);
        i2 i2Var = this.f24600t;
        if (i10 == -1) {
            i10 = i2Var.q();
        }
        F(i2Var.f(i10, bVar.f24608a, bVar.f24609b), false);
    }

    private void j0() {
        o0(true, false, true, false);
        this.f24586f.onReleased();
        X0(1);
        this.f24589i.quit();
        synchronized (this) {
            this.f24606z = true;
            notifyAll();
        }
    }

    private void j1() throws ExoPlaybackException {
        if (this.f24604x.f24633a.u() || !this.f24600t.s()) {
            return;
        }
        W();
        Y();
        Z();
        X();
    }

    private void k() throws ExoPlaybackException {
        z0(true);
    }

    private void k0(int i10, int i11, v9.t tVar) throws Throwable {
        this.f24605y.b(1);
        F(this.f24600t.z(i10, i11, tVar), false);
    }

    private void k1() {
        c2 c2VarP = this.f24599s.p();
        if (c2VarP == null) {
            return;
        }
        long discontinuity = c2VarP.f24171d ? c2VarP.f24168a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            q0(discontinuity);
            if (discontinuity != this.f24604x.f24650r) {
                m2 m2Var = this.f24604x;
                this.f24604x = J(m2Var.f24634b, discontinuity, m2Var.f24635c, discontinuity, true, 5);
            }
        } else {
            long jH = this.f24595o.h(c2VarP != this.f24599s.q());
            this.L = jH;
            long jY = c2VarP.y(jH);
            V(this.f24604x.f24650r, jY);
            this.f24604x.f24650r = jY;
        }
        this.f24604x.f24648p = this.f24599s.j().i();
        this.f24604x.f24649q = A();
        m2 m2Var2 = this.f24604x;
        if (m2Var2.f24644l && m2Var2.f24637e == 3 && c1(m2Var2.f24633a, m2Var2.f24634b) && this.f24604x.f24646n.f24845a == 1.0f) {
            float fA = this.f24601u.a(u(), A());
            if (this.f24595o.getPlaybackParameters().f24845a != fA) {
                this.f24595o.b(this.f24604x.f24646n.e(fA));
                H(this.f24604x.f24646n, this.f24595o.getPlaybackParameters().f24845a, false, false);
            }
        }
    }

    private void l(t2 t2Var) {
        if (t2Var.j()) {
            return;
        }
        try {
            t2Var.g().handleMessage(t2Var.i(), t2Var.e());
        } finally {
            t2Var.k(true);
        }
    }

    private void l1(l3 l3Var, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var2, com.google.android.exoplayer2.source.o.b bVar2, long j10) {
        if (!c1(l3Var, bVar)) {
            o2 o2Var = bVar.b() ? o2.f24843d : this.f24604x.f24646n;
            if (this.f24595o.getPlaybackParameters().equals(o2Var)) {
                return;
            }
            this.f24595o.b(o2Var);
            return;
        }
        l3Var.r(l3Var.l(bVar.f73504a, this.f24592l).f24525c, this.f24591k);
        this.f24601u.e((w1.g) com.google.android.exoplayer2.util.p0.j(this.f24591k.f24548k));
        if (j10 != C.TIME_UNSET) {
            this.f24601u.d(w(l3Var, bVar.f73504a, j10));
            return;
        }
        if (com.google.android.exoplayer2.util.p0.c(!l3Var2.u() ? l3Var2.r(l3Var2.l(bVar2.f73504a, this.f24592l).f24525c, this.f24591k).f24538a : null, this.f24591k.f24538a)) {
            return;
        }
        this.f24601u.d(C.TIME_UNSET);
    }

    private void m(y2 y2Var) {
        if (O(y2Var)) {
            this.f24595o.a(y2Var);
            r(y2Var);
            y2Var.disable();
            this.J--;
        }
    }

    private boolean m0() {
        c2 c2VarQ = this.f24599s.q();
        na.c0 c0VarO = c2VarQ.o();
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            y2[] y2VarArr = this.f24581a;
            if (i10 >= y2VarArr.length) {
                return !z10;
            }
            y2 y2Var = y2VarArr[i10];
            if (O(y2Var)) {
                boolean z11 = y2Var.getStream() != c2VarQ.f24170c[i10];
                if (!c0VarO.c(i10) || z11) {
                    if (!y2Var.isCurrentStreamFinal()) {
                        y2Var.f(v(c0VarO.f67017c[i10]), c2VarQ.f24170c[i10], c2VarQ.m(), c2VarQ.l());
                    } else if (y2Var.isEnded()) {
                        m(y2Var);
                    } else {
                        z10 = true;
                    }
                }
            }
            i10++;
        }
    }

    private void m1(float f10) {
        for (c2 c2VarP = this.f24599s.p(); c2VarP != null; c2VarP = c2VarP.j()) {
            for (na.s sVar : c2VarP.o().f67017c) {
                if (sVar != null) {
                    sVar.onPlaybackSpeed(f10);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01a2  */
    private void n() throws ExoPlaybackException {
        boolean z10;
        boolean z11;
        int i10;
        long jUptimeMillis = this.f24597q.uptimeMillis();
        this.f24588h.removeMessages(2);
        j1();
        int i11 = this.f24604x.f24637e;
        if (i11 == 1 || i11 == 4) {
            return;
        }
        c2 c2VarP = this.f24599s.p();
        if (c2VarP == null) {
            x0(jUptimeMillis, 10L);
            return;
        }
        com.google.android.exoplayer2.util.m0.a("doSomeWork");
        k1();
        if (c2VarP.f24171d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            c2VarP.f24168a.discardBuffer(this.f24604x.f24650r - this.f24593m, this.f24594n);
            z10 = true;
            z11 = true;
            int i12 = 0;
            while (true) {
                y2[] y2VarArr = this.f24581a;
                if (i12 >= y2VarArr.length) {
                    break;
                }
                y2 y2Var = y2VarArr[i12];
                if (O(y2Var)) {
                    y2Var.render(this.L, jElapsedRealtime);
                    z10 = z10 && y2Var.isEnded();
                    boolean z12 = c2VarP.f24170c[i12] != y2Var.getStream();
                    boolean z13 = z12 || (!z12 && y2Var.hasReadStreamToEnd()) || y2Var.isReady() || y2Var.isEnded();
                    z11 = z11 && z13;
                    if (!z13) {
                        y2Var.maybeThrowStreamError();
                    }
                }
                i12++;
            }
        } else {
            c2VarP.f24168a.maybeThrowPrepareError();
            z10 = true;
            z11 = true;
        }
        long j10 = c2VarP.f24173f.f24189e;
        boolean z14 = z10 && c2VarP.f24171d && (j10 == C.TIME_UNSET || j10 <= this.f24604x.f24650r);
        if (z14 && this.B) {
            this.B = false;
            O0(false, this.f24604x.f24645m, false, 5);
        }
        if (z14 && c2VarP.f24173f.f24193i) {
            X0(4);
            g1();
        } else if (this.f24604x.f24637e == 2 && b1(z11)) {
            X0(3);
            this.O = null;
            if (a1()) {
                d1();
            }
        } else if (this.f24604x.f24637e == 3 && (this.J != 0 ? !z11 : !P())) {
            this.C = a1();
            X0(2);
            if (this.C) {
                e0();
                this.f24601u.c();
            }
            g1();
        }
        if (this.f24604x.f24637e == 2) {
            int i13 = 0;
            while (true) {
                y2[] y2VarArr2 = this.f24581a;
                if (i13 >= y2VarArr2.length) {
                    break;
                }
                if (O(y2VarArr2[i13]) && this.f24581a[i13].getStream() == c2VarP.f24170c[i13]) {
                    this.f24581a[i13].maybeThrowStreamError();
                }
                i13++;
            }
            m2 m2Var = this.f24604x;
            if (m2Var.f24639g || m2Var.f24649q >= 500000 || !N()) {
                this.Q = C.TIME_UNSET;
            } else if (this.Q == C.TIME_UNSET) {
                this.Q = this.f24597q.elapsedRealtime();
            } else if (this.f24597q.elapsedRealtime() - this.Q >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.Q = C.TIME_UNSET;
        }
        boolean z15 = a1() && this.f24604x.f24637e == 3;
        boolean z16 = this.I && this.H && z15;
        m2 m2Var2 = this.f24604x;
        if (m2Var2.f24647o != z16) {
            this.f24604x = m2Var2.h(z16);
        }
        this.H = false;
        if (z16 || (i10 = this.f24604x.f24637e) == 4) {
            return;
        }
        if (z15 || i10 == 2) {
            x0(jUptimeMillis, 10L);
        } else if (i10 == 3 && this.J != 0) {
            x0(jUptimeMillis, 1000L);
        }
        com.google.android.exoplayer2.util.m0.c();
    }

    private void n0() throws ExoPlaybackException {
        float f10 = this.f24595o.getPlaybackParameters().f24845a;
        c2 c2VarQ = this.f24599s.q();
        boolean z10 = true;
        for (c2 c2VarP = this.f24599s.p(); c2VarP != null && c2VarP.f24171d; c2VarP = c2VarP.j()) {
            na.c0 c0VarV = c2VarP.v(f10, this.f24604x.f24633a);
            if (!c0VarV.a(c2VarP.o())) {
                if (z10) {
                    c2 c2VarP2 = this.f24599s.p();
                    boolean z11 = this.f24599s.z(c2VarP2);
                    boolean[] zArr = new boolean[this.f24581a.length];
                    long jB = c2VarP2.b(c0VarV, this.f24604x.f24650r, z11, zArr);
                    m2 m2Var = this.f24604x;
                    boolean z12 = (m2Var.f24637e == 4 || jB == m2Var.f24650r) ? false : true;
                    m2 m2Var2 = this.f24604x;
                    this.f24604x = J(m2Var2.f24634b, jB, m2Var2.f24635c, m2Var2.f24636d, z12, 5);
                    if (z12) {
                        q0(jB);
                    }
                    boolean[] zArr2 = new boolean[this.f24581a.length];
                    int i10 = 0;
                    while (true) {
                        y2[] y2VarArr = this.f24581a;
                        if (i10 >= y2VarArr.length) {
                            break;
                        }
                        y2 y2Var = y2VarArr[i10];
                        boolean zO = O(y2Var);
                        zArr2[i10] = zO;
                        v9.s sVar = c2VarP2.f24170c[i10];
                        if (zO) {
                            if (sVar != y2Var.getStream()) {
                                m(y2Var);
                            } else if (zArr[i10]) {
                                y2Var.resetPosition(this.L);
                            }
                        }
                        i10++;
                    }
                    q(zArr2);
                } else {
                    this.f24599s.z(c2VarP);
                    if (c2VarP.f24171d) {
                        c2VarP.a(c0VarV, Math.max(c2VarP.f24173f.f24186b, c2VarP.y(this.L)), false);
                    }
                }
                E(true);
                if (this.f24604x.f24637e != 4) {
                    T();
                    k1();
                    this.f24588h.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (c2VarP == c2VarQ) {
                z10 = false;
            }
        }
    }

    private synchronized void n1(com.google.common.base.q qVar, long j10) {
        long jElapsedRealtime = this.f24597q.elapsedRealtime() + j10;
        boolean z10 = false;
        while (!((Boolean) qVar.get()).booleanValue() && j10 > 0) {
            try {
                this.f24597q.a();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = jElapsedRealtime - this.f24597q.elapsedRealtime();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void o(int i10, boolean z10) throws ExoPlaybackException {
        y2 y2Var = this.f24581a[i10];
        if (O(y2Var)) {
            return;
        }
        c2 c2VarQ = this.f24599s.q();
        boolean z11 = c2VarQ == this.f24599s.p();
        na.c0 c0VarO = c2VarQ.o();
        b3 b3Var = c0VarO.f67016b[i10];
        p1[] p1VarArrV = v(c0VarO.f67017c[i10]);
        boolean z12 = a1() && this.f24604x.f24637e == 3;
        boolean z13 = !z10 && z12;
        this.J++;
        this.f24582b.add(y2Var);
        y2Var.c(b3Var, p1VarArrV, c2VarQ.f24170c[i10], this.L, z13, z11, c2VarQ.m(), c2VarQ.l());
        y2Var.handleMessage(11, new a());
        this.f24595o.c(y2Var);
        if (z12) {
            y2Var.start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a6 A[PHI: r4 r5 r7
      0x00a6: PHI (r4v3 com.google.android.exoplayer2.source.o$b) = (r4v2 com.google.android.exoplayer2.source.o$b), (r4v9 com.google.android.exoplayer2.source.o$b) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a6: PHI (r5v2 long) = (r5v1 long), (r5v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x00a6: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    private void o0(boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        this.f24588h.removeMessages(2);
        this.O = null;
        this.C = false;
        this.f24595o.g();
        this.L = 1000000000000L;
        for (y2 y2Var : this.f24581a) {
            try {
                m(y2Var);
            } catch (ExoPlaybackException | RuntimeException e10) {
                com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Disable failed.", e10);
            }
        }
        if (z10) {
            for (y2 y2Var2 : this.f24581a) {
                if (this.f24582b.remove(y2Var2)) {
                    try {
                        y2Var2.reset();
                    } catch (RuntimeException e11) {
                        com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Reset failed.", e11);
                    }
                }
            }
        }
        this.J = 0;
        m2 m2Var = this.f24604x;
        com.google.android.exoplayer2.source.o.b bVar = m2Var.f24634b;
        long jLongValue = m2Var.f24650r;
        long j10 = (this.f24604x.f24634b.b() || Q(this.f24604x, this.f24592l)) ? this.f24604x.f24635c : this.f24604x.f24650r;
        if (z11) {
            this.K = null;
            Pair pairY = y(this.f24604x.f24633a);
            bVar = (com.google.android.exoplayer2.source.o.b) pairY.first;
            jLongValue = ((Long) pairY.second).longValue();
            boolean zEquals = bVar.equals(this.f24604x.f24634b);
            j10 = C.TIME_UNSET;
            if (zEquals) {
                z14 = false;
            } else {
                z14 = true;
            }
        } else {
            z14 = false;
        }
        com.google.android.exoplayer2.source.o.b bVar2 = bVar;
        long j11 = jLongValue;
        this.f24599s.f();
        this.D = false;
        m2 m2Var2 = this.f24604x;
        l3 l3Var = m2Var2.f24633a;
        int i10 = m2Var2.f24637e;
        ExoPlaybackException exoPlaybackException = z13 ? null : m2Var2.f24638f;
        v9.y yVar = z14 ? v9.y.f73559d : m2Var2.f24640h;
        na.c0 c0Var = z14 ? this.f24585e : m2Var2.f24641i;
        List listOf = z14 ? ImmutableList.of() : m2Var2.f24642j;
        m2 m2Var3 = this.f24604x;
        this.f24604x = new m2(l3Var, bVar2, j10, j11, i10, exoPlaybackException, false, yVar, c0Var, listOf, bVar2, m2Var3.f24644l, m2Var3.f24645m, m2Var3.f24646n, j11, 0L, j11, false);
        if (z12) {
            this.f24600t.x();
        }
    }

    private void p() throws ExoPlaybackException {
        q(new boolean[this.f24581a.length]);
    }

    private void p0() {
        c2 c2VarP = this.f24599s.p();
        this.B = c2VarP != null && c2VarP.f24173f.f24192h && this.A;
    }

    private void q(boolean[] zArr) throws ExoPlaybackException {
        c2 c2VarQ = this.f24599s.q();
        na.c0 c0VarO = c2VarQ.o();
        for (int i10 = 0; i10 < this.f24581a.length; i10++) {
            if (!c0VarO.c(i10) && this.f24582b.remove(this.f24581a[i10])) {
                this.f24581a[i10].reset();
            }
        }
        for (int i11 = 0; i11 < this.f24581a.length; i11++) {
            if (c0VarO.c(i11)) {
                o(i11, zArr[i11]);
            }
        }
        c2VarQ.f24174g = true;
    }

    private void q0(long j10) {
        c2 c2VarP = this.f24599s.p();
        long jZ = c2VarP == null ? j10 + 1000000000000L : c2VarP.z(j10);
        this.L = jZ;
        this.f24595o.d(jZ);
        for (y2 y2Var : this.f24581a) {
            if (O(y2Var)) {
                y2Var.resetPosition(this.L);
            }
        }
        c0();
    }

    private void r(y2 y2Var) {
        if (y2Var.getState() == 2) {
            y2Var.stop();
        }
    }

    private static void r0(l3 l3Var, d dVar, l3.d dVar2, l3.b bVar) {
        int i10 = l3Var.r(l3Var.l(dVar.f24615d, bVar).f24525c, dVar2).f24553p;
        Object obj = l3Var.k(i10, bVar, true).f24524b;
        long j10 = bVar.f24526d;
        dVar.b(i10, j10 != C.TIME_UNSET ? j10 - 1 : Long.MAX_VALUE, obj);
    }

    private static boolean s0(d dVar, l3 l3Var, l3 l3Var2, int i10, boolean z10, l3.d dVar2, l3.b bVar) {
        Object obj = dVar.f24615d;
        if (obj == null) {
            Pair pairV0 = v0(l3Var, new h(dVar.f24612a.h(), dVar.f24612a.d(), dVar.f24612a.f() == Long.MIN_VALUE ? C.TIME_UNSET : com.google.android.exoplayer2.util.p0.B0(dVar.f24612a.f())), false, i10, z10, dVar2, bVar);
            if (pairV0 == null) {
                return false;
            }
            dVar.b(l3Var.f(pairV0.first), ((Long) pairV0.second).longValue(), pairV0.first);
            if (dVar.f24612a.f() == Long.MIN_VALUE) {
                r0(l3Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int iF = l3Var.f(obj);
        if (iF == -1) {
            return false;
        }
        if (dVar.f24612a.f() == Long.MIN_VALUE) {
            r0(l3Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f24613b = iF;
        l3Var2.l(dVar.f24615d, bVar);
        if (bVar.f24528f && l3Var2.r(bVar.f24525c, dVar2).f24552o == l3Var2.f(dVar.f24615d)) {
            Pair pairN = l3Var.n(dVar2, bVar, l3Var.l(dVar.f24615d, bVar).f24525c, dVar.f24614c + bVar.q());
            dVar.b(l3Var.f(pairN.first), ((Long) pairN.second).longValue(), pairN.first);
        }
        return true;
    }

    private ImmutableList t(na.s[] sVarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z10 = false;
        for (na.s sVar : sVarArr) {
            if (sVar != null) {
                Metadata metadata = sVar.getFormat(0).f24899j;
                if (metadata == null) {
                    aVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.a(metadata);
                    z10 = true;
                }
            }
        }
        return z10 ? aVar.e() : ImmutableList.of();
    }

    private void t0(l3 l3Var, l3 l3Var2) {
        if (l3Var.u() && l3Var2.u()) {
            return;
        }
        for (int size = this.f24596p.size() - 1; size >= 0; size--) {
            if (!s0((d) this.f24596p.get(size), l3Var, l3Var2, this.E, this.F, this.f24591k, this.f24592l)) {
                ((d) this.f24596p.get(size)).f24612a.k(false);
                this.f24596p.remove(size);
            }
        }
        Collections.sort(this.f24596p);
    }

    private long u() {
        m2 m2Var = this.f24604x;
        return w(m2Var.f24633a, m2Var.f24634b.f73504a, m2Var.f24650r);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0156  */
    /* JADX WARN: Code duplicated, block: B:52:0x0174  */
    /* JADX WARN: Code duplicated, block: B:60:0x018a  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:82:0x01da  */
    /* JADX WARN: Code duplicated, block: B:83:0x01df  */
    private static g u0(l3 l3Var, m2 m2Var, h hVar, f2 f2Var, int i10, boolean z10, l3.d dVar, l3.b bVar) {
        com.google.android.exoplayer2.source.o.b bVar2;
        int i11;
        com.google.android.exoplayer2.source.o.b bVar3;
        int i12;
        long jLongValue;
        boolean z11;
        boolean z12;
        boolean z13;
        int iE;
        int iE2;
        boolean z14;
        long j10;
        com.google.android.exoplayer2.source.o.b bVarB;
        int i13;
        boolean z15;
        boolean z16;
        com.google.android.exoplayer2.source.o.b bVar4;
        int i14;
        int iE3;
        boolean z17;
        boolean z18;
        boolean z19;
        if (l3Var.u()) {
            return new g(m2.k(), 0L, C.TIME_UNSET, false, true, false);
        }
        com.google.android.exoplayer2.source.o.b bVar5 = m2Var.f24634b;
        Object obj = bVar5.f73504a;
        boolean zQ = Q(m2Var, bVar);
        long j11 = (m2Var.f24634b.b() || zQ) ? m2Var.f24635c : m2Var.f24650r;
        if (hVar != null) {
            bVar2 = bVar5;
            i11 = -1;
            Pair pairV0 = v0(l3Var, hVar, true, i10, z10, dVar, bVar);
            if (pairV0 == null) {
                iE3 = l3Var.e(z10);
                jLongValue = j11;
                z17 = false;
                z18 = false;
                z19 = true;
            } else {
                if (hVar.f24631c == C.TIME_UNSET) {
                    iE3 = l3Var.l(pairV0.first, bVar).f24525c;
                    jLongValue = j11;
                    z17 = false;
                } else {
                    obj = pairV0.first;
                    jLongValue = ((Long) pairV0.second).longValue();
                    iE3 = -1;
                    z17 = true;
                }
                z18 = m2Var.f24637e == 4;
                z19 = false;
            }
            z13 = z17;
            z11 = z18;
            z12 = z19;
            i12 = iE3;
        } else {
            bVar2 = bVar5;
            i11 = -1;
            if (!m2Var.f24633a.u()) {
                if (l3Var.f(obj) == -1) {
                    Object objW0 = w0(dVar, bVar, i10, z10, obj, m2Var.f24633a, l3Var);
                    if (objW0 == null) {
                        iE2 = l3Var.e(z10);
                        z14 = true;
                    } else {
                        iE2 = l3Var.l(objW0, bVar).f24525c;
                        z14 = false;
                    }
                    i12 = iE2;
                    z12 = z14;
                    jLongValue = j11;
                    z11 = false;
                    z13 = false;
                } else if (j11 == C.TIME_UNSET) {
                    iE = l3Var.l(obj, bVar).f24525c;
                } else if (zQ) {
                    bVar3 = bVar2;
                    m2Var.f24633a.l(bVar3.f73504a, bVar);
                    if (m2Var.f24633a.r(bVar.f24525c, dVar).f24552o == m2Var.f24633a.f(bVar3.f73504a)) {
                        Pair pairN = l3Var.n(dVar, bVar, l3Var.l(obj, bVar).f24525c, j11 + bVar.q());
                        obj = pairN.first;
                        jLongValue = ((Long) pairN.second).longValue();
                    } else {
                        jLongValue = j11;
                    }
                    i12 = -1;
                    z11 = false;
                    z12 = false;
                    z13 = true;
                } else {
                    bVar3 = bVar2;
                    i12 = -1;
                    jLongValue = j11;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                }
                if (i12 != i11) {
                    Pair pairN2 = l3Var.n(dVar, bVar, i12, C.TIME_UNSET);
                    obj = pairN2.first;
                    jLongValue = ((Long) pairN2.second).longValue();
                    j10 = -9223372036854775807L;
                } else {
                    j10 = jLongValue;
                }
                bVarB = f2Var.B(l3Var, obj, jLongValue);
                i13 = bVarB.f73508e;
                if (i13 != i11 || ((i14 = bVar3.f73508e) != i11 && i13 >= i14)) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z16 = (bVar3.f73504a.equals(obj) || bVar3.b() || bVarB.b() || !z15) ? false : true;
                bVar4 = bVar3;
                boolean zM = M(zQ, bVar3, j11, bVarB, l3Var.l(obj, bVar), j10);
                if (z16 || zM) {
                    bVarB = bVar4;
                }
                if (bVarB.b()) {
                    if (bVarB.equals(bVar4)) {
                        jLongValue = m2Var.f24650r;
                    } else {
                        l3Var.l(bVarB.f73504a, bVar);
                        if (bVarB.f73506c == bVar.n(bVarB.f73505b)) {
                            jLongValue = bVar.j();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarB, jLongValue, j10, z11, z12, z13);
            }
            iE = l3Var.e(z10);
            i12 = iE;
            jLongValue = j11;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        bVar3 = bVar2;
        if (i12 != i11) {
            Pair pairN3 = l3Var.n(dVar, bVar, i12, C.TIME_UNSET);
            obj = pairN3.first;
            jLongValue = ((Long) pairN3.second).longValue();
            j10 = -9223372036854775807L;
        } else {
            j10 = jLongValue;
        }
        bVarB = f2Var.B(l3Var, obj, jLongValue);
        i13 = bVarB.f73508e;
        if (i13 != i11) {
            z15 = true;
        } else {
            z15 = true;
        }
        if (bVar3.f73504a.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean zM2 = M(zQ, bVar3, j11, bVarB, l3Var.l(obj, bVar), j10);
        if (z16) {
            bVarB = bVar4;
        } else {
            bVarB = bVar4;
        }
        if (bVarB.b()) {
            if (bVarB.equals(bVar4)) {
                jLongValue = m2Var.f24650r;
            } else {
                l3Var.l(bVarB.f73504a, bVar);
                if (bVarB.f73506c == bVar.n(bVarB.f73505b)) {
                    jLongValue = bVar.j();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarB, jLongValue, j10, z11, z12, z13);
    }

    private static p1[] v(na.s sVar) {
        int length = sVar != null ? sVar.length() : 0;
        p1[] p1VarArr = new p1[length];
        for (int i10 = 0; i10 < length; i10++) {
            p1VarArr[i10] = sVar.getFormat(i10);
        }
        return p1VarArr;
    }

    private static Pair v0(l3 l3Var, h hVar, boolean z10, int i10, boolean z11, l3.d dVar, l3.b bVar) {
        Object objW0;
        l3 l3Var2 = hVar.f24629a;
        if (l3Var.u()) {
            return null;
        }
        l3 l3Var3 = l3Var2.u() ? l3Var : l3Var2;
        try {
            Pair pairN = l3Var3.n(dVar, bVar, hVar.f24630b, hVar.f24631c);
            if (l3Var.equals(l3Var3)) {
                return pairN;
            }
            if (l3Var.f(pairN.first) != -1) {
                return (l3Var3.l(pairN.first, bVar).f24528f && l3Var3.r(bVar.f24525c, dVar).f24552o == l3Var3.f(pairN.first)) ? l3Var.n(dVar, bVar, l3Var.l(pairN.first, bVar).f24525c, hVar.f24631c) : pairN;
            }
            if (z10 && (objW0 = w0(dVar, bVar, i10, z11, pairN.first, l3Var3, l3Var)) != null) {
                return l3Var.n(dVar, bVar, l3Var.l(objW0, bVar).f24525c, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    private long w(l3 l3Var, Object obj, long j10) {
        l3Var.r(l3Var.l(obj, this.f24592l).f24525c, this.f24591k);
        l3.d dVar = this.f24591k;
        if (dVar.f24543f != C.TIME_UNSET && dVar.i()) {
            l3.d dVar2 = this.f24591k;
            if (dVar2.f24546i) {
                return com.google.android.exoplayer2.util.p0.B0(dVar2.d() - this.f24591k.f24543f) - (j10 + this.f24592l.q());
            }
        }
        return C.TIME_UNSET;
    }

    static Object w0(l3.d dVar, l3.b bVar, int i10, boolean z10, Object obj, l3 l3Var, l3 l3Var2) {
        int iF = l3Var.f(obj);
        int iM = l3Var.m();
        int iH = iF;
        int iF2 = -1;
        for (int i11 = 0; i11 < iM && iF2 == -1; i11++) {
            iH = l3Var.h(iH, bVar, dVar, i10, z10);
            if (iH == -1) {
                break;
            }
            iF2 = l3Var2.f(l3Var.q(iH));
        }
        if (iF2 == -1) {
            return null;
        }
        return l3Var2.q(iF2);
    }

    private long x() {
        c2 c2VarQ = this.f24599s.q();
        if (c2VarQ == null) {
            return 0L;
        }
        long jL = c2VarQ.l();
        if (!c2VarQ.f24171d) {
            return jL;
        }
        int i10 = 0;
        while (true) {
            y2[] y2VarArr = this.f24581a;
            if (i10 >= y2VarArr.length) {
                return jL;
            }
            if (O(y2VarArr[i10]) && this.f24581a[i10].getStream() == c2VarQ.f24170c[i10]) {
                long jE = this.f24581a[i10].e();
                if (jE == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jL = Math.max(jE, jL);
            }
            i10++;
        }
    }

    private void x0(long j10, long j11) {
        this.f24588h.sendEmptyMessageAtTime(2, j10 + j11);
    }

    private Pair y(l3 l3Var) {
        if (l3Var.u()) {
            return Pair.create(m2.k(), 0L);
        }
        Pair pairN = l3Var.n(this.f24591k, this.f24592l, l3Var.e(this.F), C.TIME_UNSET);
        com.google.android.exoplayer2.source.o.b bVarB = this.f24599s.B(l3Var, pairN.first, 0L);
        long jLongValue = ((Long) pairN.second).longValue();
        if (bVarB.b()) {
            l3Var.l(bVarB.f73504a, this.f24592l);
            jLongValue = bVarB.f73506c == this.f24592l.n(bVarB.f73505b) ? this.f24592l.j() : 0L;
        }
        return Pair.create(bVarB, Long.valueOf(jLongValue));
    }

    private void z0(boolean z10) throws ExoPlaybackException {
        com.google.android.exoplayer2.source.o.b bVar = this.f24599s.p().f24173f.f24185a;
        long jC0 = C0(bVar, this.f24604x.f24650r, true, false);
        if (jC0 != this.f24604x.f24650r) {
            m2 m2Var = this.f24604x;
            this.f24604x = J(bVar, jC0, m2Var.f24635c, m2Var.f24636d, z10, 5);
        }
    }

    public void K0(List list, int i10, long j10, v9.t tVar) {
        this.f24588h.obtainMessage(17, new b(list, tVar, i10, j10, null)).a();
    }

    public void N0(boolean z10, int i10) {
        this.f24588h.obtainMessage(1, z10 ? 1 : 0, i10).a();
    }

    public void P0(o2 o2Var) {
        this.f24588h.obtainMessage(4, o2Var).a();
    }

    public void R0(int i10) {
        this.f24588h.obtainMessage(11, i10, 0).a();
    }

    public void U0(boolean z10) {
        this.f24588h.obtainMessage(12, z10 ? 1 : 0, 0).a();
    }

    @Override
    public void a() {
        this.f24588h.sendEmptyMessage(22);
    }

    @Override
    public synchronized void b(t2 t2Var) {
        if (!this.f24606z && this.f24589i.isAlive()) {
            this.f24588h.obtainMessage(14, t2Var).a();
            return;
        }
        com.google.android.exoplayer2.util.s.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        t2Var.k(false);
    }

    public void e1() {
        this.f24588h.obtainMessage(6).a();
    }

    @Override
    public void g(com.google.android.exoplayer2.source.n nVar) {
        this.f24588h.obtainMessage(9, nVar).a();
    }

    public void g0() {
        this.f24588h.obtainMessage(0).a();
    }

    @Override
    public void h(com.google.android.exoplayer2.source.n nVar) {
        this.f24588h.obtainMessage(8, nVar).a();
    }

    @Override
    public boolean handleMessage(Message message) throws Throwable {
        int i10;
        c2 c2VarQ;
        int i11 = 1000;
        try {
            switch (message.what) {
                case 0:
                    h0();
                    break;
                case 1:
                    O0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    n();
                    break;
                case 3:
                    A0((h) message.obj);
                    break;
                case 4:
                    Q0((o2) message.obj);
                    break;
                case 5:
                    T0((d3) message.obj);
                    break;
                case 6:
                    f1(false, true);
                    break;
                case 7:
                    j0();
                    return true;
                case 8:
                    G((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 9:
                    C((com.google.android.exoplayer2.source.n) message.obj);
                    break;
                case 10:
                    n0();
                    break;
                case 11:
                    S0(message.arg1);
                    break;
                case 12:
                    V0(message.arg1 != 0);
                    break;
                case 13:
                    I0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    D0((t2) message.obj);
                    break;
                case 15:
                    F0((t2) message.obj);
                    break;
                case 16:
                    I((o2) message.obj, false);
                    break;
                case 17:
                    J0((b) message.obj);
                    break;
                case 18:
                    j((b) message.obj, message.arg1);
                    break;
                case 19:
                    android.support.v4.media.session.c.a(message.obj);
                    b0(null);
                    break;
                case 20:
                    k0(message.arg1, message.arg2, (v9.t) message.obj);
                    break;
                case 21:
                    W0((v9.t) message.obj);
                    break;
                case 22:
                    a0();
                    break;
                case 23:
                    M0(message.arg1 != 0);
                    break;
                case 24:
                    L0(message.arg1 == 1);
                    break;
                case 25:
                    k();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e10) {
            e = e10;
            if (e.type == 1 && (c2VarQ = this.f24599s.q()) != null) {
                e = e.copyWithMediaPeriodId(c2VarQ.f24173f.f24185a);
            }
            if (e.isRecoverable && this.O == null) {
                com.google.android.exoplayer2.util.s.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.O = e;
                com.google.android.exoplayer2.util.o oVar = this.f24588h;
                oVar.b(oVar.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.O;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.O;
                }
                com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", e);
                f1(true, false);
                this.f24604x = this.f24604x.e(e);
            }
        } catch (ParserException e11) {
            int i12 = e11.dataType;
            if (i12 == 1) {
                i10 = e11.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i12 == 4) {
                    i10 = e11.contentIsMalformed ? 3002 : 3004;
                }
                D(e11, i11);
            }
            i11 = i10;
            D(e11, i11);
        } catch (DrmSession.DrmSessionException e12) {
            D(e12, e12.errorCode);
        } catch (BehindLiveWindowException e13) {
            D(e13, 1002);
        } catch (DataSourceException e14) {
            D(e14, e14.reason);
        } catch (IOException e15) {
            D(e15, 2000);
        } catch (RuntimeException e16) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e16, ((e16 instanceof IllegalStateException) || (e16 instanceof IllegalArgumentException)) ? 1004 : 1000);
            com.google.android.exoplayer2.util.s.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            f1(true, false);
            this.f24604x = this.f24604x.e(exoPlaybackExceptionCreateForUnexpected);
        }
        U();
        return true;
    }

    public synchronized boolean i0() {
        if (!this.f24606z && this.f24589i.isAlive()) {
            this.f24588h.sendEmptyMessage(7);
            n1(new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return this.f24509a.R();
                }
            }, this.f24602v);
            return this.f24606z;
        }
        return true;
    }

    public void l0(int i10, int i11, v9.t tVar) {
        this.f24588h.obtainMessage(20, i10, i11, tVar).a();
    }

    @Override
    public void onPlaybackParametersChanged(o2 o2Var) {
        this.f24588h.obtainMessage(16, o2Var).a();
    }

    @Override
    public void onTrackSelectionsInvalidated() {
        this.f24588h.sendEmptyMessage(10);
    }

    public void s(long j10) {
        this.P = j10;
    }

    public void y0(l3 l3Var, int i10, long j10) {
        this.f24588h.obtainMessage(3, new h(l3Var, i10, j10)).a();
    }

    public Looper z() {
        return this.f24590j;
    }
}
