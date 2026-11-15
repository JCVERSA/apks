package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.upstream.Loader;
import defpackage.blb;
import defpackage.eva;
import defpackage.h19;
import defpackage.ih6;
import defpackage.in5;
import defpackage.ka9;
import defpackage.o44;
import defpackage.op5;
import defpackage.ox9;
import defpackage.qi3;
import defpackage.qp6;
import defpackage.u5b;
import defpackage.ws1;
import defpackage.zi;
import defpackage.zua;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

public final class r implements h, Loader.b {
    public final com.google.android.exoplayer2.upstream.b b;
    public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a c;
    public final u5b d;
    public final com.google.android.exoplayer2.upstream.f e;
    public final j.a f;
    public final eva g;
    public final long i;
    public final com.google.android.exoplayer2.k k;
    public final boolean l;
    public boolean m;
    public byte[] n;
    public int o;
    public final ArrayList h = new ArrayList();
    public final Loader j = new Loader("SingleSampleMediaPeriod");

    public final class b implements h19 {
        public int a;
        public boolean b;

        public b() {
        }

        @Override
        public int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
            b();
            r rVar = r.this;
            boolean z = rVar.m;
            if (z && rVar.n == null) {
                this.a = 2;
            }
            int i2 = this.a;
            if (i2 == 2) {
                decoderInputBuffer.a(4);
                return -4;
            }
            if ((i & 2) != 0 || i2 == 0) {
                o44Var.b = rVar.k;
                this.a = 1;
                return -5;
            }
            if (!z) {
                return -3;
            }
            zi.e(rVar.n);
            decoderInputBuffer.a(1);
            decoderInputBuffer.f = 0L;
            if ((i & 4) == 0) {
                decoderInputBuffer.m(r.this.o);
                ByteBuffer byteBuffer = decoderInputBuffer.d;
                r rVar2 = r.this;
                byteBuffer.put(rVar2.n, 0, rVar2.o);
            }
            if ((i & 1) == 0) {
                this.a = 2;
            }
            return -4;
        }

        public final void b() {
            if (this.b) {
                return;
            }
            r.this.f.h(qp6.f(r.this.k.m), r.this.k, 0, null, 0L);
            this.b = true;
        }

        public void c() {
            if (this.a == 2) {
                this.a = 1;
            }
        }

        @Override
        public boolean isReady() {
            return r.this.m;
        }

        @Override
        public void maybeThrowError() throws IOException {
            r rVar = r.this;
            if (rVar.l) {
                return;
            }
            rVar.j.j();
        }

