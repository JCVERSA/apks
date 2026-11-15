package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class ry0 implements jx0 {
    @Override
    public final hx0 a(CustomizableMediaView customizableMediaView, o3 o3Var, sj0 sj0Var, aw0 aw0Var, pk0 pk0Var, n91 n91Var, t81 t81Var, e51 e51Var, ox0 ox0Var, yx1 yx1Var, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(o3Var, "adConfiguration");
        y45.j(sj0Var, "imageProvider");
        y45.j(aw0Var, "controlsProvider");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(ox0Var, "mediaViewRenderController");
        customizableMediaView.removeAllViews();
        return new qy0(customizableMediaView, ox0Var);
    }
}
