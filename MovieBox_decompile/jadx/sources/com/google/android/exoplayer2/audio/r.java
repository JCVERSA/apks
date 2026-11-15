package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;

public interface r {

    public static final class a {

        private final Handler f24043a;

        private final r f24044b;

        public a(Handler handler, r rVar) {
            this.f24043a = rVar != null ? (Handler) com.google.android.exoplayer2.util.a.e(handler) : null;
            this.f24044b = rVar;
        }

        public void A(int i10, long j10, long j11) {
            ((r) p0.j(this.f24044b)).h(i10, j10, j11);
        }

        public void r(Exception exc) {
            ((r) p0.j(this.f24044b)).g(exc);
        }

        public void s(Exception exc) {
            ((r) p0.j(this.f24044b)).a(exc);
        }

        public void t(String str, long j10, long j11) {
            ((r) p0.j(this.f24044b)).onAudioDecoderInitialized(str, j10, j11);
        }

        public void u(String str) {
            ((r) p0.j(this.f24044b)).c(str);
        }

        public void v(com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            ((r) p0.j(this.f24044b)).o(eVar);
        }

        public void w(com.google.android.exoplayer2.decoder.e eVar) {
            ((r) p0.j(this.f24044b)).j(eVar);
        }

        public void x(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar) {
            ((r) p0.j(this.f24044b)).y(p1Var);
            ((r) p0.j(this.f24044b)).t(p1Var, gVar);
        }

        public void y(long j10) {
            ((r) p0.j(this.f24044b)).d(j10);
        }

        public void z(boolean z10) {
            ((r) p0.j(this.f24044b)).onSkipSilenceEnabledChanged(z10);
        }

        public void B(final long j10) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24026a.y(j10);
                    }
                });
            }
        }

        public void C(final boolean z10) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24041a.z(z10);
                    }
                });
            }
        }

        public void D(final int i10, final long j10, final long j11) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24037a.A(i10, j10, j11);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24024a.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24035a.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j10, final long j11) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24020a.t(str, j10, j11);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24011a.u(str);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24030a.v(eVar);
                    }
                });
            }
        }

        public void p(final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24028a.w(eVar);
                    }
                });
            }
        }

        public void q(final p1 p1Var, final com.google.android.exoplayer2.decoder.g gVar) {
            Handler handler = this.f24043a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f24032a.x(p1Var, gVar);
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

    void j(com.google.android.exoplayer2.decoder.e eVar);

    void o(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onSkipSilenceEnabledChanged(boolean z10);

    void t(p1 p1Var, com.google.android.exoplayer2.decoder.g gVar);

    void y(p1 p1Var);
}
