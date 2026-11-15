package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public interface p {

    public static class a {

        public final int f25583a;

        public final o.b f25584b;

        private final CopyOnWriteArrayList f25585c;

        private final long f25586d;

        private static final class C0351a {

            public Handler f25587a;

            public p f25588b;

            public C0351a(Handler handler, p pVar) {
                this.f25587a = handler;
                this.f25588b = pVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private long h(long j10) {
            long jE1 = p0.e1(j10);
            return jE1 == C.TIME_UNSET ? C.TIME_UNSET : this.f25586d + jE1;
        }

        public void k(p pVar, v9.i iVar) {
            pVar.y(this.f25583a, this.f25584b, iVar);
        }

        public void l(p pVar, v9.h hVar, v9.i iVar) {
            pVar.l(this.f25583a, this.f25584b, hVar, iVar);
        }

        public void m(p pVar, v9.h hVar, v9.i iVar) {
            pVar.D(this.f25583a, this.f25584b, hVar, iVar);
        }

        public void n(p pVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10) {
            pVar.z(this.f25583a, this.f25584b, hVar, iVar, iOException, z10);
        }

        public void o(p pVar, v9.h hVar, v9.i iVar) {
            pVar.u(this.f25583a, this.f25584b, hVar, iVar);
        }

        public void p(p pVar, o.b bVar, v9.i iVar) {
            pVar.E(this.f25583a, bVar, iVar);
        }

        public void A(v9.h hVar, int i10, int i11, p1 p1Var, int i12, Object obj, long j10, long j11) {
            B(hVar, new v9.i(i10, i11, p1Var, i12, obj, h(j10), h(j11)));
        }

        public void B(final v9.h hVar, final v9.i iVar) {
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73523a.o(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void C(p pVar) {
            for (C0351a c0351a : this.f25585c) {
                if (c0351a.f25588b == pVar) {
                    this.f25585c.remove(c0351a);
                }
            }
        }

        public void D(int i10, long j10, long j11) {
            E(new v9.i(1, i10, null, 3, null, h(j10), h(j11)));
        }

        public void E(final v9.i iVar) {
            final o.b bVar = (o.b) com.google.android.exoplayer2.util.a.e(this.f25584b);
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73527a.p(pVar, bVar, iVar);
                    }
                });
            }
        }

        public a F(int i10, o.b bVar, long j10) {
            return new a(this.f25585c, i10, bVar, j10);
        }

        public void g(Handler handler, p pVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(pVar);
            this.f25585c.add(new C0351a(handler, pVar));
        }

        public void i(int i10, p1 p1Var, int i11, Object obj, long j10) {
            j(new v9.i(1, i10, p1Var, i11, obj, h(j10), C.TIME_UNSET));
        }

        public void j(final v9.i iVar) {
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73531a.k(pVar, iVar);
                    }
                });
            }
        }

        public void q(v9.h hVar, int i10) {
            r(hVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void r(v9.h hVar, int i10, int i11, p1 p1Var, int i12, Object obj, long j10, long j11) {
            s(hVar, new v9.i(i10, i11, p1Var, i12, obj, h(j10), h(j11)));
        }

        public void s(final v9.h hVar, final v9.i iVar) {
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73519a.l(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void t(v9.h hVar, int i10) {
            u(hVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        public void u(v9.h hVar, int i10, int i11, p1 p1Var, int i12, Object obj, long j10, long j11) {
            v(hVar, new v9.i(i10, i11, p1Var, i12, obj, h(j10), h(j11)));
        }

        public void v(final v9.h hVar, final v9.i iVar) {
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73509a.m(pVar, hVar, iVar);
                    }
                });
            }
        }

        public void w(v9.h hVar, int i10, int i11, p1 p1Var, int i12, Object obj, long j10, long j11, IOException iOException, boolean z10) {
            y(hVar, new v9.i(i10, i11, p1Var, i12, obj, h(j10), h(j11)), iOException, z10);
        }

        public void x(v9.h hVar, int i10, IOException iOException, boolean z10) {
            w(hVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, iOException, z10);
        }

        public void y(final v9.h hVar, final v9.i iVar, final IOException iOException, final boolean z10) {
            for (C0351a c0351a : this.f25585c) {
                final p pVar = c0351a.f25588b;
                p0.K0(c0351a.f25587a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f73513a.n(pVar, hVar, iVar, iOException, z10);
                    }
                });
            }
        }

        public void z(v9.h hVar, int i10) {
            A(hVar, i10, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, o.b bVar, long j10) {
            this.f25585c = copyOnWriteArrayList;
            this.f25583a = i10;
            this.f25584b = bVar;
            this.f25586d = j10;
        }
    }

    void D(int i10, o.b bVar, v9.h hVar, v9.i iVar);

    void E(int i10, o.b bVar, v9.i iVar);

    void l(int i10, o.b bVar, v9.h hVar, v9.i iVar);

    void u(int i10, o.b bVar, v9.h hVar, v9.i iVar);

    void y(int i10, o.b bVar, v9.i iVar);

    void z(int i10, o.b bVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10);
}
