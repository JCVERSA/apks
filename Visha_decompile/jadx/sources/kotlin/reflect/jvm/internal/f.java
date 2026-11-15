package kotlin.reflect.jvm.internal;

import defpackage.a85;
import defpackage.aq8;
import defpackage.cj8;
import defpackage.dq8;
import defpackage.gq8;
import defpackage.h05;
import defpackage.i85;
import defpackage.id5;
import defpackage.k75;
import defpackage.ko6;
import defpackage.m85;
import defpackage.m92;
import defpackage.o54;
import defpackage.od5;
import defpackage.s82;
import defpackage.t65;
import defpackage.t92;
import defpackage.ti8;
import defpackage.vi8;
import defpackage.xc5;
import defpackage.xi8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y82;
import defpackage.yt9;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class f {
    public static final f a = new f();
    public static final xw0 b;

    static {
        xw0 xw0VarM = xw0.m(new o54("java.lang.Void"));
        y45.i(xw0VarM, "topLevel(FqName(\"java.lang.Void\"))");
        b = xw0VarM;
    }

    public final PrimitiveType a(Class cls) {
        if (cls.isPrimitive()) {
            return JvmPrimitiveType.get(cls.getSimpleName()).getPrimitiveType();
        }
        return null;
    }

    public final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        if (s82.p(eVar) || s82.q(eVar)) {
            return true;
        }
        return y45.e(eVar.getName(), kotlin.reflect.jvm.internal.impl.builtins.jvm.a.e.a()) && eVar.f().isEmpty();
    }

    public final xw0 c(Class cls) {
        y45.j(cls, "klass");
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            y45.i(componentType, "klass.componentType");
            PrimitiveType primitiveTypeA = a(componentType);
            if (primitiveTypeA != null) {
                return new xw0(kotlin.reflect.jvm.internal.impl.builtins.e.v, primitiveTypeA.getArrayTypeName());
            }
            xw0 xw0VarM = xw0.m(kotlin.reflect.jvm.internal.impl.builtins.e.a.i.l());
            y45.i(xw0VarM, "topLevel(StandardNames.FqNames.array.toSafe())");
            return xw0VarM;
        }
        if (y45.e(cls, Void.TYPE)) {
            return b;
        }
        PrimitiveType primitiveTypeA2 = a(cls);
        if (primitiveTypeA2 != null) {
            return new xw0(kotlin.reflect.jvm.internal.impl.builtins.e.v, primitiveTypeA2.getTypeName());
        }
        xw0 xw0VarA = ReflectClassUtilKt.a(cls);
        if (!xw0VarA.k()) {
            m85 m85Var = m85.a;
            o54 o54VarB = xw0VarA.b();
            y45.i(o54VarB, "classId.asSingleFqName()");
            xw0 xw0VarM2 = m85Var.m(o54VarB);
            if (xw0VarM2 != null) {
                return xw0VarM2;
            }
        }
        return xw0VarA;
    }

    public final JvmFunctionSignature.c d(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        return new JvmFunctionSignature.c(new id5.b(e(eVar), ko6.c(eVar, false, false, 1, null)));
    }

    public final String e(CallableMemberDescriptor callableMemberDescriptor) {
        String strB = SpecialBuiltinMembers.b(callableMemberDescriptor);
        if (strB != null) {
            return strB;
        }
        if (callableMemberDescriptor instanceof vi8) {
            String strB2 = DescriptorUtilsKt.s(callableMemberDescriptor).getName().b();
            y45.i(strB2, "descriptor.propertyIfAccessor.name.asString()");
            return xc5.b(strB2);
        }
        if (callableMemberDescriptor instanceof xi8) {
            String strB3 = DescriptorUtilsKt.s(callableMemberDescriptor).getName().b();
            y45.i(strB3, "descriptor.propertyIfAccessor.name.asString()");
            return xc5.e(strB3);
        }
        String strB4 = callableMemberDescriptor.getName().b();
        y45.i(strB4, "descriptor.name.asString()");
        return strB4;
    }

    public final c f(ti8 ti8Var) {
        y45.j(ti8Var, "possiblyOverriddenProperty");
        ti8 ti8VarA = ((ti8) y82.L(ti8Var)).a();
        y45.i(ti8VarA, "unwrapFakeOverride(possi…rriddenProperty).original");
        if (ti8VarA instanceof t92) {
            t92 t92Var = (t92) ti8VarA;
            ProtoBuf$Property protoBuf$PropertyA1 = t92Var.G();
            GeneratedMessageLite.e eVar = JvmProtoBuf.d;
            y45.i(eVar, "propertySignature");
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) cj8.a(protoBuf$PropertyA1, eVar);
            if (jvmPropertySignature != null) {
                return new c.C0370c(ti8VarA, protoBuf$PropertyA1, jvmPropertySignature, t92Var.X(), t92Var.x());
            }
        } else if (ti8VarA instanceof a85) {
            yt9 source = ((a85) ti8VarA).getSource();
            i85 i85Var = source instanceof i85 ? (i85) source : null;
            k75 k75VarC = i85Var != null ? i85Var.c() : null;
            if (k75VarC instanceof dq8) {
                return new c.a(((dq8) k75VarC).P());
            }
            if (k75VarC instanceof gq8) {
                Method methodP = ((gq8) k75VarC).P();
                xi8 setter = ti8VarA.getSetter();
                yt9 source2 = setter != null ? setter.getSource() : null;
                i85 i85Var2 = source2 instanceof i85 ? (i85) source2 : null;
                k75 k75VarC2 = i85Var2 != null ? i85Var2.c() : null;
                gq8 gq8Var = k75VarC2 instanceof gq8 ? (gq8) k75VarC2 : null;
                return new c.b(methodP, gq8Var != null ? gq8Var.P() : null);
            }
            throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java field " + ti8VarA + " (source = " + k75VarC + ')');
        }
        vi8 getter = ti8VarA.getGetter();
        y45.g(getter);
        JvmFunctionSignature.c cVarD = d(getter);
        xi8 setter2 = ti8VarA.getSetter();
        return new c.d(cVarD, setter2 != null ? d(setter2) : null);
    }

    public final JvmFunctionSignature g(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        Method methodP;
        id5.b bVarB;
        id5.b bVarE;
        y45.j(eVar, "possiblySubstitutedFunction");
        kotlin.reflect.jvm.internal.impl.descriptors.e eVarA = ((kotlin.reflect.jvm.internal.impl.descriptors.e) y82.L(eVar)).a();
        y45.i(eVarA, "unwrapFakeOverride(possi…titutedFunction).original");
        if (eVarA instanceof m92) {
            m92 m92Var = (m92) eVarA;
            g gVarG = m92Var.G();
            if ((gVarG instanceof ProtoBuf$Function) && (bVarE = od5.a.e((ProtoBuf$Function) gVarG, m92Var.X(), m92Var.x())) != null) {
                return new JvmFunctionSignature.c(bVarE);
            }
            if (!(gVarG instanceof ProtoBuf$Constructor) || (bVarB = od5.a.b((ProtoBuf$Constructor) gVarG, m92Var.X(), m92Var.x())) == null) {
                return d(eVarA);
            }
            xt1 xt1VarB = eVar.b();
            y45.i(xt1VarB, "possiblySubstitutedFunction.containingDeclaration");
            return h05.b(xt1VarB) ? new JvmFunctionSignature.c(bVarB) : new JvmFunctionSignature.b(bVarB);
        }
        if (eVarA instanceof JavaMethodDescriptor) {
            yt9 source = ((JavaMethodDescriptor) eVarA).getSource();
            i85 i85Var = source instanceof i85 ? (i85) source : null;
            k75 k75VarC = i85Var != null ? i85Var.c() : null;
            gq8 gq8Var = k75VarC instanceof gq8 ? (gq8) k75VarC : null;
            if (gq8Var != null && (methodP = gq8Var.P()) != null) {
                return new JvmFunctionSignature.a(methodP);
            }
            throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java method " + eVarA);
        }
        if (!(eVarA instanceof t65)) {
            if (b(eVarA)) {
                return d(eVarA);
            }
            throw new KotlinReflectionInternalError("Unknown origin of " + eVarA + " (" + eVarA.getClass() + ')');
        }
        yt9 source2 = ((t65) eVarA).getSource();
        i85 i85Var2 = source2 instanceof i85 ? (i85) source2 : null;
        k75 k75VarC2 = i85Var2 != null ? i85Var2.c() : null;
        if (k75VarC2 instanceof aq8) {
            return new JvmFunctionSignature.JavaConstructor(((aq8) k75VarC2).P());
        }
        if (k75VarC2 instanceof ReflectJavaClass) {
            ReflectJavaClass reflectJavaClass = (ReflectJavaClass) k75VarC2;
            if (reflectJavaClass.o()) {
                return new JvmFunctionSignature.FakeJavaAnnotationConstructor(reflectJavaClass.getElement());
            }
        }
        throw new KotlinReflectionInternalError("Incorrect resolution sequence for Java constructor " + eVarA + " (" + k75VarC2 + ')');
    }
}
