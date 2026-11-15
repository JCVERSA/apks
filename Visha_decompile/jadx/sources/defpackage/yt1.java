package defpackage;

import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

public abstract class yt1 extends ed implements xt1 {
    public final by6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yt1(md mdVar, by6 by6Var) {
        super(mdVar);
        if (mdVar == null) {
            Q(0);
        }
        if (by6Var == null) {
            Q(1);
        }
        this.c = by6Var;
    }

    private static void Q(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
                break;
            case 4:
                objArr[0] = "descriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 5 || i == 6) {
            objArr[1] = "toString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
        }
        if (i != 2 && i != 3) {
            if (i == 4) {
                objArr[2] = "toString";
            } else if (i != 5 && i != 6) {
                objArr[2] = MethodDecl.initName;
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static String d0(xt1 xt1Var) {
        if (xt1Var == null) {
            Q(4);
        }
        try {
            String str = DescriptorRenderer.j.s(xt1Var) + "[" + xt1Var.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(xt1Var)) + "]";
            if (str == null) {
                Q(5);
            }
            return str;
        } catch (Throwable unused) {
            String str2 = xt1Var.getClass().getSimpleName() + " " + xt1Var.getName();
            if (str2 == null) {
                Q(6);
            }
            return str2;
        }
    }

    public xt1 a() {
        return this;
    }

    @Override
    public by6 getName() {
        by6 by6Var = this.c;
        if (by6Var == null) {
            Q(2);
        }
        return by6Var;
    }

    public String toString() {
        return d0(this);
    }
}
