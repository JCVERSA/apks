package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.yandex.mobile.ads.impl.gq1;
import com.yandex.mobile.ads.impl.up1;
import defpackage.y45;

public final class gq1 {
    private static final Object a = new Object();
    private static volatile gq1 b;
    public static final int c = 0;

    public static final class a {
        public static gq1 a() {
            gq1 gq1Var;
            gq1 gq1Var2 = gq1.b;
            if (gq1Var2 != null) {
                return gq1Var2;
            }
            synchronized (gq1.a) {
                gq1Var = gq1.b;
                if (gq1Var == null) {
                    gq1Var = new gq1();
                    gq1.b = gq1Var;
                }
            }
            return gq1Var;
        }
    }

    public static void a(Context context, final Object obj) {
        y45.j(context, "context");
        y45.j(obj, Progress.TAG);
        hd1.a(context).a(new iq1.b() {
            @Override
            public final boolean a(up1 up1Var) {
                return gq1.a(obj, up1Var);
            }
        });
    }

    public static final boolean a(Object obj, up1 up1Var) {
        y45.j(obj, "$tag");
        return y45.e(obj, up1Var.i());
    }
}
