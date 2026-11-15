package kotlin.reflect.jvm.internal.impl.resolve.constants;

import defpackage.e74;
import defpackage.eh5;
import defpackage.qq6;
import defpackage.vh;
import defpackage.y45;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public final class TypedArrayValue extends vh {
    public final eh5 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypedArrayValue(List list, final eh5 eh5Var) {
        super(list, new e74() {
            {
                super(1);
            }

            @Override
            public final eh5 invoke(qq6 qq6Var) {
                y45.j(qq6Var, "it");
                return eh5Var;
            }
        });
        y45.j(list, ES6Iterator.VALUE_PROPERTY);
        y45.j(eh5Var, "type");
        this.c = eh5Var;
    }

    public final eh5 c() {
        return this.c;
    }
}
