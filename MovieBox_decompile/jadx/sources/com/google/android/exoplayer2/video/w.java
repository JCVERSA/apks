package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;

public interface w {

    public static final class a {

        private final Handler f27136a;

        private final w f27137b;

        public a(Handler handler, w wVar) {
            this.f27136a = wVar != null ? (Handler) com.google.android.exoplayer2.util.a.e(handler) : null;
            this.f27137b = wVar;
        }

        public void q(String str, long j10, long j11) {
            ((w) p0.j(this.f27137b)).onVideoDecoderInitialized(str, j10, j11);
        }

        public void r(String str) {
            ((w) p0.j(this.f27137b)).b(str);
        }

        public void s(com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            ((w) p0.j(this.f27137b)).n(eVar);
        }

        public void t(int i10, long j10) {
            ((w) p0.j(this.f27137b)).onDroppedFrames(i10, j10);
        }

        public void u(com.google.android.exoplayer2.decoder.e eVar) {
            ((w) p0.j(this.f27137b)).v(eVar);
        }

        public void v(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
            ((w) p0.j(this.f27137b)).w(p1Var);
            ((w) p0.j(this.f27137b)).k(p1Var, gVar);
        }

        public void w(Object obj, long j10) {
            ((w) p0.j(this.f27137b)).f(obj, j10);
        }

        public void x(long j10, int i10) {
            ((w) p0.j(this.f27137b)).i(j10, i10);
        }

        public void y(Exception exc) {
            ((w) p0.j(this.f27137b)).e(exc);
        }

        public void z(y yVar) {
            ((w) p0.j(this.f27137b)).onVideoSizeChanged(yVar);
        }

        public void A(final Object obj) {
            if (this.f27136a != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.f27136a.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27033a.w(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j10, final int i10) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27133a.x(j10, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27040a.y(exc);
                    }
                });
            }
        }

        public void D(final y yVar) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27028a.z(yVar);
                    }
                });
            }
        }

        public void k(final String str, final long j10, final long j11) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27042a.q(str, j10, j11);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27036a.r(str);
                    }
                });
            }
        }

        public void m(final com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27038a.s(eVar);
                    }
                });
            }
        }

        public void n(final int i10, final long j10) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27030a.t(i10, j10);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27128a.u(eVar);
                    }
                });
            }
        }

        public void p(final p1 p1Var, final com.google.android.exoplayer2.decoder.g gVar) {
            Handler handler = this.f27136a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f27130a.v(p1Var, gVar);
                    }
                });
            }
        }
    }

    void b(String str);

    void e(Exception exc);

    void f(Object obj, long j10);

    void i(long j10, int i10);

    void k(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void n(com.google.android.exoplayer2.decoder.e eVar);

    void onDroppedFrames(int i10, long j10);

    void onVideoDecoderInitialized(String str, long j10, long j11);

    void onVideoSizeChanged(y yVar);

    void v(com.google.android.exoplayer2.decoder.e eVar);

    void w(p1 p1Var);
}
