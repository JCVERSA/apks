package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public abstract class s3 extends yt1 implements ro8 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s3(md mdVar) {
        super(mdVar, su9.i);
        if (mdVar == null) {
            Q(0);
        }
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
            case 11:
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
            case 11:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "substitutor";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 5:
                objArr[1] = "getTypeParameters";
                break;
            case 6:
                objArr[1] = "getType";
                break;
            case 7:
                objArr[1] = "getValueParameters";
                break;
            case 8:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 9:
                objArr[1] = "getVisibility";
                break;
            case 10:
                objArr[1] = "getOriginal";
                break;
            case 11:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 3:
                objArr[2] = "substitute";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
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
            case 11:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
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
    public Collection e() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            Q(8);
        }
        return setEmptySet;
    }

    @Override
    public List f() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(7);
        }
        return listEmptyList;
    }

    @Override
    public eh5 getReturnType() {
        return getType();
    }

    @Override
    public yt9 getSource() {
        yt9 yt9Var = yt9.a;
        if (yt9Var == null) {
            Q(11);
        }
        return yt9Var;
    }

    @Override
    public eh5 getType() {
        eh5 type = getValue().getType();
        if (type == null) {
            Q(6);
        }
        return type;
    }

    @Override
    public List getTypeParameters() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(5);
        }
        return listEmptyList;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = b92.f;
        if (c92Var == null) {
            Q(9);
        }
        return c92Var;
    }

    @Override
    public boolean k0() {
        return false;
    }

    @Override
    public hw7 a() {
        return this;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.f(this, obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s3(md mdVar, by6 by6Var) {
        super(mdVar, by6Var);
        if (mdVar == null) {
            Q(1);
        }
        if (by6Var == null) {
            Q(2);
        }
    }

    @Override
    public ro8 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(3);
        }
        if (typeSubstitutor.k()) {
            return this;
        }
        eh5 eh5VarP = b() instanceof qw0 ? typeSubstitutor.p(getType(), Variance.OUT_VARIANCE) : typeSubstitutor.p(getType(), Variance.INVARIANT);
        if (eh5VarP == null) {
            return null;
        }
        return eh5VarP == getType() ? this : new so8(b(), new k7b(eh5VarP), getAnnotations());
    }
}
