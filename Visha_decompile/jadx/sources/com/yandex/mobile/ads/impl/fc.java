package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;

public final class fc implements zb {
    private final String a;
    private final Runnable b;

    public fc(String str, Runnable runnable) {
        y45.j(str, Progress.REQUEST);
        y45.j(runnable, "adtuneRequestRunnable");
        this.a = str;
        this.b = runnable;
    }

    @Override
    public final void a() {
        this.b.run();
    }

    @Override
    public final boolean a(String str, String str2) {
        return y45.e("mobileads", str) && y45.e(this.a, str2);
    }
}
