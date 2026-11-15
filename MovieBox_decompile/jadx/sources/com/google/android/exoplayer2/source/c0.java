package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.i0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

final class c0 implements n, Loader.b {

    private final com.google.android.exoplayer2.upstream.n f25078a;

    private final com.google.android.exoplayer2.upstream.k.a f25079b;

    private final k0 f25080c;

    private final com.google.android.exoplayer2.upstream.z f25081d;

    private final p.a f25082e;

    private final v9.y f25083f;

    private final long f25085h;

    final p1 f25087j;

    final boolean f25088k;

    boolean f25089l;

    byte[] f25090m;

    int f25091n;

    private final ArrayList f25084g = new ArrayList();

    final Loader f25086i = new Loader("SingleSampleMediaPeriod");

    private final class b implements v9.s {

        private int f25092a;

        private boolean f25093b;

        private b() {
        }

        private void b() {
            if (this.f25093b) {
                return;
            }
            c0.this.f25082e.i(com.google.android.exoplayer2.util.w.k(c0.this.f25087j.f24901l), c0.this.f25087j, 0, null, 0L);
            this.f25093b = true;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            b();
            c0 c0Var = c0.this;
            boolean z10 = c0Var.f25089l;
            if (z10 && c0Var.f25090m == null) {
                this.f25092a = 2;
            }
            int i11 = this.f25092a;
            if (i11 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            }
            if ((i10 & 2) != 0 || i11 == 0) {
                q1Var.f24962b = c0Var.f25087j;
                this.f25092a = 1;
                return -5;
            }
            if (!z10) {
                return -3;
            }
            com.google.android.exoplayer2.util.a.e(c0Var.f25090m);
            decoderInputBuffer.a(1);
            decoderInputBuffer.f24204e = 0L;
            if ((i10 & 4) == 0) {
                decoderInputBuffer.m(c0.this.f25091n);
                ByteBuffer byteBuffer = decoderInputBuffer.f24202c;
                c0 c0Var2 = c0.this;
                byteBuffer.put(c0Var2.f25090m, 0, c0Var2.f25091n);
            }
            if ((i10 & 1) == 0) {
                this.f25092a = 2;
            }
            return -4;
        }

        public void c() {
            if (this.f25092a == 2) {
                this.f25092a = 1;
            }
        }

        @Override
        public boolean isReady() {
            return c0.this.f25089l;
        }

        @Override
        public void maybeThrowError() throws IOException {
            c0 c0Var = c0.this;
            if (c0Var.f25088k) {
                return;
            }
            c0Var.f25086i.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            b();
            if (j10 <= 0 || this.f25092a == 2) {
                return 0;
            }
            this.f25092a = 2;
            return 1;
        }
    }

    public c0(com.google.android.exoplayer2.upstream.n nVar, com.google.android.exoplayer2.upstream.k.a aVar, k0 k0Var, p1 p1Var, long j10, com.google.android.exoplayer2.upstream.z zVar, p.a aVar2, boolean z10) {
        this.f25078a = nVar;
        this.f25079b = aVar;
        this.f25080c = k0Var;
        this.f25087j = p1Var;
        this.f25085h = j10;
        this.f25081d = zVar;
        this.f25082e = aVar2;
        this.f25088k = z10;
        this.f25083f = new v9.y(new v9.w(p1Var));
    }

    @Override
    public void j(c cVar, long j10, long j11, boolean z10) {
        i0 i0Var = cVar.f25097c;
        v9.h hVar = new v9.h(cVar.f25095a, cVar.f25096b, i0Var.h(), i0Var.i(), j10, j11, i0Var.f());
        this.f25081d.b(cVar.f25095a);
        this.f25082e.r(hVar, 1, -1, null, 0, null, 0L, this.f25085h);
    }

