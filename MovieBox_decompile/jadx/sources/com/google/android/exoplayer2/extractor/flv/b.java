package com.google.android.exoplayer2.extractor.flv;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.flv.b;
import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.a0;
import i9.b0;
import i9.l;
import i9.m;
import i9.n;
import i9.q;
import i9.r;
import i9.z;
import java.util.Map;

public final class b implements l {

    public static final r f24391q = new r() {
        @Override
        public l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override
        public final l[] createExtractors() {
            return b.g();
        }
    };

    private n f24397f;

    private boolean f24399h;

    private long f24400i;

    private int f24401j;

    private int f24402k;

    private int f24403l;

    private long f24404m;

    private boolean f24405n;

    private a f24406o;

    private d f24407p;

    private final d0 f24392a = new d0(4);

    private final d0 f24393b = new d0(9);

    private final d0 f24394c = new d0(11);

    private final d0 f24395d = new d0();

    private final c f24396e = new c();

    private int f24398g = 1;

    private void e() {
        if (this.f24405n) {
            return;
        }
        this.f24397f.g(new b0.b(C.TIME_UNSET));
        this.f24405n = true;
    }

    private long f() {
        if (this.f24399h) {
            return this.f24400i + this.f24404m;
        }
        if (this.f24396e.d() == C.TIME_UNSET) {
            return 0L;
        }
        return this.f24404m;
    }

    public static l[] g() {
        return new l[]{new b()};
    }

    private d0 h(m mVar) {
        if (this.f24403l > this.f24395d.b()) {
            d0 d0Var = this.f24395d;
            d0Var.N(new byte[Math.max(d0Var.b() * 2, this.f24403l)], 0);
        } else {
            this.f24395d.P(0);
        }
        this.f24395d.O(this.f24403l);
        mVar.readFully(this.f24395d.d(), 0, this.f24403l);
        return this.f24395d;
    }

    private boolean i(m mVar) {
        if (!mVar.readFully(this.f24393b.d(), 0, 9, true)) {
            return false;
        }
        this.f24393b.P(0);
        this.f24393b.Q(4);
        int iD = this.f24393b.D();
        boolean z10 = (iD & 4) != 0;
        boolean z11 = (iD & 1) != 0;
        if (z10 && this.f24406o == null) {
            this.f24406o = new a(this.f24397f.track(8, 1));
        }
        if (z11 && this.f24407p == null) {
            this.f24407p = new d(this.f24397f.track(9, 2));
        }
        this.f24397f.endTracks();
        this.f24401j = this.f24393b.n() - 5;
        this.f24398g = 2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean j(m mVar) {
        boolean zA;
        boolean z10;
        long j10;
        long jF = f();
        int i10 = this.f24402k;
        if (i10 == 8 && this.f24406o != null) {
            e();
            zA = this.f24406o.a(h(mVar), jF);
        } else {
            if (i10 != 9 || this.f24407p == null) {
                if (i10 != 18 || this.f24405n) {
                    mVar.skipFully(this.f24403l);
                    zA = false;
                    z10 = false;
                } else {
                    zA = this.f24396e.a(h(mVar), jF);
                    long jD = this.f24396e.d();
                    if (jD != C.TIME_UNSET) {
                        this.f24397f.g(new z(this.f24396e.e(), this.f24396e.f(), jD));
                        this.f24405n = true;
                    }
                }
                if (!this.f24399h && zA) {
                    this.f24399h = true;
                    if (this.f24396e.d() == C.TIME_UNSET) {
                        j10 = -this.f24404m;
                    } else {
                        j10 = 0;
                    }
                    this.f24400i = j10;
                }
                this.f24401j = 4;
                this.f24398g = 2;
                return z10;
            }
            e();
            zA = this.f24407p.a(h(mVar), jF);
        }
        z10 = true;
        if (!this.f24399h) {
            this.f24399h = true;
            if (this.f24396e.d() == C.TIME_UNSET) {
                j10 = -this.f24404m;
            } else {
                j10 = 0;
            }
            this.f24400i = j10;
        }
        this.f24401j = 4;
        this.f24398g = 2;
        return z10;
    }

    private boolean k(m mVar) {
        if (!mVar.readFully(this.f24394c.d(), 0, 11, true)) {
            return false;
        }
        this.f24394c.P(0);
        this.f24402k = this.f24394c.D();
        this.f24403l = this.f24394c.G();
        this.f24404m = this.f24394c.G();
        this.f24404m = (((long) (this.f24394c.D() << 24)) | this.f24404m) * 1000;
        this.f24394c.Q(3);
        this.f24398g = 4;
        return true;
    }

    private void l(m mVar) {
        mVar.skipFully(this.f24401j);
        this.f24401j = 0;
        this.f24398g = 3;
    }

    @Override
    public void b(n nVar) {
        this.f24397f = nVar;
    }

    @Override
    public boolean c(m mVar) {
        mVar.peekFully(this.f24392a.d(), 0, 3);
        this.f24392a.P(0);
        if (this.f24392a.G() != 4607062) {
            return false;
        }
        mVar.peekFully(this.f24392a.d(), 0, 2);
        this.f24392a.P(0);
        if ((this.f24392a.J() & 250) != 0) {
            return false;
        }
        mVar.peekFully(this.f24392a.d(), 0, 4);
        this.f24392a.P(0);
        int iN = this.f24392a.n();
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(iN);
        mVar.peekFully(this.f24392a.d(), 0, 4);
        this.f24392a.P(0);
        return this.f24392a.n() == 0;
    }

    @Override
    public int d(m mVar, a0 a0Var) {
        com.google.android.exoplayer2.util.a.i(this.f24397f);
        while (true) {
            int i10 = this.f24398g;
            if (i10 != 1) {
                if (i10 == 2) {
                    l(mVar);
                } else if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    if (j(mVar)) {
                        return 0;
                    }
                } else if (!k(mVar)) {
                    return -1;
                }
            } else if (!i(mVar)) {
                return -1;
            }
        }
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f24398g = 1;
            this.f24399h = false;
        } else {
            this.f24398g = 3;
        }
        this.f24401j = 0;
    }

    @Override
    public void release() {
    }
}
