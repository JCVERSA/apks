package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;

public abstract class AbstractC2900u0 {
    public static I6 a(Handler handler, C2875t0 c2875t0) {
        return new I6(handler, c2875t0);
    }

    public static C2791pf a(Context context, I6 i6) {
        return new C2791pf(context, i6);
    }

    public static C2744ni a(C2791pf c2791pf, Context context, ICommonExecutor iCommonExecutor) {
        C2602i0 c2602i0 = new C2602i0(context, iCommonExecutor, C2879t4.i().d());
        return new C2744ni(c2602i0, new C2799pn(new C2836rb()), new W4(c2791pf), new Lj(context, c2602i0));
    }

    public static C2822ql a(Context context, C2744ni c2744ni, Ke ke, Handler handler) {
        return new C2822ql(c2744ni, new C3021yl(context, ke), handler);
    }

    public static Yf a(C2744ni c2744ni, Ke ke, Handler handler) {
        return new Yf(c2744ni, ke, handler, ke.s());
    }

    public static C2445bi a(Context context, C2791pf c2791pf, C2744ni c2744ni, Handler handler, C2822ql c2822ql) {
        return new C2445bi(context, c2791pf, c2744ni, handler, c2822ql);
    }
}
