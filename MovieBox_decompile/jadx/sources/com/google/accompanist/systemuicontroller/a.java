package com.google.accompanist.systemuicontroller;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class a implements c {

    private final View f23511a;

    private final Window f23512b;

    private final WindowInsetsControllerCompat f23513c;

    public a(View view, Window window) {
        Intrinsics.h(view, "view");
        this.f23511a = view;
        this.f23512b = window;
        this.f23513c = window != null ? WindowCompat.getInsetsController(window, view) : null;
    }

    @Override
    public void a(long j10, boolean z10, Function1 transformColorForLightContent) {
        WindowInsetsControllerCompat windowInsetsControllerCompat;
        Intrinsics.h(transformColorForLightContent, "transformColorForLightContent");
        f(z10);
        Window window = this.f23512b;
        if (window == null) {
            return;
        }
        if (z10 && ((windowInsetsControllerCompat = this.f23513c) == null || !windowInsetsControllerCompat.isAppearanceLightStatusBars())) {
            j10 = ((u1) transformColorForLightContent.invoke(u1.g(j10))).u();
        }
        window.setStatusBarColor(w1.j(j10));
    }

    @Override
    public void b(long j10, boolean z10, boolean z11, Function1 transformColorForLightContent) {
        WindowInsetsControllerCompat windowInsetsControllerCompat;
        Intrinsics.h(transformColorForLightContent, "transformColorForLightContent");
        e(z10);
        d(z11);
        Window window = this.f23512b;
        if (window == null) {
            return;
        }
        if (z10 && ((windowInsetsControllerCompat = this.f23513c) == null || !windowInsetsControllerCompat.isAppearanceLightNavigationBars())) {
            j10 = ((u1) transformColorForLightContent.invoke(u1.g(j10))).u();
        }
        window.setNavigationBarColor(w1.j(j10));
    }

    @Override
    public void c(long j10, boolean z10, boolean z11, Function1 function1) {
        b.a(this, j10, z10, z11, function1);
    }

    public void d(boolean z10) {
        Window window;
        if (Build.VERSION.SDK_INT < 29 || (window = this.f23512b) == null) {
            return;
        }
        window.setNavigationBarContrastEnforced(z10);
    }

    public void e(boolean z10) {
        WindowInsetsControllerCompat windowInsetsControllerCompat = this.f23513c;
        if (windowInsetsControllerCompat == null) {
            return;
        }
        windowInsetsControllerCompat.setAppearanceLightNavigationBars(z10);
    }

    public void f(boolean z10) {
        WindowInsetsControllerCompat windowInsetsControllerCompat = this.f23513c;
        if (windowInsetsControllerCompat == null) {
            return;
        }
        windowInsetsControllerCompat.setAppearanceLightStatusBars(z10);
    }
}
