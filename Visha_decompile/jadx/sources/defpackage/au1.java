package defpackage;

import javassist.compiler.ast.MethodDecl;

public abstract class au1 extends yt1 implements zt1 {
    public final xt1 d;
    public final yt9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public au1(xt1 xt1Var, md mdVar, by6 by6Var, yt9 yt9Var) {
        super(mdVar, by6Var);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (by6Var == null) {
            Q(2);
        }
        if (yt9Var == null) {
            Q(3);
        }
        this.d = xt1Var;
        this.e = yt9Var;
    }

    private static void Q(int i) {
        String str = (i == 4 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "source";
                break;
            case 4:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 4) {
            objArr[1] = "getOriginal";
        } else if (i == 5) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 6) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5 && i != 6) {
            objArr[2] = MethodDecl.initName;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override
    public xt1 b() {
        xt1 xt1Var = this.d;
        if (xt1Var == null) {
            Q(5);
        }
        return xt1Var;
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = this.e;
        if (yt9Var == null) {
            Q(6);
        }
        return yt9Var;
    }

    @Override
    public du1 a() {
        du1 du1Var = (du1) super.a();
        if (du1Var == null) {
            Q(4);
        }
        return du1Var;
    }
}
