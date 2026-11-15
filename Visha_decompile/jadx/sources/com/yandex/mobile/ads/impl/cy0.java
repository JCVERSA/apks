package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.a;
import defpackage.abb;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Map;

public final class cy0<T extends com.monetization.ads.mediation.base.a> {
    private final gy0 a;
    private final i01 b;

    public cy0(gy0 gy0Var) {
        this(gy0Var, new i01());
    }

    public final T a(Context context, lz0 lz0Var, Class<T> cls) {
        String str;
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(cls, "clazz");
        T t = null;
        try {
            String strE = lz0Var.e();
            this.b.getClass();
            if (!i01.a(context, strE)) {
                return null;
            }
            Object objA = jo1.a.a(strE, new Object[0]);
            T tCast = cls.cast(objA);
            if (tCast == null) {
                try {
                    if (objA == null) {
                        hz9 hz9Var = hz9.a;
                        str = String.format("Instantiation failed for %s", Arrays.copyOf(new Object[]{strE}, 1));
                        y45.i(str, "format(...)");
                    } else {
                        hz9 hz9Var2 = hz9.a;
                        str = String.format("Cast from %s to %s is failed", Arrays.copyOf(new Object[]{objA.getClass().getName(), cls.getName()}, 2));
                        y45.i(str, "format(...)");
                    }
                    a(context, lz0Var, str);
                } catch (ClassCastException e) {
                    e = e;
                    t = tCast;
                } catch (Throwable th) {
                    th = th;
                    t = tCast;
                    a(context, lz0Var, "could_not_create_adapter", th);
                    return t;
                }
            }
            return tCast;
        } catch (ClassCastException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
        }
        a(context, lz0Var, "does_not_conform_to_protocol", e);
        return t;
    }

    public cy0(gy0 gy0Var, i01 i01Var) {
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(i01Var, "mediationSupportedChecker");
        this.a = gy0Var;
        this.b = i01Var;
    }

    private final void a(Context context, lz0 lz0Var, String str) {
        this.a.a(context, lz0Var, kotlin.collections.a.p(abb.a("reason", "could_not_create_adapter"), abb.a("description", str)), (String) null);
    }

    private final void a(Context context, lz0 lz0Var, String str, Throwable th) {
        Map<String, ? extends Object> mapQ = kotlin.collections.a.q(abb.a("reason", str));
        String message = th.getMessage();
        if (message == null) {
            message = "Unknown error message";
        }
        sp0.c(new Object[0]);
        mapQ.put("description", th.getClass().getName() + " " + message);
        this.a.a(context, lz0Var, mapQ, (String) null);
    }
}
