package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;

public final class fq<V extends ViewGroup> implements b10<V>, f1 {
    private final o8<?> a;
    private final e1 b;
    private final op c;
    private final zr d;
    private final b51 e;
    private final dw f;
    private final f52 g;
    private rp h;
    private final xl1 i;
    private final kp j;

    public static final class a implements View.OnClickListener {
        private final zr a;
        private final dw b;

        public a(zr zrVar, dw dwVar) {
            y45.j(zrVar, "mContentCloseListener");
            y45.j(dwVar, "mDebugEventsReporter");
            this.a = zrVar;
            this.b = dwVar;
        }

        @Override
        public final void onClick(View view) {
            this.a.f();
            this.b.a(cw.c);
        }
    }

    public fq(o8<?> o8Var, e1 e1Var, op opVar, zr zrVar, b51 b51Var, dw dwVar, f52 f52Var) {
        y45.j(o8Var, "adResponse");
        y45.j(e1Var, "adActivityEventController");
        y45.j(opVar, "closeAppearanceController");
        y45.j(zrVar, "contentCloseListener");
        y45.j(b51Var, "nativeAdControlViewProvider");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(f52Var, "timeProviderContainer");
        this.a = o8Var;
        this.b = e1Var;
        this.c = opVar;
        this.d = zrVar;
        this.e = b51Var;
        this.f = dwVar;
        this.g = f52Var;
        this.i = f52Var.e();
        this.j = f52Var.b();
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        View viewC = this.e.c(v);
        ProgressBar progressBarA = this.e.a(v);
        if (viewC != null) {
            this.b.a(this);
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
                viewC.setOnClickListener(new a(this.d, this.f));
            }
            a(viewC, progressBarA);
            if (viewC.getTag() == null) {
                viewC.setTag(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
            }
        }
    }

    @Override
    public final void b() {
        rp rpVar = this.h;
        if (rpVar != null) {
            rpVar.b();
        }
    }

    @Override
    public final void c() {
        this.b.b(this);
        rp rpVar = this.h;
        if (rpVar != null) {
            rpVar.invalidate();
        }
    }

    private final void a(View view, ProgressBar progressBar) {
        rp lzVar;
        Long lU = this.a.u();
        long jLongValue = lU != null ? lU.longValue() : 0L;
        if (progressBar != null) {
            lzVar = new ql1(view, progressBar, new h50(), new yp(new yd()), this.f, this.i, jLongValue);
        } else if (this.j.a()) {
            lzVar = new lz(view, this.c, this.f, jLongValue, this.g.c());
        } else {
            lzVar = null;
        }
        this.h = lzVar;
        if (lzVar != null) {
            lzVar.c();
        }
    }

    @Override
    public final void a() {
        rp rpVar = this.h;
        if (rpVar != null) {
            rpVar.a();
        }
    }
}
