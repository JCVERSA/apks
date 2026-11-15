package defpackage;

import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public class ocb extends ncb {
    public final Variance a;
    public final eh5 b;

    public ocb(Variance variance, eh5 eh5Var) {
        if (variance == null) {
            d(0);
        }
        if (eh5Var == null) {
            d(1);
        }
        this.a = variance;
        this.b = eh5Var;
    }

    public static void d(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (i == 4) {
            objArr[1] = "getProjectionKind";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i == 3) {
            objArr[2] = "replaceType";
        } else if (i != 4 && i != 5) {
            if (i != 6) {
                objArr[2] = MethodDecl.initName;
            } else {
                objArr[2] = "refine";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public mcb a(c cVar) {
        if (cVar == null) {
            d(6);
        }
        return new ocb(this.a, cVar.a(this.b));
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public Variance c() {
        Variance variance = this.a;
        if (variance == null) {
            d(4);
        }
        return variance;
    }

    @Override
    public eh5 getType() {
        eh5 eh5Var = this.b;
        if (eh5Var == null) {
            d(5);
        }
        return eh5Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ocb(eh5 eh5Var) {
        this(Variance.INVARIANT, eh5Var);
        if (eh5Var == null) {
            d(2);
        }
    }
}
