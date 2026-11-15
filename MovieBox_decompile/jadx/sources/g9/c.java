package g9;

import android.util.SparseArray;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.w1;
import java.io.IOException;
import java.util.List;

public interface c {

    public static final class a {

        public final long f60729a;

        public final l3 f60730b;

        public final int f60731c;

        public final com.google.android.exoplayer2.source.o.b f60732d;

        public final long f60733e;

        public final l3 f60734f;

        public final int f60735g;

        public final com.google.android.exoplayer2.source.o.b f60736h;

        public final long f60737i;

        public final long f60738j;

        public a(long j10, l3 l3Var, int i10, com.google.android.exoplayer2.source.o.b bVar, long j11, l3 l3Var2, int i11, com.google.android.exoplayer2.source.o.b bVar2, long j12, long j13) {
            this.f60729a = j10;
            this.f60730b = l3Var;
            this.f60731c = i10;
            this.f60732d = bVar;
            this.f60733e = j11;
            this.f60734f = l3Var2;
            this.f60735g = i11;
            this.f60736h = bVar2;
            this.f60737i = j12;
            this.f60738j = j13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f60729a == aVar.f60729a && this.f60731c == aVar.f60731c && this.f60733e == aVar.f60733e && this.f60735g == aVar.f60735g && this.f60737i == aVar.f60737i && this.f60738j == aVar.f60738j && com.google.common.base.j.a(this.f60730b, aVar.f60730b) && com.google.common.base.j.a(this.f60732d, aVar.f60732d) && com.google.common.base.j.a(this.f60734f, aVar.f60734f) && com.google.common.base.j.a(this.f60736h, aVar.f60736h);
        }

        public int hashCode() {
            return com.google.common.base.j.b(Long.valueOf(this.f60729a), this.f60730b, Integer.valueOf(this.f60731c), this.f60732d, Long.valueOf(this.f60733e), this.f60734f, Integer.valueOf(this.f60735g), this.f60736h, Long.valueOf(this.f60737i), Long.valueOf(this.f60738j));
        }
    }

    public static final class b {

        private final com.google.android.exoplayer2.util.m f60739a;

        private final SparseArray f60740b;

        public b(com.google.android.exoplayer2.util.m mVar, SparseArray sparseArray) {
            this.f60739a = mVar;
            SparseArray sparseArray2 = new SparseArray(mVar.d());
            for (int i10 = 0; i10 < mVar.d(); i10++) {
                int iC = mVar.c(i10);
                sparseArray2.append(iC, (a) com.google.android.exoplayer2.util.a.e((a) sparseArray.get(iC)));
            }
            this.f60740b = sparseArray2;
        }

        public boolean a(int i10) {
            return this.f60739a.a(i10);
        }

        public int b(int i10) {
            return this.f60739a.c(i10);
        }

        public a c(int i10) {
            return (a) com.google.android.exoplayer2.util.a.e((a) this.f60740b.get(i10));
        }

        public int d() {
            return this.f60739a.d();
        }
    }

    void A(a aVar, v9.h hVar, v9.i iVar);

    void B(a aVar, long j10, int i10);

    void C(a aVar, na.z zVar);

    void D(a aVar);

    void E(a aVar, int i10, int i11, int i12, float f10);

    void F(a aVar, int i10, String str, long j10);

    void G(a aVar, PlaybackException playbackException);

    void H(a aVar, String str, long j10);

    void I(a aVar, String str, long j10, long j11);

    void J(a aVar, da.f fVar);

    void K(a aVar, float f10);

    void L(a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar);

    void M(a aVar, boolean z10, int i10);

    void N(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    void O(a aVar, v9.i iVar);

    void P(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    void Q(a aVar);

    void R(a aVar, o2 o2Var);

    void S(a aVar, int i10);

    void T(a aVar, int i10, long j10, long j11);

    void U(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    void W(a aVar, int i10);

    void X(a aVar, q3 q3Var);

    void Y(a aVar);

    void Z(a aVar, String str, long j10);

    void a(a aVar, Object obj, long j10);

    void a0(a aVar, int i10);

    void b(a aVar);

    void b0(a aVar);

    void c(a aVar, v9.i iVar);

    void c0(a aVar, boolean z10);

    void d(a aVar, boolean z10);

    void d0(a aVar, v9.h hVar, v9.i iVar);

    void e(a aVar, b2 b2Var);

    void e0(a aVar, com.google.android.exoplayer2.p1 p1Var);

    void f(a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void f0(a aVar, com.google.android.exoplayer2.video.y yVar);

    void g(a aVar, com.google.android.exoplayer2.r rVar);

    void g0(a aVar, Exception exc);

    void h(a aVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10);

    void h0(a aVar);

    void i(a aVar);

    void i0(a aVar, int i10);

    void j(a aVar, int i10, com.google.android.exoplayer2.p1 p1Var);

    void j0(a aVar, Exception exc);

    void k0(p2 p2Var, b bVar);

    void l(a aVar, w1 w1Var, int i10);

    void l0(a aVar);

    void m(a aVar, v9.h hVar, v9.i iVar);

    void m0(a aVar, Exception exc);

    void n(a aVar, int i10, boolean z10);

    void n0(a aVar, boolean z10);

    void o(a aVar, PlaybackException playbackException);

    void o0(a aVar, p2.b bVar);

    void p(a aVar, List list);

    void p0(a aVar, int i10, long j10, long j11);

    void q(a aVar, boolean z10);

    void q0(a aVar, long j10);

    void r(a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar);

    void r0(a aVar, com.google.android.exoplayer2.p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void s(a aVar, boolean z10, int i10);

    void s0(a aVar, Exception exc);

    void t(a aVar, int i10, long j10);

    void t0(a aVar, Metadata metadata);

    void u(a aVar, com.google.android.exoplayer2.p1 p1Var);

    void u0(a aVar, int i10);

    void v0(a aVar, int i10);

    void w(a aVar, boolean z10);

    void w0(a aVar, String str, long j10, long j11);

    void x0(a aVar, String str);

    void y(a aVar, p2.e eVar, p2.e eVar2, int i10);

    void y0(a aVar, int i10, int i11);

    void z(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    void z0(a aVar, String str);
}
