package com.transsion.startup.pref.anr;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f52507a = new c();

    private c() {
    }

    public final void a(String msg) {
        Intrinsics.h(msg, "msg");
        Log.w("zxb_log_consume", msg);
    }
}
