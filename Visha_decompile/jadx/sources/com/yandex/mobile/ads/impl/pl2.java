package com.yandex.mobile.ads.impl;

import android.app.Activity;
import com.yandex.mobile.ads.appopenad.AppOpenAd;
import com.yandex.mobile.ads.appopenad.AppOpenAdEventListener;
import com.yandex.mobile.ads.common.AdInfo;
import defpackage.y45;

public final class pl2 implements AppOpenAd {
    private final us a;
    private final jl2 b;

    public pl2(us usVar, jl2 jl2Var) {
        y45.j(usVar, "coreAppOpenAd");
        y45.j(jl2Var, "adInfoConverter");
        this.a = usVar;
        this.b = jl2Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof pl2) && y45.e(((pl2) obj).a, this.a);
    }

    @Override
    public final AdInfo getInfo() {
        jl2 jl2Var = this.b;
        ss info = this.a.getInfo();
        jl2Var.getClass();
        return jl2.a(info);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void setAdEventListener(AppOpenAdEventListener appOpenAdEventListener) {
        this.a.a(new ql2(appOpenAdEventListener));
    }

    @Override
    public final void show(Activity activity) {
        y45.j(activity, "activity");
        this.a.show(activity);
    }
}
