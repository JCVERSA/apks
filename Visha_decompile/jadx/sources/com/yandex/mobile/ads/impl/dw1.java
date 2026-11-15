package com.yandex.mobile.ads.impl;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import org.mozilla.javascript.ES6Iterator;

public final class dw1 extends hx0 {
    static final af5[] j = {xq8.f(new MutablePropertyReference1Impl(dw1.class, "weakMediaView", "getWeakMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;", 0)), xq8.f(new MutablePropertyReference1Impl(dw1.class, "weakMediaValue", "getWeakMediaValue()Lcom/monetization/ads/network/model/MediaValue;", 0)), xq8.f(new MutablePropertyReference1Impl(dw1.class, "currentViewAdapter", "getCurrentViewAdapter()Lcom/monetization/ads/nativeads/assetadapter/viewadapter/MediaViewAdapter;", 0))};
    private final hx0 d;
    private final hx0 e;
    private final fz1 f;
    private final go1 g;
    private final go1 h;
    private final fw1 i;

    public static final class a implements CustomizableMediaView.a {
        private final WeakReference<dw1> a;

        public a(WeakReference<dw1> weakReference) {
            y45.j(weakReference, "weakSdkMediaViewVideoWithFallbackAdapter");
            this.a = weakReference;
        }

        @Override
        public final void a(int i, int i2) {
            dw1 dw1Var = this.a.get();
            if (dw1Var != null) {
                fz1 fz1Var = dw1Var.f;
                if (i < fz1Var.b() || i2 < fz1Var.a()) {
                    dw1.a(dw1Var, dw1Var.e);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dw1(CustomizableMediaView customizableMediaView, cw1 cw1Var, hx0 hx0Var, ox0 ox0Var, fz1 fz1Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(cw1Var, "videoViewAdapter");
        y45.j(hx0Var, "fallbackAdapter");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(fz1Var, "fallbackSize");
        this.d = cw1Var;
        this.e = hx0Var;
        this.f = fz1Var;
        this.g = ho1.a(null);
        this.h = ho1.a(null);
        defpackage.l72 l72Var = defpackage.l72.a;
        this.i = new fw1(cw1Var, this);
        customizableMediaView.setOnSizeChangedListener$mobileads_externalRelease(new a(new WeakReference(this)));
    }

    public static final ex0 c(dw1 dw1Var) {
        return (ex0) dw1Var.h.getValue(dw1Var, j[1]);
    }

    public static final CustomizableMediaView d(dw1 dw1Var) {
        return (CustomizableMediaView) dw1Var.g.getValue(dw1Var, j[0]);
    }

    public static final void a(dw1 dw1Var, hx0 hx0Var) {
        dw1Var.i.setValue(dw1Var, j[2], hx0Var);
    }

    @Override
    public final hx0.a d() {
        return ((hx0) this.i.getValue(this, j[2])).d();
    }

    @Override
    public final void a(View view) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        y45.j(customizableMediaView, "view");
        this.d.a(customizableMediaView);
        this.e.a(customizableMediaView);
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.d.a(igVar, yg2Var, ex0Var2);
        this.e.a(igVar, yg2Var, ex0Var2);
    }

    @Override
    public final void a() {
        ((hx0) this.i.getValue(this, j[2])).a();
    }

    @Override
    public final void a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "mediaView");
        this.d.a(customizableMediaView);
        this.e.a(customizableMediaView);
    }

    @Override
    public final boolean a(View view, ex0 ex0Var) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        ex0 ex0Var2 = ex0Var;
        y45.j(customizableMediaView, "view");
        y45.j(ex0Var2, ES6Iterator.VALUE_PROPERTY);
        return ((hx0) this.i.getValue(this, j[2])).a(customizableMediaView, ex0Var2);
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, ES6Iterator.VALUE_PROPERTY);
        go1 go1Var = this.g;
        af5[] af5VarArr = j;
        go1Var.setValue(this, af5VarArr[0], customizableMediaView);
        this.h.setValue(this, af5VarArr[1], ex0Var);
        ((hx0) this.i.getValue(this, af5VarArr[2])).b(customizableMediaView, ex0Var);
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
        ((hx0) this.i.getValue(this, j[2])).a(ex0Var);
    }
}
