package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class jn2 implements t92 {
    public static final jn2 a = new jn2();
    private static final Object b = new Object();
    private static volatile in2 c;

    private jn2() {
    }

    @Override
    public final r92 a(Context context) {
        in2 in2Var;
        y45.j(context, "context");
        in2 in2Var2 = c;
        if (in2Var2 != null) {
            return in2Var2;
        }
        synchronized (b) {
            try {
                in2Var = c;
                if (in2Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    y45.i(applicationContext, "getApplicationContext(...)");
                    String str = pa.a(applicationContext) ? "322a737a-a0ca-44e0-bc85-649b1c7c1db6" : "478cb909-6ad1-4e12-84cc-b3629a789f93";
                    we weVar = new we(applicationContext);
                    weVar.a(str);
                    int i = pw1.l;
                    in2Var = new in2(weVar, applicationContext, pw1.a.a().a(applicationContext));
                    c = in2Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return in2Var;
    }
}
