package com.yandex.mobile.ads.impl;

import android.net.Uri;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.y45;

public final class o20 extends defpackage.cf2 {
    private final zr a;

    public o20(m10 m10Var) {
        y45.j(m10Var, "contentCloseListener");
        this.a = m10Var;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:9:0x0037  */
    @Override
    public final boolean handleAction(DivAction divAction, sv2 sv2Var, oj3 oj3Var) {
        y45.j(divAction, "action");
        y45.j(sv2Var, "view");
        y45.j(oj3Var, "resolver");
        Expression expression = divAction.k;
        if (expression != null) {
            Uri uri = (Uri) expression.b(oj3Var);
            if (y45.e(uri.getScheme(), "mobileads") && y45.e(uri.getHost(), "closeDialog")) {
                this.a.f();
            } else if (super.handleAction(divAction, sv2Var, oj3Var)) {
                return false;
            }
        } else if (super.handleAction(divAction, sv2Var, oj3Var)) {
            return false;
        }
        return true;
    }
}
