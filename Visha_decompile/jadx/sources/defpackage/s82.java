package defpackage;

import java.util.Collections;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j;
import org.mozilla.javascript.ES6Iterator;

public abstract class s82 {

    public static class a extends nw0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(qw0 qw0Var, yt9 yt9Var, boolean z) {
            super(qw0Var, null, md.u1.b(), true, CallableMemberDescriptor.Kind.DECLARATION, yt9Var);
            if (qw0Var == null) {
                Q(0);
            }
            if (yt9Var == null) {
                Q(1);
            }
            l1(Collections.emptyList(), y82.k(qw0Var, z));
        }

        private static void Q(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "containingClass";
            } else {
                objArr[0] = "source";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor";
            objArr[2] = MethodDecl.initName;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public static void a(int i) {
        String str = (i == 12 || i == 23 || i == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 23 || i == 25) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 31:
            case 33:
            case 35:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = "source";
                break;
            case 22:
            case 24:
            case 26:
                objArr[0] = "enumClass";
                break;
            case 27:
            case 28:
            case 29:
                objArr[0] = "descriptor";
                break;
            case 30:
            case 32:
            case 34:
                objArr[0] = "owner";
                break;
        }
        if (i == 12) {
            objArr[1] = "createSetter";
        } else if (i == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "createEnumEntriesProperty";
                break;
            case 27:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 28:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 29:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 30:
            case 31:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            case 32:
            case 33:
                objArr[2] = "createContextReceiverParameterForCallable";
                break;
            case 34:
            case 35:
                objArr[2] = "createContextReceiverParameterForClass";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 12 && i != 23 && i != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static ro8 b(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, eh5 eh5Var, by6 by6Var, md mdVar, int i) {
        if (aVar == null) {
            a(32);
        }
        if (mdVar == null) {
            a(33);
        }
        if (eh5Var == null) {
            return null;
        }
        return new so8(aVar, new sh1(aVar, eh5Var, by6Var, null), mdVar, fy6.a(i));
    }

    public static ro8 c(qw0 qw0Var, eh5 eh5Var, by6 by6Var, md mdVar, int i) {
        if (qw0Var == null) {
            a(34);
        }
        if (mdVar == null) {
            a(35);
        }
        if (eh5Var == null) {
            return null;
        }
        return new so8(qw0Var, new nh1(qw0Var, eh5Var, by6Var, null), mdVar, fy6.a(i));
    }

    public static wi8 d(ti8 ti8Var, md mdVar) {
        if (ti8Var == null) {
            a(13);
        }
        if (mdVar == null) {
            a(14);
        }
        return j(ti8Var, mdVar, true, false, false);
    }

    public static yi8 e(ti8 ti8Var, md mdVar, md mdVar2) {
        if (ti8Var == null) {
            a(0);
        }
        if (mdVar == null) {
            a(1);
        }
        if (mdVar2 == null) {
            a(2);
        }
        return n(ti8Var, mdVar, mdVar2, true, false, false, ti8Var.getSource());
    }

    public static ti8 f(qw0 qw0Var) {
        if (qw0Var == null) {
            a(26);
        }
        qw0 qw0VarA = FindClassInModuleKt.a(y82.g(qw0Var), cw9.a.i());
        if (qw0VarA == null) {
            return null;
        }
        md.a aVar = md.u1;
        md mdVarB = aVar.b();
        Modality modality = Modality.FINAL;
        c92 c92Var = b92.e;
        by6 by6Var = e.e;
        CallableMemberDescriptor.Kind kind = CallableMemberDescriptor.Kind.SYNTHESIZED;
        ui8 ui8VarJ0 = ui8.J0(qw0Var, mdVarB, modality, c92Var, false, by6Var, kind, qw0Var.getSource(), false, false, false, false, false, false);
        wi8 wi8Var = new wi8(ui8VarJ0, aVar.b(), modality, c92Var, false, false, false, kind, null, qw0Var.getSource());
        ui8VarJ0.P0(wi8Var, null);
        ui8VarJ0.W0(KotlinTypeFactory.h(j.c.h(), qw0VarA.m(), Collections.singletonList(new ocb(qw0Var.q())), false), Collections.emptyList(), null, null, Collections.emptyList());
        wi8Var.K0(ui8VarJ0.getReturnType());
        return ui8VarJ0;
    }

    public static g g(qw0 qw0Var) {
        if (qw0Var == null) {
            a(24);
        }
        md.a aVar = md.u1;
        bm9 bm9VarG1 = bm9.g1(qw0Var, aVar.b(), e.f, CallableMemberDescriptor.Kind.SYNTHESIZED, qw0Var.getSource());
        bm9 bm9VarI1 = bm9VarG1.M0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.singletonList(new ValueParameterDescriptorImpl(bm9VarG1, null, 0, aVar.b(), by6.g(ES6Iterator.VALUE_PROPERTY), DescriptorUtilsKt.j(qw0Var).W(), false, false, false, null, qw0Var.getSource())), qw0Var.q(), Modality.FINAL, b92.e);
        if (bm9VarI1 == null) {
            a(25);
        }
        return bm9VarI1;
    }

    public static g h(qw0 qw0Var) {
        if (qw0Var == null) {
            a(22);
        }
        bm9 bm9VarI1 = bm9.g1(qw0Var, md.u1.b(), e.d, CallableMemberDescriptor.Kind.SYNTHESIZED, qw0Var.getSource()).M0(null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), DescriptorUtilsKt.j(qw0Var).l(Variance.INVARIANT, qw0Var.q()), Modality.FINAL, b92.e);
        if (bm9VarI1 == null) {
            a(23);
        }
        return bm9VarI1;
    }

