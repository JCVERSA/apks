package com.yandex.mobile.ads.impl;

import com.yandex.div2.DivAction;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.y45;

public final class ay1 extends defpackage.cf2 {
    private final vo a;
    private k20 b;

    public ay1() {
        this(0);
    }

    public final uo a(int i) {
        uo uoVar = (uo) this.a.a().get(Integer.valueOf(i));
        if (uoVar != null) {
            return uoVar;
        }
        uo uoVar2 = new uo();
        this.a.a(i, uoVar2);
        return uoVar2;
    }

    @Override
    public final boolean handleAction(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        k20 k20Var;
        y45.j(divAction, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "expressionResolver");
        return super.handleAction(divAction, sv2Var, oj3Var) || ((k20Var = this.b) != null && k20Var.handleAction(divAction, sv2Var, oj3Var));
    }

    public ay1(int i) {
        this(new vo());
    }

    public final void a(k20 k20Var) {
        k20 k20Var2 = this.b;
        if (k20Var2 != null) {
            k20Var2.a(null);
        }
        if (k20Var != null) {
            k20Var.a(this.a);
        }
        this.b = k20Var;
    }

    public ay1(vo voVar) {
        y45.j(voVar, "clickConnectorAggregator");
        this.a = voVar;
    }

    @Override
    public final boolean handleAction(defpackage.wp2 wp2Var, sv2 sv2Var, oj3 oj3Var) {
        k20 k20Var;
        y45.j(wp2Var, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        return super.handleAction(wp2Var, sv2Var, oj3Var) || ((k20Var = this.b) != null && k20Var.handleAction(wp2Var, sv2Var, oj3Var));
    }
}
