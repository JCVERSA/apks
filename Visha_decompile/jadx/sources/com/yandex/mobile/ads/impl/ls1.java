package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class ls1<V extends ViewGroup> implements b10<V> {
    private final o8<?> a;
    private final e1 b;
    private final zr c;
    private final b51 d;
    private final n91 e;
    private final f52 f;
    private final b30 g;
    private final wp h;
    private yc0 i;
    private ls1<V>.b j;

    public static final class a implements View.OnClickListener {
        private final zr a;

        public a(zr zrVar) {
            y45.j(zrVar, "contentCloseListener");
            this.a = zrVar;
        }

        @Override
        public final void onClick(View view) {
            this.a.f();
        }
    }

    public final class b implements f1 {
        public b() {
        }

        @Override
        public final void a() {
            yc0 yc0Var = ((ls1) ls1.this).i;
            if (yc0Var != null) {
                yc0Var.resume();
            }
        }

        @Override
        public final void b() {
            yc0 yc0Var = ((ls1) ls1.this).i;
            if (yc0Var != null) {
                yc0Var.pause();
            }
        }
    }

    public static final class c implements zp {
        private final WeakReference<View> a;

        public c(View view, WeakReference<View> weakReference) {
            y45.j(view, "closeView");
            y45.j(weakReference, "closeViewReference");
            this.a = weakReference;
        }

        @Override
        public final void a() {
            View view = this.a.get();
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public ls1(o8 o8Var, e1 e1Var, zr zrVar, d51 d51Var, n91 n91Var, f52 f52Var, b30 b30Var, wp wpVar) {
        y45.j(o8Var, "adResponse");
        y45.j(e1Var, "adActivityEventController");
        y45.j(zrVar, "contentCloseListener");
        y45.j(d51Var, "nativeAdControlViewProvider");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(wpVar, "closeControllerProvider");
        this.a = o8Var;
        this.b = e1Var;
        this.c = zrVar;
        this.d = d51Var;
        this.e = n91Var;
        this.f = f52Var;
        this.g = b30Var;
        this.h = wpVar;
    }

    @Override
    public final void c() {
        ls1<V>.b bVar = this.j;
        if (bVar != null) {
            this.b.b(bVar);
        }
        yc0 yc0Var = this.i;
        if (yc0Var != null) {
            yc0Var.invalidate();
        }
    }

    @Override
    public final void a(V v) {
        yc0 o81Var;
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        View viewC = this.d.c(v);
        if (viewC != null) {
            ls1<V>.b bVar = new b();
            this.b.a(bVar);
            this.j = bVar;
            Context context = viewC.getContext();
            int i = pw1.l;
            pw1 pw1VarA = pw1.a.a();
            y45.g(context);
            ju1 ju1VarA = pw1VarA.a(context);
            boolean z = false;
            boolean z2 = ju1VarA != null && ju1VarA.y0();
            if (y45.e(g10.DIV_KIT.a(), this.a.w()) && z2) {
                z = true;
            }
            if (!z) {
                viewC.setOnClickListener(new a(this.c));
            }
            viewC.setVisibility(8);
            c cVar = new c(viewC, new WeakReference(viewC));
            wp wpVar = this.h;
            o8<?> o8Var = this.a;
            n91 n91Var = this.e;
            f52 f52Var = this.f;
            b30 b30Var = this.g;
            wpVar.getClass();
            y45.j(o8Var, "adResponse");
            y45.j(cVar, "closeShowListener");
            y45.j(n91Var, "nativeMediaContent");
            y45.j(f52Var, "timeProviderContainer");
            db1 db1VarA = n91Var.a();
            ic1 ic1VarB = n91Var.b();
            yc0 yc0Var = null;
            if (y45.e(b30Var != null ? b30Var.e() : null, h10.d.a()) && f52Var.b().a()) {
                o81Var = new o81(o8Var, cVar, f52Var);
            } else if (db1VarA != null) {
                o81Var = new bb1(o8Var, db1VarA, cVar, f52Var, o8Var.u(), f52Var.c(), f52Var.b());
            } else if (ic1VarB != null) {
                o81Var = new gc1(ic1VarB, cVar);
            } else {
                o81Var = f52Var.b().a() ? new o81(o8Var, cVar, f52Var) : null;
            }
            if (o81Var != null) {
                o81Var.start();
                yc0Var = o81Var;
            }
            this.i = yc0Var;
        }
    }
}
