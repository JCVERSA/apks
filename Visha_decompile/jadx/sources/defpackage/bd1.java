package defpackage;

import org.mozilla.javascript.ES6Iterator;

public final class bd1 extends ad1 {
    public final boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bd1(sc5 sc5Var, boolean z) {
        super(sc5Var);
        y45.j(sc5Var, "writer");
        this.c = z;
    }

    @Override
    public void m(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        if (this.c) {
            super.m(str);
        } else {
            super.j(str);
        }
    }
}
