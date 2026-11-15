package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.util.List;

public final class zu0 implements jg<ex0>, y00<ex0> {
    private final fk0 a;
    private final hx0 b;

    public zu0(fk0 fk0Var, hx0 hx0Var) {
        this.a = fk0Var;
        this.b = hx0Var;
    }

    @Override
    public final void a() {
        hx0 hx0Var;
        fk0 fk0Var;
        ImageView imageView = (ImageView) a((vg2) this.a);
        if (imageView != null && (fk0Var = this.a) != null) {
            fk0Var.a(imageView);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((vg2) this.b);
        if (customizableMediaView == null || (hx0Var = this.b) == null) {
            return;
        }
        hx0Var.a(customizableMediaView);
    }

    @Override
    public final boolean b() {
        fk0 fk0Var;
        hx0 hx0Var = this.b;
        return ((hx0Var == null || hx0Var.b() == null) && ((fk0Var = this.a) == null || fk0Var.b() == null)) ? false : true;
    }

    @Override
    public final lh2 c() {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((vg2) this.b);
        ImageView imageView = (ImageView) a((vg2) this.a);
        if (customizableMediaView != null) {
            y45.j(customizableMediaView, "view");
            return new lh2(customizableMediaView.getWidth(), customizableMediaView.getHeight());
        }
        if (imageView == null) {
            return null;
        }
        y45.j(imageView, "view");
        return new lh2(imageView.getWidth(), imageView.getHeight());
    }

    @Override
    public final boolean d() {
        hx0 hx0Var = this.b;
        boolean z = hx0Var != null && wh2.a(hx0Var.b(), 100);
        fk0 fk0Var = this.a;
        return z || (fk0Var != null && wh2.a(fk0Var.b(), 100));
    }

    @Override
    public final void destroy() {
        hx0 hx0Var = this.b;
        if (hx0Var != null) {
            hx0Var.a();
        }
    }

    @Override
    public final boolean e() {
        hx0 hx0Var = this.b;
        if (hx0Var != null && hx0Var.c()) {
            return true;
        }
        fk0 fk0Var = this.a;
        return fk0Var != null && fk0Var.c();
    }

    public final hx0.a f() {
        hx0.a aVarD;
        hx0 hx0Var = this.b;
        if (hx0Var != null && (aVarD = hx0Var.d()) != null) {
            return aVarD;
        }
        if (this.a != null) {
            return hx0.a.f;
        }
        return null;
    }

    @Override
    public final void a(ig<ex0> igVar, yg2 yg2Var) {
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        ex0 ex0VarD = igVar.d();
        fk0 fk0Var = this.a;
        if (fk0Var != null) {
            fk0Var.a(igVar, yg2Var, a((List) ex0VarD.a()));
        }
        hx0 hx0Var = this.b;
        if (hx0Var != null) {
            hx0Var.a(igVar, yg2Var, ex0VarD);
        }
    }

    @Override
    public final void b(ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(ex0Var2, "mediaValue");
        xj0 xj0VarA = a((List) ex0Var2.a());
        ImageView imageView = (ImageView) a((vg2) this.a);
        if (imageView != null && xj0VarA != null) {
            fk0 fk0Var = this.a;
            if (fk0Var != null) {
                fk0Var.a(imageView, xj0VarA);
            }
            imageView.setVisibility(0);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((vg2) this.b);
        if (customizableMediaView == null) {
            return;
        }
        hx0 hx0Var = this.b;
        if (hx0Var != null) {
            hx0Var.a(ex0Var2);
        }
        customizableMediaView.setVisibility(0);
    }

    private static View a(vg2 vg2Var) {
        if (vg2Var != null) {
            return vg2Var.b();
        }
        return null;
    }

    @Override
    public final void c(ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(ex0Var2, "mediaValue");
        xj0 xj0VarA = a((List) ex0Var2.a());
        ImageView imageView = (ImageView) a((vg2) this.a);
        if (imageView != null && xj0VarA != null) {
            fk0 fk0Var = this.a;
            if (fk0Var != null) {
                fk0Var.a(imageView, xj0VarA);
            }
            imageView.setVisibility(0);
        }
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) a((vg2) this.b);
        if (customizableMediaView != null) {
            hx0 hx0Var = this.b;
            if (hx0Var != null) {
                hx0Var.b(customizableMediaView, ex0Var2);
            }
            customizableMediaView.setVisibility(0);
        }
    }

    private static xj0 a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (xj0) list.get(0);
    }

    @Override
    public final boolean a(ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(ex0Var2, "mediaValue");
        fk0 fk0Var = this.a;
        xj0 xj0VarA = a((List) ex0Var2.a());
        View viewA = a((vg2) fk0Var);
        boolean z = (viewA == null || xj0VarA == null || fk0Var == null || !fk0Var.a(viewA, xj0VarA)) ? false : true;
        hx0 hx0Var = this.b;
        View viewA2 = a((vg2) hx0Var);
        return z || (viewA2 != null && hx0Var != null && hx0Var.a(viewA2, ex0Var2));
    }
}
