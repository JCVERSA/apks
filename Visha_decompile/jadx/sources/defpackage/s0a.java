package defpackage;

import org.mozilla.javascript.ES6Iterator;

public final class s0a extends pf1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0a(String str) {
        super(str);
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarW = qq6Var.o().W();
        y45.i(sm9VarW, "module.builtIns.stringType");
        return sm9VarW;
    }

    @Override
    public String toString() {
        return '\"' + ((String) b()) + '\"';
    }
}
