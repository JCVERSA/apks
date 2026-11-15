package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.yandex.mobile.ads.impl.id0;
import defpackage.y45;

public final class id0 {
    private final ts a;

    public id0(ts tsVar) {
        this.a = tsVar;
    }

    public final void a(Window window, RelativeLayout relativeLayout) {
        y45.j(window, "window");
        y45.j(relativeLayout, "rootView");
        WindowCompat.setDecorFitsSystemWindows(window, false);
        if (pa.a(30)) {
            window.getAttributes().layoutInDisplayCutoutMode = 3;
        } else if (pa.a(28)) {
            window.getAttributes().layoutInDisplayCutoutMode = 1;
        }
        if (!pa.a(28) || this.a == ts.i) {
            return;
        }
        a(relativeLayout);
    }

    private static void a(RelativeLayout relativeLayout) {
        ViewCompat.setOnApplyWindowInsetsListener(relativeLayout, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return id0.a(view, windowInsetsCompat);
            }
        });
    }

    public static final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        y45.j(view, "v");
        y45.j(windowInsetsCompat, "windowInsets");
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        y45.i(insets, "getInsets(...)");
        view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }
}
