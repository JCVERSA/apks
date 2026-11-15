package p2;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.s;
import java.util.List;
import java.util.Map;
import k2.a0;
import k2.b0;
import k2.l0;
import k2.m0;
import k2.q;
import k2.r;
import k2.s0;
import k2.t;
import k2.w;
import k2.x;
import k2.y;
import k2.z;

public final class d implements r {

    public static final x f68971o = new x() {
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
            return d.k();
        }

        @Override
        public x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    private final byte[] f68972a;

    private final j0 f68973b;

    private final boolean f68974c;

    private final y.a f68975d;

    private t f68976e;

    private s0 f68977f;

    private int f68978g;

    private androidx.media3.common.x f68979h;

    private b0 f68980i;

    private int f68981j;

    private int f68982k;

    private b f68983l;

    private int f68984m;

    private long f68985n;

    public d() {
        this(0);
    }

    private long g(j0 j0Var, boolean z10) {
        boolean zD;
        androidx.media3.common.util.a.e(this.f68980i);
        int iF = j0Var.f();
        while (iF <= j0Var.g() - 16) {
            j0Var.W(iF);
            if (y.d(j0Var, this.f68980i, this.f68982k, this.f68975d)) {
                j0Var.W(iF);
                return this.f68975d.f63720a;
            }
            iF++;
        }
        if (!z10) {
            j0Var.W(iF);
            return -1L;
        }
        while (iF <= j0Var.g() - this.f68981j) {
            j0Var.W(iF);
            try {
                zD = y.d(j0Var, this.f68980i, this.f68982k, this.f68975d);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (j0Var.f() <= j0Var.g() ? zD : false) {
                j0Var.W(iF);
                return this.f68975d.f63720a;
            }
            iF++;
        }
        j0Var.W(j0Var.g());
        return -1L;
    }

    private void h(k2.s sVar) {
        this.f68982k = z.b(sVar);
        ((t) a1.i(this.f68976e)).d(i(sVar.getPosition(), sVar.getLength()));
        this.f68978g = 5;
    }

    private m0 i(long j10, long j11) {
        androidx.media3.common.util.a.e(this.f68980i);
        b0 b0Var = this.f68980i;
        if (b0Var.f63518k != null) {
            return new a0(b0Var, j10);
        }
        if (j11 == -1 || b0Var.f63517j <= 0) {
            return new m0.b(b0Var.f());
        }
        b bVar = new b(b0Var, this.f68982k, j10, j11);
        this.f68983l = bVar;
        return bVar.b();
    }

    private void j(k2.s sVar) {
        byte[] bArr = this.f68972a;
        sVar.peekFully(bArr, 0, bArr.length);
        sVar.resetPeekPosition();
        this.f68978g = 2;
    }

    public static r[] k() {
        return new r[]{new d()};
    }

    private void l() {
        ((s0) a1.i(this.f68977f)).b((this.f68985n * 1000000) / ((long) ((b0) a1.i(this.f68980i)).f63512e), 1, this.f68984m, 0, null);
    }

    private int m(k2.s sVar, l0 l0Var) {
        boolean z10;
        androidx.media3.common.util.a.e(this.f68977f);
        androidx.media3.common.util.a.e(this.f68980i);
        b bVar = this.f68983l;
        if (bVar != null && bVar.d()) {
            return this.f68983l.c(sVar, l0Var);
        }
        if (this.f68985n == -1) {
            this.f68985n = y.i(sVar, this.f68980i);
            return 0;
        }
        int iG = this.f68973b.g();
        if (iG < 32768) {
            int i10 = sVar.read(this.f68973b.e(), iG, 32768 - iG);
            z10 = i10 == -1;
            if (!z10) {
                this.f68973b.V(iG + i10);
            } else if (this.f68973b.a() == 0) {
                l();
                return -1;
            }
        } else {
            z10 = false;
        }
        int iF = this.f68973b.f();
        int i11 = this.f68984m;
        int i12 = this.f68981j;
        if (i11 < i12) {
            j0 j0Var = this.f68973b;
            j0Var.X(Math.min(i12 - i11, j0Var.a()));
        }
        long jG = g(this.f68973b, z10);
        int iF2 = this.f68973b.f() - iF;
        this.f68973b.W(iF);
        this.f68977f.c(this.f68973b, iF2);
        this.f68984m += iF2;
        if (jG != -1) {
            l();
            this.f68984m = 0;
            this.f68985n = jG;
        }
        int length = this.f68973b.e().length - this.f68973b.g();
        if (this.f68973b.a() < 16 && length < 16) {
            int iA = this.f68973b.a();
            System.arraycopy(this.f68973b.e(), this.f68973b.f(), this.f68973b.e(), 0, iA);
            this.f68973b.W(0);
            this.f68973b.V(iA);
        }
        return 0;
    }

    private void n(k2.s sVar) {
        this.f68979h = z.d(sVar, !this.f68974c);
        this.f68978g = 1;
    }

    private void o(k2.s sVar) {
        z.a aVar = new z.a(this.f68980i);
        boolean zE = false;
        while (!zE) {
            zE = z.e(sVar, aVar);
            this.f68980i = (b0) a1.i(aVar.f63721a);
        }
        androidx.media3.common.util.a.e(this.f68980i);
        this.f68981j = Math.max(this.f68980i.f63510c, 6);
        ((s0) a1.i(this.f68977f)).d(this.f68980i.g(this.f68972a, this.f68979h).b().U(MimeTypes.AUDIO_FLAC).N());
        ((s0) a1.i(this.f68977f)).f(this.f68980i.f());
        this.f68978g = 4;
    }

    private void p(k2.s sVar) throws ParserException {
        z.i(sVar);
        this.f68978g = 3;
    }

    @Override
    public boolean b(k2.s sVar) {
        z.c(sVar, false);
        return z.a(sVar);
    }

    @Override
    public r c() {
        return q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        int i10 = this.f68978g;
        if (i10 == 0) {
            n(sVar);
            return 0;
        }
        if (i10 == 1) {
            j(sVar);
            return 0;
        }
        if (i10 == 2) {
            p(sVar);
            return 0;
        }
        if (i10 == 3) {
            o(sVar);
            return 0;
        }
        if (i10 == 4) {
            h(sVar);
            return 0;
        }
        if (i10 == 5) {
            return m(sVar, l0Var);
        }
        throw new IllegalStateException();
    }

    @Override
    public void e(t tVar) {
        this.f68976e = tVar;
        this.f68977f = tVar.track(0, 1);
        tVar.endTracks();
    }

    @Override
    public List f() {
        return q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        if (j10 == 0) {
            this.f68978g = 0;
        } else {
            b bVar = this.f68983l;
            if (bVar != null) {
                bVar.h(j11);
            }
        }
        this.f68985n = j11 != 0 ? -1L : 0L;
        this.f68984m = 0;
        this.f68973b.S(0);
    }

    public d(int i10) {
        this.f68972a = new byte[42];
        this.f68973b = new j0(new byte[32768], 0);
        this.f68974c = (i10 & 1) != 0;
        this.f68975d = new y.a();
        this.f68978g = 0;
    }

    @Override
    public void release() {
    }
}
