package com.yandex.mobile.ads.impl;

import android.net.Uri;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.y45;

public final class cq extends defpackage.cf2 {
    private final eq a;

    public cq(bq bqVar) {
        y45.j(bqVar, "closeVerificationListener");
        this.a = bqVar;
    }

    @Override
    public final boolean handleAction(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        y45.j(divAction, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "expressionResolver");
        Expression expression = divAction.k;
        boolean z = false;
        if (expression != null) {
            String string = ((Uri) expression.b(oj3Var)).toString();
            y45.i(string, "toString(...)");
            if (y45.e(string, "close_ad")) {
                this.a.a();
            } else if (y45.e(string, "close_dialog")) {
                this.a.b();
            }
            z = true;
        }
        return z ? z : super.handleAction(divAction, sv2Var, oj3Var);
    }
}
