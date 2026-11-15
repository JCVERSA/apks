package defpackage;

import javassist.compiler.ast.MethodDecl;

public class k7b extends t3 {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k7b(eh5 eh5Var) {
        this(eh5Var, null);
        if (eh5Var == null) {
            b(0);
        }
    }

    private static void b(int i) {
        Object[] objArr = new Object[3];
        if (i != 2) {
            objArr[0] = "type";
        } else {
            objArr[0] = "newType";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/TransientReceiver";
        if (i != 2) {
            objArr[2] = MethodDecl.initName;
        } else {
            objArr[2] = "replaceType";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public String toString() {
        return "{Transient} : " + getType();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k7b(eh5 eh5Var, to8 to8Var) {
        super(eh5Var, to8Var);
        if (eh5Var == null) {
            b(1);
        }
    }
}