        @Override
        public int skipData(long j) {
            b();
            if (j <= 0 || this.a == 2) {
                return 0;
            }
            this.a = 2;
            return 1;
        }
    }

    public static final class c implements Loader.d {
        public final long a = in5.a();
        public final com.google.android.exoplayer2.upstream.b b;
        public final ox9 c;
        public byte[] d;

        public c(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.upstream.a aVar) {
            this.b = bVar;
            this.c = new ox9(aVar);
        }

        @Override
        public void cancelLoad() {
        }

        @Override
        public void load() {
            this.c.f();
            try {
                this.c.a(this.b);
                int i = 0;
                while (i != -1) {
                    int iC = (int) this.c.c();
                    byte[] bArr = this.d;
                    if (bArr == null) {
                        this.d = new byte[1024];
                    } else if (iC == bArr.length) {
                        this.d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    ox9 ox9Var = this.c;
                    byte[] bArr2 = this.d;
                    i = ox9Var.read(bArr2, iC, bArr2.length - iC);
                }
            } finally {
                ws1.a(this.c);
            }
        }
    }

    public r(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a, u5b u5bVar, com.google.android.exoplayer2.k kVar, long j, com.google.android.exoplayer2.upstream.f fVar, j.a aVar, boolean z) {
        this.b = bVar;
        this.c = interfaceC0084a;
        this.d = u5bVar;
        this.k = kVar;
        this.i = j;
        this.e = fVar;
        this.f = aVar;
        this.l = z;
        this.g = new eva(new zua(kVar));
    }

    @Override
    public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
        for (int i = 0; i < qi3VarArr.length; i++) {
            h19 h19Var = h19VarArr[i];
            if (h19Var != null && (qi3VarArr[i] == null || !zArr[i])) {
                this.h.remove(h19Var);
                h19VarArr[i] = null;
            }
            if (h19VarArr[i] == null && qi3VarArr[i] != null) {
                b bVar = new b();
                this.h.add(bVar);
                h19VarArr[i] = bVar;
                zArr2[i] = true;
            }
        }
        return j;
    }

    @Override
    public long c(long j, ka9 ka9Var) {
        return j;
    }

    @Override
    public boolean continueLoading(long j) {
        if (this.m || this.j.i() || this.j.h()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.a aVarCreateDataSource = this.c.createDataSource();
        u5b u5bVar = this.d;
        if (u5bVar != null) {
            aVarCreateDataSource.b(u5bVar);
        }
        c cVar = new c(this.b, aVarCreateDataSource);
        this.f.u(new in5(cVar.a, this.b, this.j.n(cVar, this, this.e.getMinimumLoadableRetryCount(1))), 1, -1, this.k, 0, null, 0L, this.i);
        return true;
    }

    @Override
    public void e(c cVar, long j, long j2, boolean z) {
        ox9 ox9Var = cVar.c;
        in5 in5Var = new in5(cVar.a, cVar.b, ox9Var.d(), ox9Var.e(), j, j2, ox9Var.c());
        this.e.onLoadTaskConcluded(cVar.a);
        this.f.o(in5Var, 1, -1, null, 0, null, 0L, this.i);
    }

    @Override
    public void discardBuffer(long j, boolean z) {
    }

    @Override
    public void g(h.a aVar, long j) {
        aVar.d(this);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.m ? Long.MIN_VALUE : 0L;
    }

    @Override
    public long getNextLoadPositionUs() {
        return (this.m || this.j.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override
    public eva getTrackGroups() {
        return this.g;
    }

    @Override
    public void f(c cVar, long j, long j2) {
        this.o = (int) cVar.c.c();
        this.n = (byte[]) zi.e(cVar.d);
        this.m = true;
        ox9 ox9Var = cVar.c;
        in5 in5Var = new in5(cVar.a, cVar.b, ox9Var.d(), ox9Var.e(), j, j2, this.o);
        this.e.onLoadTaskConcluded(cVar.a);
        this.f.q(in5Var, 1, -1, this.k, 0, null, 0L, this.i);
    }

    @Override
    public boolean isLoading() {
        return this.j.i();
    }

    @Override
    public Loader.c h(c cVar, long j, long j2, IOException iOException, int i) {
        Loader.c cVarG;
        ox9 ox9Var = cVar.c;
        in5 in5Var = new in5(cVar.a, cVar.b, ox9Var.d(), ox9Var.e(), j, j2, ox9Var.c());
        long jA = this.e.a(new com.google.android.exoplayer2.upstream.f.a(in5Var, new ih6(1, -1, this.k, 0, null, 0L, blb.P0(this.i)), iOException, i));
        boolean z = jA == C.TIME_UNSET || i >= this.e.getMinimumLoadableRetryCount(1);
        if (this.l && z) {
            op5.j("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.m = true;
            cVarG = Loader.f;
        } else {
            cVarG = jA != C.TIME_UNSET ? Loader.g(false, jA) : Loader.g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f.s(in5Var, 1, -1, this.k, 0, null, 0L, this.i, iOException, !zC);
        if (!zC) {
            this.e.onLoadTaskConcluded(cVar.a);
        }
        return cVar2;
    }

    public void k() {
        this.j.l();
    }

    @Override
    public void maybeThrowPrepareError() {
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public void reevaluateBuffer(long j) {
    }

    @Override
    public long seekToUs(long j) {
        for (int i = 0; i < this.h.size(); i++) {
            ((b) this.h.get(i)).c();
        }
        return j;
    }
}
