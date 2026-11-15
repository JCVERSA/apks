package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import com.google.common.collect.MultimapBuilder;
import defpackage.at6;
import defpackage.cb;
import defpackage.m54;
import defpackage.n02;
import defpackage.od1;
import defpackage.u5b;
import defpackage.zi;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class MergingMediaSource extends c {
    public static final com.google.android.exoplayer2.n v = new com.google.android.exoplayer2.n.c().d("MergingMediaSource").a();
    public final boolean k;
    public final boolean l;
    public final i[] m;
    public final a0[] n;
    public final ArrayList o;
    public final od1 p;
    public final Map q;
    public final at6 r;
    public int s;
    public long[][] t;
    public IllegalMergeException u;

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public IllegalMergeException(int i) {
            this.reason = i;
        }
    }

    public static final class a extends m54 {
        public final long[] e;
        public final long[] f;

        public a(a0 a0Var, Map map) {
            super(a0Var);
            int iT = a0Var.t();
            this.f = new long[a0Var.t()];
            a0.d dVar = new a0.d();
            for (int i = 0; i < iT; i++) {
                this.f[i] = a0Var.r(i, dVar).o;
            }
            int iM = a0Var.m();
            this.e = new long[iM];
            a0.b bVar = new a0.b();
            for (int i2 = 0; i2 < iM; i2++) {
                a0Var.k(i2, bVar, true);
                long jLongValue = ((Long) zi.e((Long) map.get(bVar.c))).longValue();
                long[] jArr = this.e;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.e : jLongValue;
                jArr[i2] = jLongValue;
                long j = bVar.e;
                if (j != C.TIME_UNSET) {
                    long[] jArr2 = this.f;
                    int i3 = bVar.d;
                    jArr2[i3] = jArr2[i3] - (j - jLongValue);
                }
            }
        }

        @Override
        public a0.b k(int i, a0.b bVar, boolean z) {
            super.k(i, bVar, z);
            bVar.e = this.e[i];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override
        public a0.d s(int i, a0.d dVar, long j) {
            long jMin;
            super.s(i, dVar, j);
            long j2 = this.f[i];
            dVar.o = j2;
            if (j2 != C.TIME_UNSET) {
                long j3 = dVar.n;
                if (j3 == C.TIME_UNSET) {
                    jMin = dVar.n;
                } else {
                    jMin = Math.min(j3, j2);
                }
            } else {
                jMin = dVar.n;
            }
            dVar.n = jMin;
            return dVar;
        }
    }

    public MergingMediaSource(i... iVarArr) {
        this(false, iVarArr);
    }

    public final void D() {
        a0.b bVar = new a0.b();
        for (int i = 0; i < this.s; i++) {
            long j = -this.n[0].j(i, bVar).q();
            int i2 = 1;
            while (true) {
                a0[] a0VarArr = this.n;
                if (i2 < a0VarArr.length) {
                    this.t[i][i2] = j - (-a0VarArr[i2].j(i, bVar).q());
                    i2++;
                }
            }
        }
    }

    @Override
    public i.b x(Integer num, i.b bVar) {
        if (num.intValue() == 0) {
            return bVar;
        }
        return null;
    }

    @Override
    public void A(Integer num, i iVar, a0 a0Var) {
        if (this.u != null) {
            return;
        }
        if (this.s == -1) {
            this.s = a0Var.m();
        } else if (a0Var.m() != this.s) {
            this.u = new IllegalMergeException(0);
            return;
        }
        if (this.t.length == 0) {
            this.t = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.s, this.n.length);
        }
        this.o.remove(iVar);
        this.n[num.intValue()] = a0Var;
        if (this.o.isEmpty()) {
            if (this.k) {
                D();
            }
            a0 aVar = this.n[0];
            if (this.l) {
                G();
                aVar = new a(aVar, this.q);
            }
            u(aVar);
        }
    }

    public final void G() {
        a0[] a0VarArr;
        a0.b bVar = new a0.b();
        for (int i = 0; i < this.s; i++) {
            int i2 = 0;
            long j = Long.MIN_VALUE;
            while (true) {
                a0VarArr = this.n;
                if (i2 >= a0VarArr.length) {
                    break;
                }
                long jM = a0VarArr[i2].j(i, bVar).m();
                if (jM != C.TIME_UNSET) {
                    long j2 = jM + this.t[i][i2];
                    if (j == Long.MIN_VALUE || j2 < j) {
                        j = j2;
                    }
                }
                i2++;
            }
            Object objQ = a0VarArr[0].q(i);
            this.q.put(objQ, Long.valueOf(j));
            Iterator it = this.r.get(objQ).iterator();
            while (it.hasNext()) {
                ((b) it.next()).k(0L, j);
            }
        }
    }

    @Override
    public h c(i.b bVar, cb cbVar, long j) {
        int length = this.m.length;
        h[] hVarArr = new h[length];
        int iF = this.n[0].f(bVar.a);
        for (int i = 0; i < length; i++) {
            hVarArr[i] = this.m[i].c(bVar.c(this.n[i].q(iF)), cbVar, j - this.t[iF][i]);
        }
        k kVar = new k(this.p, this.t[iF], hVarArr);
        if (!this.l) {
            return kVar;
        }
        b bVar2 = new b(kVar, true, 0L, ((Long) zi.e((Long) this.q.get(bVar.a))).longValue());
        this.r.put(bVar.a, bVar2);
        return bVar2;
    }

    @Override
    public void e(h hVar) {
        if (this.l) {
            b bVar = (b) hVar;
            for (Map.Entry entry : this.r.entries()) {
                if (((b) entry.getValue()).equals(bVar)) {
                    this.r.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            hVar = bVar.b;
        }
        k kVar = (k) hVar;
        int i = 0;
        while (true) {
            i[] iVarArr = this.m;
            if (i >= iVarArr.length) {
                return;
            }
            iVarArr[i].e(kVar.e(i));
            i++;
        }
    }

    @Override
    public com.google.android.exoplayer2.n getMediaItem() {
        i[] iVarArr = this.m;
        return iVarArr.length > 0 ? iVarArr[0].getMediaItem() : v;
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.u;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override
    public void t(u5b u5bVar) {
        super.t(u5bVar);
        for (int i = 0; i < this.m.length; i++) {
            C(Integer.valueOf(i), this.m[i]);
        }
    }

    @Override
    public void v() {
        super.v();
        Arrays.fill(this.n, (Object) null);
        this.s = -1;
        this.u = null;
        this.o.clear();
        Collections.addAll(this.o, this.m);
    }

    public MergingMediaSource(boolean z, i... iVarArr) {
        this(z, false, iVarArr);
    }

    public MergingMediaSource(boolean z, boolean z2, i... iVarArr) {
        this(z, z2, new n02(), iVarArr);
    }

    public MergingMediaSource(boolean z, boolean z2, od1 od1Var, i... iVarArr) {
        this.k = z;
        this.l = z2;
        this.m = iVarArr;
        this.p = od1Var;
        this.o = new ArrayList(Arrays.asList(iVarArr));
        this.s = -1;
        this.n = new a0[iVarArr.length];
        this.t = new long[0][];
        this.q = new HashMap();
        this.r = MultimapBuilder.a().a().g();
    }
}
