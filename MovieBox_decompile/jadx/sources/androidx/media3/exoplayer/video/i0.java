package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.m0;
import androidx.media3.common.util.a1;

public interface i0 {

    public static final class a {

        private final Handler f12823a;

        private final i0 f12824b;

        public a(Handler handler, i0 i0Var) {
            this.f12823a = i0Var != null ? (Handler) androidx.media3.common.util.a.e(handler) : null;
            this.f12824b = i0Var;
        }

        public void q(String str, long j10, long j11) {
            ((i0) a1.i(this.f12824b)).onVideoDecoderInitialized(str, j10, j11);
        }

        public void r(String str) {
            ((i0) a1.i(this.f12824b)).b(str);
        }

        public void s(androidx.media3.exoplayer.j jVar) {
            jVar.c();
            ((i0) a1.i(this.f12824b)).v(jVar);
        }

        public void t(int i10, long j10) {
            ((i0) a1.i(this.f12824b)).onDroppedFrames(i10, j10);
        }

        public void u(androidx.media3.exoplayer.j jVar) {
            ((i0) a1.i(this.f12824b)).o(jVar);
        }

        public void v(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
            ((i0) a1.i(this.f12824b)).u(rVar, kVar);
        }

        public void w(Object obj, long j10) {
            ((i0) a1.i(this.f12824b)).f(obj, j10);
        }

        public void x(long j10, int i10) {
            ((i0) a1.i(this.f12824b)).i(j10, i10);
        }

        public void y(Exception exc) {
            ((i0) a1.i(this.f12824b)).e(exc);
        }

        public void z(m0 m0Var) {
            ((i0) a1.i(this.f12824b)).onVideoSizeChanged(m0Var);
        }

        public void A(final Object obj) {
            if (this.f12823a != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.f12823a.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12763a.w(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i10) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12795a.x(j10, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12775a.y(exc);
                    }
                });
            }
        }

        public void D(final m0 m0Var) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f13047a.z(m0Var);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f13043a.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12777a.r(str);
                    }
                });
            }
        }

        public void m(final androidx.media3.exoplayer.j jVar) {
            jVar.c();
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12807a.s(jVar);
                    }
                });
            }
        }

        public void n(final int i10, final long j10) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12779a.t(i10, j10);
                    }
                });
            }
        }

        public void o(final androidx.media3.exoplayer.j jVar) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12799a.u(jVar);
                    }
                });
            }
        }

        public void p(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
            Handler handler = this.f12823a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12802a.v(rVar, kVar);
                    }
                });
            }
        }
    }

    void b(String str);

    void e(Exception exc);

    void f(Object obj, long j10);

    void i(long j10, int i10);

    void o(androidx.media3.exoplayer.j jVar);

    void onDroppedFrames(int i10, long j10);

    void onVideoDecoderInitialized(String str, long j10, long j11);

    void onVideoSizeChanged(m0 m0Var);

    void u(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void v(androidx.media3.exoplayer.j jVar);
}
