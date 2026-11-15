package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.List;

public final class s62 implements od1 {
    private final tk0 a;
    private final vk0 b;
    private boolean c;
    private int d;
    private boolean e;
    private boolean f;

    public s62(tk0 tk0Var, vk0 vk0Var) {
        y45.j(tk0Var, "impressionReporter");
        y45.j(vk0Var, "impressionTrackingReportTypes");
        this.a = tk0Var;
        this.b = vk0Var;
    }

    @Override
    public final void a(fy1 fy1Var, n92 n92Var) {
        y45.j(fy1Var, "showNoticeType");
        y45.j(n92Var, "validationResult");
        int i = this.d + 1;
        this.d = i;
        if (i == 20) {
            this.e = true;
            this.a.b(this.b.b(), n92Var);
        }
    }

    @Override
    public final void invalidate() {
        this.c = false;
        this.d = 0;
        this.e = false;
        this.f = false;
    }

    @Override
    public final void a(List<ud1> list) {
        y45.j(list, "forcedFailures");
        ud1 ud1Var = (ud1) defpackage.i81.q0(list);
        if (ud1Var == null) {
            return;
        }
        this.a.a(this.b.a(), ud1Var.b());
    }

    @Override
    public final void a(fy1 fy1Var, List<? extends fy1> list) {
        y45.j(fy1Var, "showNoticeType");
        y45.j(list, "notTrackedShowNoticeTypes");
        if (this.f) {
            return;
        }
        this.f = true;
        this.a.a(this.b.d(), ky5.h(abb.a("failure_tracked", Boolean.valueOf(this.e))));
    }

    @Override
    public final void a(fy1 fy1Var) {
        y45.j(fy1Var, "showNoticeType");
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.a(this.b.c());
    }

    @Override
    public final void a(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a.a(o8Var);
    }
}
