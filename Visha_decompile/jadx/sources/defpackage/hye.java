package defpackage;

import android.text.TextUtils;

public final class hye {
    public static final void a(gye gyeVar, fye fyeVar) {
        if (fyeVar.a() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(fyeVar.b())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        gyeVar.d(fyeVar.a(), fyeVar.b(), fyeVar.c(), fyeVar.d());
    }
}
