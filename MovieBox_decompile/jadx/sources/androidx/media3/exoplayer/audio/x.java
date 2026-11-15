package androidx.media3.exoplayer.audio;

import android.os.Handler;

public interface x {

    public static final class a {

        private final Handler f10931a;

        private final x f10932b;

        public a(Handler handler, x xVar) {
            this.f10931a = xVar != null ? (Handler) androidx.media3.common.util.a.e(handler) : null;
            this.f10932b = xVar;
        }

        public void A(String str) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).c(str);
        }

        public void B(androidx.media3.exoplayer.j jVar) {
            jVar.c();
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).t(jVar);
        }

        public void C(androidx.media3.exoplayer.j jVar) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).n(jVar);
        }

        public void D(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).s(rVar, kVar);
        }

        public void E(long j10) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).d(j10);
        }

        public void F(boolean z10) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).onSkipSilenceEnabledChanged(z10);
        }

        public void G(int i10, long j10, long j11) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).h(i10, j10, j11);
        }

        public void v(Exception exc) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).g(exc);
        }

        public void w(Exception exc) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).a(exc);
        }

        public void x(AudioSink.a aVar) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).j(aVar);
        }

        public void y(AudioSink.a aVar) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).k(aVar);
        }

        public void z(String str, long j10, long j11) {
            ((x) androidx.media3.common.util.a1.i(this.f10932b)).onAudioDecoderInitialized(str, j10, j11);
        }

        public void H(final long j10) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10922a.E(j10);
                    }
                });
            }
        }

        public void I(final boolean z10) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10899a.F(z10);
                    }
                });
            }
        }

        public void J(final int i10, final long j10, final long j11) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10924a.G(i10, j10, j11);
                    }
                });
            }
        }

        public void m(final Exception exc) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10896a.v(exc);
                    }
                });
            }
        }

        public void n(final Exception exc) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10914a.w(exc);
                    }
                });
            }
        }

        public void o(final AudioSink.a aVar) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10902a.x(aVar);
                    }
                });
            }
        }

        public void p(final AudioSink.a aVar) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10928a.y(aVar);
                    }
                });
            }
        }

        public void q(final String str, final long j10, final long j11) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10906a.z(str, j10, j11);
                    }
                });
            }
        }

        public void r(final String str) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10910a.A(str);
                    }
                });
            }
        }

        public void s(final androidx.media3.exoplayer.j jVar) {
            jVar.c();
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10919a.B(jVar);
                    }
                });
            }
        }

        public void t(final androidx.media3.exoplayer.j jVar) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10912a.C(jVar);
                    }
                });
            }
        }

        public void u(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
            Handler handler = this.f10931a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f10916a.D(rVar, kVar);
                    }
                });
            }
        }
    }

    void a(Exception exc);

    void c(String str);

    void d(long j10);

    void g(Exception exc);

    void h(int i10, long j10, long j11);

    void j(AudioSink.a aVar);

    void k(AudioSink.a aVar);

    void n(androidx.media3.exoplayer.j jVar);

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onSkipSilenceEnabledChanged(boolean z10);

    void s(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void t(androidx.media3.exoplayer.j jVar);
}
