package r3;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;
import java.util.Map;

public final class c0 implements k2.r {

    public static final k2.x f70423l = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return c0.g();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };

    private final p0 f70424a;

    private final SparseArray f70425b;

    private final androidx.media3.common.util.j0 f70426c;

    private final a0 f70427d;

    private boolean f70428e;

    private boolean f70429f;

    private boolean f70430g;

    private long f70431h;

    private z f70432i;

    private k2.t f70433j;

    private boolean f70434k;

    private static final class a {

        private final m f70435a;

        private final p0 f70436b;

        private final androidx.media3.common.util.i0 f70437c = new androidx.media3.common.util.i0(new byte[64]);

        private boolean f70438d;

        private boolean f70439e;

        private boolean f70440f;

        private int f70441g;

        private long f70442h;

        public a(m mVar, p0 p0Var) {
            this.f70435a = mVar;
            this.f70436b = p0Var;
        }

        private void b() {
            this.f70437c.r(8);
            this.f70438d = this.f70437c.g();
            this.f70439e = this.f70437c.g();
            this.f70437c.r(6);
            this.f70441g = this.f70437c.h(8);
        }

        private void c() {
            this.f70442h = 0L;
            if (this.f70438d) {
                this.f70437c.r(4);
                long jH = ((long) this.f70437c.h(3)) << 30;
                this.f70437c.r(1);
                long jH2 = jH | ((long) (this.f70437c.h(15) << 15));
                this.f70437c.r(1);
                long jH3 = jH2 | ((long) this.f70437c.h(15));
                this.f70437c.r(1);
                if (!this.f70440f && this.f70439e) {
                    this.f70437c.r(4);
                    long jH4 = ((long) this.f70437c.h(3)) << 30;
                    this.f70437c.r(1);
                    long jH5 = jH4 | ((long) (this.f70437c.h(15) << 15));
                    this.f70437c.r(1);
                    long jH6 = jH5 | ((long) this.f70437c.h(15));
                    this.f70437c.r(1);
                    this.f70436b.b(jH6);
                    this.f70440f = true;
                }
                this.f70442h = this.f70436b.b(jH3);
            }
        }

        public void a(androidx.media3.common.util.j0 j0Var) {
            j0Var.l(this.f70437c.f10076a, 0, 3);
            this.f70437c.p(0);
            b();
            j0Var.l(this.f70437c.f10076a, 0, this.f70441g);
            this.f70437c.p(0);
            c();
            this.f70435a.c(this.f70442h, 4);
            this.f70435a.a(j0Var);
            this.f70435a.d(false);
        }

        public void d() {
            this.f70440f = false;
            this.f70435a.seek();
        }
    }

    public c0() {
        this(new p0(0L));
    }

    public static k2.r[] g() {
        return new k2.r[]{new c0()};
    }

    private void h(long j10) {
        if (this.f70434k) {
            return;
        }
        this.f70434k = true;
        if (this.f70427d.c() == C.TIME_UNSET) {
            this.f70433j.d(new k2.m0.b(this.f70427d.c()));
            return;
        }
        z zVar = new z(this.f70427d.d(), this.f70427d.c(), j10);
        this.f70432i = zVar;
        this.f70433j.d(zVar.b());
    }

    @Override
    public boolean b(k2.s sVar) {
        byte[] bArr = new byte[14];
        sVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        sVar.advancePeekPosition(bArr[13] & 7);
        sVar.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, k2.l0 l0Var) {
        m nVar;
        androidx.media3.common.util.a.i(this.f70433j);
        long length = sVar.getLength();
        if (length != -1 && !this.f70427d.e()) {
            return this.f70427d.g(sVar, l0Var);
        }
        h(length);
        z zVar = this.f70432i;
        if (zVar != null && zVar.d()) {
            return this.f70432i.c(sVar, l0Var);
        }
        sVar.resetPeekPosition();
        long peekPosition = length != -1 ? length - sVar.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !sVar.peekFully(this.f70426c.e(), 0, 4, true)) {
            return -1;
        }
        this.f70426c.W(0);
        int iQ = this.f70426c.q();
        if (iQ == 441) {
            return -1;
        }
        if (iQ == 442) {
            sVar.peekFully(this.f70426c.e(), 0, 10);
            this.f70426c.W(9);
            sVar.skipFully((this.f70426c.H() & 7) + 14);
            return 0;
        }
        if (iQ == 443) {
            sVar.peekFully(this.f70426c.e(), 0, 2);
            this.f70426c.W(0);
            sVar.skipFully(this.f70426c.P() + 6);
            return 0;
        }
        if (((iQ & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            sVar.skipFully(1);
            return 0;
        }
        int i10 = iQ & 255;
        a aVar = (a) this.f70425b.get(i10);
        if (!this.f70428e) {
            if (aVar == null) {
                if (i10 == 189) {
                    nVar = new c("video/mp2p");
                    this.f70429f = true;
                    this.f70431h = sVar.getPosition();
                } else if ((iQ & 224) == 192) {
                    nVar = new t("video/mp2p");
                    this.f70429f = true;
                    this.f70431h = sVar.getPosition();
                } else if ((iQ & 240) == 224) {
                    nVar = new n("video/mp2p");
                    this.f70430g = true;
                    this.f70431h = sVar.getPosition();
                } else {
                    nVar = null;
                }
                if (nVar != null) {
                    nVar.e(this.f70433j, new l0.d(i10, 256));
                    aVar = new a(nVar, this.f70424a);
                    this.f70425b.put(i10, aVar);
                }
            }
            if (sVar.getPosition() > ((this.f70429f && this.f70430g) ? this.f70431h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f70428e = true;
                this.f70433j.endTracks();
            }
        }
        sVar.peekFully(this.f70426c.e(), 0, 2);
        this.f70426c.W(0);
        int iP = this.f70426c.P() + 6;
        if (aVar == null) {
            sVar.skipFully(iP);
        } else {
            this.f70426c.S(iP);
            sVar.readFully(this.f70426c.e(), 0, iP);
            this.f70426c.W(6);
            aVar.a(this.f70426c);
            androidx.media3.common.util.j0 j0Var = this.f70426c;
            j0Var.V(j0Var.b());
        }
        return 0;
    }

    @Override
    public void e(k2.t tVar) {
        this.f70433j = tVar;
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        boolean z10 = this.f70424a.f() == C.TIME_UNSET;
        if (!z10) {
            long jD = this.f70424a.d();
            z10 = (jD == C.TIME_UNSET || jD == 0 || jD == j11) ? false : true;
        }
        if (z10) {
            this.f70424a.i(j11);
        }
        z zVar = this.f70432i;
        if (zVar != null) {
            zVar.h(j11);
        }
        for (int i10 = 0; i10 < this.f70425b.size(); i10++) {
            ((a) this.f70425b.valueAt(i10)).d();
        }
    }

    public c0(p0 p0Var) {
        this.f70424a = p0Var;
        this.f70426c = new androidx.media3.common.util.j0(4096);
        this.f70425b = new SparseArray();
        this.f70427d = new a0();
    }

    @Override
    public void release() {
    }
}
