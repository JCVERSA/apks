package com.yandex.mobile.ads.nativeads;

import com.yandex.mobile.ads.impl.eu;
import defpackage.y45;

public final class d implements CustomClickHandlerEventListener {
    private final eu a;

    public d(eu euVar) {
        y45.j(euVar, "coreListener");
        this.a = euVar;
    }

    @Override
    public final void onLeftApplication() {
        this.a.onLeftApplication();
    }

    @Override
    public final void onReturnedToApplication() {
        this.a.onReturnedToApplication();
    }
}
