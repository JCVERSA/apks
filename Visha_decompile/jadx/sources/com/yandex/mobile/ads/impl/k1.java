package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class k1 implements m1, zr {
    private final Context a;
    private final RelativeLayout b;
    private final Window c;
    private final q61 d;
    private final j1 e;
    private final o3 f;
    private final wc0 g;
    private final id0 h;
    private final yd0 i;

    public k1(Context context, RelativeLayout relativeLayout, Window window, q61 q61Var, o8 o8Var, v1 v1Var, e1 e1Var, o3 o3Var, int i, wc0 wc0Var, id0 id0Var) {
        y45.j(context, "context");
        y45.j(relativeLayout, TtmlNode.RUBY_CONTAINER);
        y45.j(window, "window");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(o8Var, "adResponse");
        y45.j(v1Var, "adActivityListener");
        y45.j(e1Var, "eventController");
        y45.j(o3Var, "adConfiguration");
        y45.j(wc0Var, "fullScreenBackButtonController");
        y45.j(id0Var, "fullScreenInsetsController");
        this.a = context;
        this.b = relativeLayout;
        this.c = window;
        this.d = q61Var;
        this.e = v1Var;
        this.f = o3Var;
        this.g = wc0Var;
        this.h = id0Var;
        this.i = new de0(context, o8Var, relativeLayout, this, e1Var, i, v1Var, o3Var).a(context, q61Var, this);
    }

    @Override
    public final void a() {
        this.e.a(2, null);
    }

    @Override
    public final void b() {
        this.e.a(3, null);
    }

    @Override
    public final void c() {
        if (this.f.b() != ts.i) {
            this.b.setBackground(l8.a);
        }
        this.i.c();
        this.e.a(0, null);
        this.e.a(5, null);
        int i = sp0.b;
        y45.j(new Object[0], "args");
    }

    @Override
    public final void d() {
        this.i.invalidate();
    }

    @Override
    public final boolean e() {
        return this.g.a();
    }

    @Override
    public final void f() {
        this.e.a();
    }

    @Override
    public final void g() {
        this.e.a(this.a.getResources().getConfiguration().orientation == 1 ? 7 : 6);
        this.c.requestFeature(1);
        this.c.addFlags(1024);
        this.c.addFlags(16777216);
        this.h.a(this.c, this.b);
    }

    @Override
    public final void onAdClosed() {
        this.d.destroy();
        this.e.a(4, null);
    }
}
