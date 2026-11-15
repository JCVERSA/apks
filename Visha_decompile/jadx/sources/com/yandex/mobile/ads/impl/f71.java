package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import kotlin.Pair;

public class f71 implements na1 {
    private final a81 a;
    private final o8<?> b;
    private final gh1 c;
    private g71 d;

    public f71(Context context, o41 o41Var, o8 o8Var) {
        this(context, o41Var, o8Var, gh1.h.a(context));
    }

    public n92 a(Context context, n92.a aVar, boolean z, int i) {
        y45.j(context, "context");
        y45.j(aVar, "status");
        return new n92(aVar);
    }

    @Override
    public final boolean b() {
        g71 g71Var = this.d;
        View viewE = g71Var != null ? g71Var.e() : null;
        if (viewE != null) {
            return wh2.d(viewE);
        }
        return true;
    }

    @Override
    public final boolean c() {
        g71 g71Var = this.d;
        View viewE = g71Var != null ? g71Var.e() : null;
        return viewE != null && wh2.b(viewE) >= 1;
    }

    public f71(Context context, o41 o41Var, o8 o8Var, gh1 gh1Var) {
        y45.j(context, "context");
        y45.j(o41Var, "nativeAdAssetsValidator");
        y45.j(o8Var, "adResponse");
        y45.j(gh1Var, "phoneStateTracker");
        this.a = o41Var;
        this.b = o8Var;
        this.c = gh1Var;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x008c  */
    @VisibleForTesting
    public Pair<n92.a, String> a(Context context, int i, boolean z, boolean z2) {
        n92.a aVarB;
        y45.j(context, "context");
        String strW = this.b.w();
        String strA = null;
        if (z && !z2) {
            aVarB = n92.a.d;
        } else if (b()) {
            aVarB = n92.a.m;
        } else {
            g71 g71Var = this.d;
            View viewE = g71Var != null ? g71Var.e() : null;
            if (viewE != null) {
                int i2 = wh2.b;
                y45.j(viewE, "view");
                if (viewE.getWidth() >= 10 && viewE.getHeight() >= 10) {
                    g71 g71Var2 = this.d;
                    View viewE2 = g71Var2 != null ? g71Var2.e() : null;
                    if (viewE2 != null && wh2.b(viewE2) >= 1) {
                        g71 g71Var3 = this.d;
                        View viewE3 = g71Var3 != null ? g71Var3.e() : null;
                        if ((viewE3 == null || !wh2.a(viewE3, i)) && !z2) {
                            aVarB = n92.a.j;
                        } else if (!y45.e(g10.DIV_KIT.a(), strW)) {
                            z71 z71VarA = this.a.a(z2);
                            strA = z71VarA.a();
                            aVarB = z71VarA.b();
                        } else {
                            aVarB = n92.a.c;
                        }
                    } else {
                        aVarB = n92.a.o;
                    }
                } else {
                    aVarB = n92.a.n;
                }
            } else {
                aVarB = n92.a.n;
            }
        }
        return new Pair<>(aVarB, strA);
    }

    @Override
    public final n92 b(Context context, int i) {
        y45.j(context, "context");
        Pair<n92.a, String> pairA = a(context, i, !this.c.b(), true);
        n92 n92VarA = a(context, pairA.getFirst(), true, i);
        n92VarA.a(pairA.getSecond());
        return n92VarA;
    }

    @Override
    public final void a(g71 g71Var) {
        this.a.a(g71Var);
        this.d = g71Var;
    }

    @Override
    public final qq1 a() {
        return this.a.a();
    }

    @Override
    public final n92 a(Context context, int i) {
        y45.j(context, "context");
        Pair<n92.a, String> pairA = a(context, i, !this.c.b(), false);
        n92 n92VarA = a(context, pairA.getFirst(), false, i);
        n92VarA.a(pairA.getSecond());
        return n92VarA;
    }
}
