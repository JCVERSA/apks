package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class as<V extends ViewGroup> implements b10<V> {
    private final o8<?> a;
    private final e1 b;
    private final k3 c;
    private final n91 d;
    private final f52 e;
    private final b30 f;
    private final cs g;
    private final ur0 h;
    private yc0 i;
    private f1 j;

    public final class a implements f1 {
        public a() {
        }

        @Override
        public final void a() {
            yc0 yc0Var = ((as) as.this).i;
            if (yc0Var != null) {
                yc0Var.resume();
            }
        }

        @Override
        public final void b() {
            yc0 yc0Var = ((as) as.this).i;
            if (yc0Var != null) {
                yc0Var.pause();
            }
        }
    }

    public as(o8 o8Var, e1 e1Var, k3 k3Var, n91 n91Var, f52 f52Var, b30 b30Var) {
        this(o8Var, e1Var, k3Var, n91Var, f52Var, b30Var, new cs(), new ur0(0));
    }

    @Override
    public final void c() {
        f1 f1Var = this.j;
        if (f1Var != null) {
            this.b.b(f1Var);
        }
        yc0 yc0Var = this.i;
        if (yc0Var != null) {
            yc0Var.invalidate();
        }
        this.h.b();
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        a aVar = new a();
        this.b.a(aVar);
        this.j = aVar;
        this.h.a(v);
        cs csVar = this.g;
        o8<?> o8Var = this.a;
        k3 k3Var = this.c;
        n91 n91Var = this.d;
        f52 f52Var = this.e;
        b30 b30Var = this.f;
        ur0 ur0Var = this.h;
        csVar.getClass();
        y45.j(o8Var, "adResponse");
        y45.j(k3Var, "adCompleteListener");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(ur0Var, "progressListener");
        yc0 yc0VarA = new bs(o8Var, k3Var, n91Var, f52Var, b30Var, ur0Var).a();
        yc0VarA.start();
        this.i = yc0VarA;
    }

    public as(o8<?> o8Var, e1 e1Var, k3 k3Var, n91 n91Var, f52 f52Var, b30 b30Var, cs csVar, ur0 ur0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(e1Var, "adActivityEventController");
        y45.j(k3Var, "adCompleteListener");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(csVar, "contentCompleteControllerProvider");
        y45.j(ur0Var, "progressListener");
        this.a = o8Var;
        this.b = e1Var;
        this.c = k3Var;
        this.d = n91Var;
        this.e = f52Var;
        this.f = b30Var;
        this.g = csVar;
        this.h = ur0Var;
    }
}
