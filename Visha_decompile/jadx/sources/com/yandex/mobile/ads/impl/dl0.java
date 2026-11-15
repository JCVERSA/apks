package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class dl0 {
    private final ei2 a;
    private final am b;
    private final o10 c;
    private final WeakHashMap<FrameLayout, WeakReference<zl>> d;
    private final WeakHashMap<FrameLayout, WeakReference<fl0>> e;

    public dl0() {
        this(new ei2(), new am(), new o10());
    }

    public final void a(FrameLayout frameLayout) {
        y45.j(frameLayout, "adView");
        WeakReference<zl> weakReference = this.d.get(frameLayout);
        zl zlVar = weakReference != null ? weakReference.get() : null;
        if (zlVar != null) {
            this.d.remove(frameLayout);
            frameLayout.removeView(zlVar);
        }
        WeakReference<fl0> weakReference2 = this.e.get(frameLayout);
        fl0 fl0Var = weakReference2 != null ? weakReference2.get() : null;
        if (fl0Var != null) {
            this.e.remove(frameLayout);
            frameLayout.removeView(fl0Var);
        }
    }

    public dl0(ei2 ei2Var, am amVar, o10 o10Var) {
        y45.j(ei2Var, "descriptionCreator");
        y45.j(amVar, "borderViewManager");
        y45.j(o10Var, "dimensionConverter");
        this.a = ei2Var;
        this.b = amVar;
        this.c = o10Var;
        this.d = new WeakHashMap<>();
        this.e = new WeakHashMap<>();
    }

    public final void a(FrameLayout frameLayout, n92 n92Var, boolean z) {
        fl0 fl0Var;
        y45.j(n92Var, "validationResult");
        y45.j(frameLayout, "adView");
        WeakReference<zl> weakReference = this.d.get(frameLayout);
        zl zlVar = weakReference != null ? weakReference.get() : null;
        if (zlVar == null) {
            Context context = frameLayout.getContext();
            y45.i(context, "getContext(...)");
            zlVar = new zl(context, this.c, new e50());
            this.d.put(frameLayout, new WeakReference<>(zlVar));
            frameLayout.addView(zlVar);
        }
        this.b.getClass();
        y45.j(zlVar, "borderView");
        zlVar.setColor(z ? SupportMenu.CATEGORY_MASK : -16711936);
        if (z) {
            WeakReference<fl0> weakReference2 = this.e.get(frameLayout);
            fl0Var = weakReference2 != null ? weakReference2.get() : null;
            if (fl0Var == null) {
                Context context2 = frameLayout.getContext();
                y45.i(context2, "getContext(...)");
                fl0Var = new fl0(context2, new o10());
                this.e.put(frameLayout, new WeakReference<>(fl0Var));
                frameLayout.addView(fl0Var);
            }
            this.a.getClass();
            fl0Var.setDescription(ei2.a(n92Var));
            return;
        }
        WeakReference<fl0> weakReference3 = this.e.get(frameLayout);
        fl0Var = weakReference3 != null ? weakReference3.get() : null;
        if (fl0Var != null) {
            this.e.remove(frameLayout);
            frameLayout.removeView(fl0Var);
        }
    }
}
