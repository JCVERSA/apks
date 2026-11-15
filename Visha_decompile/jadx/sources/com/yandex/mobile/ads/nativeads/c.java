package com.yandex.mobile.ads.nativeads;

import com.yandex.mobile.ads.impl.du;
import com.yandex.mobile.ads.impl.eu;
import defpackage.y45;

public final class c implements du {
    private final CustomClickHandler a;

    public c(CustomClickHandler customClickHandler) {
        y45.j(customClickHandler, "customClickHandler");
        this.a = customClickHandler;
    }

    @Override
    public final void a(String str, eu euVar) {
        y45.j(str, "url");
        y45.j(euVar, "listener");
        this.a.handleCustomClick(str, new d(euVar));
    }
}
