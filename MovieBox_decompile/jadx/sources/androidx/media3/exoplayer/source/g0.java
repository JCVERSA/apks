package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

final class g0 implements q, Loader.b {

    private final w1.h f12462a;

    private final androidx.media3.datasource.a.InterfaceC0085a f12463b;

    private final w1.n f12464c;

    private final androidx.media3.exoplayer.upstream.m f12465d;

    private final s.a f12466e;

    private final f2.z f12467f;

    private final ArrayList f12468g = new ArrayList();

    private final long f12469h;

    final Loader f12470i;

    final androidx.media3.common.r f12471j;

    final boolean f12472k;

    boolean f12473l;

    byte[] f12474m;

    int f12475n;

    private final class b implements f2.u {

        private int f12476a;

        private boolean f12477b;

        private b() {
        }

        private void a() {
            if (this.f12477b) {
                return;
            }
            g0.this.f12466e.j(androidx.media3.common.y.k(g0.this.f12471j.f9849o), g0.this.f12471j, 0, null, 0L);
            this.f12477b = true;
        }

        public void b() {
            if (this.f12476a == 2) {
                this.f12476a = 1;
            }
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            a();
            g0 g0Var = g0.this;
            boolean z10 = g0Var.f12473l;
            if (z10 && g0Var.f12474m == null) {
                this.f12476a = 2;
            }
            int i11 = this.f12476a;
            if (i11 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i10 & 2) != 0 || i11 == 0) {
                s2Var.f12258b = g0Var.f12471j;
                this.f12476a = 1;
                return -5;
            }
            if (!z10) {
                return -3;
            }
            androidx.media3.common.util.a.e(g0Var.f12474m);
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.f10608e = 0L;
            if ((i10 & 4) == 0) {
                decoderInputBuffer.b(g0.this.f12475n);
                ByteBuffer byteBuffer = decoderInputBuffer.f10606c;
                g0 g0Var2 = g0.this;
                byteBuffer.put(g0Var2.f12474m, 0, g0Var2.f12475n);
            }
            if ((i10 & 1) == 0) {
                this.f12476a = 2;
            }
            return -4;
        }

        @Override
        public boolean isReady() {
            return g0.this.f12473l;
        }

