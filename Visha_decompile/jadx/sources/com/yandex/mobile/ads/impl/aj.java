package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;

public final class aj extends ko1 implements oj {
    private final np0 C;
    private final zi D;
    private final qe2 E;
    private final cj F;
    private final bj G;
    private final sg0 H;
    private ej I;
    private ej J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aj(Context context, np0 np0Var, zi ziVar, g5 g5Var, qe2 qe2Var, cj cjVar, bj bjVar, sg0 sg0Var) {
        super(context, np0Var, g5Var);
        y45.j(context, "context");
        y45.j(np0Var, "adView");
        y45.j(ziVar, "bannerAdListener");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(qe2Var, "videoEventController");
        y45.j(cjVar, "bannerAdSizeValidator");
        y45.j(bjVar, "adResponseControllerFactoryCreator");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        this.C = np0Var;
        this.D = ziVar;
        this.E = qe2Var;
        this.F = cjVar;
        this.G = bjVar;
        this.H = sg0Var;
        a(np0Var);
        ziVar.a(sg0Var);
    }

    private static void a(np0 np0Var) {
        np0Var.setHorizontalScrollBarEnabled(false);
        np0Var.setVerticalScrollBarEnabled(false);
        np0Var.setVisibility(8);
        np0Var.setBackgroundColor(0);
    }

    public final void A() {
        this.D.a();
    }

    public final String B() {
        ej ejVar = this.J;
        if (ejVar != null) {
            return ejVar.getAdInfo();
        }
        return null;
    }

    public final np0 C() {
        return this.C;
    }

    public final qe2 D() {
        return this.E;
    }

    @Override
    public final void d() {
        super.d();
        this.D.a((ys) null);
        zg2.a(this.C, true);
        this.C.setVisibility(8);
        wh2.a((ViewGroup) this.C);
    }

    @Override
    public final void e() {
        ej[] ejVarArr = {this.I, this.J};
        for (int i = 0; i < 2; i++) {
            ej ejVar = ejVarArr[i];
            if (ejVar != null) {
                ejVar.a(l());
            }
        }
        super.e();
    }

    @Override
    public final void onLeftApplication() {
        this.D.b();
    }

    @Override
    public final void onReturnedToApplication() {
        this.D.c();
    }

    @Override
    public final void u() {
        super.u();
        ej ejVar = this.I;
        if (ejVar != this.J) {
            ej ejVar2 = new ej[]{ejVar}[0];
            if (ejVar2 != null) {
                ejVar2.a(l());
            }
            this.I = this.J;
        }
        gz1 gz1VarR = f().r();
        if (gz1.a.d != (gz1VarR != null ? gz1VarR.a() : null) || this.C.getLayoutParams() == null) {
            return;
        }
        this.C.getLayoutParams().height = -2;
    }

    public final boolean z() {
        o8<String> o8VarK = k();
        gz1 gz1VarM = o8VarK != null ? o8VarK.M() : null;
        if (gz1VarM != null) {
            gz1 gz1VarR = f().r();
            o8<String> o8VarK2 = k();
            if (o8VarK2 != null && gz1VarR != null && iz1.a(l(), o8VarK2, gz1VarM, this.F, gz1VarR)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(t4 t4Var) {
        this.D.a(t4Var);
    }

    @Override
    public final void a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        super.a((o8) o8Var);
        this.H.a(o8Var);
        this.H.a(f());
        ej ejVarA = this.G.a(o8Var).a(this);
        this.J = ejVarA;
        ejVarA.a(l(), o8Var);
    }

    public final void a(ys ysVar) {
        a(this.D);
        this.D.a(ysVar);
    }
}
