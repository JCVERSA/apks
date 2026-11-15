package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.a7j;
import defpackage.aaj;
import defpackage.apj;
import defpackage.arj;
import defpackage.baj;
import defpackage.bnj;
import defpackage.bpj;
import defpackage.bue;
import defpackage.caj;
import defpackage.d8j;
import defpackage.e4f;
import defpackage.f8j;
import defpackage.g7j;
import defpackage.h2j;
import defpackage.hre;
import defpackage.hvg;
import defpackage.i7j;
import defpackage.i8j;
import defpackage.iqe;
import defpackage.j2j;
import defpackage.j9j;
import defpackage.k3i;
import defpackage.kaj;
import defpackage.kfh;
import defpackage.l3j;
import defpackage.l4i;
import defpackage.m9j;
import defpackage.mrj;
import defpackage.n7g;
import defpackage.npj;
import defpackage.nrj;
import defpackage.o9j;
import defpackage.olg;
import defpackage.q6j;
import defpackage.q9j;
import defpackage.qaj;
import defpackage.r7j;
import defpackage.r9j;
import defpackage.t4j;
import defpackage.t7j;
import defpackage.t9j;
import defpackage.tbg;
import defpackage.tfj;
import defpackage.tqj;
import defpackage.u0j;
import defpackage.ubc;
import defpackage.v7j;
import defpackage.v9j;
import defpackage.vwe;
import defpackage.w1j;
import defpackage.w4f;
import defpackage.wfe;
import defpackage.x0j;
import defpackage.x6j;
import defpackage.x9j;
import defpackage.y2f;
import defpackage.ymj;
import defpackage.yoj;
import defpackage.yqj;
import defpackage.z7j;
import defpackage.z9j;
import defpackage.zmj;
import defpackage.zqj;
import defpackage.zrg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

public final class vb implements Handler.Callback, ymj, yqj, j9j, h2j, r9j, u0j {
    public static final long Z = kfh.Q(10000);
    public o9j A;
    public g7j B;
    public boolean C;
    public boolean E;
    public boolean F;
    public boolean H;
    public boolean K;
    public int L;
    public i7j M;
    public long N;
    public long O;
    public int P;
    public boolean Q;
    public zzii R;
    public l3j T;
    public boolean V;
    public final t4j X;
    public final w1j Y;
    public final caj[] b;
    public final aaj[] c;
    public final boolean[] d;
    public final zqj e;
    public final arj f;
    public final t7j g;
    public final mrj h;
    public final olg i;
    public final q9j j;
    public final Looper k;
    public final e4f l;
    public final y2f m;
    public final long n;
    public final j2j o;
    public final ArrayList p;
    public final tbg q;
    public final i8j r;
    public final m9j s;
    public final long t;
    public final tfj u;
    public final qaj v;
    public final olg w;
    public final boolean x;
    public final x0j y;
    public kaj z;
    public long U = C.TIME_UNSET;
    public int I = 0;
    public boolean J = false;
    public boolean D = false;
    public float W = 1.0f;
    public long S = C.TIME_UNSET;
    public long G = C.TIME_UNSET;

    public vb(Context context, x9j[] x9jVarArr, x9j[] x9jVarArr2, zqj zqjVar, arj arjVar, t7j t7jVar, mrj mrjVar, int i, boolean z, qaj qajVar, kaj kajVar, w1j w1jVar, long j, boolean z2, boolean z3, Looper looper, tbg tbgVar, t4j t4jVar, tfj tfjVar, q9j q9jVar, l3j l3jVar) {
        this.X = t4jVar;
        this.e = zqjVar;
        this.f = arjVar;
        this.g = t7jVar;
        this.h = mrjVar;
        int i2 = 0;
        this.z = kajVar;
        this.Y = w1jVar;
        this.t = j;
        this.q = tbgVar;
        this.u = tfjVar;
        this.T = l3jVar;
        this.v = qajVar;
        this.n = t7jVar.d(tfjVar);
        t7jVar.i(tfjVar);
        w4f w4fVar = w4f.a;
        o9j o9jVarH = o9j.h(arjVar);
        this.A = o9jVarH;
        this.B = new g7j(o9jVarH);
        int length = x9jVarArr.length;
        this.c = new aaj[2];
        this.d = new boolean[2];
        z9j z9jVarB = zqjVar.b();
        this.b = new caj[2];
        boolean z4 = false;
        for (int i3 = 2; i2 < i3; i3 = 2) {
            x9jVarArr[i2].n(i2, tfjVar, tbgVar);
            this.c[i2] = x9jVarArr[i2].zzm();
            this.c[i2].j(z9jVarB);
            x9j x9jVar = x9jVarArr2[i2];
            if (x9jVar != null) {
                x9jVar.n(i2, tfjVar, tbgVar);
                z4 = true;
            }
            this.b[i2] = new caj(x9jVarArr[i2], x9jVarArr2[i2], i2);
            i2++;
        }
        this.x = z4;
        this.o = new j2j(this, tbgVar);
        this.p = new ArrayList();
        this.l = new e4f();
        this.m = new y2f();
        zqjVar.i(this, mrjVar);
        this.Q = true;
        olg olgVarA = tbgVar.a(looper, null);
        this.w = olgVarA;
        this.r = new i8j(qajVar, olgVarA, new q6j(this), l3jVar);
        this.s = new m9j(this, qajVar, olgVarA, tfjVar);
        q9j q9jVar2 = new q9j(null);
        this.j = q9jVar2;
        Looper looperA = q9jVar2.a();
        this.k = looperA;
        this.i = tbgVar.a(looperA, this);
        this.y = new x0j(context, looperA, this);
    }

    public static final void F(t9j t9jVar) {
        t9jVar.i();
        try {
            t9jVar.c().e(t9jVar.a(), t9jVar.g());
        } finally {
            t9jVar.h(true);
        }
    }

    public static boolean c0(o9j o9jVar, y2f y2fVar) {
        bnj bnjVar = o9jVar.b;
        w4f w4fVar = o9jVar.a;
        return w4fVar.o() || w4fVar.n(bnjVar.a, y2fVar).f;
    }

