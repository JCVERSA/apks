package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

public abstract class si8 extends au1 implements f {
    public boolean f;
    public final boolean g;
    public final Modality h;
    public final ti8 i;
    public final boolean j;
    public final CallableMemberDescriptor.Kind k;
    public c92 l;
    public e m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si8(Modality modality, c92 c92Var, ti8 ti8Var, md mdVar, by6 by6Var, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(ti8Var.b(), mdVar, by6Var, yt9Var);
        if (modality == null) {
            Q(0);
        }
        if (c92Var == null) {
            Q(1);
        }
        if (ti8Var == null) {
            Q(2);
        }
        if (mdVar == null) {
            Q(3);
        }
        if (by6Var == null) {
            Q(4);
        }
        if (yt9Var == null) {
            Q(5);
        }
        this.m = null;
        this.h = modality;
        this.l = c92Var;
        this.i = ti8Var;
        this.f = z;
        this.g = z2;
        this.j = z3;
        this.k = kind;
    }

    private static void Q(int i) {
        String str;
        int i2;
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i2 = 2;
                break;
            case 7:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = "source";
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 16:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "substitute";
                break;
            case 9:
                objArr[1] = "getTypeParameters";
                break;
            case 10:
                objArr[1] = "getModality";
                break;
            case 11:
                objArr[1] = "getVisibility";
                break;
            case 12:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 13:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 14:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 15:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 16:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                throw new IllegalStateException(str2);
            case 7:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public boolean B0() {
        return false;
    }

    @Override
    public f J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    public Collection F0(boolean z) {
        ArrayList arrayList = new ArrayList(0);
        for (ti8 ti8Var : e0().e()) {
            dd getter = z ? ti8Var.getGetter() : ti8Var.getSetter();
            if (getter != null) {
                arrayList.add(getter);
            }
        }
        return arrayList;
    }

    public void G0(boolean z) {
        this.f = z;
    }

    public void H0(e eVar) {
        this.m = eVar;
    }

    public void I0(c92 c92Var) {
        this.l = c92Var;
    }

    @Override
    public Object K(a.InterfaceC0379a interfaceC0379a) {
        return null;
    }

    @Override
    public void O(Collection collection) {
        if (collection == null) {
            Q(16);
        }
    }

    @Override
    public boolean P() {
        return false;
    }

    @Override
    public boolean V() {
        return this.f;
    }

    @Override
    public ro8 Z() {
        return e0().Z();
    }

    @Override
    public ro8 b0() {
        return e0().b0();
    }

    @Override
    public e c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(7);
        }
        return this;
    }

    @Override
    public ti8 e0() {
        ti8 ti8Var = this.i;
        if (ti8Var == null) {
            Q(13);
        }
        return ti8Var;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.k;
        if (kind == null) {
            Q(6);
        }
        return kind;
    }

    @Override
    public List getTypeParameters() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            Q(9);
        }
        return listEmptyList;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = this.l;
        if (c92Var == null) {
            Q(11);
        }
        return c92Var;
    }

    @Override
    public boolean isExternal() {
        return this.g;
    }

    @Override
    public boolean isInfix() {
        return false;
    }

    @Override
    public boolean isInline() {
        return this.j;
    }

    @Override
    public boolean isOperator() {
        return false;
    }

    @Override
    public boolean isSuspend() {
        return false;
    }

    @Override
    public Modality j() {
        Modality modality = this.h;
        if (modality == null) {
            Q(10);
        }
        return modality;
    }

    @Override
    public boolean k0() {
        return false;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public boolean v() {
        return false;
    }

    @Override
    public e v0() {
        return this.m;
    }

    @Override
    public List y0() {
        List listY0 = e0().y0();
        if (listY0 == null) {
            Q(14);
        }
        return listY0;
    }
}
