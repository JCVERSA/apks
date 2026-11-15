package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.List;

public final class ml {
    private final List<xb2> a;
    private final ft b;
    private final WeakReference<ViewGroup> c;
    private final tl0 d;
    private t70 e;

    public ml(ViewGroup viewGroup, List<xb2> list, ft ftVar, WeakReference<ViewGroup> weakReference, tl0 tl0Var, t70 t70Var) {
        y45.j(viewGroup, "adViewGroup");
        y45.j(list, "friendlyOverlays");
        y45.j(ftVar, "binder");
        y45.j(weakReference, "adViewGroupReference");
        y45.j(tl0Var, "binderPrivate");
        this.a = list;
        this.b = ftVar;
        this.c = weakReference;
        this.d = tl0Var;
        this.e = t70Var;
    }

    public final void a() {
        ViewGroup viewGroup = this.c.get();
        if (viewGroup != null) {
            if (this.e == null) {
                Context context = viewGroup.getContext();
                y45.i(context, "getContext(...)");
                t70 t70Var = new t70(context);
                t70Var.setTag("instream_ad_view");
                this.e = t70Var;
                viewGroup.addView(this.e, new ViewGroup.LayoutParams(-1, -1));
            }
            t70 t70Var2 = this.e;
            if (t70Var2 != null) {
                this.d.a(t70Var2, this.a);
            }
        }
    }

    public final void b() {
        t70 t70Var;
        ViewGroup viewGroup = this.c.get();
        if (viewGroup != null && (t70Var = this.e) != null) {
            viewGroup.removeView(t70Var);
        }
        this.e = null;
        ft ftVar = this.b;
        ftVar.a((fm2) null);
        ftVar.e();
        ftVar.invalidateAdPlayer();
        ftVar.a();
    }

    public final void c() {
        this.d.a();
    }

    public final void d() {
        this.d.b();
    }

    public final void a(nb2 nb2Var) {
        this.b.a(nb2Var);
    }
}
