package com.facebook.biddingkit.logging;

import android.content.Context;

public class h {

    private static boolean f23471a = false;

    public static void a(Context context, String str, String str2, String str3) {
        try {
            a.b(context, str, str2);
            EventLogDispatcher.j(new i(str3));
            f.f(context);
            c.b();
        } catch (Exception e10) {
            b.d("Logging", "Failed to initialize", e10);
        }
    }

    public static synchronized boolean b() {
        return f23471a;
    }
}
