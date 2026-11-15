package jn;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.ComponentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$dimen;
import com.transsion.player.view.R$id;
import com.transsion.player.view.R$layout;
import com.transsion.player.view.R$mipmap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class m implements n {

    private final Context f63215b;

    private final ViewGroup f63216c;

    private final String f63217d;

    private com.transsion.player.orplayer.f f63218e;

    private final View f63219f;

    private final Lazy f63220g;

    private final Lazy f63221h;

    private final Lazy f63222i;

    private final Lazy f63223j;

    private float f63224k;

    private Function2 f63225l;

    private float f63226m;

    private float f63227n;

    private boolean f63228o;

    private final Runnable f63229p;

    public static final class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override
        public void onViewAttachedToWindow(View v10) {
            Intrinsics.h(v10, "v");
        }

        @Override
        public void onViewDetachedFromWindow(View v10) {
            Intrinsics.h(v10, "v");
            int iC = m.this.c();
            if (iC > 100) {
                qi.h hVar = qi.h.f69682a;
                hVar.q(hVar.h(), "volume_max", MapsKt.f(new Pair("volume", String.valueOf(iC))));
            }
        }
    }

    public static final class b implements r {
        b() {
        }

        @Override
        public void onStateChanged(u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            if (event == Lifecycle.Event.ON_RESUME) {
                ViewGroup viewGroup = m.this.f63216c;
                if (viewGroup != null) {
                    viewGroup.setFocusableInTouchMode(true);
                    viewGroup.requestFocus();
                }
                c.f63185a.d();
            }
        }
    }

    public m(Context context, ViewGroup viewGroup) {
        Intrinsics.h(context, "context");
        this.f63215b = context;
        this.f63216c = viewGroup;
        this.f63217d = "VideoBrightnessVolume";
        this.f63219f = LayoutInflater.from(context).inflate(R$layout.orplayer_layout_brightness_volume, viewGroup, false);
        this.f63220g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return m.B(this.f63209a);
            }
        });
        this.f63221h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return m.q(this.f63210a);
            }
        });
        this.f63222i = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return m.D(this.f63211a);
            }
        });
        this.f63223j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return m.F(this.f63212a);
            }
        });
        if (viewGroup == null) {
            Log.e("VideoBrightnessVolume", " error: rootView is null !!!");
        }
        this.f63224k = (y.c() / 3.0f) / 25.0f;
        if (viewGroup != null) {
            viewGroup.setOnKeyListener(new View.OnKeyListener() {
                @Override
                public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
                    return m.o(this.f63213a, view, i10, keyEvent);
                }
            });
        }
        if (viewGroup != null) {
            viewGroup.addOnAttachStateChangeListener(new a());
        }
        C();
        this.f63229p = new Runnable() {
            @Override
            public final void run() {
                m.r(this.f63214a);
            }
        };
    }

    private final void A() {
        ViewGroup viewGroup = this.f63216c;
        if (viewGroup != null) {
            viewGroup.removeCallbacks(this.f63229p);
            View progressRootView = this.f63219f;
            Intrinsics.g(progressRootView, "progressRootView");
            progressRootView.setVisibility(8);
        }
    }

    public static final ImageView B(m mVar) {
        return (ImageView) mVar.f63219f.findViewById(R$id.bvIV);
    }

    private final void C() {
        Context context = this.f63215b;
        if (context instanceof ComponentActivity) {
            ((ComponentActivity) context).getLifecycle().a(new b());
        }
    }

    public static final ProgressBar D(m mVar) {
        return (ProgressBar) mVar.f63219f.findViewById(R$id.secProgress);
    }

    private final void E(boolean z10, int i10) {
        int i11;
        if (i10 < 0) {
            return;
        }
        ImageView imageViewX = x();
        if (i10 == 0) {
            i11 = z10 ? R$mipmap.ic_volume_0 : R$mipmap.ic_brightness_33;
        } else if (i10 <= 33) {
            i11 = z10 ? R$mipmap.ic_volume_33 : R$mipmap.ic_brightness_33;
        } else if (i10 <= 66) {
            i11 = z10 ? R$mipmap.ic_volume_66 : R$mipmap.ic_brightness_66;
        } else if (i10 <= 100) {
            i11 = z10 ? R$mipmap.ic_volume_66 : R$mipmap.ic_brightness_100;
        } else {
            i11 = z10 ? R$mipmap.ic_volume_100 : R$mipmap.ic_brightness_100;
        }
        imageViewX.setImageResource(i11);
        v().setProgress(i10);
        int iH = RangesKt.h(RangesKt.e(i10 - 100, 0), 100);
        y().setVisibility(iH > 0 ? 0 : 8);
        y().setProgress(iH);
        f(true);
    }

    public static final View F(m mVar) {
        return mVar.f63219f.findViewById(R$id.tipsLL);
    }

    private final void G(int i10) {
        com.transsion.player.orplayer.f fVar;
        int iC = c();
        int iK = c.f63185a.k(i10);
        if (iK <= 100 && (fVar = this.f63218e) != null) {
            fVar.setVolume(1.0f);
        }
        Function2 function2 = this.f63225l;
        if (function2 != null) {
            function2.invoke(Boolean.TRUE, Integer.valueOf(iK));
        }
        E(true, iK);
        s(iK, iC);
    }

    public static final boolean o(m mVar, View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if (i10 == 24) {
            int iC = mVar.c();
            mVar.G((91 > iC || iC >= 100) ? 10 : 100 - iC);
        } else {
            if (i10 != 25) {
                return false;
            }
            mVar.G(-10);
        }
        return true;
    }

    public static final ProgressBar q(m mVar) {
        return (ProgressBar) mVar.f63219f.findViewById(R$id.bvProgress);
    }

    public static final void r(m mVar) {
        mVar.A();
    }

    private final void s(int i10, int i11) {
        com.transsion.player.orplayer.f fVar;
        if (i10 > 100 && (fVar = this.f63218e) != null) {
            fVar.setVolume(i10 / 100.0f);
        }
        t(i10, i11);
    }

    private final void t(int i10, int i11) {
        if (i11 >= 100 || i10 != 100) {
            return;
        }
        z().setVisibility(0);
        z().postDelayed(new Runnable() {
            @Override
            public final void run() {
                m.u(this.f63208a);
            }
        }, 500L);
    }

    public static final void u(m mVar) {
        mVar.z().setVisibility(8);
    }

    private final ProgressBar v() {
        Object value = this.f63221h.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ProgressBar) value;
    }

    private final ImageView x() {
        Object value = this.f63220g.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ImageView) value;
    }

    private final ProgressBar y() {
        Object value = this.f63222i.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ProgressBar) value;
    }

    private final View z() {
        Object value = this.f63223j.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (View) value;
    }

    @Override
    public void a(float f10, float f11) {
        Context context = this.f63215b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        float f12 = 1.0f;
        float f13 = f10 + (f11 * 1.0f);
        if (f13 <= 0.0f) {
            f12 = 0.0f;
        } else if (f13 < 1.0f) {
            f12 = f13;
        }
        attributes.screenBrightness = f12;
        window.setAttributes(attributes);
        Function2 function2 = this.f63225l;
        if (function2 != null) {
            function2.invoke(Boolean.FALSE, Integer.valueOf((int) (100 * f12)));
        }
        E(false, (int) (f12 * 100));
    }

    @Override
    public float b() {
        Context context = this.f63215b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null) {
            return 0.0f;
        }
        float f10 = window.getAttributes().screenBrightness;
        return f10 == -1.0f ? w() : f10;
    }

    @Override
    public int c() {
        return c.f63185a.e();
    }

    @Override
    public void d(float f10, float f11, int i10) {
        if (this.f63226m != f10) {
            this.f63227n = f10;
            this.f63226m = f10;
        }
        if (i10 <= 0) {
            i10 = y.c();
        }
        int i11 = (int) ((((this.f63227n - f11) * 80.0f) / i10) + 0.5f);
        if (Math.abs(i11) == 0) {
            return;
        }
        this.f63227n = f11;
        G(i11);
    }

    @Override
    public void e(com.transsion.player.orplayer.f fVar) {
        this.f63218e = fVar;
    }

    @Override
    public void f(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("show:");
        sb2.append(z10);
        if (this.f63216c == null) {
            return;
        }
        if (!z10) {
            A();
            return;
        }
        View progressRootView = this.f63219f;
        Intrinsics.g(progressRootView, "progressRootView");
        progressRootView.setVisibility(0);
        try {
            Result.Companion companion = Result.INSTANCE;
            ViewGroup viewGroup = this.f63216c;
            if (!Intrinsics.c(viewGroup.getChildAt(viewGroup.getChildCount() - 1), this.f63219f)) {
                this.f63216c.removeView(this.f63219f);
            }
            ViewGroup viewGroup2 = this.f63216c;
            View progressRootView2 = this.f63219f;
            Intrinsics.g(progressRootView2, "progressRootView");
            if (viewGroup2.indexOfChild(progressRootView2) == -1) {
                this.f63216c.addView(this.f63219f);
            }
            if (this.f63228o) {
                ViewGroup.LayoutParams layoutParams = this.f63219f.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.topMargin = com.blankj.utilcode.util.d.c() + ((int) this.f63215b.getResources().getDimension(R$dimen.toolbar_height));
                    this.f63219f.setLayoutParams(marginLayoutParams);
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        this.f63216c.removeCallbacks(this.f63229p);
        this.f63216c.postDelayed(this.f63229p, 500L);
    }

    @Override
    public void g() {
        this.f63228o = true;
    }

    public float w() {
        Context context = this.f63215b;
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        try {
            return (Settings.System.getFloat(((Activity) context).getContentResolver(), "screen_brightness") * 1.0f) / 255;
        } catch (Throwable unused) {
            return 0.0f;
        }
    }
}