        @Override
        public void maybeThrowError() throws IOException {
            g0 g0Var = g0.this;
            if (g0Var.f12472k) {
                return;
            }
            g0Var.f12470i.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            a();
            if (j10 <= 0 || this.f12476a == 2) {
                return 0;
            }
            this.f12476a = 2;
            return 1;
        }
    }

    public g0(w1.h hVar, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a, w1.n nVar, androidx.media3.common.r rVar, long j10, androidx.media3.exoplayer.upstream.m mVar, s.a aVar, boolean z10, androidx.media3.exoplayer.util.c cVar) {
        this.f12462a = hVar;
        this.f12463b = interfaceC0085a;
        this.f12464c = nVar;
        this.f12471j = rVar;
        this.f12469h = j10;
        this.f12465d = mVar;
        this.f12466e = aVar;
        this.f12472k = z10;
        this.f12467f = new f2.z(new androidx.media3.common.f0(rVar));
        this.f12470i = cVar != null ? new Loader(cVar) : new Loader("SingleSampleMediaPeriod");
    }

    @Override
    public boolean a(v2 v2Var) {
        if (this.f12473l || this.f12470i.i() || this.f12470i.h()) {
            return false;
        }
        androidx.media3.datasource.a aVarCreateDataSource = this.f12463b.createDataSource();
        w1.n nVar = this.f12464c;
        if (nVar != null) {
            aVarCreateDataSource.c(nVar);
        }
        this.f12470i.m(new c(this.f12462a, aVarCreateDataSource), this, this.f12465d.a(1));
        return true;
    }

    @Override
    public void q(c cVar, long j10, long j11, boolean z10) {
        w1.l lVar = cVar.f12481c;
        f2.i iVar = new f2.i(cVar.f12479a, cVar.f12480b, lVar.e(), lVar.f(), j10, j11, lVar.d());
        this.f12465d.b(cVar.f12479a);
        this.f12466e.t(iVar, 1, -1, null, 0, null, 0L, this.f12469h);
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        for (int i10 = 0; i10 < zVarArr.length; i10++) {
            f2.u uVar = uVarArr[i10];
            if (uVar != null && (zVarArr[i10] == null || !zArr[i10])) {
                this.f12468g.remove(uVar);
                uVarArr[i10] = null;
            }
            if (uVarArr[i10] == null && zVarArr[i10] != null) {
                b bVar = new b();
                this.f12468g.add(bVar);
                uVarArr[i10] = bVar;
                zArr2[i10] = true;
            }
        }
        return j10;
    }

    @Override
    public void f(q.a aVar, long j10) {
        aVar.g(this);
    }

    @Override
    public void p(c cVar, long j10, long j11) {
        this.f12475n = (int) cVar.f12481c.d();
        this.f12474m = (byte[]) androidx.media3.common.util.a.e(cVar.f12482d);
        this.f12473l = true;
        w1.l lVar = cVar.f12481c;
        f2.i iVar = new f2.i(cVar.f12479a, cVar.f12480b, lVar.e(), lVar.f(), j10, j11, this.f12475n);
        this.f12465d.b(cVar.f12479a);
        this.f12466e.w(iVar, 1, -1, this.f12471j, 0, null, 0L, this.f12469h);
    }

    @Override
    public long getBufferedPositionUs() {
        return this.f12473l ? Long.MIN_VALUE : 0L;
    }

    @Override
    public long getNextLoadPositionUs() {
        return (this.f12473l || this.f12470i.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override
    public f2.z getTrackGroups() {
        return this.f12467f;
    }

    @Override
    public Loader.c k(c cVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c cVarG;
        w1.l lVar = cVar.f12481c;
        f2.i iVar = new f2.i(cVar.f12479a, cVar.f12480b, lVar.e(), lVar.f(), j10, j11, lVar.d());
        long jC = this.f12465d.c(new androidx.media3.exoplayer.upstream.m.c(iVar, new f2.j(1, -1, this.f12471j, 0, null, 0L, a1.y1(this.f12469h)), iOException, i10));
        boolean z10 = jC == C.TIME_UNSET || i10 >= this.f12465d.a(1);
        if (this.f12472k && z10) {
            androidx.media3.common.util.u.i("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.f12473l = true;
            cVarG = Loader.f12637f;
        } else {
            cVarG = jC != C.TIME_UNSET ? Loader.g(false, jC) : Loader.f12638g;
        }
        Loader.c cVar2 = cVarG;
        boolean zC = cVar2.c();
        this.f12466e.y(iVar, 1, -1, this.f12471j, 0, null, 0L, this.f12469h, iOException, !zC);
        if (!zC) {
            this.f12465d.b(cVar.f12479a);
        }
        return cVar2;
    }

    @Override
    public void o(c cVar, long j10, long j11, int i10) {
        w1.l lVar = cVar.f12481c;
        this.f12466e.C(i10 == 0 ? new f2.i(cVar.f12479a, cVar.f12480b, j10) : new f2.i(cVar.f12479a, cVar.f12480b, lVar.e(), lVar.f(), j10, j11, lVar.d()), 1, -1, this.f12471j, 0, null, 0L, this.f12469h, i10);
    }

    @Override
    public boolean isLoading() {
        return this.f12470i.i();
    }

    public void j() {
        this.f12470i.k();
    }

    @Override
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override
    public long seekToUs(long j10) {
        for (int i10 = 0; i10 < this.f12468g.size(); i10++) {
            ((b) this.f12468g.get(i10)).b();
        }
        return j10;
    }

    static final class c implements Loader.d {

        public final long f12479a = f2.i.a();

        public final w1.h f12480b;

        private final w1.l f12481c;

        private byte[] f12482d;

        public c(w1.h hVar, androidx.media3.datasource.a aVar) {
            this.f12480b = hVar;
            this.f12481c = new w1.l(aVar);
        }

        @Override
        public void load() {
            this.f12481c.g();
            try {
                this.f12481c.a(this.f12480b);
                int i10 = 0;
                while (i10 != -1) {
                    int iD = (int) this.f12481c.d();
                    byte[] bArr = this.f12482d;
                    if (bArr == null) {
                        this.f12482d = new byte[1024];
                    } else if (iD == bArr.length) {
                        this.f12482d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    w1.l lVar = this.f12481c;
                    byte[] bArr2 = this.f12482d;
                    i10 = lVar.read(bArr2, iD, bArr2.length - iD);
                }
            } finally {
                w1.g.a(this.f12481c);
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
    public long b(long j10, c4 c4Var) {
        return j10;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
    }
}
