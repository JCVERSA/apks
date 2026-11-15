package com.google.android.exoplayer2.audio;

import android.os.Handler;
import defpackage.blb;
import defpackage.ju1;
import defpackage.lu1;
import defpackage.zi;

public interface b {

    public static final class a {
        public final Handler a;
        public final b b;

        public a(Handler handler, b bVar) {
            this.a = bVar != null ? (Handler) zi.e(handler) : null;
            this.b = bVar;
        }

        public final void A(int i, long j, long j2) {
            ((b) blb.j(this.b)).onAudioUnderrun(i, j, j2);
        }

        public void B(final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.y(j);
                    }
                });
            }
        }

        public void C(final boolean z) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.z(z);
                    }
                });
            }
        }

        public void D(final int i, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.A(i, j, j2);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.t(str, j, j2);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.u(str);
                    }
                });
            }
        }

        public void o(final ju1 ju1Var) {
            ju1Var.c();
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.v(ju1Var);
                    }
                });
            }
        }

        public void p(final ju1 ju1Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.w(ju1Var);
                    }
                });
            }
        }

        public void q(final com.google.android.exoplayer2.k kVar, final lu1 lu1Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.x(kVar, lu1Var);
                    }
                });
            }
        }

        public final void r(Exception exc) {
            ((b) blb.j(this.b)).onAudioCodecError(exc);
        }

        public final void s(Exception exc) {
            ((b) blb.j(this.b)).onAudioSinkError(exc);
        }

        public final void t(String str, long j, long j2) {
            ((b) blb.j(this.b)).onAudioDecoderInitialized(str, j, j2);
        }

        public final void u(String str) {
            ((b) blb.j(this.b)).onAudioDecoderReleased(str);
        }

        public final void v(ju1 ju1Var) {
            ju1Var.c();
            ((b) blb.j(this.b)).c(ju1Var);
        }

        public final void w(ju1 ju1Var) {
            ((b) blb.j(this.b)).d(ju1Var);
        }

        public final void x(com.google.android.exoplayer2.k kVar, lu1 lu1Var) {
            ((b) blb.j(this.b)).i(kVar);
            ((b) blb.j(this.b)).a(kVar, lu1Var);
        }

        public final void y(long j) {
            ((b) blb.j(this.b)).onAudioPositionAdvancing(j);
        }

        public final void z(boolean z) {
            ((b) blb.j(this.b)).onSkipSilenceEnabledChanged(z);
        }
    }

    void a(com.google.android.exoplayer2.k kVar, lu1 lu1Var);

    void c(ju1 ju1Var);

    void d(ju1 ju1Var);

    default void i(com.google.android.exoplayer2.k kVar) {
    }

    void onAudioCodecError(Exception exc);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDecoderReleased(String str);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(Exception exc);

    void onAudioUnderrun(int i, long j, long j2);

    void onSkipSilenceEnabledChanged(boolean z);
}
