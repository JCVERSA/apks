package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.util.List;

public final class zv1 extends hx0 {
    private final wg2<ImageView, xj0> d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zv1(CustomizableMediaView customizableMediaView, fk0 fk0Var, ox0 ox0Var, wg2<ImageView, xj0> wg2Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(fk0Var, "imageViewAdapter");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(wg2Var, "imageViewWrapper");
        this.d = wg2Var;
    }

    @Override
    public final void a(View view) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        y45.j(customizableMediaView, "mediaView");
        this.d.a();
        super.a(customizableMediaView);
    }

    @Override
    public final hx0.a d() {
        return hx0.a.f;
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.d.a(igVar, yg2Var, a(ex0Var2 != null ? ex0Var2.a() : null));
    }

    private static xj0 a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (xj0) list.get(0);
    }

    @Override
    public final void a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "mediaView");
        this.d.a();
    }

    @Override
    public final boolean a(View view, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j((CustomizableMediaView) view, "mediaView");
        y45.j(ex0Var2, "mediaValue");
        xj0 xj0VarA = a(ex0Var2.a());
        if (xj0VarA != null) {
            return this.d.a(xj0VarA);
        }
        return false;
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, "mediaValue");
        super.b(customizableMediaView, ex0Var);
        xj0 xj0VarA = a(ex0Var.a());
        if (xj0VarA == null) {
            return;
        }
        this.d.b(xj0VarA);
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
        xj0 xj0VarA = a(ex0Var.a());
        if (xj0VarA == null) {
            return;
        }
        this.d.b(xj0VarA);
    }
}
