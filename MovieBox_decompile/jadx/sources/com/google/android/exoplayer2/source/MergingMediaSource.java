package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.j3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class MergingMediaSource extends c {

    private static final w1 f25006v = new w1.c().d("MergingMediaSource").a();

    private final boolean f25007k;

    private final boolean f25008l;

    private final o[] f25009m;

    private final l3[] f25010n;

    private final ArrayList f25011o;

    private final v9.d f25012p;

    private final Map f25013q;

    private final j3 f25014r;

    private int f25015s;

    private long[][] f25016t;

    private IllegalMergeException f25017u;

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public IllegalMergeException(int i10) {
            this.reason = i10;
        }
    }

    private static final class a extends j {

        private final long[] f25018d;

        private final long[] f25019e;

        public a(l3 l3Var, Map map) {
            super(l3Var);
            int iT = l3Var.t();
            this.f25019e = new long[l3Var.t()];
            l3.d dVar = new l3.d();
            for (int i10 = 0; i10 < iT; i10++) {
                this.f25019e[i10] = l3Var.r(i10, dVar).f24551n;
            }
            int iM = l3Var.m();
            this.f25018d = new long[iM];
            l3.b bVar = new l3.b();
            for (int i11 = 0; i11 < iM; i11++) {
                l3Var.k(i11, bVar, true);
                long jLongValue = ((Long) com.google.android.exoplayer2.util.a.e((Long) map.get(bVar.f24524b))).longValue();
                long[] jArr = this.f25018d;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.f24526d : jLongValue;
                jArr[i11] = jLongValue;
                long j10 = bVar.f24526d;
                if (j10 != C.TIME_UNSET) {
                    long[] jArr2 = this.f25019e;
                    int i12 = bVar.f24525c;
                    jArr2[i12] = jArr2[i12] - (j10 - jLongValue);
                }
            }
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f24526d = this.f25018d[i10];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            long jMin;
            super.s(i10, dVar, j10);
            long j11 = this.f25019e[i10];
            dVar.f24551n = j11;
            if (j11 != C.TIME_UNSET) {
                long j12 = dVar.f24550m;
                if (j12 == C.TIME_UNSET) {
                    jMin = dVar.f24550m;
                } else {
                    jMin = Math.min(j12, j11);
                }
            } else {
                jMin = dVar.f24550m;
            }
            dVar.f24550m = jMin;
            return dVar;
        }
    }

    public MergingMediaSource(o... oVarArr) {
        this(false, oVarArr);
    }

    private void L() {
        l3.b bVar = new l3.b();
        for (int i10 = 0; i10 < this.f25015s; i10++) {
            long j10 = -this.f25010n[0].j(i10, bVar).q();
            int i11 = 1;
            while (true) {
                l3[] l3VarArr = this.f25010n;
                if (i11 < l3VarArr.length) {
                    this.f25016t[i10][i11] = j10 - (-l3VarArr[i11].j(i10, bVar).q());
                    i11++;
                }
            }
        }
    }

    private void O() {
        l3[] l3VarArr;
        l3.b bVar = new l3.b();
        for (int i10 = 0; i10 < this.f25015s; i10++) {
            int i11 = 0;
            long j10 = Long.MIN_VALUE;
            while (true) {
                l3VarArr = this.f25010n;
                if (i11 >= l3VarArr.length) {
                    break;
                }
                long jM = l3VarArr[i11].j(i10, bVar).m();
                if (jM != C.TIME_UNSET) {
                    long j11 = jM + this.f25016t[i10][i11];
                    if (j10 == Long.MIN_VALUE || j11 < j10) {
                        j10 = j11;
                    }
                }
                i11++;
            }
            Object objQ = l3VarArr[0].q(i10);
            this.f25013q.put(objQ, Long.valueOf(j10));
            Iterator it = this.f25014r.get(objQ).iterator();
            while (it.hasNext()) {
                ((b) it.next()).l(0L, j10);
            }
        }
    }

    @Override
    protected void B(k0 k0Var) {
        super.B(k0Var);
        for (int i10 = 0; i10 < this.f25009m.length; i10++) {
            K(Integer.valueOf(i10), this.f25009m[i10]);
        }
    }

    @Override
    protected void D() {
        super.D();
        Arrays.fill(this.f25010n, (Object) null);
        this.f25015s = -1;
        this.f25017u = null;
        this.f25011o.clear();
        Collections.addAll(this.f25011o, this.f25009m);
    }

    @Override
    public o.b F(Integer num, o.b bVar) {
        if (num.intValue() == 0) {
            return bVar;
        }
        return null;
    }

    @Override
    public void I(Integer num, o oVar, l3 l3Var) {
        if (this.f25017u != null) {
            return;
        }
        if (this.f25015s == -1) {
            this.f25015s = l3Var.m();
        } else if (l3Var.m() != this.f25015s) {
            this.f25017u = new IllegalMergeException(0);
            return;
        }
        if (this.f25016t.length == 0) {
            this.f25016t = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f25015s, this.f25010n.length);
        }
        this.f25011o.remove(oVar);
        this.f25010n[num.intValue()] = l3Var;
        if (this.f25011o.isEmpty()) {
            if (this.f25007k) {
                L();
            }
            l3 aVar = this.f25010n[0];
            if (this.f25008l) {
                O();
                aVar = new a(aVar, this.f25013q);
            }
            C(aVar);
        }
    }

    @Override
    public w1 a() {
        o[] oVarArr = this.f25009m;
        return oVarArr.length > 0 ? oVarArr[0].a() : f25006v;
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        int length = this.f25009m.length;
        n[] nVarArr = new n[length];
        int iF = this.f25010n[0].f(bVar.f73504a);
        for (int i10 = 0; i10 < length; i10++) {
            nVarArr[i10] = this.f25009m[i10].d(bVar.c(this.f25010n[i10].q(iF)), bVar2, j10 - this.f25016t[iF][i10]);
        }
        q qVar = new q(this.f25012p, this.f25016t[iF], nVarArr);
        if (!this.f25008l) {
            return qVar;
        }
        b bVar3 = new b(qVar, true, 0L, ((Long) com.google.android.exoplayer2.util.a.e((Long) this.f25013q.get(bVar.f73504a))).longValue());
        this.f25014r.put(bVar.f73504a, bVar3);
        return bVar3;
    }

    @Override
    public void i(n nVar) {
        if (this.f25008l) {
            b bVar = (b) nVar;
            for (Map.Entry entry : this.f25014r.entries()) {
                if (((b) entry.getValue()).equals(bVar)) {
                    this.f25014r.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            nVar = bVar.f25058a;
        }
        q qVar = (q) nVar;
        int i10 = 0;
        while (true) {
            o[] oVarArr = this.f25009m;
            if (i10 >= oVarArr.length) {
                return;
            }
            oVarArr[i10].i(qVar.a(i10));
            i10++;
        }
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.f25017u;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    public MergingMediaSource(boolean z10, o... oVarArr) {
        this(z10, false, oVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, o... oVarArr) {
        this(z10, z11, new v9.e(), oVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, v9.d dVar, o... oVarArr) {
        this.f25007k = z10;
        this.f25008l = z11;
        this.f25009m = oVarArr;
        this.f25012p = dVar;
        this.f25011o = new ArrayList(Arrays.asList(oVarArr));
        this.f25015s = -1;
        this.f25010n = new l3[oVarArr.length];
        this.f25016t = new long[0][];
        this.f25013q = new HashMap();
        this.f25014r = MultimapBuilder.a().a().g();
    }
}
