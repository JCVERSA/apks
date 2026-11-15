package com.transsion.shorttv_pugc.utils;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.a0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final a f52432c = new a(null);

    private static final Lazy f52433d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.g();
        }
    });

    private List f52434a = new ArrayList();

    private int f52435b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return (e) e.f52433d.getValue();
        }

        private a() {
        }
    }

    public static final void f(FragmentActivity fragmentActivity, e eVar) {
        View decorView;
        WindowInsets rootWindowInsets;
        if (fragmentActivity.isFinishing()) {
            return;
        }
        Window window = fragmentActivity.getWindow();
        Insets mandatorySystemGestureInsets = (window == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null) ? null : rootWindowInsets.getMandatorySystemGestureInsets();
        if (mandatorySystemGestureInsets == null || mandatorySystemGestureInsets.bottom > a0.a(40.0f)) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "is open navigation bar 2", false, 4, null);
            return;
        }
        int i10 = mandatorySystemGestureInsets.bottom;
        eVar.f52435b = i10;
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "on get navigation gesture height = " + i10, false, 4, null);
    }

    public static final e g() {
        return new e();
    }

    public final List d() {
        return this.f52434a;
    }

    public final void e(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f52435b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f52435b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() {
                @Override
                public final void run() {
                    e.f(activity, this);
                }
            });
        }
    }
}
