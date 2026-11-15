package com.google.android.exoplayer2.drm;

import android.os.Handler;
import defpackage.blb;
import defpackage.zi;
import java.util.concurrent.CopyOnWriteArrayList;

public interface b {

    public static class a {
        public final int a;
        public final com.google.android.exoplayer2.source.i.b b;
        public final CopyOnWriteArrayList c;

        public static final class C0078a {
            public Handler a;
            public b b;

            public C0078a(Handler handler, b bVar) {
                this.a = handler;
                this.b = bVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void g(Handler handler, b bVar) {
            zi.e(handler);
            zi.e(bVar);
            this.c.add(new C0078a(handler, bVar));
        }

        public void h() {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.n(bVar);
                    }
                });
            }
        }

        public void i() {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.o(bVar);
                    }
                });
            }
        }

        public void j() {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.p(bVar);
                    }
                });
            }
        }

        public void k(final int i) {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.q(bVar, i);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.r(bVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0078a c0078a : this.c) {
                final b bVar = c0078a.b;
                blb.z0(c0078a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.s(bVar);
                    }
                });
            }
        }

        public final void n(b bVar) {
            bVar.j(this.a, this.b);
        }

        public final void o(b bVar) {
            bVar.m(this.a, this.b);
        }

        public final void p(b bVar) {
            bVar.l(this.a, this.b);
        }

        public final void q(b bVar, int i) {
            bVar.n(this.a, this.b);
            bVar.k(this.a, this.b, i);
        }

        public final void r(b bVar, Exception exc) {
            bVar.o(this.a, this.b, exc);
        }

        public final void s(b bVar) {
            bVar.u(this.a, this.b);
        }

        public void t(b bVar) {
            for (C0078a c0078a : this.c) {
                if (c0078a.b == bVar) {
                    this.c.remove(c0078a);
                }
            }
        }

        public a u(int i, com.google.android.exoplayer2.source.i.b bVar) {
            return new a(this.c, i, bVar);
        }

        public a(CopyOnWriteArrayList copyOnWriteArrayList, int i, com.google.android.exoplayer2.source.i.b bVar) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = bVar;
        }
    }

    void j(int i, com.google.android.exoplayer2.source.i.b bVar);

    void k(int i, com.google.android.exoplayer2.source.i.b bVar, int i2);

    void l(int i, com.google.android.exoplayer2.source.i.b bVar);

    void m(int i, com.google.android.exoplayer2.source.i.b bVar);

    default void n(int i, com.google.android.exoplayer2.source.i.b bVar) {
    }

    void o(int i, com.google.android.exoplayer2.source.i.b bVar, Exception exc);

    void u(int i, com.google.android.exoplayer2.source.i.b bVar);
}
