package com.transsion.postdetail.layer.local;

import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.postdetail.ui.view.AdCountDownView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i0 {

    public static final a f47026v = new a(null);

    private static final Lazy f47027w = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return i0.j();
        }
    });

    private long f47028a;

    private long f47029b;

    private int f47030c;

    private int f47031d;

    private boolean f47032e;

    private boolean f47033f;

    private boolean f47034g;

    private boolean f47035h;

    private int f47036i;

    private AdCountDownView f47037j;

    private AppCompatImageView f47038k;

    private Function1 f47039l;

    private Function0 f47040m;

    private int f47044q;

    private int f47041n = 15;

    private int f47042o = 15;

    private long f47043p = 180000;

    private Handler f47045r = new Handler(Looper.getMainLooper());

    private int f47046s = 1;

    private int f47047t = 1;

    private final Runnable f47048u = new Runnable() {
        @Override
        public final void run() {
            i0.i(this.f47008a);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i0 a() {
            return (i0) i0.f47027w.getValue();
        }

        private a() {
        }
    }

    private final void h() {
        this.f47045r.postDelayed(this.f47048u, 1000L);
    }

    public static final void i(i0 i0Var) {
        int i10;
        if (i0Var.f47044q < 1) {
            i0Var.m();
            return;
        }
        int i11 = i0Var.f47036i == 1 ? i0Var.f47046s : i0Var.f47047t;
        if (com.transsion.ad.scene.b.f41153a.k() && i0Var.f47042o - i0Var.f47044q >= i11 && ((i10 = i0Var.f47036i) == 1 || i10 == 3)) {
            AppCompatImageView appCompatImageView = i0Var.f47038k;
            if (appCompatImageView != null) {
                uf.c.k(appCompatImageView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "countdownRunnable, show adCloseView", false, 4, null);
        }
        AdCountDownView adCountDownView = i0Var.f47037j;
        if (adCountDownView != null) {
            int i12 = i0Var.f47044q;
            i0Var.f47044q = i12 - 1;
            adCountDownView.refreshCountDown(i12);
        }
        i0Var.h();
    }

    public static final i0 j() {
        return new i0();
    }

    private final boolean l() {
        return this.f47032e;
    }

    private final void m() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, curAdType = " + this.f47036i, false, 4, null);
        int i10 = this.f47036i;
        if (i10 == 1) {
            this.f47030c = this.f47031d;
            Function0 function0 = this.f47040m;
            if (function0 != null) {
                function0.invoke();
            }
            AdCountDownView adCountDownView = this.f47037j;
            if (adCountDownView != null) {
                adCountDownView.setVisibility(8);
            }
            if (k()) {
                wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, start finish, show end", false, 4, null);
                g(this.f47036i);
                v(3, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return i0.n(((Integer) obj).intValue());
                    }
                });
                return;
            } else if (l()) {
                wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, start finish, show pause", false, 4, null);
                g(this.f47036i);
                v(2, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return i0.o(((Integer) obj).intValue());
                    }
                });
                return;
            } else {
                wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, start finish now", false, 4, null);
                Function1 function1 = this.f47039l;
                if (function1 != null) {
                    function1.invoke(Integer.valueOf(this.f47036i));
                    return;
                }
                return;
            }
        }
        if (i10 == 2) {
            wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, pause finish now", false, 4, null);
            Function1 function2 = this.f47039l;
            if (function2 != null) {
                function2.invoke(Integer.valueOf(this.f47036i));
                return;
            }
            return;
        }
        if (i10 != 3) {
            return;
        }
        this.f47033f = true;
        this.f47034g = false;
        AdCountDownView adCountDownView2 = this.f47037j;
        if (adCountDownView2 != null) {
            adCountDownView2.setVisibility(8);
        }
        if (l()) {
            wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, end finish , show pause", false, 4, null);
            g(this.f47036i);
            v(2, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return i0.p(((Integer) obj).intValue());
                }
            });
        } else {
            wf.a.C0922a.f(c0922a, "LocalVideoLandAdControl", "onCountdownFinish, end finish now", false, 4, null);
            Function1 function3 = this.f47039l;
            if (function3 != null) {
                function3.invoke(Integer.valueOf(this.f47036i));
            }
        }
    }

    public static final Unit n(int i10) {
        return Unit.f64096a;
    }

    public static final Unit o(int i10) {
        return Unit.f64096a;
    }

    public static final Unit p(int i10) {
        return Unit.f64096a;
    }

    private final void q(Function1 function1) {
        w(this.f47042o);
    }

    private final void r(Function1 function1) {
        AdCountDownView adCountDownView = this.f47037j;
        if (adCountDownView != null) {
            adCountDownView.refreshCountDown(-1);
        }
        AdCountDownView adCountDownView2 = this.f47037j;
        if (adCountDownView2 != null) {
            adCountDownView2.setVisibility(0);
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "onShowPauseAd", false, 4, null);
    }

    private final void s(Function1 function1) {
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "onShowStartAd", false, 4, null);
        w(this.f47041n);
    }

    private final void u() {
        this.f47045r.removeCallbacksAndMessages(this.f47048u);
    }

    private final void w(int i10) {
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "startCountdown, countdownTime = " + i10, false, 4, null);
        this.f47044q = i10;
        AdCountDownView adCountDownView = this.f47037j;
        if (adCountDownView != null) {
            adCountDownView.setVisibility(0);
        }
        this.f47045r.post(this.f47048u);
    }

    public final void g(int i10) {
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "----closeLandAd, adType = " + i10, false, 4, null);
        this.f47036i = 0;
        u();
        AppCompatImageView appCompatImageView = this.f47038k;
        if (appCompatImageView != null) {
            uf.c.g(appCompatImageView);
        }
    }

    public final boolean k() {
        if (this.f47033f || this.f47034g || this.f47028a - this.f47029b > this.f47043p) {
            return false;
        }
        if (!this.f47035h) {
            this.f47035h = true;
        }
        return true;
    }

    public final void t(long j10, long j11) {
        this.f47029b = j10;
        this.f47028a = j11;
    }

    public final void v(int i10, Function1 function1) {
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoLandAdControl", "----showLandAd, adType = " + i10, false, 4, null);
        this.f47036i = i10;
        if (i10 == 1) {
            s(function1);
        } else if (i10 == 2) {
            r(function1);
        } else {
            if (i10 != 3) {
                return;
            }
            q(function1);
        }
    }
}
