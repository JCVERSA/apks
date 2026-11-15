package s9;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Map;

public final class a0 implements i9.l {

    public static final i9.r f71614l = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return a0.e();
        }
    };

    private final l0 f71615a;

    private final SparseArray f71616b;

    private final com.google.android.exoplayer2.util.d0 f71617c;

    private final y f71618d;

    private boolean f71619e;

    private boolean f71620f;

    private boolean f71621g;

    private long f71622h;

    private x f71623i;

    private i9.n f71624j;

    private boolean f71625k;

    private static final class a {

        private final m f71626a;

        private final l0 f71627b;

        private final com.google.android.exoplayer2.util.c0 f71628c = new com.google.android.exoplayer2.util.c0(new byte[64]);

        private boolean f71629d;

        private boolean f71630e;

        private boolean f71631f;

        private int f71632g;

        private long f71633h;

        public a(m mVar, l0 l0Var) {
            this.f71626a = mVar;
            this.f71627b = l0Var;
        }

        private void b() {
            this.f71628c.r(8);
            this.f71629d = this.f71628c.g();
            this.f71630e = this.f71628c.g();
            this.f71628c.r(6);
            this.f71632g = this.f71628c.h(8);
        }

        private void c() {
            this.f71633h = 0L;
            if (this.f71629d) {
                this.f71628c.r(4);
                long jH = ((long) this.f71628c.h(3)) << 30;
                this.f71628c.r(1);
                long jH2 = jH | ((long) (this.f71628c.h(15) << 15));
                this.f71628c.r(1);
                long jH3 = jH2 | ((long) this.f71628c.h(15));
                this.f71628c.r(1);
                if (!this.f71631f && this.f71630e) {
                    this.f71628c.r(4);
                    long jH4 = ((long) this.f71628c.h(3)) << 30;
                    this.f71628c.r(1);
                    long jH5 = jH4 | ((long) (this.f71628c.h(15) << 15));
                    this.f71628c.r(1);
                    long jH6 = jH5 | ((long) this.f71628c.h(15));
                    this.f71628c.r(1);
                    this.f71627b.b(jH6);
                    this.f71631f = true;
                }
                this.f71633h = this.f71627b.b(jH3);
            }
        }

        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            d0Var.j(this.f71628c.f26788a, 0, 3);
            this.f71628c.p(0);
            b();
            d0Var.j(this.f71628c.f26788a, 0, this.f71632g);
            this.f71628c.p(0);
            c();
            this.f71626a.c(this.f71633h, 4);
            this.f71626a.b(d0Var);
            this.f71626a.packetFinished();
        }

        public void d() {
            this.f71631f = false;
            this.f71626a.seek();
        }
    }

    public a0() {
        this(new l0(0L));
    }

    public static i9.l[] e() {
        return new i9.l[]{new a0()};
    }

    private void f(long j10) {
        if (this.f71625k) {
            return;
        }
        this.f71625k = true;
        if (this.f71618d.c() == C.TIME_UNSET) {
            this.f71624j.g(new i9.b0.b(this.f71618d.c()));
            return;
        }
        x xVar = new x(this.f71618d.d(), this.f71618d.c(), j10);
        this.f71623i = xVar;
        this.f71624j.g(xVar.b());
    }

    @Override
    public void b(i9.n nVar) {
        this.f71624j = nVar;
    }

    @Override
    public boolean c(i9.m mVar) {
        byte[] bArr = new byte[14];
        mVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        mVar.advancePeekPosition(bArr[13] & 7);
        mVar.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override
    public int d(i9.m mVar, i9.a0 a0Var) {
        m nVar;
        com.google.android.exoplayer2.util.a.i(this.f71624j);
        long length = mVar.getLength();
        if (length != -1 && !this.f71618d.e()) {
            return this.f71618d.g(mVar, a0Var);
        }
        f(length);
        x xVar = this.f71623i;
        if (xVar != null && xVar.d()) {
            return this.f71623i.c(mVar, a0Var);
        }
        mVar.resetPeekPosition();
        long peekPosition = length != -1 ? length - mVar.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !mVar.peekFully(this.f71617c.d(), 0, 4, true)) {
            return -1;
        }
        this.f71617c.P(0);
        int iN = this.f71617c.n();
        if (iN == 441) {
            return -1;
        }
        if (iN == 442) {
            mVar.peekFully(this.f71617c.d(), 0, 10);
            this.f71617c.P(9);
            mVar.skipFully((this.f71617c.D() & 7) + 14);
            return 0;
        }
        if (iN == 443) {
            mVar.peekFully(this.f71617c.d(), 0, 2);
            this.f71617c.P(0);
            mVar.skipFully(this.f71617c.J() + 6);
            return 0;
        }
        if (((iN & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            mVar.skipFully(1);
            return 0;
        }
        int i10 = iN & 255;
        a aVar = (a) this.f71616b.get(i10);
        if (!this.f71619e) {
            if (aVar == null) {
                if (i10 == 189) {
                    nVar = new c();
                    this.f71620f = true;
                    this.f71622h = mVar.getPosition();
                } else if ((iN & 224) == 192) {
                    nVar = new t();
                    this.f71620f = true;
                    this.f71622h = mVar.getPosition();
                } else if ((iN & 240) == 224) {
                    nVar = new n();
                    this.f71621g = true;
                    this.f71622h = mVar.getPosition();
                } else {
                    nVar = null;
                }
                if (nVar != null) {
                    nVar.d(this.f71624j, new i0.d(i10, 256));
                    aVar = new a(nVar, this.f71615a);
                    this.f71616b.put(i10, aVar);
                }
            }
            if (mVar.getPosition() > ((this.f71620f && this.f71621g) ? this.f71622h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f71619e = true;
                this.f71624j.endTracks();
            }
        }
        mVar.peekFully(this.f71617c.d(), 0, 2);
        this.f71617c.P(0);
        int iJ = this.f71617c.J() + 6;
        if (aVar == null) {
            mVar.skipFully(iJ);
        } else {
            this.f71617c.L(iJ);
            mVar.readFully(this.f71617c.d(), 0, iJ);
            this.f71617c.P(6);
            aVar.a(this.f71617c);
            com.google.android.exoplayer2.util.d0 d0Var = this.f71617c;
            d0Var.O(d0Var.b());
        }
        return 0;
    }

    @Override
    public void seek(long j10, long j11) {
        boolean z10 = this.f71615a.e() == C.TIME_UNSET;
        if (!z10) {
            long jC = this.f71615a.c();
            z10 = (jC == C.TIME_UNSET || jC == 0 || jC == j11) ? false : true;
        }
        if (z10) {
            this.f71615a.g(j11);
        }
        x xVar = this.f71623i;
        if (xVar != null) {
            xVar.h(j11);
        }
        for (int i10 = 0; i10 < this.f71616b.size(); i10++) {
            ((a) this.f71616b.valueAt(i10)).d();
        }
    }

    public a0(l0 l0Var) {
        this.f71615a = l0Var;
        this.f71617c = new com.google.android.exoplayer2.util.d0(4096);
        this.f71616b = new SparseArray();
        this.f71618d = new y();
    }

    @Override
    public void release() {
    }
}
