package x1;

import android.util.SparseArray;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

public interface c {

    public static final class a {

        public final long f74856a;

        public final androidx.media3.common.e0 f74857b;

        public final int f74858c;

        public final androidx.media3.exoplayer.source.r.b f74859d;

        public final long f74860e;

        public final androidx.media3.common.e0 f74861f;

        public final int f74862g;

        public final androidx.media3.exoplayer.source.r.b f74863h;

        public final long f74864i;

        public final long f74865j;

        public a(long j10, androidx.media3.common.e0 e0Var, int i10, androidx.media3.exoplayer.source.r.b bVar, long j11, androidx.media3.common.e0 e0Var2, int i11, androidx.media3.exoplayer.source.r.b bVar2, long j12, long j13) {
            this.f74856a = j10;
            this.f74857b = e0Var;
            this.f74858c = i10;
            this.f74859d = bVar;
            this.f74860e = j11;
            this.f74861f = e0Var2;
            this.f74862g = i11;
            this.f74863h = bVar2;
            this.f74864i = j12;
            this.f74865j = j13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f74856a == aVar.f74856a && this.f74858c == aVar.f74858c && this.f74860e == aVar.f74860e && this.f74862g == aVar.f74862g && this.f74864i == aVar.f74864i && this.f74865j == aVar.f74865j && Objects.equals(this.f74857b, aVar.f74857b) && Objects.equals(this.f74859d, aVar.f74859d) && Objects.equals(this.f74861f, aVar.f74861f) && Objects.equals(this.f74863h, aVar.f74863h);
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f74856a), this.f74857b, Integer.valueOf(this.f74858c), this.f74859d, Long.valueOf(this.f74860e), this.f74861f, Integer.valueOf(this.f74862g), this.f74863h, Long.valueOf(this.f74864i), Long.valueOf(this.f74865j));
        }
    }

    public static final class b {

        private final androidx.media3.common.p f74866a;

        private final SparseArray f74867b;

        public b(androidx.media3.common.p pVar, SparseArray sparseArray) {
            this.f74866a = pVar;
            SparseArray sparseArray2 = new SparseArray(pVar.d());
            for (int i10 = 0; i10 < pVar.d(); i10++) {
                int iC = pVar.c(i10);
                sparseArray2.append(iC, (a) androidx.media3.common.util.a.e((a) sparseArray.get(iC)));
            }
            this.f74867b = sparseArray2;
        }

        public boolean a(int i10) {
            return this.f74866a.a(i10);
        }

        public int b(int i10) {
            return this.f74866a.c(i10);
        }

        public a c(int i10) {
            return (a) androidx.media3.common.util.a.e((a) this.f74867b.get(i10));
        }

        public int d() {
            return this.f74866a.d();
        }
    }

    void A(a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void B(a aVar, String str);

    void C(a aVar, boolean z10);

    void D(a aVar, androidx.media3.exoplayer.j jVar);

    void E(a aVar);

    void F(a aVar, boolean z10);

    void G(a aVar, PlaybackException playbackException);

    void H(a aVar, Exception exc);

    void I(a aVar, int i10, int i11, int i12, float f10);

    void J(a aVar, Object obj, long j10);

    void K(a aVar);

    void L(a aVar, String str);

    void M(a aVar, boolean z10);

    void N(a aVar, AudioSink.a aVar2);

    void O(a aVar, long j10, int i10);

    void P(a aVar, int i10);

    void Q(a aVar, Exception exc);

    void R(a aVar, int i10);

    void S(a aVar, androidx.media3.exoplayer.j jVar);

    void T(a aVar, boolean z10, int i10);

    void U(a aVar, Exception exc);

    void V(a aVar, androidx.media3.common.z zVar);

    void W(a aVar, String str, long j10);

    void X(a aVar, boolean z10);

    void Y(a aVar, long j10);

    void Z(a aVar, androidx.media3.common.i0 i0Var);

    void a(a aVar, int i10, boolean z10);

    void a0(a aVar, String str, long j10);

    void b(a aVar, int i10);

    void b0(a aVar, int i10);

    void c(a aVar, androidx.media3.exoplayer.j jVar);

    void c0(a aVar, int i10);

    void d(a aVar);

    void d0(a aVar, int i10, int i11);

    void e(a aVar, f2.i iVar, f2.j jVar, int i10);

    void e0(a aVar, boolean z10, int i10);

    void f(a aVar, f2.i iVar, f2.j jVar);

    void f0(a aVar, androidx.media3.common.v vVar);

    void g(androidx.media3.common.a0 a0Var, b bVar);

    void g0(a aVar, androidx.media3.common.m mVar);

    void h(a aVar);

    void h0(a aVar, androidx.media3.common.t tVar, int i10);

    void i0(a aVar, androidx.media3.common.a0.b bVar);

    void j(a aVar, float f10);

    void j0(a aVar, String str, long j10, long j11);

    void k(a aVar, int i10);

    void k0(a aVar, androidx.media3.common.h0 h0Var);

    void l(a aVar, Exception exc);

    void l0(a aVar, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i10);

    void m(a aVar);

    void m0(a aVar, f2.i iVar, f2.j jVar);

    void n(a aVar, androidx.media3.exoplayer.j jVar);

    void n0(a aVar, int i10);

    void o(a aVar, u1.b bVar);

    void o0(a aVar, androidx.media3.common.m0 m0Var);

    void p(a aVar, int i10, long j10);

    void p0(a aVar, f2.i iVar, f2.j jVar, IOException iOException, boolean z10);

    void q(a aVar, int i10, long j10, long j11);

    void q0(a aVar, f2.i iVar, f2.j jVar);

    void r(a aVar);

    void r0(a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void s0(a aVar, PlaybackException playbackException);

    void t(a aVar, f2.j jVar);

    void t0(a aVar);

    void u(a aVar, f2.j jVar);

    void u0(a aVar, boolean z10);

    void v0(a aVar, int i10, int i11, boolean z10);

    void w(a aVar, androidx.media3.common.x xVar);

    void w0(a aVar, List list);

    void x(a aVar, String str, long j10, long j11);

    void x0(a aVar, int i10, long j10, long j11);

    void z(a aVar, AudioSink.a aVar2);
}
