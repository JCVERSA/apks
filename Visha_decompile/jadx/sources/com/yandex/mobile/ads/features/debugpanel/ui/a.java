package com.yandex.mobile.ads.features.debugpanel.ui;

import com.yandex.mobile.ads.impl.dy;
import com.yandex.mobile.ads.impl.fp0;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.FunctionReferenceImpl;

final class a extends FunctionReferenceImpl implements e74 {
    public a(fp0 fp0Var) {
        super(1, fp0Var, fp0.class, "onAction", "onAction(Lcom/yandex/mobile/ads/features/debugpanel/ui/model/DebugPanelUiAction;)V", 0);
    }

    @Override
    public final Object invoke(Object obj) {
        dy dyVar = (dy) obj;
        y45.j(dyVar, "p0");
        ((fp0) this.receiver).a(dyVar);
        return zfb.a;
    }
}
