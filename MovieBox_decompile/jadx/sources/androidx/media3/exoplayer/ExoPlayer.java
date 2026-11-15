package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.exoplayer.image.ImageOutput;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public interface ExoPlayer extends androidx.media3.common.a0 {

    public interface a {
        void w(boolean z10);

        void x(boolean z10);
    }

    public static final class b {
        long A;
        long B;
        boolean C;
        boolean D;
        s3 E;
        boolean F;
        boolean G;
        String H;
        boolean I;
        m4 J;

        final Context f10647a;

        androidx.media3.common.util.i f10648b;

        long f10649c;

        com.google.common.base.q f10650d;

        com.google.common.base.q f10651e;

        com.google.common.base.q f10652f;

        com.google.common.base.q f10653g;

        com.google.common.base.q f10654h;

        com.google.common.base.f f10655i;

        Looper f10656j;

        int f10657k;

        PriorityTaskManager f10658l;

        androidx.media3.common.c f10659m;

        boolean f10660n;

        int f10661o;

        boolean f10662p;

        boolean f10663q;

        boolean f10664r;

        int f10665s;

        int f10666t;

        boolean f10667u;

        c4 f10668v;

        long f10669w;

        long f10670x;

        long f10671y;

        t2 f10672z;

        public b(final Context context) {
            this(context, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.i(context);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.j(context);
                }
            });
        }

        public static b4 i(Context context) {
            return new o(context);
        }

        public static androidx.media3.exoplayer.source.r.a j(Context context) {
            return new androidx.media3.exoplayer.source.i(context, new k2.m());
        }

        public static i2.e0 k(Context context) {
            return new i2.n(context);
        }

        public ExoPlayer h() {
            androidx.media3.common.util.a.g(!this.F);
            this.F = true;
            return new b2(this, null);
        }

        public b p(final u2 u2Var) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(u2Var);
            this.f10653g = new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.m(u2Var);
                }
            };
            return this;
        }

        public b q(final androidx.media3.exoplayer.source.r.a aVar) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(aVar);
            this.f10651e = new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.n(aVar);
                }
            };
            return this;
        }

        public b r(final b4 b4Var) {
            androidx.media3.common.util.a.g(!this.F);
            androidx.media3.common.util.a.e(b4Var);
            this.f10650d = new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.o(b4Var);
                }
            };
            return this;
        }

        private b(final Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this(context, qVar, qVar2, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return ExoPlayer.b.k(context);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return new m();
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return androidx.media3.exoplayer.upstream.j.m(context);
                }
            }, new com.google.common.base.f() {
                @Override
                public final Object apply(Object obj) {
                    return new x1.s1((androidx.media3.common.util.i) obj);
                }
            });
        }

        private b(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2, com.google.common.base.q qVar3, com.google.common.base.q qVar4, com.google.common.base.q qVar5, com.google.common.base.f fVar) {
            this.f10647a = (Context) androidx.media3.common.util.a.e(context);
            this.f10650d = qVar;
            this.f10651e = qVar2;
            this.f10652f = qVar3;
            this.f10653g = qVar4;
            this.f10654h = qVar5;
            this.f10655i = fVar;
            this.f10656j = androidx.media3.common.util.a1.X();
            this.f10659m = androidx.media3.common.c.f9595g;
            this.f10661o = 0;
            this.f10665s = 1;
            this.f10666t = 0;
            this.f10667u = true;
            this.f10668v = c4.f11034g;
            this.f10669w = 5000L;
            this.f10670x = MBInterstitialActivity.WEB_LOAD_TIME;
            this.f10671y = 3000L;
            this.f10672z = new l.b().a();
            this.f10648b = androidx.media3.common.util.i.f10075a;
            this.A = 500L;
            this.B = 2000L;
            this.D = true;
            this.H = "";
            this.f10657k = -1000;
            this.J = new p();
        }

        public static u2 m(u2 u2Var) {
            return u2Var;
        }

        public static androidx.media3.exoplayer.source.r.a n(androidx.media3.exoplayer.source.r.a aVar) {
            return aVar;
        }

        public static b4 o(b4 b4Var) {
            return b4Var;
        }
    }

    public static class c {

        public static final c f10673b = new c(C.TIME_UNSET);

        public final long f10674a;

        public c(long j10) {
            this.f10674a = j10;
        }
    }

    void D(x1.c cVar);

    androidx.media3.common.r J();

    void P(int i10, androidx.media3.common.t tVar);

    androidx.media3.common.r R();

    void T(int i10, androidx.media3.exoplayer.source.r rVar);

    void U(androidx.media3.exoplayer.source.r rVar);

    void X(androidx.media3.exoplayer.source.r rVar);

    @Override
    ExoPlaybackException c();

    void release();

    void setImageOutput(@Nullable ImageOutput imageOutput);
}
