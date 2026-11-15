package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class ix0 {
    private final vg a;
    private final o3 b;
    private final pk0 c;
    private final jx0 d;
    private final e51 e;
    private final ox0 f;
    private final aw0 g;
    private final yx1 h;

    public ix0(vg vgVar, o3 o3Var, pk0 pk0Var, jx0 jx0Var, e51 e51Var, ox0 ox0Var, pj2 pj2Var, yx1 yx1Var) {
        y45.j(vgVar, "assetValueProvider");
        y45.j(o3Var, "adConfiguration");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(pj2Var, "controlsProvider");
        this.a = vgVar;
        this.b = o3Var;
        this.c = pk0Var;
        this.d = jx0Var;
        this.e = e51Var;
        this.f = ox0Var;
        this.g = pj2Var;
        this.h = yx1Var;
    }

    public final hx0 a(CustomizableMediaView customizableMediaView, sj0 sj0Var, n91 n91Var, t81 t81Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(sj0Var, "imageProvider");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        ex0 ex0VarA = this.a.a();
        jx0 jx0Var = this.d;
        if (jx0Var != null) {
            return jx0Var.a(customizableMediaView, this.b, sj0Var, this.g, this.c, n91Var, t81Var, this.e, this.f, this.h, ex0VarA);
        }
        return null;
    }
}
