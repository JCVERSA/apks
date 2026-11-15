package defpackage;

import javassist.compiler.ast.MethodDecl;

public class aj5 extends s3 {
    public final qw0 d;
    public final wy4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aj5(qw0 qw0Var) {
        super(md.u1.b());
        if (qw0Var == null) {
            Q(0);
        }
        this.d = qw0Var;
        this.e = new wy4(qw0Var, null);
    }

    private static void Q(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 1) {
            objArr[1] = "getValue";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 1 && i != 2) {
            if (i != 3) {
                objArr[2] = MethodDecl.initName;
            } else {
                objArr[2] = "copy";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public xt1 b() {
        qw0 qw0Var = this.d;
        if (qw0Var == null) {
            Q(2);
        }
        return qw0Var;
    }

    @Override
    public to8 getValue() {
        wy4 wy4Var = this.e;
        if (wy4Var == null) {
            Q(1);
        }
        return wy4Var;
    }

    @Override
    public String toString() {
        return "class " + this.d.getName() + "::this";
    }
}