    public static ro8 i(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, eh5 eh5Var, md mdVar) {
        if (aVar == null) {
            a(30);
        }
        if (mdVar == null) {
            a(31);
        }
        if (eh5Var == null) {
            return null;
        }
        return new so8(aVar, new ek3(aVar, eh5Var, null), mdVar);
    }

    public static wi8 j(ti8 ti8Var, md mdVar, boolean z, boolean z2, boolean z3) {
        if (ti8Var == null) {
            a(15);
        }
        if (mdVar == null) {
            a(16);
        }
        return k(ti8Var, mdVar, z, z2, z3, ti8Var.getSource());
    }

    public static wi8 k(ti8 ti8Var, md mdVar, boolean z, boolean z2, boolean z3, yt9 yt9Var) {
        if (ti8Var == null) {
            a(17);
        }
        if (mdVar == null) {
            a(18);
        }
        if (yt9Var == null) {
            a(19);
        }
        return new wi8(ti8Var, mdVar, ti8Var.j(), ti8Var.getVisibility(), z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, yt9Var);
    }

    public static nw0 l(qw0 qw0Var, yt9 yt9Var) {
        if (qw0Var == null) {
            a(20);
        }
        if (yt9Var == null) {
            a(21);
        }
        return new a(qw0Var, yt9Var, false);
    }

    public static yi8 m(ti8 ti8Var, md mdVar, md mdVar2, boolean z, boolean z2, boolean z3, c92 c92Var, yt9 yt9Var) {
        if (ti8Var == null) {
            a(7);
        }
        if (mdVar == null) {
            a(8);
        }
        if (mdVar2 == null) {
            a(9);
        }
        if (c92Var == null) {
            a(10);
        }
        if (yt9Var == null) {
            a(11);
        }
        yi8 yi8Var = new yi8(ti8Var, mdVar, ti8Var.j(), c92Var, z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, yt9Var);
        yi8Var.L0(yi8.J0(yi8Var, ti8Var.getType(), mdVar2));
        return yi8Var;
    }

    public static yi8 n(ti8 ti8Var, md mdVar, md mdVar2, boolean z, boolean z2, boolean z3, yt9 yt9Var) {
        if (ti8Var == null) {
            a(3);
        }
        if (mdVar == null) {
            a(4);
        }
        if (mdVar2 == null) {
            a(5);
        }
        if (yt9Var == null) {
            a(6);
        }
        return m(ti8Var, mdVar, mdVar2, z, z2, z3, ti8Var.getVisibility(), yt9Var);
    }

    public static boolean o(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        if (eVar == null) {
            a(29);
        }
        return eVar.getKind() == CallableMemberDescriptor.Kind.SYNTHESIZED && y82.A(eVar.b());
    }

    public static boolean p(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        if (eVar == null) {
            a(28);
        }
        return eVar.getName().equals(e.f) && o(eVar);
    }

    public static boolean q(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
        if (eVar == null) {
            a(27);
        }
        return eVar.getName().equals(e.d) && o(eVar);
    }
}
