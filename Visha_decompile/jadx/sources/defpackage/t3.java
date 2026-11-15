package defpackage;

import javassist.compiler.ast.MethodDecl;

public abstract class t3 implements to8 {
    public final eh5 a;
    public final to8 b;

    public t3(eh5 eh5Var, to8 to8Var) {
        if (eh5Var == null) {
            b(0);
        }
        this.a = eh5Var;
        this.b = to8Var == null ? this : to8Var;
    }

    private static void b(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i == 1) {
            objArr[1] = "getType";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 1 && i != 2) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public eh5 getType() {
        eh5 eh5Var = this.a;
        if (eh5Var == null) {
            b(1);
        }
        return eh5Var;
    }
}
