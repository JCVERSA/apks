package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.by6;
import defpackage.c74;
import defpackage.eh5;
import defpackage.md;
import defpackage.o37;
import defpackage.pf1;
import defpackage.xt1;
import defpackage.yt9;
import javassist.compiler.ast.MethodDecl;

public abstract class d extends c {
    public final boolean g;
    public o37 h;
    public c74 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(xt1 xt1Var, md mdVar, by6 by6Var, eh5 eh5Var, boolean z, yt9 yt9Var) {
        super(xt1Var, mdVar, by6Var, eh5Var, yt9Var);
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
        this.g = z;
    }

    private static void Q(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "annotations";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = "source";
        } else if (i == 4 || i == 5) {
            objArr[0] = "compileTimeInitializerFactory";
        } else {
            objArr[0] = "containingDeclaration";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i == 4) {
            objArr[2] = "setCompileTimeInitializerFactory";
        } else if (i != 5) {
            objArr[2] = MethodDecl.initName;
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public void F0(o37 o37Var, c74 c74Var) {
        if (c74Var == null) {
            Q(5);
        }
        this.i = c74Var;
        if (o37Var == null) {
            o37Var = (o37) c74Var.invoke();
        }
        this.h = o37Var;
    }

    public void G0(c74 c74Var) {
        if (c74Var == null) {
            Q(4);
        }
        F0(null, c74Var);
    }

    @Override
    public pf1 p0() {
        o37 o37Var = this.h;
        if (o37Var != null) {
            return (pf1) o37Var.invoke();
        }
        return null;
    }

    @Override
    public boolean y() {
        return this.g;
    }
}
