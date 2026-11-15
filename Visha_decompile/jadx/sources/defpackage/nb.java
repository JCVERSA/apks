package defpackage;

import android.util.SparseArray;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.b0;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.s;
import com.google.android.exoplayer2.source.i;
import com.google.android.exoplayer2.t;
import java.io.IOException;
import java.util.List;

public interface nb {

    public static final class a {
        public final long a;
        public final a0 b;
        public final int c;
        public final i.b d;
        public final long e;
        public final a0 f;
        public final int g;
        public final i.b h;
        public final long i;
        public final long j;

        public a(long j, a0 a0Var, int i, i.b bVar, long j2, a0 a0Var2, int i2, i.b bVar2, long j3, long j4) {
            this.a = j;
            this.b = a0Var;
            this.c = i;
            this.d = bVar;
            this.e = j2;
            this.f = a0Var2;
            this.g = i2;
            this.h = bVar2;
            this.i = j3;
            this.j = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.c == aVar.c && this.e == aVar.e && this.g == aVar.g && this.i == aVar.i && this.j == aVar.j && kc7.a(this.b, aVar.b) && kc7.a(this.d, aVar.d) && kc7.a(this.f, aVar.f) && kc7.a(this.h, aVar.h);
        }

        public int hashCode() {
            return kc7.b(Long.valueOf(this.a), this.b, Integer.valueOf(this.c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j));
        }
    }

    public static final class b {
        public final zx3 a;
        public final SparseArray b;

        public b(zx3 zx3Var, SparseArray sparseArray) {
            this.a = zx3Var;
            SparseArray sparseArray2 = new SparseArray(zx3Var.c());
            for (int i = 0; i < zx3Var.c(); i++) {
                int iB = zx3Var.b(i);
                sparseArray2.append(iB, (a) zi.e((a) sparseArray.get(iB)));
            }
            this.b = sparseArray2;
        }

        public boolean a(int i) {
            return this.a.a(i);
        }

        public int b(int i) {
            return this.a.b(i);
        }

        public a c(int i) {
            return (a) zi.e((a) this.b.get(i));
        }

        public int d() {
            return this.a.c();
        }
    }

    default void A(a aVar) {
    }

    default void B(a aVar, k kVar, lu1 lu1Var) {
    }

    default void C(a aVar, int i, k kVar) {
    }

    default void D(a aVar, t.b bVar) {
    }

    default void E(a aVar, n nVar, int i) {
    }

    default void F(a aVar, ju1 ju1Var) {
    }

    default void G(a aVar, boolean z) {
    }

    default void H(a aVar, int i) {
    }

    void I(t tVar, b bVar);

    default void J(a aVar) {
    }

    default void K(a aVar, Exception exc) {
    }

    default void L(a aVar, int i, ju1 ju1Var) {
    }

    default void M(a aVar, List list) {
    }

    default void N(a aVar, boolean z) {
    }

    void O(a aVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z);

    default void P(a aVar, long j, int i) {
    }

    default void Q(a aVar, long j) {
    }

    default void R(a aVar, int i, int i2, int i3, float f) {
    }

    default void S(a aVar, int i, String str, long j) {
    }

    default void T(a aVar, k kVar, lu1 lu1Var) {
    }

    default void U(a aVar, Object obj, long j) {
    }

    void V(a aVar, PlaybackException playbackException);

    void W(a aVar, ju1 ju1Var);

    default void X(a aVar, qm1 qm1Var) {
    }

    default void Y(a aVar, in5 in5Var, ih6 ih6Var) {
    }

    default void Z(a aVar, String str, long j) {
    }

    default void a(a aVar, boolean z) {
    }

    void a0(a aVar, t.e eVar, t.e eVar2, int i);

    default void b(a aVar, Exception exc) {
    }

    default void c(a aVar, in5 in5Var, ih6 ih6Var) {
    }

    default void c0(a aVar, String str) {
    }

    default void d(a aVar) {
    }

    default void e(a aVar, int i, int i2) {
    }

    default void e0(a aVar, k kVar) {
    }

    default void f0(a aVar, String str, long j, long j2) {
    }

    void g(a aVar, f7c f7cVar);

    default void g0(a aVar, Exception exc) {
    }

    default void h(a aVar, PlaybackException playbackException) {
    }

    default void h0(a aVar, s sVar) {
    }

    default void i0(a aVar, String str, long j, long j2) {
    }

    default void j(a aVar, b0 b0Var) {
    }

    default void j0(a aVar, String str) {
    }

    default void k(a aVar, int i, ju1 ju1Var) {
    }

    default void k0(a aVar, Metadata metadata) {
    }

    default void l(a aVar, int i) {
    }

    default void l0(a aVar, in5 in5Var, ih6 ih6Var) {
    }

    default void m(a aVar, o oVar) {
    }

    default void m0(a aVar, float f) {
    }

    default void n(a aVar) {
    }

    default void n0(a aVar, int i, long j, long j2) {
    }

    default void o(a aVar, int i) {
    }

    void o0(a aVar, int i, long j, long j2);

    default void p(a aVar) {
    }

    void p0(a aVar, ih6 ih6Var);

    default void q(a aVar) {
    }

    default void q0(a aVar, int i, boolean z) {
    }

    default void r(a aVar, k kVar) {
    }

    default void r0(a aVar, int i, long j) {
    }

    default void s(a aVar, int i) {
    }

    default void s0(a aVar, boolean z) {
    }

    default void t(a aVar, ju1 ju1Var) {
    }

    default void t0(a aVar, boolean z, int i) {
    }

    default void u(a aVar, boolean z, int i) {
    }

    default void u0(a aVar, Exception exc) {
    }

    default void v(a aVar) {
    }

    default void v0(a aVar) {
    }

    default void w(a aVar, String str, long j) {
    }

    default void x(a aVar, ju1 ju1Var) {
    }

    default void y(a aVar, int i) {
    }

    default void z(a aVar, h hVar) {
    }
}
