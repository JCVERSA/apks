package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.yandex.mobile.ads.impl.rt1;
import defpackage.y45;
import java.util.concurrent.Callable;

public final class rt1 {
    private final c42 a;

    public rt1() {
        this(new c42());
    }

    public final Point a(Context context) {
        y45.j(context, "context");
        Object systemService = context.getSystemService("window");
        y45.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        final WindowManager windowManager = (WindowManager) systemService;
        c42 c42Var = this.a;
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return rt1.a(windowManager);
            }
        };
        c42Var.getClass();
        final Display display = (Display) c42.a(callable, windowManager, "getting display", "WindowManager");
        final Point point = new Point(0, 0);
        c42 c42Var2 = this.a;
        Callable callable2 = new Callable() {
            @Override
            public final Object call() {
                return rt1.a(display, point, this);
            }
        };
        c42Var2.getClass();
        y45.j(callable2, "tryBlock");
        y45.j("getting display metrics", "whileWhat");
        y45.j("Display", "whatIsNull");
        Object objA = c42.a(callable2, display, "getting display metrics", "Display");
        Object obj = point;
        if (objA != null) {
            obj = objA;
        }
        return (Point) obj;
    }

    public rt1(c42 c42Var) {
        y45.j(c42Var, "systemServiceUtils");
        this.a = c42Var;
    }

    public static final Display a(WindowManager windowManager) {
        y45.j(windowManager, "$windowManager");
        return windowManager.getDefaultDisplay();
    }

    public static final Point a(Display display, Point point, rt1 rt1Var) {
        y45.j(point, "$defaultPoint");
        y45.j(rt1Var, "this$0");
        if (display == null) {
            return point;
        }
        rt1Var.getClass();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }
}
