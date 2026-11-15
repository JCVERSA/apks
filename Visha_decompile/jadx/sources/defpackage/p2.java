package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;

public abstract class p2 extends AbstractTypeConstructor implements sbb {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p2(vx9 vx9Var) {
        super(vx9Var);
        if (vx9Var == null) {
            u(0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    private static void u(int i) {
        String str = (i == 1 || i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else if (i == 2) {
            objArr[0] = "classifier";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 1) {
            objArr[1] = "getBuiltIns";
        } else if (i == 3 || i == 4) {
            objArr[1] = "getAdditionalNeighboursInSupertypeGraph";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        }
        if (i != 1) {
            if (i == 2) {
                objArr[2] = "isSameClassifier";
            } else if (i != 3 && i != 4) {
                objArr[2] = MethodDecl.initName;
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public boolean g(px0 px0Var) {
        if (px0Var == null) {
            u(2);
        }
        return (px0Var instanceof qw0) && e(v(), px0Var);
    }

    @Override
    public eh5 l() {
        if (d.u0(v())) {
            return null;
        }
        return o().i();
    }

    @Override
    public Collection m(boolean z) {
        xt1 xt1VarB = v().b();
        if (!(xt1VarB instanceof qw0)) {
            List listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                u(3);
            }
            return listEmptyList;
        }
        bq9 bq9Var = new bq9();
        qw0 qw0Var = (qw0) xt1VarB;
        bq9Var.add(qw0Var.q());
        qw0 qw0VarO0 = qw0Var.o0();
        if (z && qw0VarO0 != null) {
            bq9Var.add(qw0VarO0.q());
        }
        return bq9Var;
    }

    @Override
    public d o() {
        d dVarJ = DescriptorUtilsKt.j(v());
        if (dVarJ == null) {
            u(1);
        }
        return dVarJ;
    }

    public abstract qw0 v();
}
