package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.util.List;

public final class yv1 implements jx0 {
    private final o8<?> a;
    private final nx0 b;
    private final kx0 c;
    private final mx0 d;
    private final lx0 e;

    public yv1(bv1 bv1Var, o8<?> o8Var, nx0 nx0Var, kx0 kx0Var, mx0 mx0Var, lx0 lx0Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o8Var, "adResponse");
        y45.j(nx0Var, "mediaViewAdapterWithVideoCreator");
        y45.j(kx0Var, "mediaViewAdapterWithImageCreator");
        y45.j(mx0Var, "mediaViewAdapterWithMultiBannerCreator");
        y45.j(lx0Var, "mediaViewAdapterWithMediaCreator");
        this.a = o8Var;
        this.b = nx0Var;
        this.c = kx0Var;
        this.d = mx0Var;
        this.e = lx0Var;
    }

    private final hx0 a(CustomizableMediaView customizableMediaView, o3 o3Var, sj0 sj0Var, ox0 ox0Var, yx1 yx1Var, ex0 ex0Var) {
        List<xj0> listA = ex0Var.a();
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        if (listA.size() == 1) {
            return this.c.a(customizableMediaView, sj0Var, ox0Var);
        }
        try {
            return this.d.a(this.a, o3Var, customizableMediaView, sj0Var, listA, ox0Var, yx1Var);
        } catch (Throwable unused) {
            return this.c.a(customizableMediaView, sj0Var, ox0Var);
        }
    }

    @Override
    public final hx0 a(CustomizableMediaView customizableMediaView, o3 o3Var, sj0 sj0Var, aw0 aw0Var, pk0 pk0Var, n91 n91Var, t81 t81Var, e51 e51Var, ox0 ox0Var, yx1 yx1Var, ex0 ex0Var) {
        hx0 hx0VarA;
        y45.j(customizableMediaView, "mediaView");
        y45.j(o3Var, "adConfiguration");
        y45.j(sj0Var, "imageProvider");
        y45.j(aw0Var, "controlsProvider");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(ox0Var, "mediaViewRenderController");
        hx0 hx0VarA2 = null;
        hx0VarA2 = null;
        hx0VarA2 = null;
        hx0VarA2 = null;
        if (ex0Var == null) {
            return null;
        }
        db1 db1VarA = n91Var.a();
        ic1 ic1VarB = n91Var.b();
        wu0 wu0VarB = ex0Var.b();
        Context context = customizableMediaView.getContext();
        Context context2 = customizableMediaView.getContext();
        y45.i(context2, "getContext(...)");
        boolean zA = x80.a(context2, w80.e);
        if (zA) {
            customizableMediaView.removeAllViews();
        }
        if (db1VarA != null) {
            cw1 cw1VarA = this.b.a(customizableMediaView, aw0Var, o3Var, pk0Var, db1VarA, t81Var, e51Var, ox0Var, sj0Var, yx1Var, ex0Var.c());
            fz1 fz1VarA = yx1Var != null ? yx1Var.a() : null;
            hx0VarA2 = (fz1VarA == null || !zA || (hx0VarA = a(customizableMediaView, o3Var, sj0Var, ox0Var, yx1Var, ex0Var)) == null) ? cw1VarA : new dw1(customizableMediaView, cw1VarA, hx0VarA, ox0Var, fz1VarA);
        } else if (ic1VarB != null && wu0VarB != null) {
            y45.g(context);
            if (oa.a(context)) {
                try {
                    hx0VarA2 = this.e.a(customizableMediaView, wu0VarB, pk0Var, ic1VarB, ox0Var);
                } catch (tj2 unused) {
                }
            }
        }
        return hx0VarA2 == null ? a(customizableMediaView, o3Var, sj0Var, ox0Var, yx1Var, ex0Var) : hx0VarA2;
    }
}
