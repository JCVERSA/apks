package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.k;

public interface c6c {

    public static final class a {
        public final Handler a;
        public final c6c b;

        public a(Handler handler, c6c c6cVar) {
            this.a = c6cVar != null ? (Handler) zi.e(handler) : null;
            this.b = c6cVar;
        }

        public void A(final Object obj) {
            if (this.a != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.a.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.w(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j, final int i) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.x(j, i);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.y(exc);
                    }
                });
            }
        }

        public void D(final f7c f7cVar) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.z(f7cVar);
                    }
                });
            }
        }

        public void k(final String str, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.q(str, j, j2);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.r(str);
                    }
                });
            }
        }

        public void m(final ju1 ju1Var) {
            ju1Var.c();
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.s(ju1Var);
                    }
                });
            }
        }

        public void n(final int i, final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.t(i, j);
                    }
                });
            }
        }

        public void o(final ju1 ju1Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.u(ju1Var);
                    }
                });
            }
        }

        public void p(final k kVar, final lu1 lu1Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.v(kVar, lu1Var);
                    }
                });
            }
        }

        public final void q(String str, long j, long j2) {
            ((c6c) blb.j(this.b)).onVideoDecoderInitialized(str, j, j2);
        }

        public final void r(String str) {
            ((c6c) blb.j(this.b)).onVideoDecoderReleased(str);
        }

        public final void s(ju1 ju1Var) {
            ju1Var.c();
            ((c6c) blb.j(this.b)).e(ju1Var);
        }

        public final void t(int i, long j) {
            ((c6c) blb.j(this.b)).onDroppedFrames(i, j);
        }

        public final void u(ju1 ju1Var) {
            ((c6c) blb.j(this.b)).b(ju1Var);
        }

        public final void v(k kVar, lu1 lu1Var) {
            ((c6c) blb.j(this.b)).h(kVar);
            ((c6c) blb.j(this.b)).f(kVar, lu1Var);
        }

        public final void w(Object obj, long j) {
            ((c6c) blb.j(this.b)).onRenderedFirstFrame(obj, j);
        }

        public final void x(long j, int i) {
            ((c6c) blb.j(this.b)).onVideoFrameProcessingOffset(j, i);
        }

        public final void y(Exception exc) {
            ((c6c) blb.j(this.b)).onVideoCodecError(exc);
        }

        public final void z(f7c f7cVar) {
            ((c6c) blb.j(this.b)).onVideoSizeChanged(f7cVar);
        }
    }

    void b(ju1 ju1Var);

    void e(ju1 ju1Var);

    void f(k kVar, lu1 lu1Var);

    default void h(k kVar) {
    }

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(Object obj, long j);

    void onVideoCodecError(Exception exc);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoDecoderReleased(String str);

    void onVideoFrameProcessingOffset(long j, int i);

    void onVideoSizeChanged(f7c f7cVar);
}