    @Override
    public boolean continueLoading(long j10) {
        if (this.f25089l || this.f25086i.i() || this.f25086i.h()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.f25079b.createDataSource();
        k0 k0Var = this.f25080c;
        if (k0Var != null) {
            kVarCreateDataSource.e(k0Var);
        }
        c cVar = new c(this.f25078a, kVarCreateDataSource);
        this.f25082e.A(new v9.h(cVar.f25095a, this.f25078a, this.f25086i.m(cVar, this, this.f25081d.a(1))), 1, -1, this.f25087j, 0, null, 0L, this.f25085h);
        return true;
    }

    @Override
    public void l(c cVar, long j10, long j11) {
        this.f25091n = (int) cVar.f25097c.f();
        this.f25090m = (byte[]) com.google.android.exoplayer2.util.a.e(cVar.f25098d);
        this.f25089l = true;
        i0 i0Var = cVar.f25097c;
        v9.h hVar = new v9.h(cVar.f25095a, cVar.f25096b, i0Var.h(), i0Var.i(), j10, j11, this.f25091n);
        this.f25081d.b(cVar.f25095a);
        this.f25082e.u(hVar, 1, -1, this.f25087j, 0, null, 0L, this.f25085h);
    }

    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            v9.s sVar = sVarArr2[i10];
            if (sVar != null && (sVarArr[i10] == null || !zArr[i10])) {
                this.f25084g.remove(sVar);
                sVarArr2[i10] = null;
            }
            if (sVarArr2[i10] == null && sVarArr[i10] != null) {
                b bVar = new b();
                this.f25084g.add(bVar);
                sVarArr2[i10] = bVar;
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override
    public void f(n.a aVar, long j10) {
        aVar.h(this);
    }

    @Override
    public Loader.c n(c cVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        i0 i0Var = cVar.f25097c;
        v9.h hVar = new v9.h(cVar.f25095a, cVar.f25096b, i0Var.h(), i0Var.i(), j10, j11, i0Var.f());
        long jC = this.f25081d.c(new com.google.android.exoplayer2.upstream.z.c(hVar, new v9.i(1, -1, this.f25087j, 0, null, 0L, p0.e1(this.f25085h)), iOException, i10));
        boolean z10 = jC == C.TIME_UNSET || i10 >= this.f25081d.a(1);
        if (this.f25088k && z10) {
            com.google.android.exoplayer2.util.s.j("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f25089l = true;
            cVarG = Loader.f26474f;
        } else {
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f26475g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f25082e.w(hVar, 1, -1, this.f25087j, 0, null, 0L, this.f25085h, iOException, !zC);
        if (!zC) {
            this.f25081d.b(cVar.f25095a);
        }
        return cVar2;
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f25089l ? Long.MIN_VALUE : 0L;
    }

    @Override
    public long getNextLoadPositionUs() {
        return (this.f25089l || this.f25086i.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override
    public v9.y getTrackGroups() {
        return this.f25083f;
    }

    public void h() {
        this.f25086i.k();
    }

    @Override
    public boolean isLoading() {
        return this.f25086i.i();
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public long seekToUs(long j10) {
        for (int i10 = 0; i10 < this.f25084g.size(); i10++) {
            ((b) this.f25084g.get(i10)).c();
        }
        return j10;
    }

    static final class c implements Loader.d {

        public final long f25095a = v9.h.a();

        public final com.google.android.exoplayer2.upstream.n f25096b;

        private final i0 f25097c;

        private byte[] f25098d;

        public c(com.google.android.exoplayer2.upstream.n nVar, com.google.android.exoplayer2.upstream.k kVar) {
            this.f25096b = nVar;
            this.f25097c = new i0(kVar);
        }

        @Override
        public void load() {
            this.f25097c.j();
            try {
                this.f25097c.a(this.f25096b);
                int i10 = 0;
                while (i10 != -1) {
                    int iF = (int) this.f25097c.f();
                    byte[] bArr = this.f25098d;
                    if (bArr == null) {
                        this.f25098d = new byte[1024];
                    } else if (iF == bArr.length) {
                        this.f25098d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    i0 i0Var = this.f25097c;
                    byte[] bArr2 = this.f25098d;
                    i10 = i0Var.read(bArr2, iF, bArr2.length - iF);
                }
            } finally {
                com.google.android.exoplayer2.upstream.m.a(this.f25097c);
            }
        }

        @Override
        public void cancelLoad() {
        }
    }

    @Override
    public void maybeThrowPrepareError() {
    }

    @Override
    public void reevaluateBuffer(long j10) {
    }

    @Override
    public long b(long j10, d3 d3Var) {
        return j10;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
    }
}
