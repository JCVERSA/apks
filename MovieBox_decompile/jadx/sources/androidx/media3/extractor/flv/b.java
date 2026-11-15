package androidx.media3.extractor.flv;

import android.net.Uri;
import androidx.media3.common.util.j0;
import androidx.media3.extractor.flv.b;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.s;
import java.util.List;
import java.util.Map;
import k2.h0;
import k2.l0;
import k2.m0;
import k2.q;
import k2.r;
import k2.t;
import k2.w;
import k2.x;

public final class b implements r {

    public static final x f13094q = new x() {
        @Override
        public x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override
        public x b(int i10) {
            return w.b(this, i10);
        }

        @Override
        public r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override
        public final r[] createExtractors() {
            return b.i();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private t f13100f;

    private boolean f13102h;

    private long f13103i;

    private int f13104j;

    private int f13105k;

    private int f13106l;

    private long f13107m;

    private boolean f13108n;

    private a f13109o;

    private d f13110p;

    private final j0 f13095a = new j0(4);

    private final j0 f13096b = new j0(9);

    private final j0 f13097c = new j0(11);

    private final j0 f13098d = new j0();

    private final c f13099e = new c();

    private int f13101g = 1;

    private void g() {
        if (this.f13108n) {
            return;
        }
        this.f13100f.d(new m0.b(C.TIME_UNSET));
        this.f13108n = true;
    }

    private long h() {
        if (this.f13102h) {
            return this.f13103i + this.f13107m;
        }
        if (this.f13099e.d() == C.TIME_UNSET) {
            return 0L;
        }
        return this.f13107m;
    }

    public static r[] i() {
        return new r[]{new b()};
    }

    private j0 j(k2.s sVar) {
        if (this.f13106l > this.f13098d.b()) {
            j0 j0Var = this.f13098d;
            j0Var.U(new byte[Math.max(j0Var.b() * 2, this.f13106l)], 0);
        } else {
            this.f13098d.W(0);
        }
        this.f13098d.V(this.f13106l);
        sVar.readFully(this.f13098d.e(), 0, this.f13106l);
        return this.f13098d;
    }

    private boolean k(k2.s sVar) {
        if (!sVar.readFully(this.f13096b.e(), 0, 9, true)) {
            return false;
        }
        this.f13096b.W(0);
        this.f13096b.X(4);
        int iH = this.f13096b.H();
        boolean z10 = (iH & 4) != 0;
        boolean z11 = (iH & 1) != 0;
        if (z10 && this.f13109o == null) {
            this.f13109o = new a(this.f13100f.track(8, 1));
        }
        if (z11 && this.f13110p == null) {
            this.f13110p = new d(this.f13100f.track(9, 2));
        }
        this.f13100f.endTracks();
        this.f13104j = this.f13096b.q() - 5;
        this.f13101g = 2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean l(k2.s sVar) {
        boolean zA;
        boolean z10;
        long j10;
        long jH = h();
        int i10 = this.f13105k;
        if (i10 == 8 && this.f13109o != null) {
            g();
            zA = this.f13109o.a(j(sVar), jH);
        } else {
            if (i10 != 9 || this.f13110p == null) {
                if (i10 != 18 || this.f13108n) {
                    sVar.skipFully(this.f13106l);
                    zA = false;
                    z10 = false;
                } else {
                    zA = this.f13099e.a(j(sVar), jH);
                    long jD = this.f13099e.d();
                    if (jD != C.TIME_UNSET) {
                        this.f13100f.d(new h0(this.f13099e.e(), this.f13099e.f(), jD));
                        this.f13108n = true;
                    }
                }
                if (!this.f13102h && zA) {
                    this.f13102h = true;
                    if (this.f13099e.d() == C.TIME_UNSET) {
                        j10 = -this.f13107m;
                    } else {
                        j10 = 0;
                    }
                    this.f13103i = j10;
                }
                this.f13104j = 4;
                this.f13101g = 2;
                return z10;
            }
            g();
            zA = this.f13110p.a(j(sVar), jH);
        }
        z10 = true;
        if (!this.f13102h) {
            this.f13102h = true;
            if (this.f13099e.d() == C.TIME_UNSET) {
                j10 = -this.f13107m;
            } else {
                j10 = 0;
            }
            this.f13103i = j10;
        }
        this.f13104j = 4;
        this.f13101g = 2;
        return z10;
    }

    private boolean m(k2.s sVar) {
        if (!sVar.readFully(this.f13097c.e(), 0, 11, true)) {
            return false;
        }
        this.f13097c.W(0);
        this.f13105k = this.f13097c.H();
        this.f13106l = this.f13097c.K();
        this.f13107m = this.f13097c.K();
        this.f13107m = (((long) (this.f13097c.H() << 24)) | this.f13107m) * 1000;
        this.f13097c.X(3);
        this.f13101g = 4;
        return true;
    }

    private void n(k2.s sVar) {
        sVar.skipFully(this.f13104j);
        this.f13104j = 0;
        this.f13101g = 3;
    }

    @Override
    public boolean b(k2.s sVar) {
        sVar.peekFully(this.f13095a.e(), 0, 3);
        this.f13095a.W(0);
        if (this.f13095a.K() != 4607062) {
            return false;
        }
        sVar.peekFully(this.f13095a.e(), 0, 2);
        this.f13095a.W(0);
        if ((this.f13095a.P() & 250) != 0) {
            return false;
        }
        sVar.peekFully(this.f13095a.e(), 0, 4);
        this.f13095a.W(0);
        int iQ = this.f13095a.q();
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(iQ);
        sVar.peekFully(this.f13095a.e(), 0, 4);
        this.f13095a.W(0);
        return this.f13095a.q() == 0;
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) {
        androidx.media3.common.util.a.i(this.f13100f);
        while (true) {
            int i10 = this.f13101g;
            if (i10 != 1) {
                if (i10 == 2) {
                    n(sVar);
                } else if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    if (l(sVar)) {
                        return 0;
                    }
                } else if (!m(sVar)) {
                    return -1;
                }
            } else if (!k(sVar)) {
                return -1;
            }
        }
    }

    @Override
    public void e(t tVar) {
        this.f13100f = tVar;
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f13101g = 1;
            this.f13102h = false;
        } else {
            this.f13101g = 3;
        }
        this.f13104j = 0;
    }

    @Override
    public void release() {
    }
}