    public static final boolean f0(d8j d8jVar) {
        if (d8jVar != null) {
            try {
                if (d8jVar.e) {
                    yoj[] yojVarArr = d8jVar.c;
                    for (int i = 0; i < 2; i++) {
                        yoj yojVar = yojVarArr[i];
                        if (yojVar != null) {
                            yojVar.zzd();
                        }
                    }
                } else {
                    d8jVar.a.zzi();
                }
                if (d8jVar.d() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static int g0(e4f e4fVar, y2f y2fVar, int i, boolean z, Object obj, w4f w4fVar, w4f w4fVar2) {
        Object obj2 = w4fVar.e(w4fVar.n(obj, y2fVar).c, e4fVar, 0L).a;
        for (int i2 = 0; i2 < w4fVar2.c(); i2++) {
            if (w4fVar2.e(i2, e4fVar, 0L).a.equals(obj2)) {
                return i2;
            }
        }
        int iA = w4fVar.a(obj);
        int iB = w4fVar.b();
        int i3 = iA;
        int iA2 = -1;
        for (int i4 = 0; i4 < iB && iA2 == -1; i4++) {
            i3 = w4fVar.i(i3, y2fVar, e4fVar, i, z);
            if (i3 == -1) {
                iA2 = -1;
                break;
            }
            iA2 = w4fVar2.a(w4fVar.f(i3));
        }
        if (iA2 == -1) {
            return -1;
        }
        return w4fVar2.d(iA2, y2fVar, false).c;
    }

    public static d8j i0(vb vbVar, f8j f8jVar, long j) {
        nrj nrjVarZzk = vbVar.g.zzk();
        long j2 = vbVar.T.a;
        arj arjVar = vbVar.f;
        m9j m9jVar = vbVar.s;
        return new d8j(vbVar.c, j, vbVar.e, nrjVarZzk, m9jVar, f8jVar, arjVar, C.TIME_UNSET);
    }

    public static Pair j(w4f w4fVar, i7j i7jVar, boolean z, int i, boolean z2, e4f e4fVar, y2f y2fVar) {
        w4f w4fVar2 = i7jVar.a;
        if (w4fVar.o()) {
            return null;
        }
        w4f w4fVar3 = true == w4fVar2.o() ? w4fVar : w4fVar2;
        try {
            Pair pairL = w4fVar3.l(e4fVar, y2fVar, i7jVar.b, i7jVar.c);
            if (w4fVar.equals(w4fVar3)) {
                return pairL;
            }
            if (w4fVar.a(pairL.first) != -1) {
                return (w4fVar3.n(pairL.first, y2fVar).f && w4fVar3.e(y2fVar.c, e4fVar, 0L).m == w4fVar3.a(pairL.first)) ? w4fVar.l(e4fVar, y2fVar, w4fVar.n(pairL.first, y2fVar).c, i7jVar.c) : pairL;
            }
            int iG0 = g0(e4fVar, y2fVar, i, z2, pairL.first, w4fVar3, w4fVar);
            if (iG0 != -1) {
                return w4fVar.l(e4fVar, y2fVar, iG0, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static void k0(vb vbVar, t9j t9jVar) {
        try {
            F(t9jVar);
        } catch (zzii e) {
            zrg.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private final void l() {
        if (this.x && a0()) {
            caj[] cajVarArr = this.b;
            for (int i = 0; i < 2; i++) {
                caj cajVar = cajVarArr[i];
                int iW = cajVar.w();
                cajVar.B(this.o);
                this.L -= iW - cajVar.w();
            }
            this.U = C.TIME_UNSET;
        }
    }

    private final void m() {
        int i = 0;
        while (true) {
            caj[] cajVarArr = this.b;
            if (i >= 2) {
                this.U = C.TIME_UNSET;
                return;
            }
            int iW = cajVarArr[i].w();
            cajVarArr[i].A(this.o);
            A(i, false);
            this.L -= iW;
            i++;
        }
    }

    public final void A(final int i, final boolean z) {
        boolean[] zArr = this.d;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.w.f(new Runnable() {
                @Override
                public final void run() {
                    vb vbVar = this.zza;
                    int i2 = i;
                    vbVar.v.h(i2, vbVar.b[i2].x(), z);
                }
            });
        }
    }

    public final void B() throws zzii {
        int i;
        boolean z;
        j2j j2jVar = this.o;
        float f = j2jVar.zzc().a;
        i8j i8jVar = this.r;
        d8j d8jVarW = i8jVar.w();
        d8j d8jVarA = i8jVar.A();
        arj arjVar = null;
        boolean z2 = true;
        while (d8jVarW != null && d8jVarW.e) {
            o9j o9jVar = this.A;
            arj arjVarJ = d8jVarW.j(f, o9jVar.a, o9jVar.l);
            arj arjVar2 = d8jVarW == i8jVar.w() ? arjVarJ : arjVar;
            arj arjVarI = d8jVarW.i();
            boolean z3 = false;
            if (arjVarI != null) {
                tqj[] tqjVarArr = arjVarJ.c;
                if (arjVarI.c.length == tqjVarArr.length) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= tqjVarArr.length) {
                            if (d8jVarW != d8jVarA) {
                                z3 = true;
                            }
                            z2 &= z3;
                            d8jVarW = d8jVarW.g();
                            arjVar = arjVar2;
                        } else if (arjVarJ.a(arjVarI, i2)) {
                            i2++;
                        }
                    }
                }
            }
            if (z2) {
                d8j d8jVarW2 = i8jVar.w();
                int iN = i8jVar.n(d8jVarW2) & 1;
                caj[] cajVarArr = this.b;
                boolean[] zArr = new boolean[2];
                arjVar2.getClass();
                long jB = d8jVarW2.b(arjVar2, this.A.s, 1 == iN, zArr);
                o9j o9jVar2 = this.A;
                boolean z4 = (o9jVar2.e == 4 || jB == o9jVar2.s) ? false : true;
                o9j o9jVar3 = this.A;
                d8j d8jVar = d8jVarW2;
                i = 2;
                this.A = k(o9jVar3.b, jB, o9jVar3.c, o9jVar3.d, z4, 5);
                if (z4) {
                    G(jB);
                }
                l();
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (i3 < 2) {
                    int iW = cajVarArr[i3].w();
                    zArr2[i3] = cajVarArr[i3].i();
                    d8j d8jVar2 = d8jVar;
                    cajVarArr[i3].F(d8jVar2.c[i3], j2jVar, this.N, zArr[i3]);
                    if (iW - cajVarArr[i3].w() > 0) {
                        A(i3, false);
                    }
                    this.L -= iW - cajVarArr[i3].w();
                    i3++;
                    d8jVar = d8jVar2;
                }
                q(zArr2, this.N);
                z = true;
                d8jVar.h = true;
            } else {
                i = 2;
                i8jVar.n(d8jVarW);
                if (d8jVarW.e) {
                    long jMax = Math.max(d8jVarW.g.b, this.N - d8jVarW.e());
                    if (this.x && a0() && i8jVar.z() == d8jVarW) {
                        l();
                    }
                    d8jVarW.a(arjVarJ, jMax, false);
                }
                z = true;
            }
            s(z);
            if (this.A.e != 4) {
                w();
                W();
                this.i.zzj(i);
                return;
            }
            return;
        }
    }

    public final void C() throws zzii {
        B();
        J(true);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0090 A[PHI: r2 r7 r9
      0x0090: PHI (r2v2 bnj) = (r2v1 bnj), (r2v6 bnj) binds: [B:23:0x0065, B:25:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x0090: PHI (r7v3 long) = (r7v2 long), (r7v11 long) binds: [B:23:0x0065, B:25:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x0090: PHI (r9v2 long) = (r9v1 long), (r9v5 long) binds: [B:23:0x0065, B:25:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d5 A[PHI: r3
      0x00d5: PHI (r3v3 w4f) = (r3v2 w4f), (r3v2 w4f), (r3v11 w4f), (r3v11 w4f) binds: [B:29:0x009d, B:31:0x00a1, B:33:0x00b2, B:35:0x00c8] A[DONT_GENERATE, DONT_INLINE]] */
    public final void D(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        bnj bnjVar;
        w4f w4fVar;
        this.i.zzg(2);
        this.R = null;
        Y(false, true);
        this.o.f();
        this.N = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        try {
            m();
        } catch (zzii | RuntimeException e) {
            zrg.d("ExoPlayerImplInternal", "Disable failed.", e);
        }
        if (z) {
            caj[] cajVarArr = this.b;
            for (int i = 0; i < 2; i++) {
                try {
                    cajVarArr[i].L();
                } catch (RuntimeException e2) {
                    zrg.d("ExoPlayerImplInternal", "Reset failed.", e2);
                }
            }
        }
        this.L = 0;
        o9j o9jVar = this.A;
        bnj bnjVar2 = o9jVar.b;
        long jLongValue = o9jVar.s;
        long j = (this.A.b.b() || c0(this.A, this.m)) ? this.A.c : this.A.s;
        if (z2) {
            this.M = null;
            Pair pairI = i(this.A.a);
            bnjVar2 = (bnj) pairI.first;
            jLongValue = ((Long) pairI.second).longValue();
            boolean zEquals = bnjVar2.equals(this.A.b);
            j = C.TIME_UNSET;
            z5 = zEquals ? false : true;
        }
        long j2 = jLongValue;
        long j3 = j;
        i8j i8jVar = this.r;
        i8jVar.F();
        this.H = false;
        w4f w4fVarZ = this.A.a;
        if (z3 && (w4fVarZ instanceof v9j)) {
            w4fVarZ = ((v9j) w4fVarZ).z(this.s.p());
            if (bnjVar2.b != -1) {
                Object obj = bnjVar2.a;
                y2f y2fVar = this.m;
                w4fVarZ.n(obj, y2fVar);
                e4f e4fVar = this.l;
                w4fVarZ.e(y2fVar.c, e4fVar, 0L);
                if (e4fVar.b()) {
                    w4fVar = w4fVarZ;
                    bnjVar = new bnj(obj, bnjVar2.d);
                } else {
                    bnjVar = bnjVar2;
                    w4fVar = w4fVarZ;
                }
            } else {
                bnjVar = bnjVar2;
                w4fVar = w4fVarZ;
            }
        } else {
            bnjVar = bnjVar2;
            w4fVar = w4fVarZ;
        }
        o9j o9jVar2 = this.A;
        int i2 = o9jVar2.e;
        zzii zziiVar = z4 ? null : o9jVar2.f;
        npj npjVar = z5 ? npj.d : o9jVar2.h;
        arj arjVar = z5 ? this.f : o9jVar2.i;
        List listZzn = z5 ? zzfww.zzn() : o9jVar2.j;
        o9j o9jVar3 = this.A;
        this.A = new o9j(w4fVar, bnjVar, j3, j2, i2, zziiVar, false, npjVar, arjVar, listZzn, bnjVar, o9jVar3.l, o9jVar3.m, o9jVar3.n, o9jVar3.o, j2, 0L, j2, 0L, false);
        if (z3) {
            i8jVar.I();
            this.s.h();
        }
    }

    public final void E() {
        d8j d8jVarW = this.r.w();
        boolean z = false;
        if (d8jVarW != null && d8jVarW.g.i && this.D) {
            z = true;
        }
        this.E = z;
    }

    public final void G(long j) {
        d8j d8jVarW = this.r.w();
        long jE = j + (d8jVarW == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : d8jVarW.e());
        this.N = jE;
        this.o.d(jE);
        caj[] cajVarArr = this.b;
        for (int i = 0; i < 2; i++) {
            cajVarArr[i].M(d8jVarW, this.N);
        }
        for (d8j d8jVarW2 = r0.w(); d8jVarW2 != null; d8jVarW2 = d8jVarW2.g()) {
            for (tqj tqjVar : d8jVarW2.i().c) {
            }
        }
    }

    public final void H(w4f w4fVar, w4f w4fVar2) {
        if (w4fVar.o() && w4fVar2.o()) {
            return;
        }
        ArrayList arrayList = this.p;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            ubc.a(arrayList.get(size));
            throw null;
        }
    }

    public final void I(long j) {
        this.i.d(2, j + ((this.A.e != 3 || d0()) ? Z : 1000L));
    }

    public final void J(boolean z) throws zzii {
        bnj bnjVar = this.r.w().g.a;
        long jG = g(bnjVar, this.A.s, true, false);
        if (jG != this.A.s) {
            o9j o9jVar = this.A;
            this.A = k(bnjVar, jG, o9jVar.c, o9jVar.d, z, 5);
        }
    }

    public final void K(vwe vweVar) {
        this.i.zzg(16);
        this.o.h(vweVar);
    }

    public final void L(boolean z, int i, boolean z2, int i2) {
        this.B.a(z2 ? 1 : 0);
        U(z, i, i2);
    }

    public final void M(int i) {
        o9j o9jVar = this.A;
        if (o9jVar.e != i) {
            if (i != 2) {
                this.S = C.TIME_UNSET;
            }
            this.A = o9jVar.f(i);
        }
    }

    public final void N(float f) {
        this.W = f;
        float fA = f * this.y.a();
        int i = 0;
        while (true) {
            caj[] cajVarArr = this.b;
            if (i >= 2) {
                return;
            }
            cajVarArr[i].S(fA);
            i++;
        }
    }

    public final void O() {
        d8j d8jVarW = this.r.w();
        if (d8jVarW == null) {
            return;
        }
        arj arjVarI = d8jVarW.i();
        int i = 0;
        while (true) {
            caj[] cajVarArr = this.b;
            if (i >= 2) {
                return;
            }
            if (arjVarI.b(i)) {
                cajVarArr[i].T();
            }
            i++;
        }
    }

    public final void P(boolean z, boolean z2) {
        D(z || !this.K, false, true, false);
        this.B.a(z2 ? 1 : 0);
        this.g.a(this.u);
        this.y.b(this.A.l, 1);
        M(1);
    }

    public final void Q() {
        this.o.f();
        int i = 0;
        while (true) {
            caj[] cajVarArr = this.b;
            if (i >= 2) {
                return;
            }
            cajVarArr[i].V();
            i++;
        }
    }

    public final void R() {
        d8j d8jVarV = this.r.v();
        boolean z = true;
        if (!this.H && (d8jVarV == null || !d8jVarV.a.zzp())) {
            z = false;
        }
        o9j o9jVar = this.A;
        if (z != o9jVar.g) {
            this.A = o9jVar.a(z);
        }
    }

    public final void S(bnj bnjVar, npj npjVar, arj arjVar) {
        long jE;
        long jE2;
        i8j i8jVar = this.r;
        d8j d8jVarV = i8jVar.v();
        d8jVarV.getClass();
        if (d8jVarV == i8jVar.w()) {
            jE = this.N;
            jE2 = d8jVarV.e();
        } else {
            jE = this.N - d8jVarV.e();
            jE2 = d8jVarV.g.b;
        }
        this.g.h(new r7j(this.u, this.A.a, bnjVar, jE - jE2, d(d8jVarV.c()), this.o.zzc().a, this.A.l, this.F, e0(this.A.a, d8jVarV.g.a) ? this.Y.b() : C.TIME_UNSET, this.G), npjVar, arjVar.c);
    }

    public final void T() {
        o9j o9jVar = this.A;
        U(o9jVar.l, o9jVar.n, o9jVar.m);
    }

    public final void U(boolean z, int i, int i2) {
        V(z, this.y.b(z, this.A.e), i, i2);
    }

    public final void V(boolean z, int i, int i2, int i3) {
        boolean z2;
        if (!z) {
            z2 = false;
        } else if (i != -1) {
            z2 = true;
        } else {
            i = -1;
            z2 = false;
        }
        if (i == -1) {
            i3 = 2;
        } else if (i3 == 2) {
            i3 = 1;
        }
        if (i == 0) {
            i2 = 1;
        } else if (i2 == 1) {
            i2 = 0;
        }
        o9j o9jVar = this.A;
        if (o9jVar.l == z2 && o9jVar.n == i2 && o9jVar.m == i3) {
            return;
        }
        this.A = o9jVar.d(z2, i3, i2);
        Y(false, false);
        i8j i8jVar = this.r;
        for (d8j d8jVarW = i8jVar.w(); d8jVarW != null; d8jVarW = d8jVarW.g()) {
            for (tqj tqjVar : d8jVarW.i().c) {
            }
        }
        if (!d0()) {
            Q();
            W();
            i8jVar.H(this.N);
            return;
        }
        int i4 = this.A.e;
        if (i4 == 3) {
            this.o.e();
            O();
            this.i.zzj(2);
        } else if (i4 == 2) {
            this.i.zzj(2);
        }
    }

    public final void W() {
        i8j i8jVar = this.r;
        d8j d8jVarW = i8jVar.w();
        if (d8jVarW == null) {
            return;
        }
        long jZzd = d8jVarW.e ? d8jVarW.a.zzd() : -9223372036854775807L;
        if (jZzd != C.TIME_UNSET) {
            if (!d8jVarW.s()) {
                i8jVar.n(d8jVarW);
                s(false);
                w();
            }
            G(jZzd);
            if (jZzd != this.A.s) {
                o9j o9jVar = this.A;
                this.A = k(o9jVar.b, jZzd, o9jVar.c, jZzd, true, 5);
            }
        } else {
            j2j j2jVar = this.o;
            long jA = j2jVar.a(d8jVarW != i8jVar.A());
            this.N = jA;
            long jE = jA - d8jVarW.e();
            long j = this.A.s;
            ArrayList arrayList = this.p;
            if (!arrayList.isEmpty() && !this.A.b.b()) {
                if (this.Q) {
                    this.Q = false;
                }
                o9j o9jVar2 = this.A;
                o9jVar2.a.a(o9jVar2.b.a);
                int iMin = Math.min(this.P, arrayList.size());
                if (iMin > 0) {
                    ubc.a(arrayList.get(iMin - 1));
                }
                if (iMin < arrayList.size()) {
                    ubc.a(arrayList.get(iMin));
                }
                this.P = iMin;
            }
            if (j2jVar.zzj()) {
                boolean z = !this.B.d;
                o9j o9jVar3 = this.A;
                this.A = k(o9jVar3.b, jE, o9jVar3.c, jE, z, 6);
            } else {
                o9j o9jVar4 = this.A;
                o9jVar4.s = jE;
                o9jVar4.t = SystemClock.elapsedRealtime();
            }
        }
        this.A.q = i8jVar.v().c();
        this.A.r = x0();
        o9j o9jVar5 = this.A;
        if (o9jVar5.l && o9jVar5.e == 3 && e0(o9jVar5.a, o9jVar5.b)) {
            o9j o9jVar6 = this.A;
            if (o9jVar6.o.a == 1.0f) {
                float fA = this.Y.a(v0(o9jVar6.a, o9jVar6.b.a, o9jVar6.s), this.A.r);
                j2j j2jVar2 = this.o;
                if (j2jVar2.zzc().a != fA) {
                    K(new vwe(fA, this.A.o.b));
                    v(this.A.o, j2jVar2.zzc().a, false, false);
                }
            }
        }
    }

    public final void X(w4f w4fVar, bnj bnjVar, w4f w4fVar2, bnj bnjVar2, long j, boolean z) {
        if (!e0(w4fVar, bnjVar)) {
            vwe vweVar = bnjVar.b() ? vwe.d : this.A.o;
            if (this.o.zzc().equals(vweVar)) {
                return;
            }
            K(vweVar);
            v(this.A.o, vweVar.a, false, false);
            return;
        }
        Object obj = bnjVar.a;
        y2f y2fVar = this.m;
        int i = w4fVar.n(obj, y2fVar).c;
        e4f e4fVar = this.l;
        w4fVar.e(i, e4fVar, 0L);
        w1j w1jVar = this.Y;
        wfe wfeVar = e4fVar.i;
        int i2 = kfh.a;
        w1jVar.d(wfeVar);
        if (j != C.TIME_UNSET) {
            w1jVar.e(v0(w4fVar, obj, j));
            return;
        }
        if (!Objects.equals(!w4fVar2.o() ? w4fVar2.e(w4fVar2.n(bnjVar2.a, y2fVar).c, e4fVar, 0L).a : null, e4fVar.a) || z) {
            w1jVar.e(C.TIME_UNSET);
        }
    }

    public final void Y(boolean z, boolean z2) {
        this.F = z;
        long jElapsedRealtime = C.TIME_UNSET;
        if (z && !z2) {
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.G = jElapsedRealtime;
    }

    public final synchronized void Z(k3i k3iVar, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) k3iVar.zza()).booleanValue() && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override
    public final void a(float f) {
        this.i.zzj(34);
    }

    public final boolean a0() {
        if (!this.x) {
            return false;
        }
        caj[] cajVarArr = this.b;
        for (int i = 0; i < 2; i++) {
            if (cajVarArr[i].f()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void b(vwe vweVar) {
        this.i.b(16, vweVar).zza();
    }

    public final boolean b0() {
        d8j d8jVarW = this.r.w();
        long j = d8jVarW.g.e;
        if (!d8jVarW.e) {
            return false;
        }
        if (j == C.TIME_UNSET || this.A.s < j) {
            return true;
        }
        return !d0();
    }

    @Override
    public final synchronized void c(t9j t9jVar) {
        if (!this.C && this.k.getThread().isAlive()) {
            this.i.b(14, t9jVar).zza();
            return;
        }
        zrg.f("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        t9jVar.h(false);
    }

    public final long d(long j) {
        d8j d8jVarV = this.r.v();
        if (d8jVarV == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.N - d8jVarV.e()));
    }

    public final boolean d0() {
        o9j o9jVar = this.A;
        return o9jVar.l && o9jVar.n == 0;
    }

    public final long e(bnj bnjVar, long j, boolean z) {
        i8j i8jVar = this.r;
        return g(bnjVar, j, i8jVar.w() != i8jVar.A(), z);
    }

    public final boolean e0(w4f w4fVar, bnj bnjVar) {
        if (!bnjVar.b() && !w4fVar.o()) {
            int i = w4fVar.n(bnjVar.a, this.m).c;
            e4f e4fVar = this.l;
            w4fVar.e(i, e4fVar, 0L);
            if (e4fVar.b() && e4fVar.h && e4fVar.e != C.TIME_UNSET) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void f(zmj zmjVar) {
        this.i.b(8, zmjVar).zza();
    }

    public final long g(bnj bnjVar, long j, boolean z, boolean z2) throws zzii {
        Q();
        Y(false, true);
        if (z2 || this.A.e == 3) {
            M(2);
        }
        i8j i8jVar = this.r;
        d8j d8jVarW = i8jVar.w();
        d8j d8jVarG = d8jVarW;
        while (d8jVarG != null && !bnjVar.equals(d8jVarG.g.a)) {
            d8jVarG = d8jVarG.g();
        }
        if (z || d8jVarW != d8jVarG || (d8jVarG != null && d8jVarG.e() + j < 0)) {
            m();
            if (d8jVarG != null) {
                while (i8jVar.w() != d8jVarG) {
                    i8jVar.r();
                }
                i8jVar.n(d8jVarG);
                d8jVarG.q(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                p();
                d8jVarG.h = true;
            }
        }
        l();
        if (d8jVarG != null) {
            i8jVar.n(d8jVarG);
            if (!d8jVarG.e) {
                d8jVarG.g = d8jVarG.g.b(j);
            } else if (d8jVarG.f) {
                zmj zmjVar = d8jVarG.a;
                j = zmjVar.c(j);
                zmjVar.e(j - this.n, false);
            }
            G(j);
            w();
        } else {
            i8jVar.F();
            G(j);
        }
        s(false);
        this.i.zzj(2);
        return j;
    }

    @Override
    public final void h(apj apjVar) {
        this.i.b(9, (zmj) apjVar).zza();
    }

    public final Looper h0() {
        return this.k;
    }

    @Override
    public final boolean handleMessage(Message message) throws Throwable {
        boolean z;
        boolean z2;
        bnj bnjVar;
        int i;
        d8j d8jVarA;
        long jLongValue;
        boolean z3;
        bnj bnjVar2;
        Throwable th;
        long j;
        long jG;
        long j2;
        o9j o9jVar;
        int i2;
        o9j o9jVarK;
        boolean z4 = true;
        try {
            try {
                hvg hvgVar = null;
                switch (message.what) {
                    case 1:
                        boolean z5 = message.arg1 != 0;
                        int i3 = message.arg2;
                        L(z5, i3 >> 4, true, i3 & 15);
                        z = true;
                        y();
                        return z;
                    case 2:
                        n();
                        z = true;
                        y();
                        return z;
                    case 3:
                        i7j i7jVar = (i7j) message.obj;
                        this.B.a(1);
                        w4f w4fVar = this.A.a;
                        int i4 = this.I;
                        boolean z6 = this.J;
                        e4f e4fVar = this.l;
                        y2f y2fVar = this.m;
                        Pair pairJ = j(w4fVar, i7jVar, true, i4, z6, e4fVar, y2fVar);
                        long j3 = C.TIME_UNSET;
                        if (pairJ == null) {
                            Pair pairI = i(this.A.a);
                            bnj bnjVar3 = (bnj) pairI.first;
                            long jLongValue2 = ((Long) pairI.second).longValue();
                            z3 = !this.A.a.o();
                            j3 = -9223372036854775807L;
                            jLongValue = jLongValue2;
                            bnjVar2 = bnjVar3;
                        } else {
                            Object obj = pairJ.first;
                            jLongValue = ((Long) pairJ.second).longValue();
                            long j4 = i7jVar.c;
                            if (j4 != C.TIME_UNSET) {
                                j3 = jLongValue;
                            }
                            bnj bnjVarD = this.r.D(this.A.a, obj, jLongValue);
                            if (bnjVarD.b()) {
                                this.A.a.n(bnjVarD.a, y2fVar);
                                if (y2fVar.e(bnjVarD.b) == bnjVarD.c) {
                                    y2fVar.h();
                                }
                                z3 = true;
                                jLongValue = 0;
                            } else {
                                z3 = j4 == C.TIME_UNSET;
                            }
                            bnjVar2 = bnjVarD;
                        }
                        try {
                            if (!this.A.a.o()) {
                                if (pairJ == null) {
                                    if (this.A.e != 1) {
                                        M(4);
                                    }
                                    D(false, true, false, true);
                                } else {
                                    if (bnjVar2.equals(this.A.b)) {
                                        d8j d8jVarW = this.r.w();
                                        jG = (d8jVarW == null || !d8jVarW.e || jLongValue == 0) ? jLongValue : d8jVarW.a.g(jLongValue, this.z);
                                        if (kfh.Q(jG) == kfh.Q(this.A.s) && ((i2 = (o9jVar = this.A).e) == 2 || i2 == 3)) {
                                            long j5 = o9jVar.s;
                                            o9jVarK = k(bnjVar2, j5, j3, j5, z3, 2);
                                        }
                                    } else {
                                        jG = jLongValue;
                                    }
                                    long jE = e(bnjVar2, jG, this.A.e == 4);
                                    z3 |= jLongValue != jE;
                                    try {
                                        o9j o9jVar2 = this.A;
                                        w4f w4fVar2 = o9jVar2.a;
                                        X(w4fVar2, bnjVar2, w4fVar2, o9jVar2.b, j3, true);
                                        j2 = jE;
                                        o9jVarK = k(bnjVar2, j2, j3, j2, z3, 2);
                                    } catch (Throwable th2) {
                                        j = jE;
                                        th = th2;
                                        this.A = k(bnjVar2, j, j3, j, z3, 2);
                                        throw th;
                                    }
                                }
                                this.A = o9jVarK;
                                z = true;
                                y();
                                return z;
                            }
                            this.M = i7jVar;
                            j2 = jLongValue;
                            o9jVarK = k(bnjVar2, j2, j3, j2, z3, 2);
                            this.A = o9jVarK;
                            z = true;
                            y();
                            return z;
                        } catch (Throwable th3) {
                            th = th3;
                            j = jLongValue;
                        }
                        break;
                    case 4:
                        z4 = true;
                        K((vwe) message.obj);
                        u(this.o.zzc(), true);
                        z = z4;
                        y();
                        return z;
                    case 5:
                        z4 = true;
                        this.z = (kaj) message.obj;
                        z = z4;
                        y();
                        return z;
                    case 6:
                        z4 = true;
                        P(false, true);
                        z = z4;
                        y();
                        return z;
                    case 7:
                        try {
                            D(true, false, true, false);
                            int i5 = 0;
                            while (true) {
                                caj[] cajVarArr = this.b;
                                if (i5 >= 2) {
                                    this.g.c(this.u);
                                    this.y.d();
                                    this.e.c();
                                    M(1);
                                    this.j.b();
                                    synchronized (this) {
                                        this.C = true;
                                        notifyAll();
                                        break;
                                    }
                                    return true;
                                }
                                this.c[i5].zzq();
                                cajVarArr[i5].J();
                                i5++;
                            }
                        } catch (Throwable th4) {
                            this.j.b();
                            synchronized (this) {
                                this.C = true;
                                notifyAll();
                                throw th4;
                            }
                        }
                        break;
                    case 8:
                        try {
                            zmj zmjVar = (zmj) message.obj;
                            i8j i8jVar = this.r;
                            if (i8jVar.L(zmjVar)) {
                                d8j d8jVarV = i8jVar.v();
                                if (d8jVarV == null) {
                                    throw null;
                                }
                                if (!d8jVarV.e) {
                                    float f = this.o.zzc().a;
                                    o9j o9jVar3 = this.A;
                                    d8jVarV.l(f, o9jVar3.a, o9jVar3.l);
                                }
                                S(d8jVarV.g.a, d8jVarV.h(), d8jVarV.i());
                                if (d8jVarV == i8jVar.w()) {
                                    G(d8jVarV.g.b);
                                    p();
                                    d8jVarV.h = true;
                                    o9j o9jVar4 = this.A;
                                    bnj bnjVar4 = o9jVar4.b;
                                    long j6 = d8jVarV.g.b;
                                    this.A = k(bnjVar4, j6, o9jVar4.c, j6, false, 5);
                                }
                                w();
                            } else {
                                z4 = true;
                                d8j d8jVarX = i8jVar.x(zmjVar);
                                if (d8jVarX != null) {
                                    n7g.f(!d8jVarX.e);
                                    float f2 = this.o.zzc().a;
                                    o9j o9jVar5 = this.A;
                                    d8jVarX.l(f2, o9jVar5.a, o9jVar5.l);
                                    if (i8jVar.M(zmjVar)) {
                                        x();
                                    }
                                }
                            }
                            z = z4;
                        } catch (zzaz e) {
                            e = e;
                            zzaz zzazVar = e;
                            r(zzazVar, zzazVar.zzb == 1 ? true != zzazVar.zza ? 3003 : 3001 : 1000);
                            z = true;
                        } catch (zzgf e2) {
                            e = e2;
                            zzgf zzgfVar = e;
                            r(zzgfVar, zzgfVar.zza);
                            z = true;
                        } catch (zzii e3) {
                            e = e3;
                            zzii zziiVarZza = e;
                            if (zziiVarZza.zzc == 1 && (d8jVarA = this.r.A()) != null && zziiVarZza.zzh == null) {
                                zziiVarZza = zziiVarZza.zza(d8jVarA.g.a);
                            }
                            if (zziiVarZza.zzi && (this.R == null || (i = zziiVarZza.zza) == 5004 || i == 5003)) {
                                zrg.g("ExoPlayerImplInternal", "Recoverable renderer error", zziiVarZza);
                                zzii zziiVar = this.R;
                                if (zziiVar != null) {
                                    zziiVar.addSuppressed(zziiVarZza);
                                    zziiVarZza = this.R;
                                } else {
                                    this.R = zziiVarZza;
                                }
                                olg olgVar = this.i;
                                olgVar.c(olgVar.b(25, zziiVarZza));
                            } else {
                                if (zziiVarZza.zzc == 1 && (bnjVar = zziiVarZza.zzh) != null) {
                                    int i6 = zziiVarZza.zze;
                                    i8j i8jVar2 = this.r;
                                    if (i8jVar2.z() != null && i8jVar2.z().g.a.equals(bnjVar) && this.b[i6].g(i8jVar2.z())) {
                                        this.V = true;
                                        l();
                                        d8j d8jVarZ = i8jVar2.z();
                                        d8j d8jVarW2 = i8jVar2.w();
                                        if (i8jVar2.w() != d8jVarZ) {
                                            while (d8jVarW2 != null && d8jVarW2.g() != d8jVarZ) {
                                                d8jVarW2 = d8jVarW2.g();
                                            }
                                        }
                                        i8jVar2.n(d8jVarW2);
                                        if (this.A.e != 4) {
                                            w();
                                            this.i.zzj(2);
                                        }
                                    }
                                }
                                zzii zziiVar2 = this.R;
                                if (zziiVar2 != null) {
                                    zziiVar2.addSuppressed(zziiVarZza);
                                    zziiVarZza = this.R;
                                }
                                zzii zziiVar3 = zziiVarZza;
                                zrg.d("ExoPlayerImplInternal", "Playback error", zziiVar3);
                                z = true;
                                if (zziiVar3.zzc == 1) {
                                    i8j i8jVar3 = this.r;
                                    if (i8jVar3.w() != i8jVar3.A()) {
                                        while (i8jVar3.w() != i8jVar3.A()) {
                                            i8jVar3.r();
                                        }
                                        d8j d8jVarW3 = i8jVar3.w();
                                        d8jVarW3.getClass();
                                        y();
                                        f8j f8jVar = d8jVarW3.g;
                                        bnj bnjVar5 = f8jVar.a;
                                        long j7 = f8jVar.b;
                                        this.A = k(bnjVar5, j7, f8jVar.c, j7, true, 0);
                                    }
                                    z2 = false;
                                    z = true;
                                } else {
                                    z2 = false;
                                }
                                P(z, z2);
                                this.A = this.A.e(zziiVar3);
                            }
                            z = true;
                        } catch (zzrr e4) {
                            e = e4;
                            zzrr zzrrVar = e;
                            r(zzrrVar, zzrrVar.zza);
                            z = true;
                        } catch (zzty e5) {
                            e = e5;
                            r(e, 1002);
                            z = true;
                        } catch (IOException e6) {
                            e = e6;
                            r(e, 2000);
                            z = true;
                        } catch (RuntimeException e7) {
                            e = e7;
                            RuntimeException runtimeException = e;
                            zzii zziiVarZzd = zzii.zzd(runtimeException, ((runtimeException instanceof IllegalStateException) || (runtimeException instanceof IllegalArgumentException)) ? 1004 : 1000);
                            zrg.d("ExoPlayerImplInternal", "Playback error", zziiVarZzd);
                            P(true, false);
                            this.A = this.A.e(zziiVarZzd);
                            z = true;
                        }
                        y();
                        return z;
                    case 9:
                        zmj zmjVar2 = (zmj) message.obj;
                        i8j i8jVar4 = this.r;
                        if (i8jVar4.L(zmjVar2)) {
                            i8jVar4.H(this.N);
                            w();
                        } else if (i8jVar4.M(zmjVar2)) {
                            x();
                        }
                        z = true;
                        y();
                        return z;
                    case 10:
                        B();
                        z = true;
                        y();
                        return z;
                    case 11:
                        int i7 = message.arg1;
                        this.I = i7;
                        int iP = this.r.p(this.A.a, i7);
                        if ((iP & 1) != 0) {
                            J(true);
                        } else if ((iP & 2) != 0) {
                            l();
                        }
                        s(false);
                        z = true;
                        y();
                        return z;
                    case 12:
                        boolean z7 = message.arg1 != 0;
                        this.J = z7;
                        int iQ = this.r.q(this.A.a, z7);
                        if ((iQ & 1) != 0) {
                            J(true);
                        } else if ((iQ & 2) != 0) {
                            l();
                        }
                        s(false);
                        z = true;
                        y();
                        return z;
                    case 13:
                        boolean z8 = message.arg1 != 0;
                        AtomicBoolean atomicBoolean = (AtomicBoolean) message.obj;
                        if (this.K != z8) {
                            this.K = z8;
                            if (!z8) {
                                caj[] cajVarArr2 = this.b;
                                for (int i8 = 0; i8 < 2; i8++) {
                                    cajVarArr2[i8].L();
                                }
                            }
                        }
                        if (atomicBoolean != null) {
                            synchronized (this) {
                                atomicBoolean.set(true);
                                notifyAll();
                                break;
                            }
                        }
                        z = true;
                        y();
                        return z;
                    case 14:
                        t9j t9jVar = (t9j) message.obj;
                        if (t9jVar.b() == this.k) {
                            F(t9jVar);
                            int i9 = this.A.e;
                            if (i9 == 3 || i9 == 2) {
                                this.i.zzj(2);
                            }
                        } else {
                            this.i.b(15, t9jVar).zza();
                        }
                        z = true;
                        y();
                        return z;
                    case 15:
                        final t9j t9jVar2 = (t9j) message.obj;
                        Looper looperB = t9jVar2.b();
                        if (looperB.getThread().isAlive()) {
                            this.q.a(looperB, null).f(new Runnable() {
                                @Override
                                public final void run() {
                                    vb.k0(this.zza, t9jVar2);
                                }
                            });
                        } else {
                            zrg.f(AbstractID3v1Tag.TAG, "Trying to send message on a dead thread.");
                            t9jVar2.h(false);
                        }
                        z = true;
                        y();
                        return z;
                    case 16:
                        u((vwe) message.obj, false);
                        z = true;
                        y();
                        return z;
                    case 17:
                        a7j a7jVar = (a7j) message.obj;
                        this.B.a(1);
                        if (a7jVar.b != -1) {
                            this.M = new i7j(new v9j(a7jVar.a, a7jVar.d), a7jVar.b, a7jVar.c);
                        }
                        t(this.s.m(a7jVar.a, a7jVar.d), false);
                        z = true;
                        y();
                        return z;
                    case 18:
                        a7j a7jVar2 = (a7j) message.obj;
                        int iA = message.arg1;
                        this.B.a(1);
                        m9j m9jVar = this.s;
                        if (iA == -1) {
                            iA = m9jVar.a();
                        }
                        t(m9jVar.k(iA, a7jVar2.a, a7jVar2.d), false);
                        z = true;
                        y();
                        return z;
                    case 19:
                        ubc.a(message.obj);
                        this.B.a(1);
                        throw null;
                    case 20:
                        int i10 = message.arg1;
                        int i11 = message.arg2;
                        bpj bpjVar = (bpj) message.obj;
                        this.B.a(1);
                        t(this.s.l(i10, i11, bpjVar), false);
                        z = true;
                        y();
                        return z;
                    case 21:
                        bpj bpjVar2 = (bpj) message.obj;
                        this.B.a(1);
                        t(this.s.n(bpjVar2), false);
                        z = true;
                        y();
                        return z;
                    case 22:
                        t(this.s.b(), true);
                        z = true;
                        y();
                        return z;
                    case 23:
                        this.D = message.arg1 != 0;
                        E();
                        if (this.E) {
                            i8j i8jVar5 = this.r;
                            if (i8jVar5.A() != i8jVar5.w()) {
                                J(true);
                                s(false);
                            }
                        }
                        z = true;
                        y();
                        return z;
                    case 24:
                    default:
                        return false;
                    case 25:
                        C();
                        z = true;
                        y();
                        return z;
                    case 26:
                        C();
                        z = true;
                        y();
                        return z;
                    case 27:
                        int i12 = message.arg1;
                        int i13 = message.arg2;
                        List list = (List) message.obj;
                        this.B.a(1);
                        t(this.s.c(i12, i13, list), false);
                        z = true;
                        y();
                        return z;
                    case 28:
                        l3j l3jVar = (l3j) message.obj;
                        this.T = l3jVar;
                        this.r.J(this.A.a, l3jVar);
                        z = true;
                        y();
                        return z;
                    case 29:
                        this.B.a(1);
                        D(false, false, false, true);
                        this.g.b(this.u);
                        M(true != this.A.a.o() ? 2 : 4);
                        T();
                        this.s.g(this.h.zze());
                        this.i.zzj(2);
                        z = true;
                        y();
                        return z;
                    case 30:
                        Pair pair = (Pair) message.obj;
                        Object obj2 = pair.first;
                        AtomicBoolean atomicBoolean2 = (AtomicBoolean) pair.second;
                        caj[] cajVarArr3 = this.b;
                        for (int i14 = 0; i14 < 2; i14++) {
                            cajVarArr3[i14].R(obj2);
                        }
                        int i15 = this.A.e;
                        if (i15 == 3 || i15 == 2) {
                            this.i.zzj(2);
                        }
                        if (atomicBoolean2 != null) {
                            synchronized (this) {
                                atomicBoolean2.set(true);
                                notifyAll();
                                break;
                            }
                        }
                        z = true;
                        y();
                        return z;
                    case 31:
                        hvg hvgVar2 = (hvg) message.obj;
                        int i16 = message.arg1;
                        this.e.d(hvgVar2);
                        x0j x0jVar = this.y;
                        if (i16 != 0) {
                            hvgVar = hvgVar2;
                        }
                        x0jVar.e(hvgVar);
                        T();
                        z = true;
                        y();
                        return z;
                    case 32:
                        N(((Float) message.obj).floatValue());
                        z = true;
                        y();
                        return z;
                    case 33:
                        int i17 = message.arg1;
                        o9j o9jVar6 = this.A;
                        V(o9jVar6.l, i17, o9jVar6.n, o9jVar6.m);
                        z = true;
                        y();
                        return z;
                    case 34:
                        N(this.W);
                        z = true;
                        y();
                        return z;
                }
            } catch (RuntimeException e8) {
                e = e8;
            }
        } catch (zzaz e9) {
            e = e9;
        } catch (zzgf e10) {
            e = e10;
        } catch (zzii e11) {
            e = e11;
        } catch (zzrr e12) {
            e = e12;
        } catch (zzty e13) {
            e = e13;
        } catch (IOException e14) {
            e = e14;
        }
    }

    public final Pair i(w4f w4fVar) {
        long j = 0;
        if (w4fVar.o()) {
            return Pair.create(o9j.i(), 0L);
        }
        int iG = w4fVar.g(this.J);
        e4f e4fVar = this.l;
        y2f y2fVar = this.m;
        Pair pairL = w4fVar.l(e4fVar, y2fVar, iG, C.TIME_UNSET);
        bnj bnjVarD = this.r.D(w4fVar, pairL.first, 0L);
        long jLongValue = ((Long) pairL.second).longValue();
        if (bnjVarD.b()) {
            w4fVar.n(bnjVarD.a, y2fVar);
            if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                y2fVar.h();
            }
        } else {
            j = jLongValue;
        }
        return Pair.create(bnjVarD, Long.valueOf(j));
    }

    public final o9j k(bnj bnjVar, long j, long j2, long j3, boolean z, int i) {
        List listZzn;
        npj npjVar;
        arj arjVar;
        int i2 = 0;
        this.Q = (!this.Q && j == this.A.s && bnjVar.equals(this.A.b)) ? false : true;
        E();
        o9j o9jVar = this.A;
        npj npjVar2 = o9jVar.h;
        arj arjVar2 = o9jVar.i;
        List list = o9jVar.j;
        if (this.s.j()) {
            i8j i8jVar = this.r;
            d8j d8jVarW = i8jVar.w();
            npj npjVarH = d8jVarW == null ? npj.d : d8jVarW.h();
            arj arjVarI = d8jVarW == null ? this.f : d8jVarW.i();
            tqj[] tqjVarArr = arjVarI.c;
            l4i l4iVar = new l4i();
            int length = tqjVarArr.length;
            int i3 = 0;
            boolean z2 = false;
            while (i3 < length) {
                tqj tqjVar = tqjVarArr[i3];
                if (tqjVar != null) {
                    hre hreVar = tqjVar.zze(0).l;
                    if (hreVar == null) {
                        l4iVar.g(new hre(C.TIME_UNSET, new iqe[0]));
                    } else {
                        l4iVar.g(hreVar);
                        z2 = true;
                    }
                }
                i3++;
                d8jVarW = d8jVarW;
                npjVarH = npjVarH;
            }
            d8j d8jVar = d8jVarW;
            npj npjVar3 = npjVarH;
            zzfww zzfwwVarJ = z2 ? l4iVar.j() : zzfww.zzn();
            if (d8jVar != null) {
                f8j f8jVar = d8jVar.g;
                if (f8jVar.c != j2) {
                    d8jVar.g = f8jVar.a(j2);
                }
            }
            d8j d8jVarW2 = i8jVar.w();
            if (d8jVarW2 != null) {
                arj arjVarI2 = d8jVarW2.i();
                while (true) {
                    caj[] cajVarArr = this.b;
                    if (i2 >= 2) {
                        break;
                    }
                    if (arjVarI2.b(i2)) {
                        if (cajVarArr[i2].x() != 1) {
                            break;
                        }
                        int i4 = arjVarI2.b[i2].a;
                    }
                    i2++;
                }
            }
            listZzn = zzfwwVarJ;
            arjVar = arjVarI;
            npjVar = npjVar3;
        } else if (bnjVar.equals(this.A.b)) {
            listZzn = list;
            npjVar = npjVar2;
            arjVar = arjVar2;
        } else {
            arjVar = this.f;
            npjVar = npj.d;
            listZzn = zzfww.zzn();
        }
        if (z) {
            this.B.c(i);
        }
        return this.A.c(bnjVar, j, j2, j3, x0(), npjVar, arjVar, listZzn);
    }

    public final void m0() {
        this.i.zzb(29).zza();
    }

    /* JADX WARN: Code duplicated, block: B:188:0x0343  */
    /* JADX WARN: Code duplicated, block: B:256:0x0478  */
    /* JADX WARN: Code duplicated, block: B:258:0x047f  */
    /* JADX WARN: Code duplicated, block: B:260:0x0483  */
    /* JADX WARN: Code duplicated, block: B:261:0x0489  */
    /* JADX WARN: Code duplicated, block: B:263:0x048d  */
    /* JADX WARN: Code duplicated, block: B:265:0x0491  */
    /* JADX WARN: Code duplicated, block: B:267:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:268:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:274:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:280:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:285:0x0522  */
    /* JADX WARN: Code duplicated, block: B:287:0x052f  */
    /* JADX WARN: Code duplicated, block: B:288:0x053b  */
    /* JADX WARN: Code duplicated, block: B:289:0x053d  */
    /* JADX WARN: Code duplicated, block: B:291:0x0544  */
    /* JADX WARN: Code duplicated, block: B:332:0x05e5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51, types: [int] */
    /* JADX WARN: Type inference failed for: r0v55, types: [caj] */
    /* JADX WARN: Type inference failed for: r14v9, types: [arj] */
    /* JADX WARN: Type inference failed for: r15v4, types: [caj[]] */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32, types: [caj] */
    /* JADX WARN: Type inference failed for: r38v0, types: [com.google.android.gms.internal.ads.vb, ymj] */
    /* JADX WARN: Type inference failed for: r3v8, types: [caj] */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r5v11, types: [caj] */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    public final void n() throws zzii {
        boolean z;
        boolean z2;
        boolean z3;
        o9j o9jVar;
        boolean z4;
        d8j d8jVarW;
        long jB;
        d8j d8jVarV;
        boolean z5;
        boolean z6;
        boolean zF;
        int i;
        boolean z7;
        int i2;
        d8j d8jVarW2;
        d8j d8jVarG;
        boolean z8;
        ?? r15;
        int i3;
        int i4;
        boolean z9;
        d8j d8jVarZ;
        f8j f8jVarB;
        olg olgVar = this.i;
        long jUptimeMillis = SystemClock.uptimeMillis();
        olgVar.zzg(2);
        boolean zO = this.A.a.o();
        long j = C.TIME_UNSET;
        boolean z10 = false;
        if (!zO && this.s.j()) {
            i8j i8jVar = this.r;
            i8jVar.H(this.N);
            if (i8jVar.a() && (f8jVarB = i8jVar.B(this.N, this.A)) != null) {
                d8j d8jVarU = i8jVar.u(f8jVarB);
                if (!d8jVarU.d) {
                    d8jVarU.m(this, f8jVarB.b);
                } else if (d8jVarU.e) {
                    olgVar.b(8, d8jVarU.a).zza();
                }
                if (i8jVar.w() == d8jVarU) {
                    G(f8jVarB.b);
                }
                s(false);
            }
            if (this.H) {
                this.H = f0(i8jVar.v());
                R();
            } else {
                w();
            }
            if (!this.E && this.x && !this.V && !a0() && (d8jVarZ = i8jVar.z()) != null && d8jVarZ == i8jVar.A() && d8jVarZ.g() != null && d8jVarZ.g().e) {
                i8jVar.s();
                d8j d8jVarZ2 = i8jVar.z();
                if (d8jVarZ2 != null) {
                    arj arjVarI = d8jVarZ2.i();
                    int i5 = 0;
                    while (true) {
                        caj[] cajVarArr = this.b;
                        if (i5 >= 2) {
                            break;
                        }
                        if (arjVarI.b(i5) && cajVarArr[i5].d() && !cajVarArr[i5].f()) {
                            cajVarArr[i5].U();
                            o(d8jVarZ2, i5, false, d8jVarZ2.f());
                        }
                        i5++;
                        d8jVarZ2 = d8jVarZ2;
                        arjVarI = arjVarI;
                    }
                    d8j d8jVar = d8jVarZ2;
                    if (a0()) {
                        this.U = d8jVar.a.zzd();
                        if (!d8jVar.s()) {
                            i8jVar.n(d8jVar);
                            s(false);
                            w();
                        }
                    }
                }
            }
            d8j d8jVarA = i8jVar.A();
            if (d8jVarA != null) {
                if (d8jVarA.g() != null && !this.E) {
                    d8j d8jVarA2 = i8jVar.A();
                    if (d8jVarA2.e) {
                        int i6 = 0;
                        while (true) {
                            caj[] cajVarArr2 = this.b;
                            if (i6 >= 2) {
                                if ((a0() && i8jVar.z() == i8jVar.A()) || (!d8jVarA.g().e && this.N < d8jVarA.g().f())) {
                                    break;
                                    break;
                                }
                                arj arjVarI2 = d8jVarA.i();
                                d8j d8jVarT = i8jVar.t();
                                arj arjVarI3 = d8jVarT.i();
                                w4f w4fVar = this.A.a;
                                i8jVar = i8jVar;
                                X(w4fVar, d8jVarT.g.a, w4fVar, d8jVarA.g.a, C.TIME_UNSET, false);
                                if (d8jVarT.e && (((z9 = this.x) && this.U != C.TIME_UNSET) || d8jVarT.a.zzd() != C.TIME_UNSET)) {
                                    this.U = C.TIME_UNSET;
                                    if (z9 && !this.V) {
                                        int i7 = 2;
                                        int i8 = 0;
                                        while (true) {
                                            if (i8 < i7) {
                                                if (arjVarI3.b(i8)) {
                                                    tqj[] tqjVarArr = arjVarI3.c;
                                                    if (bue.f(tqjVarArr[i8].zzf().o, tqjVarArr[i8].zzf().k) || cajVarArr2[i8].f()) {
                                                    }
                                                }
                                                i8++;
                                                i7 = 2;
                                            } else {
                                                i4 = i7;
                                                i3 = 0;
                                                z10 = false;
                                            }
                                        }
                                    }
                                    long jF = d8jVarT.f();
                                    int i9 = 0;
                                    for (int i10 = 2; i9 < i10; i10 = 2) {
                                        cajVarArr2[i9].N(jF);
                                        i9++;
                                    }
                                    i8jVar = i8jVar;
                                    if (!d8jVarT.s()) {
                                        i8jVar.n(d8jVarT);
                                        z10 = false;
                                        s(false);
                                        w();
                                        break;
                                    }
                                    z10 = false;
                                    break;
                                }
                                z10 = false;
                                i3 = 0;
                                i4 = 2;
                                while (i3 < i4) {
                                    cajVarArr2[i3].H(arjVarI2, arjVarI3, d8jVarT.f());
                                    i3++;
                                    i4 = 2;
                                }
                                break;
                            }
                            if (!cajVarArr2[i6].b(d8jVarA2)) {
                                break;
                            } else {
                                i6++;
                            }
                        }
                    }
                } else if (d8jVarA.g.j || this.E) {
                    caj[] cajVarArr3 = this.b;
                    for (int i11 = 0; i11 < 2; i11++) {
                        caj cajVar = cajVarArr3[i11];
                        if (cajVar.h(d8jVarA) && cajVar.c(d8jVarA)) {
                            long j2 = d8jVarA.g.e;
                            cajVar.O(d8jVarA, (j2 == C.TIME_UNSET || j2 == Long.MIN_VALUE) ? -9223372036854775807L : d8jVarA.e() + j2);
                        }
                    }
                }
            }
            d8j d8jVarA3 = i8jVar.A();
            if (d8jVarA3 != null && i8jVar.w() != d8jVarA3 && !d8jVarA3.h) {
                d8j d8jVarA4 = i8jVar.A();
                ?? I = d8jVarA4.i();
                ?? r0 = z10;
                int i12 = 1;
                while (true) {
                    r15 = this.b;
                    if (r0 >= 2) {
                        break;
                    }
                    int iW = r15[r0].w();
                    int iY = r15[r0].y(d8jVarA4, I, this.o);
                    this.L -= iW - r15[r0].w();
                    i12 &= iY & 1;
                    r0++;
                }
                if (i12 != 0) {
                    ?? r4 = z10;
                    while (r4 < 2) {
                        if (I.b(r4) && !r15[r4].h(d8jVarA4)) {
                            o(d8jVarA4, r4 == true ? 1 : 0, false, d8jVarA4.f());
                        }
                        r4++;
                    }
                    i8jVar.A().h = true;
                }
            }
            boolean z11 = z10;
            while (d0() && !this.E && (d8jVarW2 = i8jVar.w()) != null && (d8jVarG = d8jVarW2.g()) != null && this.N >= d8jVarG.f() && d8jVarG.h) {
                if (z11) {
                    y();
                }
                this.V = z10;
                d8j d8jVarR = i8jVar.r();
                d8jVarR.getClass();
                if (this.A.b.a.equals(d8jVarR.g.a.a)) {
                    bnj bnjVar = this.A.b;
                    if (bnjVar.b == -1) {
                        bnj bnjVar2 = d8jVarR.g.a;
                        if (bnjVar2.b != -1 || bnjVar.e == bnjVar2.e) {
                            z8 = z10;
                        } else {
                            z8 = true;
                        }
                    } else {
                        z8 = z10;
                    }
                } else {
                    z8 = z10;
                }
                f8j f8jVar = d8jVarR.g;
                bnj bnjVar3 = f8jVar.a;
                long j3 = f8jVar.b;
                i8j i8jVar2 = i8jVar;
                long j4 = j;
                this.A = k(bnjVar3, j3, f8jVar.c, j3, !z8, 0);
                E();
                W();
                if (a0() && d8jVarR == i8jVar2.z()) {
                    caj[] cajVarArr4 = this.b;
                    int i13 = 0;
                    for (int i14 = 2; i13 < i14; i14 = 2) {
                        cajVarArr4[i13].G();
                        i13++;
                    }
                }
                if (this.A.e == 3) {
                    O();
                }
                arj arjVarI4 = i8jVar2.w().i();
                int i15 = 0;
                while (true) {
                    caj[] cajVarArr5 = this.b;
                    if (i15 < 2) {
                        if (arjVarI4.b(i15)) {
                            cajVarArr5[i15].D();
                        }
                        i15++;
                    }
                }
                j = j4;
                i8jVar = i8jVar2;
                z11 = true;
                z10 = false;
            }
            long j5 = this.T.a;
        }
        int i16 = this.A.e;
        if (i16 == 1 || i16 == 4) {
            return;
        }
        i8j i8jVar3 = this.r;
        d8j d8jVarW3 = i8jVar3.w();
        if (d8jVarW3 == null) {
            I(jUptimeMillis);
            return;
        }
        Trace.beginSection("doSomeWork");
        W();
        if (d8jVarW3.e) {
            this.O = kfh.N(SystemClock.elapsedRealtime());
            z = false;
            d8jVarW3.a.e(this.A.s - this.n, false);
            boolean z12 = true;
            z3 = true;
            int i17 = 0;
            while (true) {
                caj[] cajVarArr6 = this.b;
                if (i17 >= 2) {
                    break;
                }
                caj cajVar2 = cajVarArr6[i17];
                if (cajVar2.w() == 0) {
                    A(i17, false);
                } else {
                    cajVar2.K(this.N, this.O);
                    boolean z13 = z12 && cajVar2.e();
                    boolean zA = cajVar2.a(d8jVarW3);
                    A(i17, zA);
                    boolean z14 = z3 && zA;
                    if (!zA) {
                        z(i17);
                    }
                    z3 = z14;
                    z12 = z13;
                }
                i17++;
            }
            z2 = z12;
        } else {
            z = false;
            d8jVarW3.a.zzi();
            z2 = true;
            z3 = true;
        }
        long j6 = d8jVarW3.g.e;
        if (z2 && d8jVarW3.e && (j6 == C.TIME_UNSET || j6 <= this.A.s)) {
            if (this.E) {
                this.E = z;
                L(z, this.A.n, z, 5);
            }
            if (d8jVarW3.g.j) {
                M(4);
                Q();
                z4 = z;
            } else {
                o9jVar = this.A;
                if (o9jVar.e != 2) {
                    if (this.L == 0) {
                        zF = b0();
                    } else if (z3) {
                        if (o9jVar.g) {
                            d8jVarW = i8jVar3.w();
                            if (e0(this.A.a, d8jVarW.g.a)) {
                                jB = this.Y.b();
                            } else {
                                jB = C.TIME_UNSET;
                            }
                            d8jVarV = i8jVar3.v();
                            if (d8jVarV.s()) {
                                z5 = z;
                            } else {
                                z5 = z;
                            }
                            if (d8jVarV.g.a.b()) {
                                z6 = z;
                            } else {
                                z6 = z;
                            }
                            if (z5) {
                            }
                        }
                        M(3);
                        this.R = null;
                        if (d0()) {
                            Y(false, false);
                            this.o.e();
                            O();
                        }
                        z4 = false;
                    } else if (this.A.e == 3) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    if (zF) {
                        M(3);
                        this.R = null;
                        if (d0()) {
                            Y(false, false);
                            this.o.e();
                            O();
                        }
                    } else if (this.A.e == 3) {
                    }
                    z4 = false;
                } else if (this.A.e == 3) {
                    z4 = false;
                } else {
                    z4 = false;
                }
            }
        } else {
            o9jVar = this.A;
            if (o9jVar.e != 2) {
                if (this.L == 0) {
                    zF = b0();
                } else if (z3) {
                    if (o9jVar.g) {
                        d8jVarW = i8jVar3.w();
                        if (e0(this.A.a, d8jVarW.g.a)) {
                            jB = this.Y.b();
                        } else {
                            jB = C.TIME_UNSET;
                        }
                        d8jVarV = i8jVar3.v();
                        if (d8jVarV.s() || !d8jVarV.g.j) {
                            z5 = z;
                        } else {
                            z5 = true;
                        }
                        if (d8jVarV.g.a.b() || d8jVarV.e) {
                            z6 = z;
                        } else {
                            z6 = true;
                        }
                        if (z5 && !z6) {
                            zF = this.g.f(new r7j(this.u, this.A.a, d8jVarW.g.a, this.N - d8jVarW.e(), d(d8jVarV.c()), this.o.zzc().a, this.A.l, this.F, jB, this.G));
                        }
                        z4 = false;
                    }
                    M(3);
                    this.R = null;
                    if (d0()) {
                        Y(false, false);
                        this.o.e();
                        O();
                    }
                    z4 = false;
                } else if (this.A.e == 3) {
                    z4 = false;
                } else {
                    z4 = false;
                }
                if (zF) {
                    M(3);
                    this.R = null;
                    if (d0()) {
                        Y(false, false);
                        this.o.e();
                        O();
                    }
                } else if (this.A.e == 3) {
                }
                z4 = false;
            } else if (this.A.e == 3 || (this.L != 0 ? z3 : b0())) {
                z4 = false;
            } else {
                z4 = false;
                Y(d0(), false);
                M(2);
                if (this.F) {
                    for (d8j d8jVarW4 = i8jVar3.w(); d8jVarW4 != null; d8jVarW4 = d8jVarW4.g()) {
                        for (tqj tqjVar : d8jVarW4.i().c) {
                        }
                    }
                    this.Y.c();
                }
                Q();
            }
        }
        char c = 2;
        if (this.A.e == 2) {
            ?? r7 = z4;
            while (true) {
                caj[] cajVarArr7 = this.b;
                if (r7 >= c) {
                    break;
                }
                if (cajVarArr7[r7].h(d8jVarW3)) {
                    z(r7);
                }
                c = 2;
                r7++;
            }
            o9j o9jVar2 = this.A;
            if (o9jVar2.g || o9jVar2.r >= 500000 || !f0(i8jVar3.v()) || !d0()) {
                this.S = C.TIME_UNSET;
            } else if (this.S == C.TIME_UNSET) {
                this.S = SystemClock.elapsedRealtime();
            } else if (SystemClock.elapsedRealtime() - this.S >= 4000) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.S = C.TIME_UNSET;
        }
        if (d0()) {
            i = 3;
            if (this.A.e == 3) {
                z7 = true;
            }
            o9j o9jVar3 = this.A;
            boolean z15 = o9jVar3.p;
            i2 = o9jVar3.e;
            if (i2 != 4 && (z7 || i2 == 2 || (i2 == i && this.L != 0))) {
                I(jUptimeMillis);
            }
            Trace.endSection();
        }
        i = 3;
        z7 = z4;
        o9j o9jVar4 = this.A;
        boolean z16 = o9jVar4.p;
        i2 = o9jVar4.e;
        if (i2 != 4) {
            I(jUptimeMillis);
        }
        Trace.endSection();
    }

    public final void n0(w4f w4fVar, int i, long j) {
        this.i.b(3, new i7j(w4fVar, i, j)).zza();
    }

    public final void o(d8j d8jVar, int i, boolean z, long j) throws zzii {
        caj cajVar = this.b[i];
        if (cajVar.i()) {
            return;
        }
        boolean z2 = d8jVar == this.r.w();
        arj arjVarI = d8jVar.i();
        baj bajVar = arjVarI.b[i];
        tqj tqjVar = arjVarI.c[i];
        boolean z3 = d0() && this.A.e == 3;
        boolean z4 = !z && z3;
        this.L++;
        cajVar.C(bajVar, tqjVar, d8jVar.c[i], this.N, z4, z2, j, d8jVar.e(), d8jVar.g.a, this.o);
        cajVar.E(11, new x6j(this), d8jVar);
        if (z3 && z2) {
            cajVar.T();
        }
    }

    public final void o0(hvg hvgVar, boolean z) {
        this.i.e(31, 0, 0, hvgVar).zza();
    }

    public final void p() throws zzii {
        q(new boolean[2], this.r.A().f());
    }

    public final void p0(boolean z, int i, int i2) {
        this.i.g(1, z ? 1 : 0, (i2 << 4) | 1).zza();
    }

    public final void q(boolean[] zArr, long j) throws zzii {
        caj[] cajVarArr;
        d8j d8jVarA = this.r.A();
        arj arjVarI = d8jVarA.i();
        int i = 0;
        while (true) {
            cajVarArr = this.b;
            if (i >= 2) {
                break;
            }
            if (!arjVarI.b(i)) {
                cajVarArr[i].L();
            }
            i++;
        }
        for (int i2 = 0; i2 < 2; i2++) {
            if (arjVarI.b(i2) && !cajVarArr[i2].h(d8jVarA)) {
                o(d8jVarA, i2, zArr[i2], j);
            }
        }
    }

    public final void q0(float f) {
        this.i.b(32, Float.valueOf(f)).zza();
    }

    public final void r(IOException iOException, int i) {
        i8j i8jVar = this.r;
        zzii zziiVarZzc = zzii.zzc(iOException, i);
        d8j d8jVarW = i8jVar.w();
        if (d8jVarW != null) {
            zziiVarZzc = zziiVarZzc.zza(d8jVarW.g.a);
        }
        zrg.d("ExoPlayerImplInternal", "Playback error", zziiVarZzc);
        P(false, false);
        this.A = this.A.e(zziiVarZzc);
    }

    public final void r0() {
        this.i.zzb(6).zza();
    }

    public final void s(boolean z) {
        d8j d8jVarV = this.r.v();
        bnj bnjVar = d8jVarV == null ? this.A.b : d8jVarV.g.a;
        boolean zEquals = this.A.k.equals(bnjVar);
        if (!zEquals) {
            this.A = this.A.b(bnjVar);
        }
        o9j o9jVar = this.A;
        o9jVar.q = d8jVarV == null ? o9jVar.s : d8jVarV.c();
        this.A.r = x0();
        if ((!zEquals || z) && d8jVarV != null && d8jVarV.e) {
            S(d8jVarV.g.a, d8jVarV.h(), d8jVarV.i());
        }
    }

    public final synchronized boolean s0() {
        if (!this.C && this.k.getThread().isAlive()) {
            this.i.zzj(7);
            Z(new k3i() {
                @Override
                public final Object zza() {
                    return Boolean.valueOf(this.b.C);
                }
            }, this.t);
            return this.C;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:194:0x036f  */
    /* JADX WARN: Code duplicated, block: B:195:0x0375  */
    /* JADX WARN: Code duplicated, block: B:198:0x0387  */
    /* JADX WARN: Code duplicated, block: B:202:0x0392  */
    /* JADX WARN: Code duplicated, block: B:204:0x039c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:210:0x03af  */
    /* JADX WARN: Code duplicated, block: B:214:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:218:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:51:0x0146  */
    /* JADX WARN: Code duplicated, block: B:52:0x0163  */
    /* JADX WARN: Code duplicated, block: B:55:0x016f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0175 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:60:0x017b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x0194  */
    /* JADX WARN: Code duplicated, block: B:72:0x019b  */
    /* JADX WARN: Code duplicated, block: B:79:0x01af  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:91:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r1v67, types: [int] */
    /* JADX WARN: Type inference failed for: r1v80 */
    public final void t(w4f w4fVar, boolean z) throws Throwable {
        bnj bnjVar;
        y2f y2fVar;
        e4f e4fVar;
        int i;
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        int iG;
        boolean z5;
        long jLongValue;
        bnj bnjVarD;
        int i3;
        bnj bnjVar2;
        boolean z6;
        y2f y2fVarN;
        boolean z7;
        bnj bnjVarI;
        long jE;
        boolean z8;
        boolean z9;
        long j;
        int iG2;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i4;
        boolean z14;
        int i5;
        Object obj;
        long j2;
        Object obj2;
        o9j o9jVar = this.A;
        i7j i7jVar = this.M;
        int i6 = this.I;
        boolean z15 = this.J;
        boolean z16 = false;
        if (w4fVar.o()) {
            bnjVarI = o9j.i();
            z9 = false;
            j = -9223372036854775807L;
            z8 = true;
            z7 = true;
            jE = 0;
        } else {
            y2f y2fVar2 = this.m;
            bnj bnjVar3 = o9jVar.b;
            Object obj3 = bnjVar3.a;
            boolean zC0 = c0(o9jVar, y2fVar2);
            long jLongValue2 = (bnjVar3.b() || zC0) ? o9jVar.c : o9jVar.s;
            e4f e4fVar2 = this.l;
            if (i7jVar != null) {
                bnjVar = bnjVar3;
                Pair pairJ = j(w4fVar, i7jVar, true, i6, z15, e4fVar2, y2fVar2);
                if (pairJ == null) {
                    iG2 = w4fVar.g(z15);
                    obj3 = obj3;
                    jLongValue2 = jLongValue2;
                    y2fVar = y2fVar2;
                    z13 = true;
                    z11 = false;
                    z12 = false;
                } else {
                    if (i7jVar.c == C.TIME_UNSET) {
                        y2fVar = y2fVar2;
                        iG2 = w4fVar.n(pairJ.first, y2fVar).c;
                        obj3 = obj3;
                        jLongValue2 = jLongValue2;
                        z10 = false;
                    } else {
                        y2fVar = y2fVar2;
                        obj3 = pairJ.first;
                        jLongValue2 = ((Long) pairJ.second).longValue();
                        iG2 = -1;
                        z10 = true;
                    }
                    z11 = o9jVar.e == 4;
                    z12 = z10;
                    z13 = false;
                }
                z3 = z13;
                z4 = z12;
                e4fVar = e4fVar2;
                i2 = iG2;
                z2 = z11;
            } else {
                bnjVar = bnjVar3;
                y2fVar = y2fVar2;
                e4fVar = e4fVar2;
                w4f w4fVar2 = o9jVar.a;
                if (w4fVar2.o()) {
                    iG = w4fVar.g(z15);
                } else {
                    if (w4fVar.a(obj3) == -1) {
                        int iG0 = g0(e4fVar, y2fVar, i6, z15, obj3, w4fVar2, w4fVar);
                        if (iG0 == -1) {
                            iG0 = w4fVar.g(z15);
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z3 = z5;
                        obj3 = obj3;
                        e4fVar = e4fVar;
                        jLongValue2 = jLongValue2;
                        z2 = false;
                        z4 = false;
                        i2 = iG0;
                    } else if (jLongValue2 == C.TIME_UNSET) {
                        iG = w4fVar.n(obj3, y2fVar).c;
                    } else if (zC0) {
                        w4fVar2.n(obj3, y2fVar);
                        e4fVar = e4fVar;
                        if (w4fVar2.e(y2fVar.c, e4fVar, 0L).m == w4fVar2.a(obj3)) {
                            Pair pairL = w4fVar.l(e4fVar, y2fVar, w4fVar.n(obj3, y2fVar).c, jLongValue2);
                            obj3 = pairL.first;
                            jLongValue2 = ((Long) pairL.second).longValue();
                        } else {
                            obj3 = obj3;
                            jLongValue2 = jLongValue2;
                        }
                        i = -1;
                        i2 = -1;
                        z2 = false;
                        z3 = false;
                        z4 = true;
                    } else {
                        i = -1;
                        i2 = -1;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                    }
                    if (i2 != i) {
                        Pair pairL2 = w4fVar.l(e4fVar, y2fVar, i2, C.TIME_UNSET);
                        obj3 = pairL2.first;
                        jLongValue = ((Long) pairL2.second).longValue();
                        jLongValue2 = -9223372036854775807L;
                    } else {
                        jLongValue = jLongValue2;
                    }
                    bnjVarD = this.r.D(w4fVar, obj3, jLongValue);
                    i3 = bnjVarD.e;
                    if (i3 != -1) {
                        bnjVar2 = bnjVar;
                        int i7 = bnjVar2.e;
                        boolean z17 = i7 == -1 && i3 >= i7;
                        if (obj3.equals(obj3) || bnjVar2.b() || bnjVarD.b() || !z17) {
                            z6 = false;
                        } else {
                            z6 = true;
                        }
                        y2fVarN = w4fVar.n(obj3, y2fVar);
                        if (!zC0 && jLongValue2 == jLongValue2 && obj3.equals(bnjVarD.a)) {
                            if (bnjVar2.b()) {
                                y2fVarN.k(bnjVar2.b);
                            }
                            if (bnjVarD.b()) {
                                y2fVarN.k(bnjVarD.b);
                            }
                        }
                        z7 = true;
                        if (true == z6) {
                            bnjVarD = bnjVar2;
                        }
                        if (bnjVarD.b()) {
                            if (bnjVarD.equals(bnjVar2)) {
                                jLongValue = o9jVar.s;
                            } else {
                                w4fVar.n(bnjVarD.a, y2fVar);
                                if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                                    y2fVar.h();
                                }
                                jLongValue = 0;
                            }
                        }
                        bnjVarI = bnjVarD;
                        jE = jLongValue;
                        z8 = z3;
                        z9 = z4;
                        long j3 = jLongValue2;
                        z16 = z2;
                        j = j3;
                    } else {
                        bnjVar2 = bnjVar;
                    }
                    if (obj3.equals(obj3)) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    y2fVarN = w4fVar.n(obj3, y2fVar);
                    if (!zC0) {
                        if (bnjVar2.b()) {
                            y2fVarN.k(bnjVar2.b);
                        }
                        if (bnjVarD.b()) {
                            y2fVarN.k(bnjVarD.b);
                        }
                    }
                    z7 = true;
                    if (true == z6) {
                        bnjVarD = bnjVar2;
                    }
                    if (bnjVarD.b()) {
                        if (bnjVarD.equals(bnjVar2)) {
                            jLongValue = o9jVar.s;
                        } else {
                            w4fVar.n(bnjVarD.a, y2fVar);
                            if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                                y2fVar.h();
                            }
                            jLongValue = 0;
                        }
                    }
                    bnjVarI = bnjVarD;
                    jE = jLongValue;
                    z8 = z3;
                    z9 = z4;
                    long j4 = jLongValue2;
                    z16 = z2;
                    j = j4;
                }
                i2 = iG;
                i = -1;
                z2 = false;
                z3 = false;
                z4 = false;
                if (i2 != i) {
                    Pair pairL3 = w4fVar.l(e4fVar, y2fVar, i2, C.TIME_UNSET);
                    obj3 = pairL3.first;
                    jLongValue = ((Long) pairL3.second).longValue();
                    jLongValue2 = -9223372036854775807L;
                } else {
                    jLongValue = jLongValue2;
                }
                bnjVarD = this.r.D(w4fVar, obj3, jLongValue);
                i3 = bnjVarD.e;
                if (i3 != -1) {
                    bnjVar2 = bnjVar;
                    int i8 = bnjVar2.e;
                    if (i8 == -1) {
                    }
                    if (obj3.equals(obj3)) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    y2fVarN = w4fVar.n(obj3, y2fVar);
                    if (!zC0) {
                        if (bnjVar2.b()) {
                            y2fVarN.k(bnjVar2.b);
                        }
                        if (bnjVarD.b()) {
                            y2fVarN.k(bnjVarD.b);
                        }
                    }
                    z7 = true;
                    if (true == z6) {
                        bnjVarD = bnjVar2;
                    }
                    if (bnjVarD.b()) {
                        if (bnjVarD.equals(bnjVar2)) {
                            jLongValue = o9jVar.s;
                        } else {
                            w4fVar.n(bnjVarD.a, y2fVar);
                            if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                                y2fVar.h();
                            }
                            jLongValue = 0;
                        }
                    }
                    bnjVarI = bnjVarD;
                    jE = jLongValue;
                    z8 = z3;
                    z9 = z4;
                    long j5 = jLongValue2;
                    z16 = z2;
                    j = j5;
                } else {
                    bnjVar2 = bnjVar;
                }
                if (obj3.equals(obj3)) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                y2fVarN = w4fVar.n(obj3, y2fVar);
                if (!zC0) {
                    if (bnjVar2.b()) {
                        y2fVarN.k(bnjVar2.b);
                    }
                    if (bnjVarD.b()) {
                        y2fVarN.k(bnjVarD.b);
                    }
                }
                z7 = true;
                if (true == z6) {
                    bnjVarD = bnjVar2;
                }
                if (bnjVarD.b()) {
                    if (bnjVarD.equals(bnjVar2)) {
                        jLongValue = o9jVar.s;
                    } else {
                        w4fVar.n(bnjVarD.a, y2fVar);
                        if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                            y2fVar.h();
                        }
                        jLongValue = 0;
                    }
                }
                bnjVarI = bnjVarD;
                jE = jLongValue;
                z8 = z3;
                z9 = z4;
                long j6 = jLongValue2;
                z16 = z2;
                j = j6;
            }
            i = -1;
            if (i2 != i) {
                Pair pairL4 = w4fVar.l(e4fVar, y2fVar, i2, C.TIME_UNSET);
                obj3 = pairL4.first;
                jLongValue = ((Long) pairL4.second).longValue();
                jLongValue2 = -9223372036854775807L;
            } else {
                jLongValue = jLongValue2;
            }
            bnjVarD = this.r.D(w4fVar, obj3, jLongValue);
            i3 = bnjVarD.e;
            if (i3 != -1) {
                bnjVar2 = bnjVar;
                int i9 = bnjVar2.e;
                if (i9 == -1) {
                }
                if (obj3.equals(obj3)) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                y2fVarN = w4fVar.n(obj3, y2fVar);
                if (!zC0) {
                    if (bnjVar2.b()) {
                        y2fVarN.k(bnjVar2.b);
                    }
                    if (bnjVarD.b()) {
                        y2fVarN.k(bnjVarD.b);
                    }
                }
                z7 = true;
                if (true == z6) {
                    bnjVarD = bnjVar2;
                }
                if (bnjVarD.b()) {
                    if (bnjVarD.equals(bnjVar2)) {
                        jLongValue = o9jVar.s;
                    } else {
                        w4fVar.n(bnjVarD.a, y2fVar);
                        if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                            y2fVar.h();
                        }
                        jLongValue = 0;
                    }
                }
                bnjVarI = bnjVarD;
                jE = jLongValue;
                z8 = z3;
                z9 = z4;
                long j7 = jLongValue2;
                z16 = z2;
                j = j7;
            } else {
                bnjVar2 = bnjVar;
            }
            if (obj3.equals(obj3)) {
                z6 = false;
            } else {
                z6 = false;
            }
            y2fVarN = w4fVar.n(obj3, y2fVar);
            if (!zC0) {
                if (bnjVar2.b()) {
                    y2fVarN.k(bnjVar2.b);
                }
                if (bnjVarD.b()) {
                    y2fVarN.k(bnjVarD.b);
                }
            }
            z7 = true;
            if (true == z6) {
                bnjVarD = bnjVar2;
            }
            if (bnjVarD.b()) {
                if (bnjVarD.equals(bnjVar2)) {
                    jLongValue = o9jVar.s;
                } else {
                    w4fVar.n(bnjVarD.a, y2fVar);
                    if (bnjVarD.c == y2fVar.e(bnjVarD.b)) {
                        y2fVar.h();
                    }
                    jLongValue = 0;
                }
            }
            bnjVarI = bnjVarD;
            jE = jLongValue;
            z8 = z3;
            z9 = z4;
            long j8 = jLongValue2;
            z16 = z2;
            j = j8;
        }
        boolean z18 = (this.A.b.equals(bnjVarI) && jE == this.A.s) ? false : z7;
        int i10 = 2;
        if (z8) {
            try {
                if (this.A.e != z7) {
                    i4 = 4;
                    try {
                        M(4);
                    } catch (Throwable th) {
                        th = th;
                        i5 = 4;
                        obj = null;
                        o9j o9jVar2 = this.A;
                        w4f w4fVar3 = o9jVar2.a;
                        bnj bnjVar4 = o9jVar2.b;
                        if (true != z9) {
                            j2 = C.TIME_UNSET;
                        } else {
                            j2 = jE;
                        }
                        X(w4fVar, bnjVarI, w4fVar3, bnjVar4, j2, false);
                        if (z18) {
                            o9j o9jVar3 = this.A;
                            obj2 = o9jVar3.b.a;
                            w4f w4fVar4 = o9jVar3.a;
                            if (z18) {
                            }
                            long j9 = this.A.d;
                            if (w4fVar.a(obj2) != -1) {
                                i5 = 3;
                            }
                            this.A = k(bnjVarI, jE, j, j9, z, i5);
                        } else {
                            o9j o9jVar4 = this.A;
                            obj2 = o9jVar4.b.a;
                            w4f w4fVar5 = o9jVar4.a;
                            if (z18) {
                            }
                            long j10 = this.A.d;
                            if (w4fVar.a(obj2) != -1) {
                                i5 = 3;
                            }
                            this.A = k(bnjVarI, jE, j, j10, z, i5);
                        }
                        E();
                        H(w4fVar, this.A.a);
                        this.A = this.A.g(w4fVar);
                        if (!w4fVar.o()) {
                            this.M = obj;
                        }
                        s(false);
                        this.i.zzj(2);
                        throw th;
                    }
                } else {
                    i4 = 4;
                }
                z14 = false;
                try {
                    D(false, false, false, z7);
                } catch (Throwable th2) {
                    th = th2;
                    i5 = i4;
                    obj = null;
                    o9j o9jVar5 = this.A;
                    w4f w4fVar6 = o9jVar5.a;
                    bnj bnjVar5 = o9jVar5.b;
                    if (true != z9) {
                        j2 = C.TIME_UNSET;
                    } else {
                        j2 = jE;
                    }
                    X(w4fVar, bnjVarI, w4fVar6, bnjVar5, j2, false);
                    if (z18) {
                        o9j o9jVar6 = this.A;
                        obj2 = o9jVar6.b.a;
                        w4f w4fVar7 = o9jVar6.a;
                        if (z18) {
                        }
                        long j11 = this.A.d;
                        if (w4fVar.a(obj2) != -1) {
                            i5 = 3;
                        }
                        this.A = k(bnjVarI, jE, j, j11, z, i5);
                    } else {
                        o9j o9jVar7 = this.A;
                        obj2 = o9jVar7.b.a;
                        w4f w4fVar8 = o9jVar7.a;
                        if (z18) {
                        }
                        long j12 = this.A.d;
                        if (w4fVar.a(obj2) != -1) {
                            i5 = 3;
                        }
                        this.A = k(bnjVarI, jE, j, j12, z, i5);
                    }
                    E();
                    H(w4fVar, this.A.a);
                    this.A = this.A.g(w4fVar);
                    if (!w4fVar.o()) {
                        this.M = obj;
                    }
                    s(false);
                    this.i.zzj(2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                i4 = 4;
                z14 = false;
                i5 = i4;
                obj = null;
                o9j o9jVar8 = this.A;
                w4f w4fVar9 = o9jVar8.a;
                bnj bnjVar6 = o9jVar8.b;
                if (true != z9) {
                    j2 = C.TIME_UNSET;
                } else {
                    j2 = jE;
                }
                X(w4fVar, bnjVarI, w4fVar9, bnjVar6, j2, false);
                if (z18) {
                    o9j o9jVar9 = this.A;
                    obj2 = o9jVar9.b.a;
                    w4f w4fVar10 = o9jVar9.a;
                    if (z18) {
                    }
                    long j13 = this.A.d;
                    if (w4fVar.a(obj2) != -1) {
                        i5 = 3;
                    }
                    this.A = k(bnjVarI, jE, j, j13, z, i5);
                } else {
                    o9j o9jVar10 = this.A;
                    obj2 = o9jVar10.b.a;
                    w4f w4fVar11 = o9jVar10.a;
                    if (z18) {
                    }
                    long j14 = this.A.d;
                    if (w4fVar.a(obj2) != -1) {
                        i5 = 3;
                    }
                    this.A = k(bnjVarI, jE, j, j14, z, i5);
                }
                E();
                H(w4fVar, this.A.a);
                this.A = this.A.g(w4fVar);
                if (!w4fVar.o()) {
                    this.M = obj;
                }
                s(false);
                this.i.zzj(2);
                throw th;
            }
        } else {
            i4 = 4;
            z14 = false;
        }
        caj[] cajVarArr = this.b;
        for (?? r1 = z14; r1 < 2; r1++) {
            cajVarArr[r1].Q(w4fVar);
        }
        try {
            if (z18) {
                i5 = i4;
                z7 = z14;
                if (!w4fVar.o()) {
                    i8j i8jVar = this.r;
                    for (d8j d8jVarW = i8jVar.w(); d8jVarW != null; d8jVarW = d8jVarW.g()) {
                        if (d8jVarW.g.a.equals(bnjVarI)) {
                            d8jVarW.g = i8jVar.C(w4fVar, d8jVarW.g);
                            d8jVarW.r();
                        }
                    }
                    jE = e(bnjVarI, jE, z16);
                }
            } else {
                try {
                    i8j i8jVar2 = this.r;
                    i5 = i4;
                    z7 = z14;
                    try {
                        int iO = i8jVar2.o(w4fVar, this.N, i8jVar2.A() == null ? 0L : w0(i8jVar2.A()), (!a0() || i8jVar2.z() == null) ? 0L : w0(i8jVar2.z()));
                        if ((iO & 1) != 0) {
                            try {
                                J(z7);
                                i10 = 2;
                            } catch (Throwable th4) {
                                th = th4;
                                obj = null;
                                o9j o9jVar11 = this.A;
                                w4f w4fVar12 = o9jVar11.a;
                                bnj bnjVar7 = o9jVar11.b;
                                if (true != z9) {
                                    j2 = C.TIME_UNSET;
                                } else {
                                    j2 = jE;
                                }
                                X(w4fVar, bnjVarI, w4fVar12, bnjVar7, j2, false);
                                if (z18 || j != this.A.c) {
                                    o9j o9jVar12 = this.A;
                                    obj2 = o9jVar12.b.a;
                                    w4f w4fVar13 = o9jVar12.a;
                                    boolean z19 = (z18 || !z || w4fVar13.o() || w4fVar13.n(obj2, this.m).f) ? false : true;
                                    long j15 = this.A.d;
                                    if (w4fVar.a(obj2) != -1) {
                                        i5 = 3;
                                    }
                                    this.A = k(bnjVarI, jE, j, j15, z19, i5);
                                }
                                E();
                                H(w4fVar, this.A.a);
                                this.A = this.A.g(w4fVar);
                                if (!w4fVar.o()) {
                                    this.M = obj;
                                }
                                s(false);
                                this.i.zzj(2);
                                throw th;
                            }
                        } else {
                            i10 = 2;
                            if ((iO & 2) != 0) {
                                l();
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        i10 = 2;
                        obj = null;
                        o9j o9jVar13 = this.A;
                        w4f w4fVar14 = o9jVar13.a;
                        bnj bnjVar8 = o9jVar13.b;
                        if (true != z9) {
                            j2 = C.TIME_UNSET;
                        } else {
                            j2 = jE;
                        }
                        X(w4fVar, bnjVarI, w4fVar14, bnjVar8, j2, false);
                        if (z18) {
                            o9j o9jVar14 = this.A;
                            obj2 = o9jVar14.b.a;
                            w4f w4fVar15 = o9jVar14.a;
                            if (z18) {
                            }
                            long j16 = this.A.d;
                            if (w4fVar.a(obj2) != -1) {
                                i5 = 3;
                            }
                            this.A = k(bnjVarI, jE, j, j16, z19, i5);
                        } else {
                            o9j o9jVar15 = this.A;
                            obj2 = o9jVar15.b.a;
                            w4f w4fVar16 = o9jVar15.a;
                            if (z18) {
                            }
                            long j17 = this.A.d;
                            if (w4fVar.a(obj2) != -1) {
                                i5 = 3;
                            }
                            this.A = k(bnjVarI, jE, j, j17, z19, i5);
                        }
                        E();
                        H(w4fVar, this.A.a);
                        this.A = this.A.g(w4fVar);
                        if (!w4fVar.o()) {
                            this.M = obj;
                        }
                        s(false);
                        this.i.zzj(2);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    i5 = i4;
                    z7 = z14;
                }
            }
            o9j o9jVar16 = this.A;
            w4f w4fVar17 = o9jVar16.a;
            bnj bnjVar9 = o9jVar16.b;
            long j18 = true != z9 ? C.TIME_UNSET : jE;
            int i11 = i10;
            X(w4fVar, bnjVarI, w4fVar17, bnjVar9, j18, false);
            if (z18 || j != this.A.c) {
                o9j o9jVar17 = this.A;
                Object obj4 = o9jVar17.b.a;
                w4f w4fVar18 = o9jVar17.a;
                boolean z20 = (!z18 || !z || w4fVar18.o() || w4fVar18.n(obj4, this.m).f) ? z7 : true;
                long j19 = this.A.d;
                if (w4fVar.a(obj4) != -1) {
                    i5 = 3;
                }
                this.A = k(bnjVarI, jE, j, j19, z20, i5);
            }
            E();
            H(w4fVar, this.A.a);
            this.A = this.A.g(w4fVar);
            if (!w4fVar.o()) {
                this.M = null;
            }
            s(z7);
            this.i.zzj(i11);
        } catch (Throwable th7) {
            th = th7;
        }
    }

    public final synchronized boolean t0(Object obj, long j) {
        if (!this.C && this.k.getThread().isAlive()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.i.b(30, new Pair(obj, atomicBoolean)).zza();
            if (j != C.TIME_UNSET) {
                Z(new k3i() {
                    @Override
                    public final Object zza() {
                        return Boolean.valueOf(atomicBoolean.get());
                    }
                }, j);
                return atomicBoolean.get();
            }
        }
        return true;
    }

    public final void u(vwe vweVar, boolean z) {
        v(vweVar, vweVar.a, true, z);
    }

    public final void u0(List list, int i, long j, bpj bpjVar) {
        this.i.b(17, new a7j(list, bpjVar, i, j, null)).zza();
    }

    public final void v(vwe vweVar, float f, boolean z, boolean z2) {
        int i;
        if (z) {
            if (z2) {
                this.B.a(1);
            }
            o9j o9jVar = this.A;
            this.A = new o9j(o9jVar.a, o9jVar.b, o9jVar.c, o9jVar.d, o9jVar.e, o9jVar.f, o9jVar.g, o9jVar.h, o9jVar.i, o9jVar.j, o9jVar.k, o9jVar.l, o9jVar.m, o9jVar.n, vweVar, o9jVar.q, o9jVar.r, o9jVar.s, o9jVar.t, false);
        }
        float f2 = vweVar.a;
        d8j d8jVarW = this.r.w();
        while (true) {
            i = 0;
            if (d8jVarW == null) {
                break;
            }
            tqj[] tqjVarArr = d8jVarW.i().c;
            int length = tqjVarArr.length;
            while (i < length) {
                tqj tqjVar = tqjVarArr[i];
                i++;
            }
            d8jVarW = d8jVarW.g();
        }
        caj[] cajVarArr = this.b;
        while (i < 2) {
            cajVarArr[i].P(f, f2);
            i++;
        }
    }

    public final long v0(w4f w4fVar, Object obj, long j) {
        int i = w4fVar.n(obj, this.m).c;
        e4f e4fVar = this.l;
        w4fVar.e(i, e4fVar, 0L);
        if (e4fVar.e == C.TIME_UNSET || !e4fVar.b() || !e4fVar.h) {
            return C.TIME_UNSET;
        }
        long j2 = e4fVar.f;
        int i2 = kfh.a;
        return kfh.N((j2 == C.TIME_UNSET ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - e4fVar.e) - j;
    }

    public final void w() {
        long jE;
        long jE2;
        i8j i8jVar;
        boolean zG;
        i8j i8jVar2 = this.r;
        if (f0(i8jVar2.v())) {
            d8j d8jVarV = i8jVar2.v();
            long jD = d(d8jVarV.d());
            if (d8jVarV == i8jVar2.w()) {
                jE = this.N;
                jE2 = d8jVarV.e();
            } else {
                jE = this.N - d8jVarV.e();
                jE2 = d8jVarV.g.b;
            }
            i8jVar = i8jVar2;
            r7j r7jVar = new r7j(this.u, this.A.a, d8jVarV.g.a, jE - jE2, jD, this.o.zzc().a, this.A.l, this.F, e0(this.A.a, d8jVarV.g.a) ? this.Y.b() : C.TIME_UNSET, this.G);
            t7j t7jVar = this.g;
            zG = t7jVar.g(r7jVar);
            d8j d8jVarW = i8jVar.w();
            if (!zG && d8jVarW.e && jD < 500000 && this.n > 0) {
                d8jVarW.a.e(this.A.s, false);
                zG = t7jVar.g(r7jVar);
            }
        } else {
            i8jVar = i8jVar2;
            zG = false;
        }
        this.H = zG;
        if (zG) {
            d8j d8jVarV2 = i8jVar.v();
            d8jVarV2.getClass();
            v7j v7jVar = new v7j();
            v7jVar.e(this.N - d8jVarV2.e());
            v7jVar.f(this.o.zzc().a);
            v7jVar.d(this.G);
            d8jVarV2.k(new z7j(v7jVar, null));
        }
        R();
    }

    public final long w0(d8j d8jVar) {
        if (d8jVar == null) {
            return 0L;
        }
        long jE = d8jVar.e();
        if (d8jVar.e) {
            int i = 0;
            while (true) {
                caj[] cajVarArr = this.b;
                if (i >= 2) {
                    break;
                }
                if (cajVarArr[i].h(d8jVar)) {
                    long jZ = cajVarArr[i].z(d8jVar);
                    if (jZ == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    jE = Math.max(jZ, jE);
                }
                i++;
            }
        }
        return jE;
    }

    public final void x() {
        i8j i8jVar = this.r;
        i8jVar.G();
        d8j d8jVarY = i8jVar.y();
        if (d8jVarY != null) {
            if (!d8jVarY.d || d8jVarY.e) {
                zmj zmjVar = d8jVarY.a;
                if (zmjVar.zzp()) {
                    return;
                }
                if (this.g.e(this.A.a, d8jVarY.g.a, d8jVarY.e ? zmjVar.zzb() : 0L)) {
                    if (!d8jVarY.d) {
                        d8jVarY.m(this, d8jVarY.g.b);
                        return;
                    }
                    v7j v7jVar = new v7j();
                    v7jVar.e(this.N - d8jVarY.e());
                    v7jVar.f(this.o.zzc().a);
                    v7jVar.d(this.G);
                    d8jVarY.k(new z7j(v7jVar, null));
                }
            }
        }
    }

    public final long x0() {
        return d(this.A.q);
    }

    public final void y() {
        this.B.b(this.A);
        if (this.B.a) {
            t4j t4jVar = this.X;
            t4jVar.a.F(this.B);
            this.B = new g7j(this.A);
        }
    }

    public final void z(int i) {
        caj cajVar = this.b[i];
        try {
            d8j d8jVarW = this.r.w();
            if (d8jVarW == null) {
                throw null;
            }
            cajVar.I(d8jVarW);
        } catch (IOException | RuntimeException e) {
            cajVar.x();
            throw e;
        }
    }

    @Override
    public final void zza(int i) {
        this.i.g(33, i, 0).zza();
    }

    @Override
    public final void zzk() {
        olg olgVar = this.i;
        olgVar.zzg(2);
        olgVar.zzj(22);
    }

    @Override
    public final void zzm() {
        this.i.zzj(10);
    }
}
