package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import defpackage.bm9;
import defpackage.by6;
import defpackage.c92;
import defpackage.dlb;
import defpackage.eh5;
import defpackage.md;
import defpackage.r65;
import defpackage.ro8;
import defpackage.s82;
import defpackage.xt1;
import defpackage.yt9;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.util.OperatorChecks;

public class JavaMethodDescriptor extends bm9 implements r65 {
    public static final kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a H = new a();
    public static final kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a I = new b();
    public ParameterNamesStatus F;
    public final boolean G;

    public enum ParameterNamesStatus {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);

        public final boolean isStable;
        public final boolean isSynthesized;

        ParameterNamesStatus(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }

        public static void a(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus", "get"));
        }

        public static ParameterNamesStatus get(boolean z, boolean z2) {
            ParameterNamesStatus parameterNamesStatus;
            if (z) {
                parameterNamesStatus = z2 ? STABLE_SYNTHESIZED : STABLE_DECLARED;
            } else {
                parameterNamesStatus = z2 ? NON_STABLE_SYNTHESIZED : NON_STABLE_DECLARED;
            }
            if (parameterNamesStatus == null) {
                a(0);
            }
            return parameterNamesStatus;
        }
    }

    public static class a implements kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a {
    }

    public static class b implements kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaMethodDescriptor(xt1 xt1Var, g gVar, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var, boolean z) {
        super(xt1Var, gVar, mdVar, by6Var, kind, yt9Var);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (by6Var == null) {
            Q(2);
        }
        if (kind == null) {
            Q(3);
        }
        if (yt9Var == null) {
            Q(4);
        }
        this.F = null;
        this.G = z;
    }

    private static void Q(int i) {
        String str = (i == 13 || i == 18 || i == 21) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 18 || i == 21) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 16:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 15:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 17:
                objArr[0] = "source";
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "contextReceiverParameters";
                break;
            case 10:
                objArr[0] = "typeParameters";
                break;
            case 11:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 14:
                objArr[0] = "newOwner";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 13) {
            objArr[1] = "initialize";
        } else if (i == 18) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 21:
                break;
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 13 && i != 18 && i != 21) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static JavaMethodDescriptor k1(xt1 xt1Var, md mdVar, by6 by6Var, yt9 yt9Var, boolean z) {
        if (xt1Var == null) {
            Q(5);
        }
        if (mdVar == null) {
            Q(6);
        }
        if (by6Var == null) {
            Q(7);
        }
        if (yt9Var == null) {
            Q(8);
        }
        return new JavaMethodDescriptor(xt1Var, null, mdVar, by6Var, CallableMemberDescriptor.Kind.DECLARATION, yt9Var, z);
    }

    @Override
    public boolean L0() {
        return this.F.isStable;
    }

    @Override
    public bm9 j1(ro8 ro8Var, ro8 ro8Var2, List list, List list2, List list3, eh5 eh5Var, Modality modality, c92 c92Var, Map map) {
        if (list == null) {
            Q(9);
        }
        if (list2 == null) {
            Q(10);
        }
        if (list3 == null) {
            Q(11);
        }
        if (c92Var == null) {
            Q(12);
        }
        bm9 bm9VarJ1 = super.j1(ro8Var, ro8Var2, list, list2, list3, eh5Var, modality, c92Var, map);
        a1(OperatorChecks.a.a(bm9VarJ1).a());
        if (bm9VarJ1 == null) {
            Q(13);
        }
        return bm9VarJ1;
    }

    @Override
    public boolean k0() {
        return this.F.isSynthesized;
    }

    @Override
    public JavaMethodDescriptor G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(14);
        }
        if (kind == null) {
            Q(15);
        }
        if (mdVar == null) {
            Q(16);
        }
        if (yt9Var == null) {
            Q(17);
        }
        g gVar = (g) eVar;
        if (by6Var == null) {
            by6Var = getName();
        }
        JavaMethodDescriptor javaMethodDescriptor = new JavaMethodDescriptor(xt1Var, gVar, mdVar, by6Var, kind, yt9Var, this.G);
        javaMethodDescriptor.n1(L0(), k0());
        return javaMethodDescriptor;
    }

    @Override
    public JavaMethodDescriptor I(eh5 eh5Var, List list, eh5 eh5Var2, Pair pair) {
        if (list == null) {
            Q(19);
        }
        if (eh5Var2 == null) {
            Q(20);
        }
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) l().m(dlb.a(list, f(), this)).j(eh5Var2).a(eh5Var == null ? null : s82.i(this, eh5Var, md.u1.b())).l().f().build();
        if (pair != null) {
            javaMethodDescriptor.P0((kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a) pair.getFirst(), pair.getSecond());
        }
        if (javaMethodDescriptor == null) {
            Q(21);
        }
        return javaMethodDescriptor;
    }

    public void n1(boolean z, boolean z2) {
        this.F = ParameterNamesStatus.get(z, z2);
    }
}
