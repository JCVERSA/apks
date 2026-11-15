package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.checker.b;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class y82 {
    public static final o54 a = new o54("kotlin.jvm.JvmName");

    public static boolean A(xt1 xt1Var) {
        return D(xt1Var, ClassKind.ENUM_CLASS);
    }

    public static boolean B(xt1 xt1Var) {
        if (xt1Var == null) {
            a(36);
        }
        return D(xt1Var, ClassKind.ENUM_ENTRY);
    }

    public static boolean C(xt1 xt1Var) {
        return D(xt1Var, ClassKind.INTERFACE);
    }

    public static boolean D(xt1 xt1Var, ClassKind classKind) {
        if (classKind == null) {
            a(37);
        }
        return (xt1Var instanceof qw0) && ((qw0) xt1Var).getKind() == classKind;
    }

    public static boolean E(xt1 xt1Var) {
        if (xt1Var == null) {
            a(1);
        }
        while (xt1Var != null) {
            if (u(xt1Var) || y(xt1Var)) {
                return true;
            }
            xt1Var = xt1Var.b();
        }
        return false;
    }

    public static boolean F(eh5 eh5Var, xt1 xt1Var) {
        if (eh5Var == null) {
            a(30);
        }
        if (xt1Var == null) {
            a(31);
        }
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC == null) {
            return false;
        }
        xt1 xt1VarA = px0VarC.a();
        return (xt1VarA instanceof px0) && (xt1Var instanceof px0) && ((px0) xt1Var).m().equals(((px0) xt1VarA).m());
    }

    public static boolean G(xt1 xt1Var) {
        return (D(xt1Var, ClassKind.CLASS) || D(xt1Var, ClassKind.INTERFACE)) && ((qw0) xt1Var).j() == Modality.SEALED;
    }

    public static boolean H(qw0 qw0Var, qw0 qw0Var2) {
        if (qw0Var == null) {
            a(28);
        }
        if (qw0Var2 == null) {
            a(29);
        }
        return I(qw0Var.q(), qw0Var2.a());
    }

    public static boolean I(eh5 eh5Var, xt1 xt1Var) {
        if (eh5Var == null) {
            a(32);
        }
        if (xt1Var == null) {
            a(33);
        }
        if (F(eh5Var, xt1Var)) {
            return true;
        }
        Iterator it = eh5Var.I0().k().iterator();
        while (it.hasNext()) {
            if (I((eh5) it.next(), xt1Var)) {
                return true;
            }
        }
        return false;
    }

    public static boolean J(xt1 xt1Var) {
        return xt1Var != null && (xt1Var.b() instanceof dv7);
    }

    public static boolean K(xnb xnbVar, eh5 eh5Var) {
        if (xnbVar == null) {
            a(66);
        }
        if (eh5Var == null) {
            a(67);
        }
        if (xnbVar.y() || fh5.a(eh5Var)) {
            return false;
        }
        if (n.b(eh5Var)) {
            return true;
        }
        d dVarJ = DescriptorUtilsKt.j(xnbVar);
        if (!d.s0(eh5Var)) {
            b bVar = b.a;
            if (!bVar.b(dVarJ.W(), eh5Var) && !bVar.b(dVarJ.K().q(), eh5Var) && !bVar.b(dVarJ.i(), eh5Var) && !kgb.d(eh5Var)) {
                return false;
            }
        }
        return true;
    }

    public static CallableMemberDescriptor L(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(59);
        }
        while (callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            Collection collectionE = callableMemberDescriptor.e();
            if (collectionE.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: " + callableMemberDescriptor);
            }
            callableMemberDescriptor = (CallableMemberDescriptor) collectionE.iterator().next();
        }
        return callableMemberDescriptor;
    }

    public static eu1 M(eu1 eu1Var) {
        if (eu1Var == null) {
            a(64);
        }
        if (eu1Var instanceof CallableMemberDescriptor) {
            return L((CallableMemberDescriptor) eu1Var);
        }
        if (eu1Var == null) {
            a(65);
        }
        return eu1Var;
    }

    public static void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
            case 21:
            case 23:
            case 24:
            case 34:
            case 35:
            case 36:
            case 57:
            case 58:
            case 59:
            case 61:
            case 64:
            case 82:
            case 95:
            case 97:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 16:
                objArr[0] = "first";
                break;
            case 17:
                objArr[0] = "second";
                break;
            case 18:
            case 19:
                objArr[0] = "aClass";
                break;
            case 20:
                objArr[0] = "kotlinType";
                break;
            case 25:
                objArr[0] = "declarationDescriptor";
                break;
            case 26:
            case 28:
                objArr[0] = "subClass";
                break;
            case 27:
            case 29:
            case 33:
                objArr[0] = "superClass";
                break;
            case 30:
            case 32:
            case 45:
            case 67:
                objArr[0] = "type";
                break;
            case 31:
                objArr[0] = "other";
                break;
            case 37:
                objArr[0] = "classKind";
                break;
            case 38:
            case 39:
            case 41:
            case 44:
            case 48:
            case 54:
            case 68:
            case 69:
            case 70:
            case 77:
            case 78:
                objArr[0] = "classDescriptor";
                break;
            case 46:
                objArr[0] = "typeConstructor";
                break;
            case 55:
                objArr[0] = "innerClassName";
                break;
            case 56:
                objArr[0] = "location";
                break;
            case 66:
                objArr[0] = "variable";
                break;
            case 71:
                objArr[0] = "f";
                break;
            case 73:
                objArr[0] = "current";
                break;
            case 74:
                objArr[0] = "result";
                break;
            case 75:
                objArr[0] = "memberDescriptor";
                break;
            case 79:
            case 80:
            case 81:
                objArr[0] = "annotated";
                break;
            case 85:
            case 87:
            case 90:
            case 92:
                objArr[0] = "scope";
                break;
            case 88:
            case 91:
            case 93:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 12:
                objArr[1] = "getClassIdForNonLocalClass";
                break;
            case 22:
                objArr[1] = "getContainingModule";
                break;
            case 40:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 42:
            case 43:
                objArr[1] = "getSuperClassType";
                break;
            case 47:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 60:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 62:
            case 63:
                objArr[1] = "unwrapSubstitutionOverride";
                break;
            case 65:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 72:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 76:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 83:
            case 84:
                objArr[1] = "getContainingSourceFile";
                break;
            case 86:
                objArr[1] = "getAllDescriptors";
                break;
            case 89:
                objArr[1] = "getFunctionByName";
                break;
            case 94:
                objArr[1] = "getPropertyByName";
                break;
            case 96:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "getClassIdForNonLocalClass";
                break;
            case 13:
                objArr[2] = "isExtension";
                break;
            case 14:
                objArr[2] = "isOverride";
                break;
            case 15:
                objArr[2] = "isStaticDeclaration";
                break;
            case 16:
            case 17:
                objArr[2] = "areInSameModule";
                break;
            case 18:
            case 19:
                objArr[2] = "getParentOfType";
                break;
            case 20:
            case 23:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 21:
                objArr[2] = "getContainingModule";
                break;
            case 24:
                objArr[2] = "getContainingClass";
                break;
            case 25:
                objArr[2] = "isAncestor";
                break;
            case 26:
            case 27:
                objArr[2] = "isDirectSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSubclass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSameClass";
                break;
            case 32:
            case 33:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 34:
                objArr[2] = "isAnonymousObject";
                break;
            case 35:
                objArr[2] = "isAnonymousFunction";
                break;
            case 36:
                objArr[2] = "isEnumEntry";
                break;
            case 37:
                objArr[2] = "isKindOf";
                break;
            case 38:
                objArr[2] = "hasAbstractMembers";
                break;
            case 39:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 41:
                objArr[2] = "getSuperClassType";
                break;
            case 44:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 45:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 46:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 48:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 54:
            case 55:
            case 56:
                objArr[2] = "getInnerClassByName";
                break;
            case 57:
                objArr[2] = "isStaticNestedClass";
                break;
            case 58:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 59:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 61:
                objArr[2] = "unwrapSubstitutionOverride";
                break;
            case 64:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 66:
            case 67:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 68:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 69:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 70:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 71:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 73:
            case 74:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 75:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 77:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 78:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 79:
                objArr[2] = "getJvmName";
                break;
            case 80:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 81:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case 82:
                objArr[2] = "getContainingSourceFile";
                break;
            case 85:
                objArr[2] = "getAllDescriptors";
                break;
            case 87:
            case 88:
                objArr[2] = "getFunctionByName";
                break;
            case 90:
            case 91:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 92:
            case 93:
                objArr[2] = "getPropertyByName";
                break;
            case 95:
                objArr[2] = "getDirectMember";
                break;
            case 97:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 63:
            case 65:
            case 72:
            case 76:
            case 83:
            case 84:
            case 86:
            case 89:
            case 94:
            case 96:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean b(xt1 xt1Var, xt1 xt1Var2) {
        if (xt1Var == null) {
            a(16);
        }
        if (xt1Var2 == null) {
            a(17);
        }
        return g(xt1Var).equals(g(xt1Var2));
    }

    public static void c(a aVar, Set set) {
        if (aVar == null) {
            a(73);
        }
        if (set == null) {
            a(74);
        }
        if (set.contains(aVar)) {
            return;
        }
        Iterator it = aVar.a().e().iterator();
        while (it.hasNext()) {
            a aVarA = ((a) it.next()).a();
            c(aVarA, set);
            set.add(aVarA);
        }
    }

    public static Set d(a aVar) {
        if (aVar == null) {
            a(71);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        c(aVar.a(), linkedHashSet);
        return linkedHashSet;
    }

    public static qw0 e(eh5 eh5Var) {
        if (eh5Var == null) {
            a(45);
        }
        return f(eh5Var.I0());
    }

    public static qw0 f(sbb sbbVar) {
        if (sbbVar == null) {
            a(46);
        }
        qw0 qw0Var = (qw0) sbbVar.c();
        if (qw0Var == null) {
            a(47);
        }
        return qw0Var;
    }

    public static qq6 g(xt1 xt1Var) {
        if (xt1Var == null) {
            a(21);
        }
        qq6 qq6VarH = h(xt1Var);
        if (qq6VarH == null) {
            a(22);
        }
        return qq6VarH;
    }

    public static qq6 h(xt1 xt1Var) {
        if (xt1Var == null) {
            a(23);
        }
        while (xt1Var != null) {
            if (xt1Var instanceof qq6) {
                return (qq6) xt1Var;
            }
            if (xt1Var instanceof pv7) {
                return ((pv7) xt1Var).A0();
            }
            xt1Var = xt1Var.b();
        }
        return null;
    }

    public static qq6 i(eh5 eh5Var) {
        if (eh5Var == null) {
            a(20);
        }
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC == null) {
            return null;
        }
        return h(px0VarC);
    }

    public static zt9 j(xt1 xt1Var) {
        if (xt1Var == null) {
            a(82);
        }
        if (xt1Var instanceof xi8) {
            xt1Var = ((xi8) xt1Var).e0();
        }
        if (xt1Var instanceof du1) {
            zt9 zt9VarB = ((du1) xt1Var).getSource().b();
            if (zt9VarB == null) {
                a(83);
            }
            return zt9VarB;
        }
        zt9 zt9Var = zt9.a;
        if (zt9Var == null) {
            a(84);
        }
        return zt9Var;
    }

    public static c92 k(qw0 qw0Var, boolean z) {
        if (qw0Var == null) {
            a(48);
        }
        ClassKind kind = qw0Var.getKind();
        if (kind == ClassKind.ENUM_CLASS || kind.isSingleton()) {
            c92 c92Var = b92.a;
            if (c92Var == null) {
                a(49);
            }
            return c92Var;
        }
        if (G(qw0Var)) {
            if (z) {
                c92 c92Var2 = b92.c;
                if (c92Var2 == null) {
                    a(50);
                }
                return c92Var2;
            }
            c92 c92Var3 = b92.a;
            if (c92Var3 == null) {
                a(51);
            }
            return c92Var3;
        }
        if (u(qw0Var)) {
            c92 c92Var4 = b92.l;
            if (c92Var4 == null) {
                a(52);
            }
            return c92Var4;
        }
        c92 c92Var5 = b92.e;
        if (c92Var5 == null) {
            a(53);
        }
        return c92Var5;
    }

    public static ro8 l(xt1 xt1Var) {
        if (xt1Var == null) {
            a(0);
        }
        if (xt1Var instanceof qw0) {
            return ((qw0) xt1Var).R();
        }
        return null;
    }

    public static p54 m(xt1 xt1Var) {
        if (xt1Var == null) {
            a(2);
        }
        o54 o54VarO = o(xt1Var);
        return o54VarO != null ? o54VarO.j() : p(xt1Var);
    }

    public static o54 n(xt1 xt1Var) {
        if (xt1Var == null) {
            a(3);
        }
        o54 o54VarO = o(xt1Var);
        if (o54VarO == null) {
            o54VarO = p(xt1Var).l();
        }
        if (o54VarO == null) {
            a(4);
        }
        return o54VarO;
    }

    public static o54 o(xt1 xt1Var) {
        if (xt1Var == null) {
            a(5);
        }
        if ((xt1Var instanceof qq6) || id3.m(xt1Var)) {
            return o54.c;
        }
        if (xt1Var instanceof pv7) {
            return ((pv7) xt1Var).d();
        }
        if (xt1Var instanceof dv7) {
            return ((dv7) xt1Var).d();
        }
        return null;
    }

    public static p54 p(xt1 xt1Var) {
        if (xt1Var == null) {
            a(6);
        }
        p54 p54VarC = m(xt1Var.b()).c(xt1Var.getName());
        if (p54VarC == null) {
            a(7);
        }
        return p54VarC;
    }

    public static xt1 q(xt1 xt1Var, Class cls) {
        if (cls == null) {
            a(18);
        }
        return r(xt1Var, cls, true);
    }

    public static xt1 r(xt1 xt1Var, Class cls, boolean z) {
        if (cls == null) {
            a(19);
        }
        if (xt1Var == null) {
            return null;
        }
        if (z) {
            xt1Var = xt1Var.b();
        }
        while (xt1Var != null) {
            if (cls.isInstance(xt1Var)) {
                return xt1Var;
            }
            xt1Var = xt1Var.b();
        }
        return null;
    }

    public static qw0 s(qw0 qw0Var) {
        if (qw0Var == null) {
            a(44);
        }
        Iterator it = qw0Var.m().k().iterator();
        while (it.hasNext()) {
            qw0 qw0VarE = e((eh5) it.next());
            if (qw0VarE.getKind() != ClassKind.INTERFACE) {
                return qw0VarE;
            }
        }
        return null;
    }

    public static boolean t(xt1 xt1Var) {
        return D(xt1Var, ClassKind.ANNOTATION_CLASS);
    }

    public static boolean u(xt1 xt1Var) {
        if (xt1Var == null) {
            a(34);
        }
        return v(xt1Var) && xt1Var.getName().equals(su9.b);
    }

    public static boolean v(xt1 xt1Var) {
        return D(xt1Var, ClassKind.CLASS);
    }

    public static boolean w(xt1 xt1Var) {
        return v(xt1Var) || A(xt1Var);
    }

    public static boolean x(xt1 xt1Var) {
        return D(xt1Var, ClassKind.OBJECT) && ((qw0) xt1Var).h0();
    }

    public static boolean y(xt1 xt1Var) {
        return (xt1Var instanceof eu1) && ((eu1) xt1Var).getVisibility() == b92.f;
    }

    public static boolean z(qw0 qw0Var, qw0 qw0Var2) {
        if (qw0Var == null) {
            a(26);
        }
        if (qw0Var2 == null) {
            a(27);
        }
        Iterator it = qw0Var.m().k().iterator();
        while (it.hasNext()) {
            if (F((eh5) it.next(), qw0Var2.a())) {
                return true;
            }
        }
        return false;
    }
}
