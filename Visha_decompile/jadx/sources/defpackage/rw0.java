package defpackage;

import javassist.compiler.ast.MethodDecl;

public abstract class rw0 extends o2 {
    public final xt1 g;
    public final yt9 h;
    public final boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rw0(vx9 vx9Var, xt1 xt1Var, by6 by6Var, yt9 yt9Var, boolean z) {
        super(vx9Var, by6Var);
        if (vx9Var == null) {
            l0(0);
        }
        if (xt1Var == null) {
            l0(1);
        }
        if (by6Var == null) {
            l0(2);
        }
        if (yt9Var == null) {
            l0(3);
        }
        this.g = xt1Var;
        this.h = yt9Var;
        this.i = z;
    }

    private static void l0(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = "source";
        } else if (i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public xt1 b() {
        xt1 xt1Var = this.g;
        if (xt1Var == null) {
            l0(4);
        }
        return xt1Var;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = this.h;
        if (yt9Var == null) {
            l0(5);
        }
        return yt9Var;
    }

    public boolean isExternal() {
        return this.i;
    }
}
