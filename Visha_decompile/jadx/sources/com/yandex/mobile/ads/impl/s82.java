package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.j1a;
import defpackage.y45;

public final class s82 {
    private final pw1 a;
    private final Context b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s82(Context context) {
        this(context, pw1.a.a());
        int i = pw1.l;
    }

    public final String a(String str) {
        y45.j(str, "url");
        ju1 ju1VarA = this.a.a(this.b);
        if (ju1VarA == null || ju1VarA.P()) {
            return a(str, String.valueOf(System.currentTimeMillis()), j1a.l0(str, '?', 0, false, 6, null) == -1 ? '?' : '&');
        }
        return str;
    }

    public s82(Context context, pw1 pw1Var) {
        y45.j(context, "context");
        y45.j(pw1Var, "sdkSettings");
        this.a = pw1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }

    private static String a(String str, String str2, char c) {
        return str + (str.length() == 0 ? "" : Character.valueOf(c)) + "ctime=" + str2;
    }
}
