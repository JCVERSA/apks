package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Sets;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.b88;
import defpackage.blb;
import defpackage.eva;
import defpackage.ey0;
import defpackage.gn5;
import defpackage.h19;
import defpackage.ka9;
import defpackage.kb;
import defpackage.ks8;
import defpackage.lha;
import defpackage.ls8;
import defpackage.mi9;
import defpackage.o70;
import defpackage.op5;
import defpackage.qi3;
import defpackage.rva;
import defpackage.sua;
import defpackage.sva;
import defpackage.ta8;
import defpackage.ubc;
import defpackage.w6a;
import defpackage.wk6;
import defpackage.xn4;
import defpackage.yk6;
import defpackage.zb8;
import defpackage.zi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class j implements Handler.Callback, com.google.android.exoplayer2.source.h.a, rva.a, q.d, com.google.android.exoplayer2.g.a, u.a {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public h L;
    public long M;
    public int N;
    public boolean O;
    public ExoPlaybackException P;
    public long Q;
    public long R = C.TIME_UNSET;
    public final w[] b;
    public final Set c;
    public final ks8[] d;
    public final rva e;
    public final sva f;
    public final gn5 g;
    public final o70 h;
    public final xn4 i;
    public final HandlerThread j;
    public final Looper k;
    public final a0.d l;
    public final a0.b m;
    public final long n;
    public final boolean o;
    public final com.google.android.exoplayer2.g p;
    public final ArrayList q;
    public final ey0 r;
    public final f s;
    public final p t;
    public final q u;
    public final m v;
    public final long w;
    public ka9 x;
    public b88 y;
    public e z;

    public class a implements w.a {
        public a() {
        }

        @Override
        public void onSleep() {
            j.this.I = true;
        }

        @Override
        public void onWakeup() {
            j.this.i.sendEmptyMessage(2);
        }
    }

    public static final class b {
        public final List a;
        public final mi9 b;
        public final int c;
        public final long d;

        public b(List list, mi9 mi9Var, int i, long j, a aVar) {
            this(list, mi9Var, i, j);
        }

        public b(List list, mi9 mi9Var, int i, long j) {
            this.a = list;
            this.b = mi9Var;
            this.c = i;
            this.d = j;
        }
    }

    public static class c {
    }

    public static final class d implements Comparable {
        public final u b;
        public int c;
        public long d;
        public Object e;

        public d(u uVar) {
            this.b = uVar;
        }

        @Override
        public int compareTo(d dVar) {
            Object obj = this.e;
            if ((obj == null) != (dVar.e == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.c - dVar.c;
            return i != 0 ? i : blb.n(this.d, dVar.d);
        }

        public void b(int i, long j, Object obj) {
            this.c = i;
            this.d = j;
            this.e = obj;
        }
    }

    public static final class e {
        public boolean a;
        public b88 b;
        public int c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;

        public e(b88 b88Var) {
            this.b = b88Var;
        }

        public void b(int i) {
            this.a |= i > 0;
            this.c += i;
        }

        public void c(int i) {
            this.a = true;
            this.f = true;
            this.g = i;
        }

        public void d(b88 b88Var) {
            this.a |= this.b != b88Var;
            this.b = b88Var;
        }

        public void e(int i) {
            if (this.d && this.e != 5) {
                zi.a(i == 5);
                return;
            }
            this.a = true;
            this.d = true;
            this.e = i;
        }
    }

    public interface f {
        void a(e eVar);
    }

    public static final class g {
        public final com.google.android.exoplayer2.source.i.b a;
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public g(com.google.android.exoplayer2.source.i.b bVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.a = bVar;
            this.b = j;
            this.c = j2;
            this.d = z;
            this.e = z2;
            this.f = z3;
        }
    }

    public static final class h {
        public final a0 a;
        public final int b;
        public final long c;

        public h(a0 a0Var, int i, long j) {
            this.a = a0Var;
            this.b = i;
            this.c = j;
        }
    }

    public j(w[] wVarArr, rva rvaVar, sva svaVar, gn5 gn5Var, o70 o70Var, int i, boolean z, kb kbVar, ka9 ka9Var, m mVar, long j, boolean z2, Looper looper, ey0 ey0Var, f fVar, ta8 ta8Var) {
        this.s = fVar;
        this.b = wVarArr;
        this.e = rvaVar;
        this.f = svaVar;
        this.g = gn5Var;
        this.h = o70Var;
        this.F = i;
        this.G = z;
        this.x = ka9Var;
        this.v = mVar;
        this.w = j;
        this.Q = j;
        this.B = z2;
        this.r = ey0Var;
        this.n = gn5Var.getBackBufferDurationUs();
        this.o = gn5Var.retainBackBufferFromKeyframe();
        b88 b88VarJ = b88.j(svaVar);
        this.y = b88VarJ;
        this.z = new e(b88VarJ);
        this.d = new ks8[wVarArr.length];
        for (int i2 = 0; i2 < wVarArr.length; i2++) {
            wVarArr[i2].d(i2, ta8Var);
            this.d[i2] = wVarArr[i2].getCapabilities();
        }
        this.p = new com.google.android.exoplayer2.g(this, ey0Var);
        this.q = new ArrayList();
        this.c = Sets.i();
        this.l = new a0.d();
        this.m = new a0.b();
        rvaVar.b(this, o70Var);
        this.O = true;
        Handler handler = new Handler(looper);
        this.t = new p(kbVar, handler);
        this.u = new q(this, kbVar, handler, ta8Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.j = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.k = looper2;
        this.i = ey0Var.createHandler(looper2, this);
    }

    public static boolean K(boolean z, com.google.android.exoplayer2.source.i.b bVar, long j, com.google.android.exoplayer2.source.i.b bVar2, a0.b bVar3, long j2) {
        if (z || j != j2 || !bVar.a.equals(bVar2.a)) {
            return false;
        }
        if (bVar.b() && bVar3.t(bVar.b)) {
            return (bVar3.k(bVar.b, bVar.c) == 4 || bVar3.k(bVar.b, bVar.c) == 2) ? false : true;
        }
        return bVar2.b() && bVar3.t(bVar2.b);
    }

    public static boolean M(w wVar) {
        return wVar.getState() != 0;
    }

    public static boolean O(b88 b88Var, a0.b bVar) {
        com.google.android.exoplayer2.source.i.b bVar2 = b88Var.b;
        a0 a0Var = b88Var.a;
        return a0Var.u() || a0Var.l(bVar2.a, bVar).g;
    }

    public static void p0(a0 a0Var, d dVar, a0.d dVar2, a0.b bVar) {
        int i = a0Var.r(a0Var.l(dVar.e, bVar).d, dVar2).q;
        Object obj = a0Var.k(i, bVar, true).c;
        long j = bVar.e;
        dVar.b(i, j != C.TIME_UNSET ? j - 1 : Long.MAX_VALUE, obj);
    }

    public static boolean q0(d dVar, a0 a0Var, a0 a0Var2, int i, boolean z, a0.d dVar2, a0.b bVar) {
        Object obj = dVar.e;
        if (obj == null) {
            Pair pairT0 = t0(a0Var, new h(dVar.b.h(), dVar.b.d(), dVar.b.f() == Long.MIN_VALUE ? C.TIME_UNSET : blb.t0(dVar.b.f())), false, i, z, dVar2, bVar);
            if (pairT0 == null) {
                return false;
            }
            dVar.b(a0Var.f(pairT0.first), ((Long) pairT0.second).longValue(), pairT0.first);
            if (dVar.b.f() == Long.MIN_VALUE) {
                p0(a0Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int iF = a0Var.f(obj);
        if (iF == -1) {
            return false;
        }
        if (dVar.b.f() == Long.MIN_VALUE) {
            p0(a0Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.c = iF;
        a0Var2.l(dVar.e, bVar);
        if (bVar.g && a0Var2.r(bVar.d, dVar2).p == a0Var2.f(dVar.e)) {
            Pair pairN = a0Var.n(dVar2, bVar, a0Var.l(dVar.e, bVar).d, dVar.d + bVar.q());
            dVar.b(a0Var.f(pairN.first), ((Long) pairN.second).longValue(), pairN.first);
        }
        return true;
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
    public static g s0(a0 a0Var, b88 b88Var, h hVar, p pVar, int i, boolean z, a0.d dVar, a0.b bVar) {
        com.google.android.exoplayer2.source.i.b bVar2;
        int i2;
        com.google.android.exoplayer2.source.i.b bVar3;
        int i3;
        long jLongValue;
        boolean z2;
        boolean z3;
        boolean z4;
        int iE;
        int iE2;
        boolean z5;
        long j;
        com.google.android.exoplayer2.source.i.b bVarB;
        int i4;
        boolean z6;
        boolean z7;
        com.google.android.exoplayer2.source.i.b bVar4;
        int i5;
        int iE3;
        boolean z8;
        boolean z9;
        boolean z10;
        if (a0Var.u()) {
            return new g(b88.k(), 0L, C.TIME_UNSET, false, true, false);
        }
        com.google.android.exoplayer2.source.i.b bVar5 = b88Var.b;
        Object obj = bVar5.a;
        boolean zO = O(b88Var, bVar);
        long j2 = (b88Var.b.b() || zO) ? b88Var.c : b88Var.r;
        if (hVar != null) {
            bVar2 = bVar5;
            i2 = -1;
            Pair pairT0 = t0(a0Var, hVar, true, i, z, dVar, bVar);
            if (pairT0 == null) {
                iE3 = a0Var.e(z);
                jLongValue = j2;
                z8 = false;
                z9 = false;
                z10 = true;
            } else {
                if (hVar.c == C.TIME_UNSET) {
                    iE3 = a0Var.l(pairT0.first, bVar).d;
                    jLongValue = j2;
                    z8 = false;
                } else {
                    obj = pairT0.first;
                    jLongValue = ((Long) pairT0.second).longValue();
                    iE3 = -1;
                    z8 = true;
                }
                z9 = b88Var.e == 4;
                z10 = false;
            }
            z4 = z8;
            z2 = z9;
            z3 = z10;
            i3 = iE3;
        } else {
            bVar2 = bVar5;
            i2 = -1;
            if (!b88Var.a.u()) {
                if (a0Var.f(obj) == -1) {
                    Object objU0 = u0(dVar, bVar, i, z, obj, b88Var.a, a0Var);
                    if (objU0 == null) {
                        iE2 = a0Var.e(z);
                        z5 = true;
                    } else {
                        iE2 = a0Var.l(objU0, bVar).d;
                        z5 = false;
                    }
                    i3 = iE2;
                    z3 = z5;
                    jLongValue = j2;
                    z2 = false;
                    z4 = false;
                } else if (j2 == C.TIME_UNSET) {
                    iE = a0Var.l(obj, bVar).d;
                } else if (zO) {
                    bVar3 = bVar2;
                    b88Var.a.l(bVar3.a, bVar);
                    if (b88Var.a.r(bVar.d, dVar).p == b88Var.a.f(bVar3.a)) {
                        Pair pairN = a0Var.n(dVar, bVar, a0Var.l(obj, bVar).d, j2 + bVar.q());
                        obj = pairN.first;
                        jLongValue = ((Long) pairN.second).longValue();
                    } else {
                        jLongValue = j2;
                    }
                    i3 = -1;
                    z2 = false;
                    z3 = false;
                    z4 = true;
                } else {
                    bVar3 = bVar2;
                    i3 = -1;
                    jLongValue = j2;
                    z2 = false;
                    z3 = false;
                    z4 = false;
                }
                if (i3 != i2) {
                    Pair pairN2 = a0Var.n(dVar, bVar, i3, C.TIME_UNSET);
                    obj = pairN2.first;
                    jLongValue = ((Long) pairN2.second).longValue();
                    j = -9223372036854775807L;
                } else {
                    j = jLongValue;
                }
                bVarB = pVar.B(a0Var, obj, jLongValue);
                i4 = bVarB.e;
                if (i4 != i2 || ((i5 = bVar3.e) != i2 && i4 >= i5)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = (bVar3.a.equals(obj) || bVar3.b() || bVarB.b() || !z6) ? false : true;
                bVar4 = bVar3;
                boolean zK = K(zO, bVar3, j2, bVarB, a0Var.l(obj, bVar), j);
                if (z7 || zK) {
                    bVarB = bVar4;
                }
                if (bVarB.b()) {
                    if (bVarB.equals(bVar4)) {
                        jLongValue = b88Var.r;
                    } else {
                        a0Var.l(bVarB.a, bVar);
                        if (bVarB.c == bVar.n(bVarB.b)) {
                            jLongValue = bVar.j();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new g(bVarB, jLongValue, j, z2, z3, z4);
            }
            iE = a0Var.e(z);
            i3 = iE;
            jLongValue = j2;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        bVar3 = bVar2;
        if (i3 != i2) {
            Pair pairN3 = a0Var.n(dVar, bVar, i3, C.TIME_UNSET);
            obj = pairN3.first;
            jLongValue = ((Long) pairN3.second).longValue();
            j = -9223372036854775807L;
        } else {
            j = jLongValue;
        }
        bVarB = pVar.B(a0Var, obj, jLongValue);
        i4 = bVarB.e;
        if (i4 != i2) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (bVar3.a.equals(obj)) {
        }
        bVar4 = bVar3;
        boolean zK2 = K(zO, bVar3, j2, bVarB, a0Var.l(obj, bVar), j);
        if (z7) {
            bVarB = bVar4;
        } else {
            bVarB = bVar4;
        }
        if (bVarB.b()) {
            if (bVarB.equals(bVar4)) {
                jLongValue = b88Var.r;
            } else {
                a0Var.l(bVarB.a, bVar);
                if (bVarB.c == bVar.n(bVarB.b)) {
                    jLongValue = bVar.j();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new g(bVarB, jLongValue, j, z2, z3, z4);
    }

    public static k[] t(qi3 qi3Var) {
        int length = qi3Var != null ? qi3Var.length() : 0;
        k[] kVarArr = new k[length];
        for (int i = 0; i < length; i++) {
            kVarArr[i] = qi3Var.getFormat(i);
        }
        return kVarArr;
    }

    public static Pair t0(a0 a0Var, h hVar, boolean z, int i, boolean z2, a0.d dVar, a0.b bVar) {
        Object objU0;
        a0 a0Var2 = hVar.a;
        if (a0Var.u()) {
            return null;
        }
        a0 a0Var3 = a0Var2.u() ? a0Var : a0Var2;
        try {
            Pair pairN = a0Var3.n(dVar, bVar, hVar.b, hVar.c);
            if (a0Var.equals(a0Var3)) {
                return pairN;
            }
            if (a0Var.f(pairN.first) != -1) {
                return (a0Var3.l(pairN.first, bVar).g && a0Var3.r(bVar.d, dVar).p == a0Var3.f(pairN.first)) ? a0Var.n(dVar, bVar, a0Var.l(pairN.first, bVar).d, hVar.c) : pairN;
            }
            if (z && (objU0 = u0(dVar, bVar, i, z2, pairN.first, a0Var3, a0Var)) != null) {
                return a0Var.n(dVar, bVar, a0Var.l(objU0, bVar).d, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static Object u0(a0.d dVar, a0.b bVar, int i, boolean z, Object obj, a0 a0Var, a0 a0Var2) {
        int iF = a0Var.f(obj);
        int iM = a0Var.m();
        int iH = iF;
        int iF2 = -1;
        for (int i2 = 0; i2 < iM && iF2 == -1; i2++) {
            iH = a0Var.h(iH, bVar, dVar, i, z);
            if (iH == -1) {
                break;
            }
            iF2 = a0Var2.f(a0Var.q(iH));
        }
        if (iF2 == -1) {
            return null;
        }
        return a0Var2.q(iF2);
    }

    public final void A(com.google.android.exoplayer2.source.h hVar) {
        if (this.t.v(hVar)) {
            this.t.y(this.M);
            R();
        }
    }

    public final long A0(com.google.android.exoplayer2.source.i.b bVar, long j, boolean z, boolean z2) throws ExoPlaybackException {
        b1();
        this.D = false;
        if (z2 || this.y.e == 3) {
            S0(2);
        }
        wk6 wk6VarP = this.t.p();
        wk6 wk6VarJ = wk6VarP;
        while (wk6VarJ != null && !bVar.equals(wk6VarJ.f.a)) {
            wk6VarJ = wk6VarJ.j();
        }
        if (z || wk6VarP != wk6VarJ || (wk6VarJ != null && wk6VarJ.z(j) < 0)) {
            for (w wVar : this.b) {
                k(wVar);
            }
            if (wk6VarJ != null) {
                while (this.t.p() != wk6VarJ) {
                    this.t.b();
                }
                this.t.z(wk6VarJ);
                wk6VarJ.x(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                n();
            }
        }
        if (wk6VarJ != null) {
            this.t.z(wk6VarJ);
            if (!wk6VarJ.d) {
                wk6VarJ.f = wk6VarJ.f.b(j);
            } else if (wk6VarJ.e) {
                j = wk6VarJ.a.seekToUs(j);
                wk6VarJ.a.discardBuffer(j - this.n, this.o);
            }
            o0(j);
            R();
        } else {
            this.t.f();
            o0(j);
        }
        C(false);
        this.i.sendEmptyMessage(2);
        return j;
    }

    public final void B(IOException iOException, int i) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i);
        wk6 wk6VarP = this.t.p();
        if (wk6VarP != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(wk6VarP.f.a);
        }
        op5.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForSource);
        a1(false, false);
        this.y = this.y.e(exoPlaybackExceptionCreateForSource);
    }

    public final void B0(u uVar) {
        if (uVar.f() == C.TIME_UNSET) {
            C0(uVar);
            return;
        }
        if (this.y.a.u()) {
            this.q.add(new d(uVar));
            return;
        }
        d dVar = new d(uVar);
        a0 a0Var = this.y.a;
        if (!q0(dVar, a0Var, a0Var, this.F, this.G, this.l, this.m)) {
            uVar.k(false);
        } else {
            this.q.add(dVar);
            Collections.sort(this.q);
        }
    }

    public final void C(boolean z) {
        wk6 wk6VarJ = this.t.j();
        com.google.android.exoplayer2.source.i.b bVar = wk6VarJ == null ? this.y.b : wk6VarJ.f.a;
        boolean zEquals = this.y.k.equals(bVar);
        if (!zEquals) {
            this.y = this.y.b(bVar);
        }
        b88 b88Var = this.y;
        b88Var.p = wk6VarJ == null ? b88Var.r : wk6VarJ.i();
        this.y.q = y();
        if ((!zEquals || z) && wk6VarJ != null && wk6VarJ.d) {
            d1(wk6VarJ.n(), wk6VarJ.o());
        }
    }

    public final void C0(u uVar) {
        if (uVar.c() != this.k) {
            this.i.obtainMessage(15, uVar).sendToTarget();
            return;
        }
        j(uVar);
        int i = this.y.e;
        if (i == 3 || i == 2) {
            this.i.sendEmptyMessage(2);
        }
    }

    public final void D(a0 a0Var, boolean z) throws Throwable {
        int i;
        int i2;
        boolean z2;
        g gVarS0 = s0(a0Var, this.y, this.L, this.t, this.F, this.G, this.l, this.m);
        com.google.android.exoplayer2.source.i.b bVar = gVarS0.a;
        long j = gVarS0.c;
        boolean z3 = gVarS0.d;
        long jZ0 = gVarS0.b;
        boolean z4 = (this.y.b.equals(bVar) && jZ0 == this.y.r) ? false : true;
        h hVar = null;
        long j2 = C.TIME_UNSET;
        try {
            if (gVarS0.e) {
                if (this.y.e != 1) {
                    S0(4);
                }
                m0(false, false, false, true);
            }
            try {
                if (z4) {
                    i2 = 4;
                    z2 = false;
                    if (!a0Var.u()) {
                        for (wk6 wk6VarP = this.t.p(); wk6VarP != null; wk6VarP = wk6VarP.j()) {
                            if (wk6VarP.f.a.equals(bVar)) {
                                wk6VarP.f = this.t.r(a0Var, wk6VarP.f);
                                wk6VarP.A();
                            }
                        }
                        jZ0 = z0(bVar, jZ0, z3);
                    }
                } else {
                    try {
                        try {
                            i2 = 4;
                            z2 = false;
                            if (!this.t.F(a0Var, this.M, v())) {
                                x0(false);
                            }
                        } catch (Throwable th) {
                            th = th;
                            i = 4;
                            hVar = null;
                            b88 b88Var = this.y;
                            a0 a0Var2 = b88Var.a;
                            com.google.android.exoplayer2.source.i.b bVar2 = b88Var.b;
                            if (gVarS0.f) {
                                j2 = jZ0;
                            }
                            h hVar2 = hVar;
                            g1(a0Var, bVar, a0Var2, bVar2, j2);
                            if (z4 || j != this.y.c) {
                                b88 b88Var2 = this.y;
                                Object obj = b88Var2.b.a;
                                a0 a0Var3 = b88Var2.a;
                                this.y = H(bVar, jZ0, j, this.y.d, z4 && z && !a0Var3.u() && !a0Var3.l(obj, this.m).g, a0Var.f(obj) == -1 ? i : 3);
                            }
                            n0();
                            r0(a0Var, this.y.a);
                            this.y = this.y.i(a0Var);
                            if (!a0Var.u()) {
                                this.L = hVar2;
                            }
                            C(false);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        i = 4;
                    }
                }
                b88 b88Var3 = this.y;
                g1(a0Var, bVar, b88Var3.a, b88Var3.b, gVarS0.f ? jZ0 : -9223372036854775807L);
                if (z4 || j != this.y.c) {
                    b88 b88Var4 = this.y;
                    Object obj2 = b88Var4.b.a;
                    a0 a0Var4 = b88Var4.a;
                    this.y = H(bVar, jZ0, j, this.y.d, (!z4 || !z || a0Var4.u() || a0Var4.l(obj2, this.m).g) ? z2 : true, a0Var.f(obj2) == -1 ? i2 : 3);
                }
                n0();
                r0(a0Var, this.y.a);
                this.y = this.y.i(a0Var);
                if (!a0Var.u()) {
                    this.L = null;
                }
                C(z2);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            i = 4;
        }
    }

    public final void D0(final u uVar) {
        Looper looperC = uVar.c();
        if (looperC.getThread().isAlive()) {
            this.r.createHandler(looperC, null).post(new Runnable() {
                @Override
                public final void run() {
                    this.b.Q(uVar);
                }
            });
        } else {
            op5.i(AbstractID3v1Tag.TAG, "Trying to send message on a dead thread.");
            uVar.k(false);
        }
    }

    public final void E(com.google.android.exoplayer2.source.h hVar) throws ExoPlaybackException {
        if (this.t.v(hVar)) {
            wk6 wk6VarJ = this.t.j();
            wk6VarJ.p(this.p.getPlaybackParameters().b, this.y.a);
            d1(wk6VarJ.n(), wk6VarJ.o());
            if (wk6VarJ == this.t.p()) {
                o0(wk6VarJ.f.b);
                n();
                b88 b88Var = this.y;
                com.google.android.exoplayer2.source.i.b bVar = b88Var.b;
                long j = wk6VarJ.f.b;
                this.y = H(bVar, j, b88Var.c, j, false, 5);
            }
            R();
        }
    }

    public final void E0(long j) {
        for (w wVar : this.b) {
            if (wVar.getStream() != null) {
                F0(wVar, j);
            }
        }
    }

    public final void F(s sVar, float f2, boolean z, boolean z2) {
        if (z) {
            if (z2) {
                this.z.b(1);
            }
            this.y = this.y.f(sVar);
        }
        h1(sVar.b);
        for (w wVar : this.b) {
            if (wVar != null) {
                wVar.setPlaybackSpeed(f2, sVar.b);
            }
        }
    }

    public final void F0(w wVar, long j) {
        wVar.setCurrentStreamFinal();
        if (wVar instanceof lha) {
            ((lha) wVar).F(j);
        }
    }

    public final void G(s sVar, boolean z) {
        F(sVar, sVar.b, true, z);
    }

    public final void G0(boolean z, AtomicBoolean atomicBoolean) {
        if (this.H != z) {
            this.H = z;
            if (!z) {
                for (w wVar : this.b) {
                    if (!M(wVar) && this.c.remove(wVar)) {
                        wVar.reset();
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

    public final b88 H(com.google.android.exoplayer2.source.i.b bVar, long j, long j2, long j3, boolean z, int i) {
        List listOf;
        eva evaVar;
        sva svaVar;
        this.O = (!this.O && j == this.y.r && bVar.equals(this.y.b)) ? false : true;
        n0();
        b88 b88Var = this.y;
        eva evaVar2 = b88Var.h;
        sva svaVar2 = b88Var.i;
        List list = b88Var.j;
        if (this.u.s()) {
            wk6 wk6VarP = this.t.p();
            eva evaVarN = wk6VarP == null ? eva.e : wk6VarP.n();
            sva svaVarO = wk6VarP == null ? this.f : wk6VarP.o();
            ImmutableList immutableListR = r(svaVarO.c);
            if (wk6VarP != null) {
                yk6 yk6Var = wk6VarP.f;
                if (yk6Var.c != j2) {
                    wk6VarP.f = yk6Var.a(j2);
                }
            }
            evaVar = evaVarN;
            svaVar = svaVarO;
            listOf = immutableListR;
        } else if (bVar.equals(this.y.b)) {
            listOf = list;
            evaVar = evaVar2;
            svaVar = svaVar2;
        } else {
            evaVar = eva.e;
            svaVar = this.f;
            listOf = ImmutableList.of();
        }
        if (z) {
            this.z.e(i);
        }
        return this.y.c(bVar, j, j2, j3, y(), evaVar, svaVar, listOf);
    }

    public final void H0(b bVar) throws Throwable {
        this.z.b(1);
        if (bVar.c != -1) {
            this.L = new h(new zb8(bVar.a, bVar.b), bVar.c, bVar.d);
        }
        D(this.u.B(bVar.a, bVar.b), false);
    }

    public final boolean I(w wVar, wk6 wk6Var) {
        wk6 wk6VarJ = wk6Var.j();
        return wk6Var.f.f && wk6VarJ.d && ((wVar instanceof lha) || (wVar instanceof com.google.android.exoplayer2.metadata.a) || wVar.getReadingPositionUs() >= wk6VarJ.m());
    }

    public void I0(List list, int i, long j, mi9 mi9Var) {
        this.i.obtainMessage(17, new b(list, mi9Var, i, j, null)).sendToTarget();
    }

    public final boolean J() {
        wk6 wk6VarQ = this.t.q();
        if (!wk6VarQ.d) {
            return false;
        }
        int i = 0;
        while (true) {
            w[] wVarArr = this.b;
            if (i >= wVarArr.length) {
                return true;
            }
            w wVar = wVarArr[i];
            h19 h19Var = wk6VarQ.c[i];
            if (wVar.getStream() != h19Var || (h19Var != null && !wVar.hasReadStreamToEnd() && !I(wVar, wk6VarQ))) {
                return false;
            }
            i++;
        }
    }

    public final void J0(boolean z) {
        if (z == this.J) {
            return;
        }
        this.J = z;
        if (z || !this.y.o) {
            return;
        }
        this.i.sendEmptyMessage(2);
    }

    public final void K0(boolean z) throws ExoPlaybackException {
        this.B = z;
        n0();
        if (!this.C || this.t.q() == this.t.p()) {
            return;
        }
        x0(true);
        C(false);
    }

    public final boolean L() {
        wk6 wk6VarJ = this.t.j();
        return (wk6VarJ == null || wk6VarJ.k() == Long.MIN_VALUE) ? false : true;
    }

    public void L0(boolean z, int i) {
        this.i.obtainMessage(1, z ? 1 : 0, i).sendToTarget();
    }

    public final void M0(boolean z, int i, boolean z2, int i2) {
        this.z.b(z2 ? 1 : 0);
        this.z.c(i2);
        this.y = this.y.d(z, i);
        this.D = false;
        b0(z);
        if (!V0()) {
            b1();
            f1();
            return;
        }
        int i3 = this.y.e;
        if (i3 == 3) {
            Y0();
            this.i.sendEmptyMessage(2);
        } else if (i3 == 2) {
            this.i.sendEmptyMessage(2);
        }
    }

    public final boolean N() {
        wk6 wk6VarP = this.t.p();
        long j = wk6VarP.f.e;
        return wk6VarP.d && (j == C.TIME_UNSET || this.y.r < j || !V0());
    }

    public final void N0(s sVar) {
        this.p.b(sVar);
        G(this.p.getPlaybackParameters(), true);
    }

    public final void O0(int i) throws ExoPlaybackException {
        this.F = i;
        if (!this.t.G(this.y.a, i)) {
            x0(true);
        }
        C(false);
    }

    public final Boolean P() {
        return Boolean.valueOf(this.A);
    }

    public final void P0(ka9 ka9Var) {
        this.x = ka9Var;
    }

    public final void Q(u uVar) {
        try {
            j(uVar);
        } catch (ExoPlaybackException e2) {
            op5.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    public final void Q0(boolean z) throws ExoPlaybackException {
        this.G = z;
        if (!this.t.H(this.y.a, z)) {
            x0(true);
        }
        C(false);
    }

    public final void R() {
        boolean zU0 = U0();
        this.E = zU0;
        if (zU0) {
            this.t.j().d(this.M);
        }
        c1();
    }

    public final void R0(mi9 mi9Var) throws Throwable {
        this.z.b(1);
        D(this.u.C(mi9Var), false);
    }

    public final void S() {
        this.z.d(this.y);
        if (this.z.a) {
            this.s.a(this.z);
            this.z = new e(this.y);
        }
    }

    public final void S0(int i) {
        b88 b88Var = this.y;
        if (b88Var.e != i) {
            if (i != 2) {
                this.R = C.TIME_UNSET;
            }
            this.y = b88Var.g(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void T(long j, long j2) {
        if (this.q.isEmpty() || this.y.b.b()) {
            return;
        }
        if (this.O) {
            j--;
            this.O = false;
        }
        b88 b88Var = this.y;
        int iF = b88Var.a.f(b88Var.b.a);
        int iMin = Math.min(this.N, this.q.size());
        d dVar = iMin > 0 ? (d) this.q.get(iMin - 1) : null;
        while (dVar != null) {
            int i = dVar.c;
            if (i <= iF && (i != iF || dVar.d <= j)) {
                break;
            }
            int i2 = iMin - 1;
            dVar = i2 > 0 ? (d) this.q.get(iMin - 2) : null;
            iMin = i2;
        }
        if (iMin < this.q.size()) {
            d dVar2 = (d) this.q.get(iMin);
            while (dVar2 != null && dVar2.e != null) {
                int i3 = dVar2.c;
                if (i3 >= iF && (i3 != iF || dVar2.d > j)) {
                    break;
                }
                iMin++;
                dVar2 = iMin < this.q.size() ? (d) this.q.get(iMin) : null;
            }
            while (dVar2 != null && dVar2.e != null && dVar2.c == iF) {
                long j3 = dVar2.d;
                if (j3 <= j || j3 > j2) {
                    break;
                }
                try {
                    C0(dVar2.b);
                    if (dVar2.b.b() || dVar2.b.j()) {
                        this.q.remove(iMin);
                    } else {
                        iMin++;
                    }
                    dVar2 = iMin < this.q.size() ? (d) this.q.get(iMin) : null;
                } catch (Throwable th) {
                    if (dVar2.b.b() || dVar2.b.j()) {
                        this.q.remove(iMin);
                    }
                    throw th;
                }
            }
            this.N = iMin;
        }
    }

    public final boolean T0() {
        wk6 wk6VarP;
        wk6 wk6VarJ;
        return V0() && !this.C && (wk6VarP = this.t.p()) != null && (wk6VarJ = wk6VarP.j()) != null && this.M >= wk6VarJ.m() && wk6VarJ.g;
    }

    public final void U() {
        yk6 yk6VarO;
        this.t.y(this.M);
        if (this.t.D() && (yk6VarO = this.t.o(this.M, this.y)) != null) {
            wk6 wk6VarG = this.t.g(this.d, this.e, this.g.getAllocator(), this.u, yk6VarO, this.f);
            wk6VarG.a.g(this, yk6VarO.b);
            if (this.t.p() == wk6VarG) {
                o0(yk6VarO.b);
            }
            C(false);
        }
        if (!this.E) {
            R();
        } else {
            this.E = L();
            c1();
        }
    }

    public final boolean U0() {
        if (!L()) {
            return false;
        }
        wk6 wk6VarJ = this.t.j();
        return this.g.shouldContinueLoading(wk6VarJ == this.t.p() ? wk6VarJ.y(this.M) : wk6VarJ.y(this.M) - wk6VarJ.f.b, z(wk6VarJ.k()), this.p.getPlaybackParameters().b);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    public final void V() {
        boolean z;
        boolean z2 = false;
        while (T0()) {
            if (z2) {
                S();
            }
            wk6 wk6Var = (wk6) zi.e(this.t.b());
            if (this.y.b.a.equals(wk6Var.f.a.a)) {
                com.google.android.exoplayer2.source.i.b bVar = this.y.b;
                if (bVar.b == -1) {
                    com.google.android.exoplayer2.source.i.b bVar2 = wk6Var.f.a;
                    if (bVar2.b != -1 || bVar.e == bVar2.e) {
                        z = false;
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            yk6 yk6Var = wk6Var.f;
            com.google.android.exoplayer2.source.i.b bVar3 = yk6Var.a;
            long j = yk6Var.b;
            this.y = H(bVar3, j, yk6Var.c, j, !z, 0);
            n0();
            f1();
            z2 = true;
        }
    }

    public final boolean V0() {
        b88 b88Var = this.y;
        return b88Var.l && b88Var.m == 0;
    }

    public final void W() {
        wk6 wk6VarQ = this.t.q();
        if (wk6VarQ == null) {
            return;
        }
        int i = 0;
        if (wk6VarQ.j() != null && !this.C) {
            if (J()) {
                if (wk6VarQ.j().d || this.M >= wk6VarQ.j().m()) {
                    sva svaVarO = wk6VarQ.o();
                    wk6 wk6VarC = this.t.c();
                    sva svaVarO2 = wk6VarC.o();
                    a0 a0Var = this.y.a;
                    g1(a0Var, wk6VarC.f.a, a0Var, wk6VarQ.f.a, C.TIME_UNSET);
                    if (wk6VarC.d && wk6VarC.a.readDiscontinuity() != C.TIME_UNSET) {
                        E0(wk6VarC.m());
                        return;
                    }
                    for (int i2 = 0; i2 < this.b.length; i2++) {
                        boolean zC = svaVarO.c(i2);
                        boolean zC2 = svaVarO2.c(i2);
                        if (zC && !this.b[i2].isCurrentStreamFinal()) {
                            boolean z = this.d[i2].getTrackType() == -2;
                            ls8 ls8Var = svaVarO.b[i2];
                            ls8 ls8Var2 = svaVarO2.b[i2];
                            if (!zC2 || !ls8Var2.equals(ls8Var) || z) {
                                F0(this.b[i2], wk6VarC.m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!wk6VarQ.f.i && !this.C) {
            return;
        }
        while (true) {
            w[] wVarArr = this.b;
            if (i >= wVarArr.length) {
                return;
            }
            w wVar = wVarArr[i];
            h19 h19Var = wk6VarQ.c[i];
            if (h19Var != null && wVar.getStream() == h19Var && wVar.hasReadStreamToEnd()) {
                long j = wk6VarQ.f.e;
                F0(wVar, (j == C.TIME_UNSET || j == Long.MIN_VALUE) ? -9223372036854775807L : wk6VarQ.l() + wk6VarQ.f.e);
            }
            i++;
        }
    }

    public final boolean W0(boolean z) {
        if (this.K == 0) {
            return N();
        }
        if (!z) {
            return false;
        }
        b88 b88Var = this.y;
        if (!b88Var.g) {
            return true;
        }
        long targetLiveOffsetUs = X0(b88Var.a, this.t.p().f.a) ? this.v.getTargetLiveOffsetUs() : C.TIME_UNSET;
        wk6 wk6VarJ = this.t.j();
        return (wk6VarJ.q() && wk6VarJ.f.i) || (wk6VarJ.f.a.b() && !wk6VarJ.d) || this.g.shouldStartPlayback(y(), this.p.getPlaybackParameters().b, this.D, targetLiveOffsetUs);
    }

    public final void X() throws ExoPlaybackException {
        wk6 wk6VarQ = this.t.q();
        if (wk6VarQ == null || this.t.p() == wk6VarQ || wk6VarQ.g || !k0()) {
            return;
        }
        n();
    }

    public final boolean X0(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar) {
        if (bVar.b() || a0Var.u()) {
            return false;
        }
        a0Var.r(a0Var.l(bVar.a, this.m).d, this.l);
        if (!this.l.i()) {
            return false;
        }
        a0.d dVar = this.l;
        return dVar.j && dVar.g != C.TIME_UNSET;
    }

    public final void Y() throws Throwable {
        D(this.u.i(), true);
    }

    public final void Y0() {
        this.D = false;
        this.p.f();
        for (w wVar : this.b) {
            if (M(wVar)) {
                wVar.start();
            }
        }
    }

    public final void Z(c cVar) {
        this.z.b(1);
        throw null;
    }

    public void Z0() {
        this.i.obtainMessage(6).sendToTarget();
    }

    @Override
    public synchronized void a(u uVar) {
        if (!this.A && this.j.isAlive()) {
            this.i.obtainMessage(14, uVar).sendToTarget();
            return;
        }
        op5.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        uVar.k(false);
    }

    public final void a0() {
        for (wk6 wk6VarP = this.t.p(); wk6VarP != null; wk6VarP = wk6VarP.j()) {
            for (qi3 qi3Var : wk6VarP.o().c) {
                if (qi3Var != null) {
                    qi3Var.onDiscontinuity();
                }
            }
        }
    }

    public final void a1(boolean z, boolean z2) {
        m0(z || !this.H, false, true, false);
        this.z.b(z2 ? 1 : 0);
        this.g.onStopped();
        S0(1);
    }

    public final void b0(boolean z) {
        for (wk6 wk6VarP = this.t.p(); wk6VarP != null; wk6VarP = wk6VarP.j()) {
            for (qi3 qi3Var : wk6VarP.o().c) {
                if (qi3Var != null) {
                    qi3Var.onPlayWhenReadyChanged(z);
                }
            }
        }
    }

    public final void b1() {
        this.p.g();
        for (w wVar : this.b) {
            if (M(wVar)) {
                p(wVar);
            }
        }
    }

    public final void c0() {
        for (wk6 wk6VarP = this.t.p(); wk6VarP != null; wk6VarP = wk6VarP.j()) {
            for (qi3 qi3Var : wk6VarP.o().c) {
                if (qi3Var != null) {
                    qi3Var.onRebuffer();
                }
            }
        }
    }

    public final void c1() {
        wk6 wk6VarJ = this.t.j();
        boolean z = this.E || (wk6VarJ != null && wk6VarJ.a.isLoading());
        b88 b88Var = this.y;
        if (z != b88Var.g) {
            this.y = b88Var.a(z);
        }
    }

    @Override
    public void d(com.google.android.exoplayer2.source.h hVar) {
        this.i.obtainMessage(8, hVar).sendToTarget();
    }

    @Override
    public void b(com.google.android.exoplayer2.source.h hVar) {
        this.i.obtainMessage(9, hVar).sendToTarget();
    }

    public final void d1(eva evaVar, sva svaVar) {
        this.g.a(this.b, evaVar, svaVar.c);
    }

    public void e0() {
        this.i.obtainMessage(0).sendToTarget();
    }

    public final void e1() throws ExoPlaybackException {
        if (this.y.a.u() || !this.u.s()) {
            return;
        }
        U();
        W();
        X();
        V();
    }

    public final void f0() {
        this.z.b(1);
        m0(false, false, false, true);
        this.g.onPrepared();
        S0(this.y.a.u() ? 4 : 2);
        this.u.v(this.h.getTransferListener());
        this.i.sendEmptyMessage(2);
    }

    public final void f1() {
        wk6 wk6VarP = this.t.p();
        if (wk6VarP == null) {
            return;
        }
        long discontinuity = wk6VarP.d ? wk6VarP.a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            o0(discontinuity);
            if (discontinuity != this.y.r) {
                b88 b88Var = this.y;
                this.y = H(b88Var.b, discontinuity, b88Var.c, discontinuity, true, 5);
            }
        } else {
            long jH = this.p.h(wk6VarP != this.t.q());
            this.M = jH;
            long jY = wk6VarP.y(jH);
            T(this.y.r, jY);
            this.y.r = jY;
        }
        this.y.p = this.t.j().i();
        this.y.q = y();
        b88 b88Var2 = this.y;
        if (b88Var2.l && b88Var2.e == 3 && X0(b88Var2.a, b88Var2.b) && this.y.n.b == 1.0f) {
            float adjustedPlaybackSpeed = this.v.getAdjustedPlaybackSpeed(s(), y());
            if (this.p.getPlaybackParameters().b != adjustedPlaybackSpeed) {
                this.p.b(this.y.n.e(adjustedPlaybackSpeed));
                F(this.y.n, this.p.getPlaybackParameters().b, false, false);
            }
        }
    }

    public synchronized boolean g0() {
        if (!this.A && this.j.isAlive()) {
            this.i.sendEmptyMessage(7);
            i1(new w6a() {
                @Override
                public final Object get() {
                    return this.b.P();
                }
            }, this.w);
            return this.A;
        }
        return true;
    }

    public final void g1(a0 a0Var, com.google.android.exoplayer2.source.i.b bVar, a0 a0Var2, com.google.android.exoplayer2.source.i.b bVar2, long j) {
        if (!X0(a0Var, bVar)) {
            s sVar = bVar.b() ? s.e : this.y.n;
            if (this.p.getPlaybackParameters().equals(sVar)) {
                return;
            }
            this.p.b(sVar);
            return;
        }
        a0Var.r(a0Var.l(bVar.a, this.m).d, this.l);
        this.v.a((n.g) blb.j(this.l.l));
        if (j != C.TIME_UNSET) {
            this.v.setTargetLiveOffsetOverrideUs(u(a0Var, bVar.a, j));
            return;
        }
        if (blb.c(!a0Var2.u() ? a0Var2.r(a0Var2.l(bVar2.a, this.m).d, this.l).b : null, this.l.b)) {
            return;
        }
        this.v.setTargetLiveOffsetOverrideUs(C.TIME_UNSET);
    }

    public final void h(b bVar, int i) throws Throwable {
        this.z.b(1);
        q qVar = this.u;
        if (i == -1) {
            i = qVar.q();
        }
        D(qVar.f(i, bVar.a, bVar.b), false);
    }

    public final void h0() {
        m0(true, false, true, false);
        this.g.onReleased();
        S0(1);
        this.j.quit();
        synchronized (this) {
            this.A = true;
            notifyAll();
        }
    }

    public final void h1(float f2) {
        for (wk6 wk6VarP = this.t.p(); wk6VarP != null; wk6VarP = wk6VarP.j()) {
            for (qi3 qi3Var : wk6VarP.o().c) {
                if (qi3Var != null) {
                    qi3Var.onPlaybackSpeed(f2);
                }
            }
        }
    }

    @Override
    public boolean handleMessage(Message message) throws Throwable {
        int i;
        wk6 wk6VarQ;
        int i2 = 1000;
        try {
            switch (message.what) {
                case 0:
                    f0();
                    break;
                case 1:
                    M0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    l();
                    break;
                case 3:
                    y0((h) message.obj);
                    break;
                case 4:
                    N0((s) message.obj);
                    break;
                case 5:
                    P0((ka9) message.obj);
                    break;
                case 6:
                    a1(false, true);
                    break;
                case 7:
                    h0();
                    return true;
                case 8:
                    E((com.google.android.exoplayer2.source.h) message.obj);
                    break;
                case 9:
                    A((com.google.android.exoplayer2.source.h) message.obj);
                    break;
                case 10:
                    l0();
                    break;
                case 11:
                    O0(message.arg1);
                    break;
                case 12:
                    Q0(message.arg1 != 0);
                    break;
                case 13:
                    G0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    B0((u) message.obj);
                    break;
                case 15:
                    D0((u) message.obj);
                    break;
                case 16:
                    G((s) message.obj, false);
                    break;
                case 17:
                    H0((b) message.obj);
                    break;
                case 18:
                    h((b) message.obj, message.arg1);
                    break;
                case 19:
                    ubc.a(message.obj);
                    Z(null);
                    break;
                case 20:
                    i0(message.arg1, message.arg2, (mi9) message.obj);
                    break;
                case 21:
                    R0((mi9) message.obj);
                    break;
                case 22:
                    Y();
                    break;
                case 23:
                    K0(message.arg1 != 0);
                    break;
                case 24:
                    J0(message.arg1 == 1);
                    break;
                case 25:
                    i();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e2) {
            e = e2;
            if (e.type == 1 && (wk6VarQ = this.t.q()) != null) {
                e = e.copyWithMediaPeriodId(wk6VarQ.f.a);
            }
            if (e.isRecoverable && this.P == null) {
                op5.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.P = e;
                xn4 xn4Var = this.i;
                xn4Var.a(xn4Var.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.P;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.P;
                }
                op5.d("ExoPlayerImplInternal", "Playback error", e);
                a1(true, false);
                this.y = this.y.e(e);
            }
        } catch (ParserException e3) {
            int i3 = e3.dataType;
            if (i3 == 1) {
                i = e3.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i3 == 4) {
                    i = e3.contentIsMalformed ? 3002 : 3004;
                }
                B(e3, i2);
            }
            i2 = i;
            B(e3, i2);
        } catch (DrmSession.DrmSessionException e4) {
            B(e4, e4.errorCode);
        } catch (BehindLiveWindowException e5) {
            B(e5, 1002);
        } catch (DataSourceException e6) {
            B(e6, e6.reason);
        } catch (IOException e7) {
            B(e7, 2000);
        } catch (RuntimeException e8) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e8, ((e8 instanceof IllegalStateException) || (e8 instanceof IllegalArgumentException)) ? 1004 : 1000);
            op5.d("ExoPlayerImplInternal", "Playback error", exoPlaybackExceptionCreateForUnexpected);
            a1(true, false);
            this.y = this.y.e(exoPlaybackExceptionCreateForUnexpected);
        }
        S();
        return true;
    }

    public final void i() throws ExoPlaybackException {
        x0(true);
    }

    public final void i0(int i, int i2, mi9 mi9Var) throws Throwable {
        this.z.b(1);
        D(this.u.z(i, i2, mi9Var), false);
    }

    public final synchronized void i1(w6a w6aVar, long j) {
        long jElapsedRealtime = this.r.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) w6aVar.get()).booleanValue() && j > 0) {
            try {
                this.r.onThreadBlocked();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - this.r.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final void j(u uVar) {
        if (uVar.j()) {
            return;
        }
        try {
            uVar.g().handleMessage(uVar.i(), uVar.e());
        } finally {
            uVar.k(true);
        }
    }

    public void j0(int i, int i2, mi9 mi9Var) {
        this.i.obtainMessage(20, i, i2, mi9Var).sendToTarget();
    }

    public final void k(w wVar) {
        if (M(wVar)) {
            this.p.a(wVar);
            p(wVar);
            wVar.disable();
            this.K--;
        }
    }

    public final boolean k0() {
        wk6 wk6VarQ = this.t.q();
        sva svaVarO = wk6VarQ.o();
        int i = 0;
        boolean z = false;
        while (true) {
            w[] wVarArr = this.b;
            if (i >= wVarArr.length) {
                return !z;
            }
            w wVar = wVarArr[i];
            if (M(wVar)) {
                boolean z2 = wVar.getStream() != wk6VarQ.c[i];
                if (!svaVarO.c(i) || z2) {
                    if (!wVar.isCurrentStreamFinal()) {
                        wVar.c(t(svaVarO.c[i]), wk6VarQ.c[i], wk6VarQ.m(), wk6VarQ.l());
                    } else if (wVar.isEnded()) {
                        k(wVar);
                    } else {
                        z = true;
                    }
                }
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01a2  */
    public final void l() throws ExoPlaybackException {
        boolean z;
        boolean z2;
        int i;
        long jUptimeMillis = this.r.uptimeMillis();
        this.i.removeMessages(2);
        e1();
        int i2 = this.y.e;
        if (i2 == 1 || i2 == 4) {
            return;
        }
        wk6 wk6VarP = this.t.p();
        if (wk6VarP == null) {
            v0(jUptimeMillis, 10L);
            return;
        }
        sua.a("doSomeWork");
        f1();
        if (wk6VarP.d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            wk6VarP.a.discardBuffer(this.y.r - this.n, this.o);
            z = true;
            z2 = true;
            int i3 = 0;
            while (true) {
                w[] wVarArr = this.b;
                if (i3 >= wVarArr.length) {
                    break;
                }
                w wVar = wVarArr[i3];
                if (M(wVar)) {
                    wVar.render(this.M, jElapsedRealtime);
                    z = z && wVar.isEnded();
                    boolean z3 = wk6VarP.c[i3] != wVar.getStream();
                    boolean z4 = z3 || (!z3 && wVar.hasReadStreamToEnd()) || wVar.isReady() || wVar.isEnded();
                    z2 = z2 && z4;
                    if (!z4) {
                        wVar.maybeThrowStreamError();
                    }
                }
                i3++;
            }
        } else {
            wk6VarP.a.maybeThrowPrepareError();
            z = true;
            z2 = true;
        }
        long j = wk6VarP.f.e;
        boolean z5 = z && wk6VarP.d && (j == C.TIME_UNSET || j <= this.y.r);
        if (z5 && this.C) {
            this.C = false;
            M0(false, this.y.m, false, 5);
        }
        if (z5 && wk6VarP.f.i) {
            S0(4);
            b1();
        } else if (this.y.e == 2 && W0(z2)) {
            S0(3);
            this.P = null;
            if (V0()) {
                Y0();
            }
        } else if (this.y.e == 3 && (this.K != 0 ? !z2 : !N())) {
            this.D = V0();
            S0(2);
            if (this.D) {
                c0();
                this.v.notifyRebuffer();
            }
            b1();
        }
        if (this.y.e == 2) {
            int i4 = 0;
            while (true) {
                w[] wVarArr2 = this.b;
                if (i4 >= wVarArr2.length) {
                    break;
                }
                if (M(wVarArr2[i4]) && this.b[i4].getStream() == wk6VarP.c[i4]) {
                    this.b[i4].maybeThrowStreamError();
                }
                i4++;
            }
            b88 b88Var = this.y;
            if (b88Var.g || b88Var.q >= 500000 || !L()) {
                this.R = C.TIME_UNSET;
            } else if (this.R == C.TIME_UNSET) {
                this.R = this.r.elapsedRealtime();
            } else if (this.r.elapsedRealtime() - this.R >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.R = C.TIME_UNSET;
        }
        boolean z6 = V0() && this.y.e == 3;
        boolean z7 = this.J && this.I && z6;
        b88 b88Var2 = this.y;
        if (b88Var2.o != z7) {
            this.y = b88Var2.h(z7);
        }
        this.I = false;
        if (z7 || (i = this.y.e) == 4) {
            return;
        }
        if (z6 || i == 2) {
            v0(jUptimeMillis, 10L);
        } else if (i == 3 && this.K != 0) {
            v0(jUptimeMillis, 1000L);
        }
        sua.c();
    }

    public final void l0() throws ExoPlaybackException {
        float f2 = this.p.getPlaybackParameters().b;
        wk6 wk6VarQ = this.t.q();
        boolean z = true;
        for (wk6 wk6VarP = this.t.p(); wk6VarP != null && wk6VarP.d; wk6VarP = wk6VarP.j()) {
            sva svaVarV = wk6VarP.v(f2, this.y.a);
            if (!svaVarV.a(wk6VarP.o())) {
                if (z) {
                    wk6 wk6VarP2 = this.t.p();
                    boolean z2 = this.t.z(wk6VarP2);
                    boolean[] zArr = new boolean[this.b.length];
                    long jB = wk6VarP2.b(svaVarV, this.y.r, z2, zArr);
                    b88 b88Var = this.y;
                    boolean z3 = (b88Var.e == 4 || jB == b88Var.r) ? false : true;
                    b88 b88Var2 = this.y;
                    this.y = H(b88Var2.b, jB, b88Var2.c, b88Var2.d, z3, 5);
                    if (z3) {
                        o0(jB);
                    }
                    boolean[] zArr2 = new boolean[this.b.length];
                    int i = 0;
                    while (true) {
                        w[] wVarArr = this.b;
                        if (i >= wVarArr.length) {
                            break;
                        }
                        w wVar = wVarArr[i];
                        boolean zM = M(wVar);
                        zArr2[i] = zM;
                        h19 h19Var = wk6VarP2.c[i];
                        if (zM) {
                            if (h19Var != wVar.getStream()) {
                                k(wVar);
                            } else if (zArr[i]) {
                                wVar.resetPosition(this.M);
                            }
                        }
                        i++;
                    }
                    o(zArr2);
                } else {
                    this.t.z(wk6VarP);
                    if (wk6VarP.d) {
                        wk6VarP.a(svaVarV, Math.max(wk6VarP.f.b, wk6VarP.y(this.M)), false);
                    }
                }
                C(true);
                if (this.y.e != 4) {
                    R();
                    f1();
                    this.i.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (wk6VarP == wk6VarQ) {
                z = false;
            }
        }
    }

    public final void m(int i, boolean z) throws ExoPlaybackException {
        w wVar = this.b[i];
        if (M(wVar)) {
            return;
        }
        wk6 wk6VarQ = this.t.q();
        boolean z2 = wk6VarQ == this.t.p();
        sva svaVarO = wk6VarQ.o();
        ls8 ls8Var = svaVarO.b[i];
        k[] kVarArrT = t(svaVarO.c[i]);
        boolean z3 = V0() && this.y.e == 3;
        boolean z4 = !z && z3;
        this.K++;
        this.c.add(wVar);
        wVar.e(ls8Var, kVarArrT, wk6VarQ.c[i], this.M, z4, z2, wk6VarQ.m(), wk6VarQ.l());
        wVar.handleMessage(11, new a());
        this.p.c(wVar);
        if (z3) {
            wVar.start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a4 A[PHI: r4 r5 r7
      0x00a4: PHI (r4v3 com.google.android.exoplayer2.source.i$b) = (r4v2 com.google.android.exoplayer2.source.i$b), (r4v9 com.google.android.exoplayer2.source.i$b) binds: [B:28:0x0077, B:30:0x009c] A[DONT_GENERATE, DONT_INLINE]
      0x00a4: PHI (r5v2 long) = (r5v1 long), (r5v5 long) binds: [B:28:0x0077, B:30:0x009c] A[DONT_GENERATE, DONT_INLINE]
      0x00a4: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:28:0x0077, B:30:0x009c] A[DONT_GENERATE, DONT_INLINE]] */
    public final void m0(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        this.i.removeMessages(2);
        this.P = null;
        this.D = false;
        this.p.g();
        this.M = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        for (w wVar : this.b) {
            try {
                k(wVar);
            } catch (ExoPlaybackException | RuntimeException e2) {
                op5.d("ExoPlayerImplInternal", "Disable failed.", e2);
            }
        }
        if (z) {
            for (w wVar2 : this.b) {
                if (this.c.remove(wVar2)) {
                    try {
                        wVar2.reset();
                    } catch (RuntimeException e3) {
                        op5.d("ExoPlayerImplInternal", "Reset failed.", e3);
                    }
                }
            }
        }
        this.K = 0;
        b88 b88Var = this.y;
        com.google.android.exoplayer2.source.i.b bVar = b88Var.b;
        long jLongValue = b88Var.r;
        long j = (this.y.b.b() || O(this.y, this.m)) ? this.y.c : this.y.r;
        if (z2) {
            this.L = null;
            Pair pairW = w(this.y.a);
            bVar = (com.google.android.exoplayer2.source.i.b) pairW.first;
            jLongValue = ((Long) pairW.second).longValue();
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
        com.google.android.exoplayer2.source.i.b bVar2 = bVar;
        long j2 = jLongValue;
        this.t.f();
        this.E = false;
        b88 b88Var2 = this.y;
        a0 a0Var = b88Var2.a;
        int i = b88Var2.e;
        ExoPlaybackException exoPlaybackException = z4 ? null : b88Var2.f;
        eva evaVar = z5 ? eva.e : b88Var2.h;
        sva svaVar = z5 ? this.f : b88Var2.i;
        List listOf = z5 ? ImmutableList.of() : b88Var2.j;
        b88 b88Var3 = this.y;
        this.y = new b88(a0Var, bVar2, j, j2, i, exoPlaybackException, false, evaVar, svaVar, listOf, bVar2, b88Var3.l, b88Var3.m, b88Var3.n, j2, 0L, j2, false);
        if (z3) {
            this.u.x();
        }
    }

    public final void n() throws ExoPlaybackException {
        o(new boolean[this.b.length]);
    }

    public final void n0() {
        wk6 wk6VarP = this.t.p();
        this.C = wk6VarP != null && wk6VarP.f.h && this.B;
    }

    public final void o(boolean[] zArr) throws ExoPlaybackException {
        wk6 wk6VarQ = this.t.q();
        sva svaVarO = wk6VarQ.o();
        for (int i = 0; i < this.b.length; i++) {
            if (!svaVarO.c(i) && this.c.remove(this.b[i])) {
                this.b[i].reset();
            }
        }
        for (int i2 = 0; i2 < this.b.length; i2++) {
            if (svaVarO.c(i2)) {
                m(i2, zArr[i2]);
            }
        }
        wk6VarQ.g = true;
    }

    public final void o0(long j) {
        wk6 wk6VarP = this.t.p();
        long jZ = wk6VarP == null ? j + MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : wk6VarP.z(j);
        this.M = jZ;
        this.p.d(jZ);
        for (w wVar : this.b) {
            if (M(wVar)) {
                wVar.resetPosition(this.M);
            }
        }
        a0();
    }

    @Override
    public void onPlaybackParametersChanged(s sVar) {
        this.i.obtainMessage(16, sVar).sendToTarget();
    }

    @Override
    public void onPlaylistUpdateRequested() {
        this.i.sendEmptyMessage(22);
    }

    @Override
    public void onTrackSelectionsInvalidated() {
        this.i.sendEmptyMessage(10);
    }

    public final void p(w wVar) {
        if (wVar.getState() == 2) {
            wVar.stop();
        }
    }

    public void q(long j) {
        this.Q = j;
    }

    public final ImmutableList r(qi3[] qi3VarArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z = false;
        for (qi3 qi3Var : qi3VarArr) {
            if (qi3Var != null) {
                Metadata metadata = qi3Var.getFormat(0).k;
                if (metadata == null) {
                    aVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.a(metadata);
                    z = true;
                }
            }
        }
        return z ? aVar.e() : ImmutableList.of();
    }

    public final void r0(a0 a0Var, a0 a0Var2) {
        if (a0Var.u() && a0Var2.u()) {
            return;
        }
        for (int size = this.q.size() - 1; size >= 0; size--) {
            if (!q0((d) this.q.get(size), a0Var, a0Var2, this.F, this.G, this.l, this.m)) {
                ((d) this.q.get(size)).b.k(false);
                this.q.remove(size);
            }
        }
        Collections.sort(this.q);
    }

    public final long s() {
        b88 b88Var = this.y;
        return u(b88Var.a, b88Var.b.a, b88Var.r);
    }

    public final long u(a0 a0Var, Object obj, long j) {
        a0Var.r(a0Var.l(obj, this.m).d, this.l);
        a0.d dVar = this.l;
        if (dVar.g != C.TIME_UNSET && dVar.i()) {
            a0.d dVar2 = this.l;
            if (dVar2.j) {
                return blb.t0(dVar2.d() - this.l.g) - (j + this.m.q());
            }
        }
        return C.TIME_UNSET;
    }

    public final long v() {
        wk6 wk6VarQ = this.t.q();
        if (wk6VarQ == null) {
            return 0L;
        }
        long jL = wk6VarQ.l();
        if (!wk6VarQ.d) {
            return jL;
        }
        int i = 0;
        while (true) {
            w[] wVarArr = this.b;
            if (i >= wVarArr.length) {
                return jL;
            }
            if (M(wVarArr[i]) && this.b[i].getStream() == wk6VarQ.c[i]) {
                long readingPositionUs = this.b[i].getReadingPositionUs();
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jL = Math.max(readingPositionUs, jL);
            }
            i++;
        }
    }

    public final void v0(long j, long j2) {
        this.i.sendEmptyMessageAtTime(2, j + j2);
    }

    public final Pair w(a0 a0Var) {
        if (a0Var.u()) {
            return Pair.create(b88.k(), 0L);
        }
        Pair pairN = a0Var.n(this.l, this.m, a0Var.e(this.G), C.TIME_UNSET);
        com.google.android.exoplayer2.source.i.b bVarB = this.t.B(a0Var, pairN.first, 0L);
        long jLongValue = ((Long) pairN.second).longValue();
        if (bVarB.b()) {
            a0Var.l(bVarB.a, this.m);
            jLongValue = bVarB.c == this.m.n(bVarB.b) ? this.m.j() : 0L;
        }
        return Pair.create(bVarB, Long.valueOf(jLongValue));
    }

    public void w0(a0 a0Var, int i, long j) {
        this.i.obtainMessage(3, new h(a0Var, i, j)).sendToTarget();
    }

    public Looper x() {
        return this.k;
    }

    public final void x0(boolean z) throws ExoPlaybackException {
        com.google.android.exoplayer2.source.i.b bVar = this.t.p().f.a;
        long jA0 = A0(bVar, this.y.r, true, false);
        if (jA0 != this.y.r) {
            b88 b88Var = this.y;
            this.y = H(bVar, jA0, b88Var.c, b88Var.d, z, 5);
        }
    }

    public final long y() {
        return z(this.y.p);
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
    public final void y0(h hVar) throws Throwable {
        long jLongValue;
        long j;
        boolean z;
        com.google.android.exoplayer2.source.i.b bVar;
        long j2;
        long j3;
        long j4;
        long jC;
        boolean z2;
        long jZ0;
        boolean z3;
        long j5;
        wk6 wk6VarP;
        b88 b88Var;
        int i;
        this.z.b(1);
        Pair pairT0 = t0(this.y.a, hVar, true, this.F, this.G, this.l, this.m);
        try {
            if (pairT0 != null) {
                Object obj = pairT0.first;
                jLongValue = ((Long) pairT0.second).longValue();
                long j6 = hVar.c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                com.google.android.exoplayer2.source.i.b bVarB = this.t.B(this.y.a, obj, jLongValue);
                if (bVarB.b()) {
                    this.y.a.l(bVarB.a, this.m);
                    j2 = this.m.n(bVarB.b) == bVarB.c ? this.m.j() : 0L;
                    j3 = j6;
                    bVar = bVarB;
                    z = true;
                } else {
                    j = j6;
                    z = hVar.c == C.TIME_UNSET;
                    bVar = bVarB;
                }
                if (this.y.a.u()) {
                    if (pairT0 == null) {
                        if (this.y.e != 1) {
                            S0(4);
                        }
                        m0(false, true, false, true);
                    } else {
                        if (bVar.equals(this.y.b)) {
                            wk6VarP = this.t.p();
                            if (wk6VarP == null && wk6VarP.d && j2 != 0) {
                                jC = wk6VarP.a.c(j2, this.x);
                            } else {
                                jC = j2;
                            }
                            if (blb.P0(jC) == blb.P0(this.y.r) && ((i = (b88Var = this.y).e) == 2 || i == 3)) {
                                long j7 = b88Var.r;
                                this.y = H(bVar, j7, j3, j7, z, 2);
                                return;
                            }
                        } else {
                            jC = j2;
                        }
                        if (this.y.e == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        jZ0 = z0(bVar, jC, z2);
                        z3 = (j2 != jZ0) | z;
                        try {
                            b88 b88Var2 = this.y;
                            a0 a0Var = b88Var2.a;
                            g1(a0Var, bVar, a0Var, b88Var2.b, j3);
                            z = z3;
                            j5 = jZ0;
                        } catch (Throwable th) {
                            th = th;
                            z = z3;
                            j4 = jZ0;
                            this.y = H(bVar, j4, j3, j4, z, 2);
                            throw th;
                        }
                    }
                    this.y = H(bVar, j5, j3, j5, z, 2);
                    return;
                }
                this.L = hVar;
                j5 = j2;
                this.y = H(bVar, j5, j3, j5, z, 2);
                return;
            }
            Pair pairW = w(this.y.a);
            bVar = (com.google.android.exoplayer2.source.i.b) pairW.first;
            jLongValue = ((Long) pairW.second).longValue();
            z = !this.y.a.u();
            j = -9223372036854775807L;
            if (this.y.a.u()) {
                if (pairT0 == null) {
                    if (this.y.e != 1) {
                        S0(4);
                    }
                    m0(false, true, false, true);
                } else {
                    if (bVar.equals(this.y.b)) {
                        wk6VarP = this.t.p();
                        if (wk6VarP == null) {
                            jC = j2;
                        } else {
                            jC = j2;
                        }
                        if (blb.P0(jC) == blb.P0(this.y.r)) {
                            long j8 = b88Var.r;
                            this.y = H(bVar, j8, j3, j8, z, 2);
                            return;
                        }
                    } else {
                        jC = j2;
                    }
                    if (this.y.e == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    jZ0 = z0(bVar, jC, z2);
                    z3 = (j2 != jZ0) | z;
                    b88 b88Var3 = this.y;
                    a0 a0Var2 = b88Var3.a;
                    g1(a0Var2, bVar, a0Var2, b88Var3.b, j3);
                    z = z3;
                    j5 = jZ0;
                }
                this.y = H(bVar, j5, j3, j5, z, 2);
                return;
            }
            this.L = hVar;
            j5 = j2;
            this.y = H(bVar, j5, j3, j5, z, 2);
            return;
        } catch (Throwable th2) {
            th = th2;
            j4 = j2;
        }
        j2 = jLongValue;
        j3 = j;
    }

    public final long z(long j) {
        wk6 wk6VarJ = this.t.j();
        if (wk6VarJ == null) {
            return 0L;
        }
        return Math.max(0L, j - wk6VarJ.y(this.M));
    }

    public final long z0(com.google.android.exoplayer2.source.i.b bVar, long j, boolean z) {
        return A0(bVar, j, this.t.p() != this.t.q(), z);
    }
}
