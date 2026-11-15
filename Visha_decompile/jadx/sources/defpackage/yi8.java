package defpackage;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public class yi8 extends si8 implements xi8 {
    public h n;
    public final xi8 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public yi8(ti8 ti8Var, md mdVar, Modality modality, c92 c92Var, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, xi8 xi8Var, yt9 yt9Var) {
        xi8 xi8Var2;
        yi8 yi8Var;
        super(modality, c92Var, ti8Var, mdVar, by6.j("<set-" + ti8Var.getName() + ">"), z, z2, z3, kind, yt9Var);
        if (ti8Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (modality == null) {
            Q(2);
        }
        if (c92Var == null) {
            Q(3);
        }
        if (kind == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        if (xi8Var != null) {
            yi8Var = this;
            xi8Var2 = xi8Var;
        } else {
            xi8Var2 = this;
            yi8Var = xi8Var2;
        }
        yi8Var.o = xi8Var2;
    }

    public static ValueParameterDescriptorImpl J0(xi8 xi8Var, eh5 eh5Var, md mdVar) {
        if (xi8Var == null) {
            Q(7);
        }
        if (eh5Var == null) {
            Q(8);
        }
        if (mdVar == null) {
            Q(9);
        }
        return new ValueParameterDescriptorImpl(xi8Var, null, 0, mdVar, su9.o, eh5Var, false, false, false, null, yt9.a);
    }

    private static void Q(int i) {
        String str;
        int i2;
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 9:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
                objArr[0] = MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD;
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public xi8 a() {
        xi8 xi8Var = this.o;
        if (xi8Var == null) {
            Q(13);
        }
        return xi8Var;
    }

    public void L0(h hVar) {
        if (hVar == null) {
            Q(6);
        }
        this.n = hVar;
    }

    @Override
    public Collection e() {
        Collection collectionF0 = super.F0(false);
        if (collectionF0 == null) {
            Q(10);
        }
        return collectionF0;
    }

    @Override
    public List f() {
        h hVar = this.n;
        if (hVar == null) {
            throw new IllegalStateException();
        }
        List listSingletonList = Collections.singletonList(hVar);
        if (listSingletonList == null) {
            Q(11);
        }
        return listSingletonList;
    }

    @Override
    public eh5 getReturnType() {
        sm9 sm9VarZ = DescriptorUtilsKt.j(this).Z();
        if (sm9VarZ == null) {
            Q(12);
        }
        return sm9VarZ;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.b(this, obj);
    }
}
