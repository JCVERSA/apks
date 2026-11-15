package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class qj extends wg0 {
    private final gz1 o;
    private rb0 p;
    private boolean q;
    private int r;
    private int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qj(Context context, o8<?> o8Var, o3 o3Var, gz1 gz1Var) {
        super(context, o8Var, o3Var);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(gz1Var, "configurationSizeInfo");
        this.o = gz1Var;
        this.q = true;
        if (n()) {
            this.r = gz1Var.c(context);
            this.s = gz1Var.a(context);
        } else {
            this.r = o8Var.r() == 0 ? gz1Var.c(context) : o8Var.r();
            this.s = o8Var.c();
        }
        this.p = a(this.r, this.s);
    }

    @Override
    @SuppressLint({"AddJavascriptInterface"})
    public final void a(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        addJavascriptInterface(b(context), "AdPerformActionsJSI");
    }

    @Override
    public final void b(int i, String str) {
        if (k().c() != 0) {
            i = k().c();
        }
        this.s = i;
        super.b(i, str);
    }

    @Override
    public final String c() {
        String strA;
        if (k().U()) {
            int i = rj2.c;
            strA = rj2.a(this.r);
        } else {
            strA = "";
        }
        gz1 gz1Var = this.o;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        int iC = gz1Var.c(context);
        gz1 gz1Var2 = this.o;
        Context context2 = getContext();
        y45.i(context2, "getContext(...)");
        return strA + (n() ? rj2.a(iC, gz1Var2.a(context2)) : "") + super.c();
    }

    @Override
    public final void h() {
        if (this.q) {
            this.p = new rb0(this.r, this.s, this.o.a());
            dh0 dh0VarJ = j();
            if (dh0VarJ != null) {
                Context context = getContext();
                y45.i(context, "getContext(...)");
                if (qa.a(context, this.p, this.o) || k().N()) {
                    dh0VarJ.a(this, l());
                } else {
                    Context context2 = getContext();
                    gz1 gz1Var = this.o;
                    y45.g(context2);
                    w3 w3VarA = w7.a(gz1Var.c(context2), this.o.a(context2), this.p.getWidth(), this.p.getHeight(), wh2.c(context2), wh2.b(context2));
                    hp0.a(w3VarA.d(), new Object[0]);
                    dh0VarJ.a(w3VarA);
                }
            }
            this.q = false;
        }
    }

    @VisibleForTesting
    public final boolean n() {
        if (m() && k().r() == 0 && k().c() == 0) {
            gz1 gz1Var = this.o;
            Context context = getContext();
            y45.i(context, "getContext(...)");
            if (gz1Var.c(context) > 0) {
                gz1 gz1Var2 = this.o;
                Context context2 = getContext();
                y45.i(context2, "getContext(...)");
                if (gz1Var2.a(context2) > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final gz1 o() {
        return this.p;
    }

    public final void setBannerHeight(int i) {
        this.s = i;
    }

    public final void setBannerWidth(int i) {
        this.r = i;
    }

    private final rb0 a(int i, int i2) {
        return new rb0(i, i2, this.o.a());
    }
}
