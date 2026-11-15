package defpackage;

import org.mozilla.javascript.ES6Iterator;

public final class eq8 extends qp8 implements p75 {
    public final Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eq8(by6 by6Var, Object obj) {
        super(by6Var, null);
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        this.c = obj;
    }

    @Override
    public Object getValue() {
        return this.c;
    }
}
