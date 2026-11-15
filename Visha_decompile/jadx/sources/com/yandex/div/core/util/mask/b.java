package com.yandex.div.core.util.mask;

import defpackage.e74;
import defpackage.y45;

public class b extends BaseInputMask {
    public final e74 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(BaseInputMask.b bVar, e74 e74Var) {
        super(bVar);
        y45.j(bVar, "initialMaskData");
        y45.j(e74Var, "onError");
        this.e = e74Var;
    }

    @Override
    public void r(Exception exc) {
        y45.j(exc, "exception");
        this.e.invoke(exc);
    }
}
