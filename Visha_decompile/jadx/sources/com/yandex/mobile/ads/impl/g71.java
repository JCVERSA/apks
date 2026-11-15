package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.Map;

public final class g71 {
    private final sj0 a;
    private final dp b;
    private final q71 c;
    private final Map<String, jg<?>> d;

    public g71(r71 r71Var, o3 o3Var, sj0 sj0Var, pk0 pk0Var, dp dpVar, s51 s51Var, vg vgVar, n91 n91Var, t81 t81Var, o8 o8Var, fc1 fc1Var, e51 e51Var, ox0 ox0Var, q71 q71Var, pj2 pj2Var, ix0 ix0Var, Map map) {
        y45.j(r71Var, "nativeAdWeakViewHolder");
        y45.j(o3Var, "adConfiguration");
        y45.j(sj0Var, "imageProvider");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(dpVar, "onClickListenerFactory");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(vgVar, "assetValueProvider");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(o8Var, "adResponse");
        y45.j(fc1Var, "nativeVisualBlock");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(q71Var, "weakViewProvider");
        y45.j(pj2Var, "mediaControlsProvider");
        y45.j(ix0Var, "mediaViewAdapterCreator");
        y45.j(map, "assetAdapters");
        this.a = sj0Var;
        this.b = dpVar;
        this.c = q71Var;
        this.d = map;
    }

    public final void a() {
        for (jg<?> jgVar : this.d.values()) {
            if (jgVar != null) {
                jgVar.a();
            }
        }
    }

    public final void b() {
        for (jg<?> jgVar : this.d.values()) {
            if (jgVar != null) {
                jgVar.destroy();
            }
        }
    }

    public final Map<String, jg<?>> c() {
        return this.d;
    }

    public final sj0 d() {
        return this.a;
    }

    public final View e() {
        return this.c.d();
    }

    public final dp f() {
        return this.b;
    }

    public final q71 g() {
        return this.c;
    }

    public final jg<?> a(ig<?> igVar) {
        if (igVar != null) {
            return this.d.get(igVar.b());
        }
        return null;
    }

    public g71(r71 r71Var, o3 o3Var, sj0 sj0Var, pk0 pk0Var, dp dpVar, s51 s51Var, vg vgVar, n91 n91Var, t81 t81Var, o8 o8Var, fc1 fc1Var, e51 e51Var, ox0 ox0Var, yx1 yx1Var) {
        q71 q71VarA = r71Var.a();
        pj2 pj2Var = new pj2(q71VarA);
        ix0 ix0Var = new ix0(vgVar, o3Var, pk0Var, s51Var.c(), e51Var, ox0Var, pj2Var, yx1Var);
        this(r71Var, o3Var, sj0Var, pk0Var, dpVar, s51Var, vgVar, n91Var, t81Var, o8Var, fc1Var, e51Var, ox0Var, q71VarA, pj2Var, ix0Var, new lg(q71VarA, sj0Var, ix0Var, n91Var, t81Var, o8Var, fc1Var, o3Var.q().c()).a());
    }
}
