package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreakQueue;
import defpackage.y45;

public final class em2<T> implements InstreamAdBreakQueue<T> {
    private final ut0<T> a;

    public em2(ut0<T> ut0Var) {
        y45.j(ut0Var, "manualAdBreakQueue");
        this.a = ut0Var;
    }

    @Override
    public final int getCount() {
        return this.a.a();
    }

    @Override
    public final T poll() {
        return this.a.b();
    }
}
