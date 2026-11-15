package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.au1;
import defpackage.by6;
import defpackage.eh5;
import defpackage.md;
import defpackage.ro8;
import defpackage.xnb;
import defpackage.xt1;
import defpackage.yt9;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;

public abstract class c extends au1 implements xnb {
    public eh5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(xt1 xt1Var, md mdVar, by6 by6Var, eh5 eh5Var, yt9 yt9Var) {
        super(xt1Var, mdVar, by6Var, yt9Var);
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
        this.f = eh5Var;
    }

    private static void Q(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
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
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 10:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public void C0(eh5 eh5Var) {
        this.f = eh5Var;
    }

    @Override
    public ro8 Z() {
        return null;
    }

    @Override
    public ro8 b0() {
        return null;
    }

    @Override
    public List f() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(6);
        }
        return listEmptyList;
    }

    @Override
    public eh5 getReturnType() {
        eh5 type = getType();
        if (type == null) {
            Q(10);
        }
        return type;
    }

    @Override
    public eh5 getType() {
        eh5 eh5Var = this.f;
        if (eh5Var == null) {
            Q(4);
        }
        return eh5Var;
    }

    @Override
    public List getTypeParameters() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(8);
        }
        return listEmptyList;
    }

    public boolean k0() {
        return false;
    }
}
