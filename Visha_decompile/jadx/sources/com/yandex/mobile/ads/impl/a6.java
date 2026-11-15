package com.yandex.mobile.ads.impl;

import androidx.media3.common.util.Assertions;
import com.yandex.mobile.ads.impl.a6;
import defpackage.y45;

public final class a6 {
    private final y5 a;
    private final q9 b;
    private final z4 c;
    private final ui1 d;
    private final ii1 e;
    private final x5 f;
    private final ao0 g;

    public a6(o9 o9Var, si1 si1Var, y5 y5Var, q9 q9Var, z4 z4Var, ui1 ui1Var, ii1 ii1Var, x5 x5Var, ao0 ao0Var) {
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(q9Var, "adStateHolder");
        y45.j(z4Var, "adInfoStorage");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(ii1Var, "playerAdPlaybackController");
        y45.j(x5Var, "adPlayerDiscardController");
        y45.j(ao0Var, "instreamSettings");
        this.a = y5Var;
        this.b = q9Var;
        this.c = z4Var;
        this.d = ui1Var;
        this.e = ii1Var;
        this.f = x5Var;
        this.g = ao0Var;
    }

    public final void a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        if (vm0.d == this.b.a(go0Var)) {
            this.b.a(go0Var, vm0.e);
            bj1 bj1VarC = this.b.c();
            Assertions.checkState(y45.e(go0Var, bj1VarC != null ? bj1VarC.d() : null));
            this.d.a(false);
            this.e.a();
            this.a.c(go0Var);
        }
    }

    public final void b(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        vm0 vm0VarA = this.b.a(go0Var);
        if (vm0.b == vm0VarA || vm0.c == vm0VarA) {
            this.b.a(go0Var, vm0.d);
            Object objCheckNotNull = Assertions.checkNotNull(this.c.a(go0Var));
            y45.i(objCheckNotNull, "checkNotNull(...)");
            this.b.a(new bj1((u4) objCheckNotNull, go0Var));
            this.a.d(go0Var);
            return;
        }
        if (vm0.e == vm0VarA) {
            bj1 bj1VarC = this.b.c();
            Assertions.checkState(y45.e(go0Var, bj1VarC != null ? bj1VarC.d() : null));
            this.b.a(go0Var, vm0.d);
            this.a.e(go0Var);
        }
    }

    public final void e(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        x5.b bVar = x5.b.b;
        x5.a aVar = new x5.a() {
            @Override
            public final void a() {
                a6.b(this.a, go0Var);
            }
        };
        vm0 vm0VarA = this.b.a(go0Var);
        vm0 vm0Var = vm0.b;
        if (vm0Var == vm0VarA) {
            u4 u4VarA = this.c.a(go0Var);
            if (u4VarA != null) {
                this.f.a(u4VarA, bVar, aVar);
                return;
            }
            return;
        }
        this.b.a(go0Var, vm0Var);
        bj1 bj1VarC = this.b.c();
        if (bj1VarC == null) {
            sp0.b(new Object[0]);
        } else {
            this.f.a(bj1VarC.c(), bVar, aVar);
        }
    }

    public final void c(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        if (vm0.e == this.b.a(go0Var)) {
            this.b.a(go0Var, vm0.d);
            bj1 bj1VarC = this.b.c();
            Assertions.checkState(y45.e(go0Var, bj1VarC != null ? bj1VarC.d() : null));
            this.d.a(true);
            this.e.b();
            this.a.e(go0Var);
        }
    }

    public final void d(final go0 go0Var) {
        y45.j(go0Var, "videoAd");
        x5.b bVar = this.g.f() ? x5.b.c : x5.b.b;
        x5.a aVar = new x5.a() {
            @Override
            public final void a() {
                a6.a(this.a, go0Var);
            }
        };
        vm0 vm0VarA = this.b.a(go0Var);
        vm0 vm0Var = vm0.b;
        if (vm0Var == vm0VarA) {
            u4 u4VarA = this.c.a(go0Var);
            if (u4VarA != null) {
                this.f.a(u4VarA, bVar, aVar);
                return;
            }
            return;
        }
        this.b.a(go0Var, vm0Var);
        bj1 bj1VarC = this.b.c();
        if (bj1VarC != null) {
            this.f.a(bj1VarC.c(), bVar, aVar);
        } else {
            sp0.b(new Object[0]);
        }
    }

    public static final void a(a6 a6Var, go0 go0Var) {
        y45.j(a6Var, "this$0");
        y45.j(go0Var, "$videoAd");
        a6Var.a.a(go0Var);
    }

    public static final void b(a6 a6Var, go0 go0Var) {
        y45.j(a6Var, "this$0");
        y45.j(go0Var, "$videoAd");
        a6Var.a.f(go0Var);
    }
}
