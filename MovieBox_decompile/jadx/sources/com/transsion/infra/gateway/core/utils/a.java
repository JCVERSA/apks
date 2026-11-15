package com.transsion.infra.gateway.core.utils;

import android.content.Context;

public class a {

    private static Context f44669a;

    public static Context a() {
        Context context = f44669a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (f44669a != null) {
            return;
        }
        f44669a = context.getApplicationContext();
    }
}
