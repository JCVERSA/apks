package androidx.media3.exoplayer.source;

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
import java.util.List;
import java.util.Map;

public final class MergingMediaSource extends androidx.media3.exoplayer.source.c {

    private static final androidx.media3.common.t f12297w = new androidx.media3.common.t.c().d("MergingMediaSource").a();

    private final boolean f12298k;

    private final boolean f12299l;

    private final r[] f12300m;

    private final List f12301n;

    private final androidx.media3.common.e0[] f12302o;

    private final ArrayList f12303p;

    private final f2.e f12304q;

    private final Map f12305r;

    private final j3 f12306s;

    private int f12307t;

    private long[][] f12308u;

    private IllegalMergeException f12309v;

    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        public IllegalMergeException(int i10) {
            this.reason = i10;
        }
    }

    private static final class b extends m {

        private final long[] f12310f;

        private final long[] f12311g;

        public b(androidx.media3.common.e0 e0Var, Map map) {
            super(e0Var);
            int iP = e0Var.p();
            this.f12311g = new long[e0Var.p()];
            androidx.media3.common.e0.c cVar = new androidx.media3.common.e0.c();
            for (int i10 = 0; i10 < iP; i10++) {
                this.f12311g[i10] = e0Var.n(i10, cVar).f9651m;
            }
            int i11 = e0Var.i();
            this.f12310f = new long[i11];
            androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
            for (int i12 = 0; i12 < i11; i12++) {
                e0Var.g(i12, bVar, true);
                long jLongValue = ((Long) androidx.media3.common.util.a.e((Long) map.get(bVar.f9623b))).longValue();
                long[] jArr = this.f12310f;
                jLongValue = jLongValue == Long.MIN_VALUE ? bVar.f9625d : jLongValue;
                jArr[i12] = jLongValue;
                long j10 = bVar.f9625d;
                if (j10 != C.TIME_UNSET) {
                    long[] jArr2 = this.f12311g;
                    int i13 = bVar.f9624c;
                    jArr2[i13] = jArr2[i13] - (j10 - jLongValue);
                }
            }
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            super.g(i10, bVar, z10);
            bVar.f9625d = this.f12310f[i10];
            return bVar;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override
        public androidx.media3.common.e0.c o(int i10, androidx.media3.common.e0.c cVar, long j10) {
            long jMin;
            super.o(i10, cVar, j10);
            long j11 = this.f12311g[i10];
            cVar.f9651m = j11;
            if (j11 != C.TIME_UNSET) {
                long j12 = cVar.f9650l;
                if (j12 == C.TIME_UNSET) {
                    jMin = cVar.f9650l;
                } else {
                    jMin = Math.min(j12, j11);
                }
            } else {
                jMin = cVar.f9650l;
            }
            cVar.f9650l = jMin;
            return cVar;
        }
    }

    private static final class c {

        private final r.b f12312a;

        private final q f12313b;

        private c(r.b bVar, q qVar) {
            this.f12312a = bVar;
            this.f12313b = qVar;
        }
    }

    public MergingMediaSource(r... rVarArr) {
        this(false, rVarArr);
    }

    private void J() {
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        for (int i10 = 0; i10 < this.f12307t; i10++) {
            long j10 = -this.f12302o[0].f(i10, bVar).o();
            int i11 = 1;
            while (true) {
                androidx.media3.common.e0[] e0VarArr = this.f12302o;
                if (i11 < e0VarArr.length) {
                    this.f12308u[i10][i11] = j10 - (-e0VarArr[i11].f(i10, bVar).o());
                    i11++;
                }
            }
        }
    }

    private void M() {
        androidx.media3.common.e0[] e0VarArr;
        androidx.media3.common.e0.b bVar = new androidx.media3.common.e0.b();
        for (int i10 = 0; i10 < this.f12307t; i10++) {
            int i11 = 0;
            long j10 = Long.MIN_VALUE;
            while (true) {
                e0VarArr = this.f12302o;
                if (i11 >= e0VarArr.length) {
                    break;
                }
                long jK = e0VarArr[i11].f(i10, bVar).k();
                if (jK != C.TIME_UNSET) {
                    long j11 = jK + this.f12308u[i10][i11];
                    if (j10 == Long.MIN_VALUE || j11 < j10) {
                        j10 = j11;
                    }
                }
                i11++;
            }
            Object objM = e0VarArr[0].m(i10);
            this.f12305r.put(objM, Long.valueOf(j10));
            Iterator it = this.f12306s.get(objM).iterator();
            while (it.hasNext()) {
                ((androidx.media3.exoplayer.source.b) it.next()).n(0L, j10);
            }
        }
    }

    @Override
    protected void B() {
        super.B();
        Arrays.fill(this.f12302o, (Object) null);
        this.f12307t = -1;
        this.f12309v = null;
        this.f12303p.clear();
        Collections.addAll(this.f12303p, this.f12300m);
    }

    @Override
    public r.b D(Integer num, r.b bVar) {
        List list = (List) this.f12301n.get(num.intValue());
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((c) list.get(i10)).f12312a.equals(bVar)) {
                return ((c) ((List) this.f12301n.get(0)).get(i10)).f12312a;
            }
        }
        return null;
    }

    @Override
    public void G(Integer num, r rVar, androidx.media3.common.e0 e0Var) {
        if (this.f12309v != null) {
            return;
        }
        if (this.f12307t == -1) {
            this.f12307t = e0Var.i();
        } else if (e0Var.i() != this.f12307t) {
            this.f12309v = new IllegalMergeException(0);
            return;
        }
        if (this.f12308u.length == 0) {
            this.f12308u = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f12307t, this.f12302o.length);
        }
        this.f12303p.remove(rVar);
        this.f12302o[num.intValue()] = e0Var;
        if (this.f12303p.isEmpty()) {
            if (this.f12298k) {
                J();
            }
            androidx.media3.common.e0 bVar = this.f12302o[0];
            if (this.f12299l) {
                M();
                bVar = new b(bVar, this.f12305r);
            }
            A(bVar);
        }
    }

    @Override
    public androidx.media3.common.t a() {
        r[] rVarArr = this.f12300m;
        return rVarArr.length > 0 ? rVarArr[0].a() : f12297w;
    }

    @Override
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        int length = this.f12300m.length;
        q[] qVarArr = new q[length];
        int iB = this.f12302o[0].b(bVar.f12571a);
        for (int i10 = 0; i10 < length; i10++) {
            r.b bVarA = bVar.a(this.f12302o[i10].m(iB));
            qVarArr[i10] = this.f12300m[i10].g(bVarA, bVar2, j10 - this.f12308u[iB][i10]);
            ((List) this.f12301n.get(i10)).add(new c(bVarA, qVarArr[i10]));
        }
        u uVar = new u(this.f12304q, this.f12308u[iB], qVarArr);
        if (!this.f12299l) {
            return uVar;
        }
        androidx.media3.exoplayer.source.b bVar3 = new androidx.media3.exoplayer.source.b(uVar, false, 0L, ((Long) androidx.media3.common.util.a.e((Long) this.f12305r.get(bVar.f12571a))).longValue());
        this.f12306s.put(bVar.f12571a, bVar3);
        return bVar3;
    }

    @Override
    public void k(q qVar) {
        if (this.f12299l) {
            androidx.media3.exoplayer.source.b bVar = (androidx.media3.exoplayer.source.b) qVar;
            for (Map.Entry entry : this.f12306s.entries()) {
                if (((androidx.media3.exoplayer.source.b) entry.getValue()).equals(bVar)) {
                    this.f12306s.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            qVar = bVar.f12370a;
        }
        u uVar = (u) qVar;
        for (int i10 = 0; i10 < this.f12300m.length; i10++) {
            List list = (List) this.f12301n.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (((c) list.get(i11)).f12313b.equals(qVar)) {
                    list.remove(i11);
                    break;
                }
            }
            this.f12300m[i10].k(uVar.i(i10));
        }
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.f12309v;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override
    public void n(androidx.media3.common.t tVar) {
        this.f12300m[0].n(tVar);
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        r[] rVarArr = this.f12300m;
        return rVarArr.length > 0 && rVarArr[0].q(tVar);
    }

    @Override
    protected void z(w1.n nVar) {
        super.z(nVar);
        for (int i10 = 0; i10 < this.f12300m.length; i10++) {
            I(Integer.valueOf(i10), this.f12300m[i10]);
        }
    }

    public MergingMediaSource(boolean z10, r... rVarArr) {
        this(z10, false, rVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, r... rVarArr) {
        this(z10, z11, new f2.f(), rVarArr);
    }

    public MergingMediaSource(boolean z10, boolean z11, f2.e eVar, r... rVarArr) {
        this.f12298k = z10;
        this.f12299l = z11;
        this.f12300m = rVarArr;
        this.f12304q = eVar;
        this.f12303p = new ArrayList(Arrays.asList(rVarArr));
        this.f12307t = -1;
        this.f12301n = new ArrayList(rVarArr.length);
        for (int i10 = 0; i10 < rVarArr.length; i10++) {
            this.f12301n.add(new ArrayList());
        }
        this.f12302o = new androidx.media3.common.e0[rVarArr.length];
        this.f12308u = new long[0][];
        this.f12305r = new HashMap();
        this.f12306s = MultimapBuilder.a().a().g();
    }
}
