package androidx.media3.exoplayer.drm;

import android.os.Handler;
import androidx.media3.common.util.a1;
import java.util.concurrent.CopyOnWriteArrayList;

public interface r {

    public static class a {

        public final int f11295a;

        public final androidx.media3.exoplayer.source.r.b f11296b;

        private final CopyOnWriteArrayList f11297c;

        private static final class C0090a {

            public Handler f11298a;

            public r f11299b;

            public C0090a(Handler handler, r rVar) {
                this.f11298a = handler;
                this.f11299b = rVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void n(r rVar) {
            rVar.p(this.f11295a, this.f11296b);
        }

        public void o(r rVar) {
            rVar.z(this.f11295a, this.f11296b);
        }

        public void p(r rVar) {
            rVar.C(this.f11295a, this.f11296b);
        }

        public void q(r rVar, int i10) {
            rVar.y(this.f11295a, this.f11296b, i10);
        }

        public void r(r rVar, Exception exc) {
            rVar.A(this.f11295a, this.f11296b, exc);
        }

        public void s(r rVar) {
            rVar.F(this.f11295a, this.f11296b);
        }

        public void g(Handler handler, r rVar) {
            androidx.media3.common.util.a.e(handler);
            androidx.media3.common.util.a.e(rVar);
            this.f11297c.add(new C0090a(handler, rVar));
        }

        public void h() {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11293a.n(rVar);
                    }
                });
            }
        }

        public void i() {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11289a.o(rVar);
                    }
                });
            }
        }

        public void j() {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11291a.p(rVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11284a.q(rVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11277a.r(rVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0090a c0090a : this.f11297c) {
                final r rVar = c0090a.f11299b;
                a1.b1(c0090a.f11298a, new Runnable() {
                    @Override
                    public final void run() {
                        this.f11287a.s(rVar);
                    }
                });
            }
        }

        public void t(r rVar) {
            for (C0090a c0090a : this.f11297c) {
                if (c0090a.f11299b == rVar) {
                    this.f11297c.remove(c0090a);
                }
            }
        }

        public a u(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            return new a(this.f11297c, i10, bVar);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i10, androidx.media3.exoplayer.source.r.b bVar) {
            this.f11297c = copyOnWriteArrayList;
            this.f11295a = i10;
            this.f11296b = bVar;
        }
    }

    void A(int i10, androidx.media3.exoplayer.source.r.b bVar, Exception exc);

    void C(int i10, androidx.media3.exoplayer.source.r.b bVar);

    void F(int i10, androidx.media3.exoplayer.source.r.b bVar);

    void p(int i10, androidx.media3.exoplayer.source.r.b bVar);

    void y(int i10, androidx.media3.exoplayer.source.r.b bVar, int i11);

    void z(int i10, androidx.media3.exoplayer.source.r.b bVar);
}
