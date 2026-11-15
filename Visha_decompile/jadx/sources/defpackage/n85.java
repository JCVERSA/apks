package defpackage;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class n85 {
    public static final n85 a = new n85();

    public static qw0 f(n85 n85Var, o54 o54Var, d dVar, Integer num, int i, Object obj) {
        if ((i & 4) != 0) {
            num = null;
        }
        return n85Var.e(o54Var, dVar, num);
    }

    public final qw0 a(qw0 qw0Var) {
        y45.j(qw0Var, "mutable");
        o54 o54VarO = m85.a.o(y82.m(qw0Var));
        if (o54VarO != null) {
            qw0 qw0VarO = DescriptorUtilsKt.j(qw0Var).o(o54VarO);
            y45.i(qw0VarO, "descriptor.builtIns.getB…Name(oppositeClassFqName)");
            return qw0VarO;
        }
        throw new IllegalArgumentException("Given class " + qw0Var + " is not a mutable collection");
    }

    public final qw0 b(qw0 qw0Var) {
        y45.j(qw0Var, "readOnly");
        o54 o54VarP = m85.a.p(y82.m(qw0Var));
        if (o54VarP != null) {
            qw0 qw0VarO = DescriptorUtilsKt.j(qw0Var).o(o54VarP);
            y45.i(qw0VarO, "descriptor.builtIns.getB…Name(oppositeClassFqName)");
            return qw0VarO;
        }
        throw new IllegalArgumentException("Given class " + qw0Var + " is not a read-only collection");
    }

    public final boolean c(qw0 qw0Var) {
        y45.j(qw0Var, "mutable");
        return m85.a.k(y82.m(qw0Var));
    }

    public final boolean d(qw0 qw0Var) {
        y45.j(qw0Var, "readOnly");
        return m85.a.l(y82.m(qw0Var));
    }

    public final qw0 e(o54 o54Var, d dVar, Integer num) {
        y45.j(o54Var, "fqName");
        y45.j(dVar, "builtIns");
        xw0 xw0VarM = (num == null || !y45.e(o54Var, m85.a.h())) ? m85.a.m(o54Var) : e.a(num.intValue());
        if (xw0VarM != null) {
            return dVar.o(xw0VarM.b());
        }
        return null;
    }

    public final Collection g(o54 o54Var, d dVar) {
        y45.j(o54Var, "fqName");
        y45.j(dVar, "builtIns");
        qw0 qw0VarF = f(this, o54Var, dVar, null, 4, null);
        if (qw0VarF == null) {
            return ye9.f();
        }
        o54 o54VarP = m85.a.p(DescriptorUtilsKt.m(qw0VarF));
        if (o54VarP == null) {
            return xe9.d(qw0VarF);
        }
        qw0 qw0VarO = dVar.o(o54VarP);
        y45.i(qw0VarO, "builtIns.getBuiltInClass…otlinMutableAnalogFqName)");
        return y71.n(qw0VarF, qw0VarO);
    }
}
