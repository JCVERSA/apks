package com.yandex.div.core.expression.variables;

import defpackage.xc3;
import defpackage.y45;

public class a extends TwoWayVariableBinder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(xc3 xc3Var, com.yandex.div.core.expression.a aVar) {
        super(xc3Var, aVar);
        y45.j(xc3Var, "errorCollectors");
        y45.j(aVar, "expressionsRuntimeProvider");
    }

    @Override
    public String b(Object obj) {
        return c(((Boolean) obj).booleanValue());
    }

    public String c(boolean z) {
        return String.valueOf(z);
    }
}
