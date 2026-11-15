package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.media3.common.C;
import defpackage.blb;
import defpackage.ih6;
import defpackage.in5;
import defpackage.zi;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public interface j {

    public static class a {
        public final int a;
        public final i.b b;
        public final CopyOnWriteArrayList c;
        public final long d;

        public static final class C0083a {
            public Handler a;
            public j b;

            public C0083a(Handler handler, j jVar) {
                this.a = handler;
                this.b = jVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public void f(Handler handler, j jVar) {
            zi.e(handler);
            zi.e(jVar);
            this.c.add(new C0083a(handler, jVar));
        }

        public final long g(long j) {
            long jP0 = blb.P0(j);
            return jP0 == C.TIME_UNSET ? C.TIME_UNSET : this.d + jP0;
        }

        public void h(int i, com.google.android.exoplayer2.k kVar, int i2, Object obj, long j) {
            i(new ih6(1, i, kVar, i2, obj, g(j), C.TIME_UNSET));
        }

        public void i(final ih6 ih6Var) {
            for (C0083a c0083a : this.c) {
                final j jVar = c0083a.b;
                blb.z0(c0083a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.j(jVar, ih6Var);
                    }
                });
            }
        }

        public final void j(j jVar, ih6 ih6Var) {
            jVar.g(this.a, this.b, ih6Var);
        }

        public final void k(j jVar, in5 in5Var, ih6 ih6Var) {
            jVar.p(this.a, this.b, in5Var, ih6Var);
        }

        public final void l(j jVar, in5 in5Var, ih6 ih6Var) {
            jVar.i(this.a, this.b, in5Var, ih6Var);
        }

        public final void m(j jVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z) {
            jVar.t(this.a, this.b, in5Var, ih6Var, iOException, z);
        }

        public final void n(j jVar, in5 in5Var, ih6 ih6Var) {
            jVar.s(this.a, this.b, in5Var, ih6Var);
        }

        public void o(in5 in5Var, int i, int i2, com.google.android.exoplayer2.k kVar, int i3, Object obj, long j, long j2) {
            p(in5Var, new ih6(i, i2, kVar, i3, obj, g(j), g(j2)));
        }

        public void p(final in5 in5Var, final ih6 ih6Var) {
            for (C0083a c0083a : this.c) {
                final j jVar = c0083a.b;
                blb.z0(c0083a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.k(jVar, in5Var, ih6Var);
                    }
                });
            }
        }

        public void q(in5 in5Var, int i, int i2, com.google.android.exoplayer2.k kVar, int i3, Object obj, long j, long j2) {
            r(in5Var, new ih6(i, i2, kVar, i3, obj, g(j), g(j2)));
        }

        public void r(final in5 in5Var, final ih6 ih6Var) {
            for (C0083a c0083a : this.c) {
                final j jVar = c0083a.b;
                blb.z0(c0083a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.l(jVar, in5Var, ih6Var);
                    }
                });
            }
        }

        public void s(in5 in5Var, int i, int i2, com.google.android.exoplayer2.k kVar, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
            t(in5Var, new ih6(i, i2, kVar, i3, obj, g(j), g(j2)), iOException, z);
        }

        public void t(final in5 in5Var, final ih6 ih6Var, final IOException iOException, final boolean z) {
            for (C0083a c0083a : this.c) {
                final j jVar = c0083a.b;
                blb.z0(c0083a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.m(jVar, in5Var, ih6Var, iOException, z);
                    }
                });
            }
        }

        public void u(in5 in5Var, int i, int i2, com.google.android.exoplayer2.k kVar, int i3, Object obj, long j, long j2) {
            v(in5Var, new ih6(i, i2, kVar, i3, obj, g(j), g(j2)));
        }

        public void v(final in5 in5Var, final ih6 ih6Var) {
            for (C0083a c0083a : this.c) {
                final j jVar = c0083a.b;
                blb.z0(c0083a.a, new Runnable() {
                    @Override
                    public final void run() {
                        this.b.n(jVar, in5Var, ih6Var);
                    }
                });
            }
        }

        public void w(j jVar) {
            for (C0083a c0083a : this.c) {
                if (c0083a.b == jVar) {
                    this.c.remove(c0083a);
                }
            }
        }

        public a x(int i, i.b bVar, long j) {
            return new a(this.c, i, bVar, j);
        }

        public a(CopyOnWriteArrayList copyOnWriteArrayList, int i, i.b bVar, long j) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = bVar;
            this.d = j;
        }
    }

    void g(int i, i.b bVar, ih6 ih6Var);

    void i(int i, i.b bVar, in5 in5Var, ih6 ih6Var);

    void p(int i, i.b bVar, in5 in5Var, ih6 ih6Var);

    void s(int i, i.b bVar, in5 in5Var, ih6 ih6Var);

    void t(int i, i.b bVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z);
}
