package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import org.mozilla.javascript.ES6Iterator;

public class vh extends pf1 {
    public final e74 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vh(List list, e74 e74Var) {
        super(list);
        y45.j(list, ES6Iterator.VALUE_PROPERTY);
        y45.j(e74Var, "computeType");
        this.b = e74Var;
    }

    @Override
    public eh5 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        eh5 eh5Var = (eh5) this.b.invoke(qq6Var);
        if (!d.c0(eh5Var) && !d.q0(eh5Var)) {
            d.D0(eh5Var);
        }
        return eh5Var;
    }
}
