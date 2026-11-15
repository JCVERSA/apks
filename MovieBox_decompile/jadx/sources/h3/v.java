package h3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import k2.r0;
import k2.s0;

final class v implements s0 {

    private final s0 f61275a;

    private final s.a f61276b;

    private s f61282h;

    private androidx.media3.common.r f61283i;

    private boolean f61284j;

    private final d f61277c = new d();

    private int f61279e = 0;

    private int f61280f = 0;

    private byte[] f61281g = a1.f10043f;

    private final j0 f61278d = new j0();

    public v(s0 s0Var, s.a aVar) {
        this.f61275a = s0Var;
        this.f61276b = aVar;
    }

    private void i(int i10) {
        int length = this.f61281g.length;
        int i11 = this.f61280f;
        if (length - i11 >= i10) {
            return;
        }
        int i12 = i11 - this.f61279e;
        int iMax = Math.max(i12 * 2, i10 + i12);
        byte[] bArr = this.f61281g;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f61279e, bArr2, 0, i12);
        this.f61279e = 0;
        this.f61280f = i12;
        this.f61281g = bArr2;
    }

    public void j(e eVar, long j10, int i10) {
        androidx.media3.common.util.a.i(this.f61283i);
        byte[] bArrA = this.f61277c.a(eVar.f61237a, eVar.f61239c);
        this.f61278d.T(bArrA);
        this.f61275a.c(this.f61278d, bArrA.length);
        long j11 = eVar.f61238b;
        if (j11 == C.TIME_UNSET) {
            androidx.media3.common.util.a.g(this.f61283i.f9854t == Long.MAX_VALUE);
        } else {
            long j12 = this.f61283i.f9854t;
            j10 = j12 == Long.MAX_VALUE ? j10 + j11 : j11 + j12;
        }
        this.f61275a.b(j10, i10 | 1, bArrA.length, 0, null);
    }

    @Override
    public void a(j0 j0Var, int i10, int i11) {
        if (this.f61282h == null) {
            this.f61275a.a(j0Var, i10, i11);
            return;
        }
        i(i10);
        j0Var.l(this.f61281g, this.f61280f, i10);
        this.f61280f += i10;
    }

    @Override
    public void b(final long j10, final int i10, int i11, int i12, s0.a aVar) {
        if (this.f61282h == null) {
            this.f61275a.b(j10, i10, i11, i12, aVar);
            return;
        }
        androidx.media3.common.util.a.b(aVar == null, "DRM on subtitles is not supported");
        int i13 = (this.f61280f - i12) - i11;
        try {
            this.f61282h.b(this.f61281g, i13, i11, s.b.b(), new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    this.f61272a.j(j10, i10, (e) obj);
                }
            });
        } catch (RuntimeException e10) {
            if (!this.f61284j) {
                throw e10;
            }
            androidx.media3.common.util.u.i("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e10);
        }
        int i14 = i13 + i11;
        this.f61279e = i14;
        if (i14 == this.f61280f) {
            this.f61279e = 0;
            this.f61280f = 0;
        }
    }

    @Override
    public void c(j0 j0Var, int i10) {
        r0.c(this, j0Var, i10);
    }

    @Override
    public void d(androidx.media3.common.r rVar) {
        androidx.media3.common.util.a.e(rVar.f9849o);
        androidx.media3.common.util.a.a(y.k(rVar.f9849o) == 3);
        if (!rVar.equals(this.f61283i)) {
            this.f61283i = rVar;
            this.f61282h = this.f61276b.a(rVar) ? this.f61276b.c(rVar) : null;
        }
        if (this.f61282h == null) {
            this.f61275a.d(rVar);
        } else {
            this.f61275a.d(rVar.b().u0("application/x-media3-cues").S(rVar.f9849o).y0(Long.MAX_VALUE).W(this.f61276b.b(rVar)).N());
        }
    }

    @Override
    public int e(androidx.media3.common.j jVar, int i10, boolean z10) {
        return r0.b(this, jVar, i10, z10);
    }

    @Override
    public void f(long j10) {
        r0.a(this, j10);
    }

    @Override
    public int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11) throws EOFException {
        if (this.f61282h == null) {
            return this.f61275a.g(jVar, i10, z10, i11);
        }
        i(i10);
        int i12 = jVar.read(this.f61281g, this.f61280f, i10);
        if (i12 != -1) {
            this.f61280f += i12;
            return i12;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }

    public void l(boolean z10) {
        this.f61284j = z10;
    }
}
