package com.google.android.exoplayer2.drm;

import android.os.Handler;
import com.google.android.exoplayer2.util.p0;
import java.util.concurrent.CopyOnWriteArrayList;

public interface s {

    public static class a {

        public final int f24371a;

        public final com.google.android.exoplayer2.source.o.b f24372b;

        private final CopyOnWriteArrayList f24373c;

        private static final class C0343a {

            public Handler f24374a;

            public s f24375b;

            public C0343a(Handler handler, s sVar) {
                this.f24374a = handler;
                this.f24375b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void n(s sVar) {
            sVar.A(this.f24371a, this.f24372b);
        }

        public void o(s sVar) {
            sVar.p(this.f24371a, this.f24372b);
        }

        public void p(s sVar) {
            sVar.F(this.f24371a, this.f24372b);
        }

        public void q(s sVar, int i10) {
            sVar.s(this.f24371a, this.f24372b);
            sVar.B(this.f24371a, this.f24372b, i10);
        }

        public void r(s sVar, Exception exc) {
            sVar.w(this.f24371a, this.f24372b, exc);
        }

        public void s(s sVar) {
            sVar.C(this.f24371a, this.f24372b);
        }

        public void g(Handler handler, s sVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(sVar);
            this.f24373c.add(new C0343a(handler, sVar));
        }

        public void h() {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24369a.n(sVar);
                    }
                });
            }
        }

        public void i() {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24365a.o(sVar);
                    }
                });
            }
        }

        public void j() {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24367a.p(sVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24362a.q(sVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24357a.r(sVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0343a c0343a : this.f24373c) {
                final s sVar = c0343a.f24375b;
                p0.K0(c0343a.f24374a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f24360a.s(sVar);
                    }
                });
            }
        }

        public void t(s sVar) {
            for (C0343a c0343a : this.f24373c) {
                if (c0343a.f24375b == sVar) {
                    this.f24373c.remove(c0343a);
                }
            }
        }

        public a u(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            return new a(this.f24373c, i10, bVar);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, com.google.android.exoplayer2.source.o.b bVar) {
            this.f24373c = copyOnWriteArrayList;
            this.f24371a = i10;
            this.f24372b = bVar;
        }
    }

    void A(int i10, com.google.android.exoplayer2.source.o.b bVar);

    void B(int i10, com.google.android.exoplayer2.source.o.b bVar, int i11);

    void C(int i10, com.google.android.exoplayer2.source.o.b bVar);

    void F(int i10, com.google.android.exoplayer2.source.o.b bVar);

    void p(int i10, com.google.android.exoplayer2.source.o.b bVar);

    void s(int i10, com.google.android.exoplayer2.source.o.b bVar);

    void w(int i10, com.google.android.exoplayer2.source.o.b bVar, Exception exc);
}
