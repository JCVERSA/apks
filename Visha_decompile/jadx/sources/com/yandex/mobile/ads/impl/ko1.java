package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public abstract class ko1 extends pg0 implements xh2 {
    private boolean A;
    private final a B;
    private final np0 y;
    private final ua z;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            sp0.d(new Object[0]);
            ko1.this.b(ko1.this.f().a());
        }
    }

    public ko1(Context context, np0 np0Var, g5 g5Var) {
        this(context, np0Var, g5Var, new ua(np0Var));
    }

    private final void y() {
        sp0.d(new Object[0]);
        m().removeCallbacks(this.B);
        sp0.d(new Object[0]);
        o8<String> o8VarK = k();
        if (o8VarK != null && o8VarK.T() && this.A && !o() && this.z.b()) {
            m().postDelayed(this.B, o8VarK.g());
            sp0.d(Integer.valueOf(o8VarK.h()));
        }
    }

    @Override
    public final void a(dh1 dh1Var) {
        y45.j(dh1Var, "phoneState");
        super.a(dh1Var);
        y();
    }

    @Override
    public final void b(w3 w3Var) {
        y45.j(w3Var, "error");
        super.b(w3Var);
        if (5 == w3Var.b() || 2 == w3Var.b()) {
            return;
        }
        y();
    }

    @Override
    public void d() {
        super.d();
        this.y.removeVisibilityChangeListener(this);
        sp0.d(new Object[0]);
        this.A = false;
        m().removeCallbacks(this.B);
        sp0.d(new Object[0]);
    }

    @Override
    public final void s() {
        super.s();
        y();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ko1(Context context, np0 np0Var, g5 g5Var, ua uaVar) {
        super(context, np0Var.getAdConfiguration$mobileads_externalRelease(), g5Var);
        y45.j(context, "context");
        y45.j(np0Var, "adView");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(uaVar, "adViewVisibilityValidator");
        this.y = np0Var;
        this.z = uaVar;
        this.A = true;
        this.B = new a();
        np0Var.addVisibilityChangeListener(this);
    }

    @Override
    public final void a(int i) {
        y();
    }
}
