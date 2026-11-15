package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public interface ox1 {
    public static final a a = a.a;

    public static final class a {
        static final a a = new a();
        private static final Object b = new Object();
        private static volatile ox1 c;

        private a() {
        }

        public static ox1 a(Context context) {
            ox1 px1Var;
            y45.j(context, "context");
            ox1 ox1Var = c;
            if (ox1Var != null) {
                return ox1Var;
            }
            synchronized (b) {
                px1Var = c;
                if (px1Var == null) {
                    int i = rs0.b;
                    y45.j(context, "context");
                    px1Var = new px1(rs0.a(context, "YadPreferenceFile"));
                    c = px1Var;
                }
            }
            return px1Var;
        }
    }

    String a();

    void a(String str);
}
