package kotlin.reflect.jvm.internal.impl.resolve;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.b92;
import defpackage.bn6;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.cq9;
import defpackage.e74;
import defpackage.eh5;
import defpackage.eu1;
import defpackage.fh5;
import defpackage.hcb;
import defpackage.i81;
import defpackage.ku7;
import defpackage.ky3;
import defpackage.lu7;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.s74;
import defpackage.sbb;
import defpackage.si8;
import defpackage.ti8;
import defpackage.ufc;
import defpackage.ui8;
import defpackage.xt1;
import defpackage.y82;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Queue;
import java.util.ServiceLoader;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;

public class OverridingUtil {
    public static final List e = i81.b1(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));
    public static final OverridingUtil f;
    public static final kotlin.reflect.jvm.internal.impl.types.checker.b.a g;
    public final kotlin.reflect.jvm.internal.impl.types.checker.c a;
    public final KotlinTypePreparator b;
    public final kotlin.reflect.jvm.internal.impl.types.checker.b.a c;
    public final s74 d;

    public static class OverrideCompatibilityInfo {
        public static final OverrideCompatibilityInfo c = new OverrideCompatibilityInfo(Result.OVERRIDABLE, "SUCCESS");
        public final Result a;
        public final String b;

        public enum Result {
            OVERRIDABLE,
            INCOMPATIBLE,
            CONFLICT
        }

        public OverrideCompatibilityInfo(Result result, String str) {
            if (result == null) {
                a(3);
            }
            if (str == null) {
                a(4);
            }
            this.a = result;
            this.b = str;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0031  */
        public static void a(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4) ? 3 : 2];
            if (i == 1 || i == 2) {
                objArr[0] = "debugMessage";
            } else if (i == 3) {
                objArr[0] = "success";
            } else if (i != 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
            } else {
                objArr[0] = "debugMessage";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
                    break;
                case 5:
                    objArr[1] = "getResult";
                    break;
                case 6:
                    objArr[1] = "getDebugMessage";
                    break;
                default:
                    objArr[1] = "success";
                    break;
            }
            if (i == 1) {
                objArr[2] = "incompatible";
            } else if (i == 2) {
                objArr[2] = "conflict";
            } else if (i == 3 || i == 4) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4) {
                throw new IllegalStateException(str2);
            }
            throw new IllegalArgumentException(str2);
        }

        public static OverrideCompatibilityInfo b(String str) {
            if (str == null) {
                a(2);
            }
            return new OverrideCompatibilityInfo(Result.CONFLICT, str);
        }

        public static OverrideCompatibilityInfo d(String str) {
            if (str == null) {
                a(1);
            }
            return new OverrideCompatibilityInfo(Result.INCOMPATIBLE, str);
        }

        public static OverrideCompatibilityInfo e() {
            OverrideCompatibilityInfo overrideCompatibilityInfo = c;
            if (overrideCompatibilityInfo == null) {
                a(0);
            }
            return overrideCompatibilityInfo;
        }

        public Result c() {
            Result result = this.a;
            if (result == null) {
                a(5);
            }
            return result;
        }
    }

    public static class a implements kotlin.reflect.jvm.internal.impl.types.checker.b.a {
        public static void b(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = CmcdData.OBJECT_TYPE_AUDIO_ONLY;
            } else {
                objArr[0] = "b";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean a(sbb sbbVar, sbb sbbVar2) {
            if (sbbVar == null) {
                b(0);
            }
            if (sbbVar2 == null) {
                b(1);
            }
            return sbbVar.equals(sbbVar2);
        }
    }

    public static class b implements s74 {
        @Override
        public Pair invoke(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            return new Pair(aVar, aVar2);
        }
    }

    public static class c implements e74 {
        public final xt1 b;

        public c(xt1 xt1Var) {
            this.b = xt1Var;
        }

        @Override
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(callableMemberDescriptor.b() == this.b);
        }
    }

    public static class d implements e74 {
        @Override
        public CallableMemberDescriptor invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }
    }

    public static class e implements e74 {
        public final qw0 b;

        public e(qw0 qw0Var) {
            this.b = qw0Var;
        }

        @Override
        public Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            boolean z = false;
            if (!b92.g(callableMemberDescriptor.getVisibility()) && b92.h(callableMemberDescriptor, this.b, false)) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public static class f implements e74 {
        @Override
        public kotlin.reflect.jvm.internal.impl.descriptors.a invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor;
        }
    }

    public static class g implements e74 {
        public final ku7 b;
        public final CallableMemberDescriptor c;

        public g(ku7 ku7Var, CallableMemberDescriptor callableMemberDescriptor) {
            this.b = ku7Var;
            this.c = callableMemberDescriptor;
        }

        @Override
        public zfb invoke(CallableMemberDescriptor callableMemberDescriptor) {
            this.b.b(this.c, callableMemberDescriptor);
            return zfb.a;
        }
    }

    public static class h {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[Modality.values().length];
            c = iArr;
            try {
                iArr[Modality.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[Modality.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[Modality.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[Modality.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OverrideCompatibilityInfo.Result.values().length];
            b = iArr2;
            try {
                iArr2[OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[OverrideCompatibilityInfo.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.Result.values().length];
            a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ExternalOverridabilityCondition.Result.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        a aVar = new a();
        g = aVar;
        f = new OverridingUtil(aVar, kotlin.reflect.jvm.internal.impl.types.checker.c.a.a, KotlinTypePreparator.a.a, null);
    }

    public OverridingUtil(kotlin.reflect.jvm.internal.impl.types.checker.b.a aVar, kotlin.reflect.jvm.internal.impl.types.checker.c cVar, KotlinTypePreparator kotlinTypePreparator, s74 s74Var) {
        if (aVar == null) {
            a(5);
        }
        if (cVar == null) {
            a(6);
        }
        if (kotlinTypePreparator == null) {
            a(7);
        }
        this.c = aVar;
        this.a = cVar;
        this.b = kotlinTypePreparator;
        this.d = s74Var;
    }

    public static boolean A(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.f fVar2) {
        if (fVar == null || fVar2 == null) {
            return true;
        }
        return H(fVar, fVar2);
    }

    public static boolean B(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if (aVar == null) {
            a(67);
        }
        if (aVar2 == null) {
            a(68);
        }
        eh5 returnType = aVar.getReturnType();
        eh5 returnType2 = aVar2.getReturnType();
        if (!H(aVar, aVar2)) {
            return false;
        }
        TypeCheckerState typeCheckerStateL = f.l(aVar.getTypeParameters(), aVar2.getTypeParameters());
        if (aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.e) {
            return G(aVar, returnType, aVar2, returnType2, typeCheckerStateL);
        }
        if (!(aVar instanceof ti8)) {
            throw new IllegalArgumentException("Unexpected callable: " + aVar.getClass());
        }
        ti8 ti8Var = (ti8) aVar;
        ti8 ti8Var2 = (ti8) aVar2;
        if (!A(ti8Var.getSetter(), ti8Var2.getSetter())) {
            return false;
        }
        if (ti8Var.y() && ti8Var2.y()) {
            return AbstractTypeChecker.a.k(typeCheckerStateL, returnType.L0(), returnType2.L0());
        }
        return (ti8Var.y() || !ti8Var2.y()) && G(aVar, returnType, aVar2, returnType2, typeCheckerStateL);
    }

    public static boolean C(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection collection) {
        if (aVar == null) {
            a(71);
        }
        if (collection == null) {
            a(72);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!B(aVar, (kotlin.reflect.jvm.internal.impl.descriptors.a) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean G(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, eh5 eh5Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, eh5 eh5Var2, TypeCheckerState typeCheckerState) {
        if (aVar == null) {
            a(73);
        }
        if (eh5Var == null) {
            a(74);
        }
        if (aVar2 == null) {
            a(75);
        }
        if (eh5Var2 == null) {
            a(76);
        }
        if (typeCheckerState == null) {
            a(77);
        }
        return AbstractTypeChecker.a.r(typeCheckerState, eh5Var.L0(), eh5Var2.L0());
    }

    public static boolean H(eu1 eu1Var, eu1 eu1Var2) {
        if (eu1Var == null) {
            a(69);
        }
        if (eu1Var2 == null) {
            a(70);
        }
        Integer numD = b92.d(eu1Var.getVisibility(), eu1Var2.getVisibility());
        return numD == null || numD.intValue() >= 0;
    }

    public static boolean I(bn6 bn6Var, bn6 bn6Var2, boolean z) {
        if (bn6Var == null) {
            a(57);
        }
        if (bn6Var2 == null) {
            a(58);
        }
        return !b92.g(bn6Var2.getVisibility()) && b92.h(bn6Var2, bn6Var, z);
    }

    public static boolean J(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z, boolean z2) {
        if (aVar == null) {
            a(13);
        }
        if (aVar2 == null) {
            a(14);
        }
        if (!aVar.equals(aVar2) && DescriptorEquivalenceForOverrides.a.f(aVar.a(), aVar2.a(), z, z2)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = aVar2.a();
        Iterator it = y82.d(aVar).iterator();
        while (it.hasNext()) {
            if (DescriptorEquivalenceForOverrides.a.f(aVarA, (kotlin.reflect.jvm.internal.impl.descriptors.a) it.next(), z, z2)) {
                return true;
            }
        }
        return false;
    }

    public static void K(CallableMemberDescriptor callableMemberDescriptor, e74 e74Var) {
        c92 c92Var;
        if (callableMemberDescriptor == null) {
            a(107);
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : callableMemberDescriptor.e()) {
            if (callableMemberDescriptor2.getVisibility() == b92.g) {
                K(callableMemberDescriptor2, e74Var);
            }
        }
        if (callableMemberDescriptor.getVisibility() != b92.g) {
            return;
        }
        c92 c92VarH = h(callableMemberDescriptor);
        if (c92VarH == null) {
            if (e74Var != null) {
                e74Var.invoke(callableMemberDescriptor);
            }
            c92Var = b92.e;
        } else {
            c92Var = c92VarH;
        }
        if (callableMemberDescriptor instanceof ui8) {
            ((ui8) callableMemberDescriptor).X0(c92Var);
            Iterator it = ((ti8) callableMemberDescriptor).t().iterator();
            while (it.hasNext()) {
                K((kotlin.reflect.jvm.internal.impl.descriptors.f) it.next(), c92VarH == null ? null : e74Var);
            }
            return;
        }
        if (callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.impl.a) {
            ((kotlin.reflect.jvm.internal.impl.descriptors.impl.a) callableMemberDescriptor).e1(c92Var);
            return;
        }
        si8 si8Var = (si8) callableMemberDescriptor;
        si8Var.I0(c92Var);
        if (c92Var != si8Var.e0().getVisibility()) {
            si8Var.G0(false);
        }
    }

    public static Object L(Collection collection, e74 e74Var) {
        Object next;
        if (collection == null) {
            a(78);
        }
        if (e74Var == null) {
            a(79);
        }
        if (collection.size() == 1) {
            Object objN0 = i81.n0(collection);
            if (objN0 == null) {
                a(80);
            }
            return objN0;
        }
        ArrayList arrayList = new ArrayList(2);
        List listD0 = i81.D0(collection, e74Var);
        Object objN1 = i81.n0(collection);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) e74Var.invoke(objN1);
        for (Object obj : collection) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) e74Var.invoke(obj);
            if (C(aVar2, listD0)) {
                arrayList.add(obj);
            }
            if (B(aVar2, aVar) && !B(aVar, aVar2)) {
                objN1 = obj;
            }
        }
        if (arrayList.isEmpty()) {
            if (objN1 == null) {
                a(81);
            }
            return objN1;
        }
        if (arrayList.size() == 1) {
            Object objN2 = i81.n0(arrayList);
            if (objN2 == null) {
                a(82);
            }
            return objN2;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (ky3.b(((kotlin.reflect.jvm.internal.impl.descriptors.a) e74Var.invoke(next)).getReturnType()));
        if (next != null) {
            return next;
        }
        Object objN3 = i81.n0(arrayList);
        if (objN3 == null) {
            a(84);
        }
        return objN3;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[FALL_THROUGH] */
    public static void a(int i) {
        String str;
        int i2;
        if (i != 11 && i != 12 && i != 16 && i != 21 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 11 && i != 12 && i != 16 && i != 21 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    i2 = 2;
                    break;
                default:
                    switch (i) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            i2 = 2;
                            break;
                        default:
                            switch (i) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    i2 = 2;
                                    break;
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            i2 = 2;
                                            break;
                                        default:
                                            i2 = 3;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 7:
                objArr[0] = "kotlinTypePreparator";
                break;
            case 2:
                objArr[0] = "customSubtype";
                break;
            case 3:
            case 6:
            default:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 4:
                objArr[0] = "equalityAxioms";
                break;
            case 5:
                objArr[0] = "axioms";
                break;
            case 8:
            case 9:
                objArr[0] = "candidateSet";
                break;
            case 10:
                objArr[0] = "transformFirst";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                break;
            case 13:
                objArr[0] = "f";
                break;
            case 14:
                objArr[0] = GslbInterceptor.HEADER_KEY_GSLB;
                break;
            case 15:
            case 17:
                objArr[0] = "descriptor";
                break;
            case 18:
                objArr[0] = "result";
                break;
            case 19:
            case 22:
            case 30:
            case 40:
                objArr[0] = "superDescriptor";
                break;
            case 20:
            case 23:
            case 31:
            case 41:
                objArr[0] = "subDescriptor";
                break;
            case 42:
                objArr[0] = "firstParameters";
                break;
            case 43:
                objArr[0] = "secondParameters";
                break;
            case 46:
                objArr[0] = "typeInSuper";
                break;
            case 47:
                objArr[0] = "typeInSub";
                break;
            case 48:
            case 51:
            case 77:
                objArr[0] = "typeCheckerState";
                break;
            case 49:
                objArr[0] = "superTypeParameter";
                break;
            case 50:
                objArr[0] = "subTypeParameter";
                break;
            case 52:
                objArr[0] = "name";
                break;
            case 53:
                objArr[0] = "membersFromSupertypes";
                break;
            case 54:
                objArr[0] = "membersFromCurrent";
                break;
            case 55:
            case 61:
            case 64:
            case 86:
            case 89:
            case 96:
                objArr[0] = "current";
                break;
            case 56:
            case 62:
            case 66:
            case 87:
            case 106:
                objArr[0] = "strategy";
                break;
            case 57:
                objArr[0] = "overriding";
                break;
            case 58:
                objArr[0] = "fromSuper";
                break;
            case 59:
                objArr[0] = "fromCurrent";
                break;
            case 60:
                objArr[0] = "descriptorsFromSuper";
                break;
            case 63:
            case 65:
                objArr[0] = "notOverridden";
                break;
            case 67:
            case 69:
            case 73:
                objArr[0] = CmcdData.OBJECT_TYPE_AUDIO_ONLY;
                break;
            case 68:
            case 70:
            case 75:
                objArr[0] = "b";
                break;
            case 71:
                objArr[0] = "candidate";
                break;
            case 72:
            case 88:
            case 93:
            case 109:
                objArr[0] = "descriptors";
                break;
            case 74:
                objArr[0] = "aReturnType";
                break;
            case 76:
                objArr[0] = "bReturnType";
                break;
            case 78:
            case 85:
                objArr[0] = "overridables";
                break;
            case 79:
            case 101:
                objArr[0] = "descriptorByHandle";
                break;
            case 94:
                objArr[0] = "classModality";
                break;
            case 97:
                objArr[0] = "toFilter";
                break;
            case 99:
            case 104:
                objArr[0] = "overrider";
                break;
            case 100:
            case 105:
                objArr[0] = "extractFrom";
                break;
            case 102:
                objArr[0] = "onConflict";
                break;
            case 107:
            case 108:
                objArr[0] = "memberDescriptor";
                break;
        }
        if (i == 11 || i == 12) {
            objArr[1] = "filterOverrides";
        } else if (i == 16) {
            objArr[1] = "getOverriddenDeclarations";
        } else if (i == 21) {
            objArr[1] = "isOverridableBy";
        } else if (i == 95) {
            objArr[1] = "getMinimalModality";
        } else if (i == 98) {
            objArr[1] = "filterVisibleFakeOverrides";
        } else if (i == 103) {
            objArr[1] = "extractMembersOverridableInBothWays";
        } else if (i != 44 && i != 45) {
            switch (i) {
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    objArr[1] = "isOverridableBy";
                    break;
                default:
                    switch (i) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            objArr[1] = "isOverridableByWithoutExternalConditions";
                            break;
                        default:
                            switch (i) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    objArr[1] = "selectMostSpecificMember";
                                    break;
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            objArr[1] = "determineModalityForFakeOverride";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "createTypeCheckerState";
        }
        switch (i) {
            case 1:
            case 2:
                objArr[2] = "createWithTypePreparatorAndCustomSubtype";
                break;
            case 3:
            case 4:
                objArr[2] = "create";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = MethodDecl.initName;
                break;
            case 8:
                objArr[2] = "filterOutOverridden";
                break;
            case 9:
            case 10:
                objArr[2] = "filterOverrides";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 44:
            case 45:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 90:
            case 91:
            case 92:
            case 95:
            case 98:
            case 103:
                break;
            case 13:
            case 14:
                objArr[2] = "overrides";
                break;
            case 15:
                objArr[2] = "getOverriddenDeclarations";
                break;
            case 17:
            case 18:
                objArr[2] = "collectOverriddenDeclarations";
                break;
            case 19:
            case 20:
            case 22:
            case 23:
                objArr[2] = "isOverridableBy";
                break;
            case 30:
            case 31:
                objArr[2] = "isOverridableByWithoutExternalConditions";
                break;
            case 40:
            case 41:
                objArr[2] = "getBasicOverridabilityProblem";
                break;
            case 42:
            case 43:
                objArr[2] = "createTypeCheckerState";
                break;
            case 46:
            case 47:
            case 48:
                objArr[2] = "areTypesEquivalent";
                break;
            case 49:
            case 50:
            case 51:
                objArr[2] = "areTypeParametersEquivalent";
                break;
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
                objArr[2] = "generateOverridesInFunctionGroup";
                break;
            case 57:
            case 58:
                objArr[2] = "isVisibleForOverride";
                break;
            case 59:
            case 60:
            case 61:
            case 62:
                objArr[2] = "extractAndBindOverridesForMember";
                break;
            case 63:
                objArr[2] = "allHasSameContainingDeclaration";
                break;
            case 64:
            case 65:
            case 66:
                objArr[2] = "createAndBindFakeOverrides";
                break;
            case 67:
            case 68:
                objArr[2] = "isMoreSpecific";
                break;
            case 69:
            case 70:
                objArr[2] = "isVisibilityMoreSpecific";
                break;
            case 71:
            case 72:
                objArr[2] = "isMoreSpecificThenAllOf";
                break;
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
                objArr[2] = "isReturnTypeMoreSpecific";
                break;
            case 78:
            case 79:
                objArr[2] = "selectMostSpecificMember";
                break;
            case 85:
            case 86:
            case 87:
                objArr[2] = "createAndBindFakeOverride";
                break;
            case 88:
            case 89:
                objArr[2] = "determineModalityForFakeOverride";
                break;
            case 93:
            case 94:
                objArr[2] = "getMinimalModality";
                break;
            case 96:
            case 97:
                objArr[2] = "filterVisibleFakeOverrides";
                break;
            case 99:
            case 100:
            case 101:
            case 102:
            case 104:
            case 105:
            case 106:
                objArr[2] = "extractMembersOverridableInBothWays";
                break;
            case 107:
                objArr[2] = "resolveUnknownVisibilityForMember";
                break;
            case 108:
                objArr[2] = "computeVisibilityToInherit";
                break;
            case 109:
                objArr[2] = "findMaxVisibility";
                break;
            default:
                objArr[2] = "createWithTypeRefiner";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 11 && i != 12 && i != 16 && i != 21 && i != 95 && i != 98 && i != 103 && i != 44 && i != 45) {
            switch (i) {
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
                default:
                    switch (i) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                            break;
                        default:
                            switch (i) {
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                    break;
                                default:
                                    switch (i) {
                                        case 90:
                                        case 91:
                                        case 92:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(Collection collection) {
        if (collection == null) {
            a(63);
        }
        if (collection.size() < 2) {
            return true;
        }
        return i81.a0(collection, new c(((CallableMemberDescriptor) collection.iterator().next()).b()));
    }

    public static boolean c(hcb hcbVar, hcb hcbVar2, TypeCheckerState typeCheckerState) {
        if (hcbVar == null) {
            a(49);
        }
        if (hcbVar2 == null) {
            a(50);
        }
        if (typeCheckerState == null) {
            a(51);
        }
        List<eh5> upperBounds = hcbVar.getUpperBounds();
        ArrayList arrayList = new ArrayList(hcbVar2.getUpperBounds());
        if (upperBounds.size() != arrayList.size()) {
            return false;
        }
        for (eh5 eh5Var : upperBounds) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (d(eh5Var, (eh5) listIterator.next(), typeCheckerState)) {
                    listIterator.remove();
                }
            }
            return false;
        }
        return true;
    }

    public static boolean d(eh5 eh5Var, eh5 eh5Var2, TypeCheckerState typeCheckerState) {
        if (eh5Var == null) {
            a(46);
        }
        if (eh5Var2 == null) {
            a(47);
        }
        if (typeCheckerState == null) {
            a(48);
        }
        if (fh5.a(eh5Var) && fh5.a(eh5Var2)) {
            return true;
        }
        return AbstractTypeChecker.a.k(typeCheckerState, eh5Var.L0(), eh5Var2.L0());
    }

    public static OverrideCompatibilityInfo e(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        if ((aVar.b0() == null) != (aVar2.b0() == null)) {
            return OverrideCompatibilityInfo.d("Receiver presence mismatch");
        }
        if (aVar.f().size() != aVar2.f().size()) {
            return OverrideCompatibilityInfo.d("Value parameter number mismatch");
        }
        return null;
    }

    public static void f(CallableMemberDescriptor callableMemberDescriptor, Set set) {
        if (callableMemberDescriptor == null) {
            a(17);
        }
        if (set == null) {
            a(18);
        }
        if (callableMemberDescriptor.getKind().isReal()) {
            set.add(callableMemberDescriptor);
            return;
        }
        if (callableMemberDescriptor.e().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) " + callableMemberDescriptor);
        }
        Iterator it = callableMemberDescriptor.e().iterator();
        while (it.hasNext()) {
            f((CallableMemberDescriptor) it.next(), set);
        }
    }

    public static List g(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        ro8 ro8VarB0 = aVar.b0();
        ArrayList arrayList = new ArrayList();
        if (ro8VarB0 != null) {
            arrayList.add(ro8VarB0.getType());
        }
        Iterator it = aVar.f().iterator();
        while (it.hasNext()) {
            arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.h) it.next()).getType());
        }
        return arrayList;
    }

    public static c92 h(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(108);
        }
        Collection<CallableMemberDescriptor> collectionE = callableMemberDescriptor.e();
        c92 c92VarU = u(collectionE);
        if (c92VarU == null) {
            return null;
        }
        if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return c92VarU.f();
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : collectionE) {
            if (callableMemberDescriptor2.j() != Modality.ABSTRACT && !callableMemberDescriptor2.getVisibility().equals(c92VarU)) {
                return null;
            }
        }
        return c92VarU;
    }

    public static OverridingUtil i(kotlin.reflect.jvm.internal.impl.types.checker.c cVar, kotlin.reflect.jvm.internal.impl.types.checker.b.a aVar) {
        if (cVar == null) {
            a(3);
        }
        if (aVar == null) {
            a(4);
        }
        return new OverridingUtil(aVar, cVar, KotlinTypePreparator.a.a, null);
    }

    public static void j(Collection collection, qw0 qw0Var, ku7 ku7Var) {
        if (collection == null) {
            a(85);
        }
        if (qw0Var == null) {
            a(86);
        }
        if (ku7Var == null) {
            a(87);
        }
        Collection collectionT = t(qw0Var, collection);
        boolean zIsEmpty = collectionT.isEmpty();
        if (!zIsEmpty) {
            collection = collectionT;
        }
        CallableMemberDescriptor callableMemberDescriptorJ = ((CallableMemberDescriptor) L(collection, new d())).J(qw0Var, n(collection, qw0Var), zIsEmpty ? b92.h : b92.g, CallableMemberDescriptor.Kind.FAKE_OVERRIDE, false);
        ku7Var.d(callableMemberDescriptorJ, collection);
        ku7Var.a(callableMemberDescriptorJ);
    }

    public static void k(qw0 qw0Var, Collection collection, ku7 ku7Var) {
        if (qw0Var == null) {
            a(64);
        }
        if (collection == null) {
            a(65);
        }
        if (ku7Var == null) {
            a(66);
        }
        if (b(collection)) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                j(Collections.singleton((CallableMemberDescriptor) it.next()), qw0Var, ku7Var);
            }
        } else {
            LinkedList linkedList = new LinkedList(collection);
            while (!linkedList.isEmpty()) {
                j(q(ufc.a(linkedList), linkedList, ku7Var), qw0Var, ku7Var);
            }
        }
    }

    public static OverridingUtil m(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        if (cVar == null) {
            a(0);
        }
        return new OverridingUtil(g, cVar, KotlinTypePreparator.a.a, null);
    }

    public static Modality n(Collection collection, qw0 qw0Var) {
        if (collection == null) {
            a(88);
        }
        if (qw0Var == null) {
            a(89);
        }
        Iterator it = collection.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (it.hasNext()) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) it.next();
            int i = h.c[callableMemberDescriptor.j().ordinal()];
            if (i == 1) {
                Modality modality = Modality.FINAL;
                if (modality == null) {
                    a(90);
                }
                return modality;
            }
            if (i == 2) {
                throw new IllegalStateException("Member cannot have SEALED modality: " + callableMemberDescriptor);
            }
            if (i == 3) {
                z2 = true;
            } else if (i == 4) {
                z3 = true;
            }
        }
        if (qw0Var.m0() && qw0Var.j() != Modality.ABSTRACT && qw0Var.j() != Modality.SEALED) {
            z = true;
        }
        if (z2 && !z3) {
            Modality modality2 = Modality.OPEN;
            if (modality2 == null) {
                a(91);
            }
            return modality2;
        }
        if (!z2 && z3) {
            Modality modalityJ = z ? qw0Var.j() : Modality.ABSTRACT;
            if (modalityJ == null) {
                a(92);
            }
            return modalityJ;
        }
        HashSet hashSet = new HashSet();
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            hashSet.addAll(z((CallableMemberDescriptor) it2.next()));
        }
        return y(r(hashSet), z, qw0Var.j());
    }

    public static Collection p(Object obj, Collection collection, e74 e74Var, e74 e74Var2) {
        if (obj == null) {
            a(99);
        }
        if (collection == null) {
            a(100);
        }
        if (e74Var == null) {
            a(101);
        }
        if (e74Var2 == null) {
            a(102);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) e74Var.invoke(obj);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) e74Var.invoke(next);
            if (obj == next) {
                it.remove();
            } else {
                OverrideCompatibilityInfo.Result resultX = x(aVar, aVar2);
                if (resultX == OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                    arrayList.add(next);
                    it.remove();
                } else if (resultX == OverrideCompatibilityInfo.Result.CONFLICT) {
                    e74Var2.invoke(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    public static Collection q(CallableMemberDescriptor callableMemberDescriptor, Queue queue, ku7 ku7Var) {
        if (callableMemberDescriptor == null) {
            a(104);
        }
        if (queue == null) {
            a(105);
        }
        if (ku7Var == null) {
            a(106);
        }
        return p(callableMemberDescriptor, queue, new f(), new g(ku7Var, callableMemberDescriptor));
    }

    public static Set r(Set set) {
        if (set == null) {
            a(8);
        }
        return s(set, !set.isEmpty() && DescriptorUtilsKt.u(DescriptorUtilsKt.p((xt1) set.iterator().next())), null, new b());
    }

    public static Set s(Set set, boolean z, c74 c74Var, s74 s74Var) {
        if (set == null) {
            a(9);
        }
        if (s74Var == null) {
            a(10);
        }
        if (set.size() <= 1) {
            return set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : set) {
            if (c74Var != null) {
                c74Var.invoke();
            }
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    linkedHashSet.add(obj);
                    break;
                }
                Pair pair = (Pair) s74Var.invoke(obj, it.next());
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) pair.component1();
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) pair.component2();
                if (!J(aVar, aVar2, z, true)) {
                    if (J(aVar2, aVar, z, true)) {
                        break;
                    }
                } else {
                    it.remove();
                }
            }
        }
        return linkedHashSet;
    }

    public static Collection t(qw0 qw0Var, Collection collection) {
        if (qw0Var == null) {
            a(96);
        }
        if (collection == null) {
            a(97);
        }
        List listK0 = i81.k0(collection, new e(qw0Var));
        if (listK0 == null) {
            a(98);
        }
        return listK0;
    }

    public static c92 u(Collection collection) {
        c92 c92Var;
        if (collection == null) {
            a(109);
        }
        if (collection.isEmpty()) {
            return b92.l;
        }
        Iterator it = collection.iterator();
        loop0: while (true) {
            c92Var = null;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                c92 visibility = ((CallableMemberDescriptor) it.next()).getVisibility();
                if (c92Var != null) {
                    Integer numD = b92.d(visibility, c92Var);
                    if (numD == null) {
                        break;
                    }
                    if (numD.intValue() > 0) {
                    }
                }
                c92Var = visibility;
            }
        }
        if (c92Var == null) {
            return null;
        }
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            Integer numD2 = b92.d(c92Var, ((CallableMemberDescriptor) it2.next()).getVisibility());
            if (numD2 == null || numD2.intValue() < 0) {
                return null;
            }
        }
        return c92Var;
    }

    public static OverrideCompatibilityInfo w(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        boolean z;
        if (aVar == null) {
            a(40);
        }
        if (aVar2 == null) {
            a(41);
        }
        boolean z2 = aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.e;
        if ((z2 && !(aVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.e)) || (((z = aVar instanceof ti8)) && !(aVar2 instanceof ti8))) {
            return OverrideCompatibilityInfo.d("Member kind mismatch");
        }
        if (!z2 && !z) {
            throw new IllegalArgumentException("This type of CallableDescriptor cannot be checked for overridability: " + aVar);
        }
        if (!aVar.getName().equals(aVar2.getName())) {
            return OverrideCompatibilityInfo.d("Name mismatch");
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = e(aVar, aVar2);
        if (overrideCompatibilityInfoE != null) {
            return overrideCompatibilityInfoE;
        }
        return null;
    }

    public static OverrideCompatibilityInfo.Result x(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil overridingUtil = f;
        OverrideCompatibilityInfo.Result resultC = overridingUtil.D(aVar2, aVar, null).c();
        OverrideCompatibilityInfo.Result resultC2 = overridingUtil.D(aVar, aVar2, null).c();
        OverrideCompatibilityInfo.Result result = OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (resultC == result && resultC2 == result) {
            return result;
        }
        OverrideCompatibilityInfo.Result result2 = OverrideCompatibilityInfo.Result.CONFLICT;
        return (resultC == result2 || resultC2 == result2) ? result2 : OverrideCompatibilityInfo.Result.INCOMPATIBLE;
    }

    public static Modality y(Collection collection, boolean z, Modality modality) {
        if (collection == null) {
            a(93);
        }
        if (modality == null) {
            a(94);
        }
        Modality modality2 = Modality.ABSTRACT;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) it.next();
            Modality modalityJ = (z && callableMemberDescriptor.j() == Modality.ABSTRACT) ? modality : callableMemberDescriptor.j();
            if (modalityJ.compareTo(modality2) < 0) {
                modality2 = modalityJ;
            }
        }
        if (modality2 == null) {
            a(95);
        }
        return modality2;
    }

    public static Set z(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            a(15);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        f(callableMemberDescriptor, linkedHashSet);
        return linkedHashSet;
    }

    public OverrideCompatibilityInfo D(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, qw0 qw0Var) {
        if (aVar == null) {
            a(19);
        }
        if (aVar2 == null) {
            a(20);
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = E(aVar, aVar2, qw0Var, false);
        if (overrideCompatibilityInfoE == null) {
            a(21);
        }
        return overrideCompatibilityInfoE;
    }

    public OverrideCompatibilityInfo E(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, qw0 qw0Var, boolean z) {
        if (aVar == null) {
            a(22);
        }
        if (aVar2 == null) {
            a(23);
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoF = F(aVar, aVar2, z);
        boolean z2 = overrideCompatibilityInfoF.c() == OverrideCompatibilityInfo.Result.OVERRIDABLE;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : e) {
            if (externalOverridabilityCondition.b() != ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.b() != ExternalOverridabilityCondition.Contract.SUCCESS_ONLY)) {
                int i = h.a[externalOverridabilityCondition.a(aVar, aVar2, qw0Var).ordinal()];
                if (i == 1) {
                    z2 = true;
                } else {
                    if (i == 2) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoB = OverrideCompatibilityInfo.b("External condition failed");
                        if (overrideCompatibilityInfoB == null) {
                            a(24);
                        }
                        return overrideCompatibilityInfoB;
                    }
                    if (i == 3) {
                        OverrideCompatibilityInfo overrideCompatibilityInfoD = OverrideCompatibilityInfo.d("External condition");
                        if (overrideCompatibilityInfoD == null) {
                            a(25);
                        }
                        return overrideCompatibilityInfoD;
                    }
                }
            }
        }
        if (!z2) {
            return overrideCompatibilityInfoF;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : e) {
            if (externalOverridabilityCondition2.b() == ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY) {
                int i2 = h.a[externalOverridabilityCondition2.a(aVar, aVar2, qw0Var).ordinal()];
                if (i2 == 1) {
                    throw new IllegalStateException("Contract violation in " + externalOverridabilityCondition2.getClass().getName() + " condition. It's not supposed to end with success");
                }
                if (i2 == 2) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoB2 = OverrideCompatibilityInfo.b("External condition failed");
                    if (overrideCompatibilityInfoB2 == null) {
                        a(27);
                    }
                    return overrideCompatibilityInfoB2;
                }
                if (i2 == 3) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoD2 = OverrideCompatibilityInfo.d("External condition");
                    if (overrideCompatibilityInfoD2 == null) {
                        a(28);
                    }
                    return overrideCompatibilityInfoD2;
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = OverrideCompatibilityInfo.e();
        if (overrideCompatibilityInfoE == null) {
            a(29);
        }
        return overrideCompatibilityInfoE;
    }

    public OverrideCompatibilityInfo F(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z) {
        if (aVar == null) {
            a(30);
        }
        if (aVar2 == null) {
            a(31);
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoW = w(aVar, aVar2);
        if (overrideCompatibilityInfoW != null) {
            return overrideCompatibilityInfoW;
        }
        List listG = g(aVar);
        List listG2 = g(aVar2);
        List typeParameters = aVar.getTypeParameters();
        List typeParameters2 = aVar2.getTypeParameters();
        int i = 0;
        if (typeParameters.size() != typeParameters2.size()) {
            while (i < listG.size()) {
                if (!kotlin.reflect.jvm.internal.impl.types.checker.b.a.b((eh5) listG.get(i), (eh5) listG2.get(i))) {
                    OverrideCompatibilityInfo overrideCompatibilityInfoD = OverrideCompatibilityInfo.d("Type parameter number mismatch");
                    if (overrideCompatibilityInfoD == null) {
                        a(33);
                    }
                    return overrideCompatibilityInfoD;
                }
                i++;
            }
            OverrideCompatibilityInfo overrideCompatibilityInfoB = OverrideCompatibilityInfo.b("Type parameter number mismatch");
            if (overrideCompatibilityInfoB == null) {
                a(34);
            }
            return overrideCompatibilityInfoB;
        }
        TypeCheckerState typeCheckerStateL = l(typeParameters, typeParameters2);
        for (int i2 = 0; i2 < typeParameters.size(); i2++) {
            if (!c((hcb) typeParameters.get(i2), (hcb) typeParameters2.get(i2), typeCheckerStateL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoD2 = OverrideCompatibilityInfo.d("Type parameter bounds mismatch");
                if (overrideCompatibilityInfoD2 == null) {
                    a(35);
                }
                return overrideCompatibilityInfoD2;
            }
        }
        while (i < listG.size()) {
            if (!d((eh5) listG.get(i), (eh5) listG2.get(i), typeCheckerStateL)) {
                OverrideCompatibilityInfo overrideCompatibilityInfoD3 = OverrideCompatibilityInfo.d("Value parameter type mismatch");
                if (overrideCompatibilityInfoD3 == null) {
                    a(36);
                }
                return overrideCompatibilityInfoD3;
            }
            i++;
        }
        if ((aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.e) && (aVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.e) && ((kotlin.reflect.jvm.internal.impl.descriptors.e) aVar).isSuspend() != ((kotlin.reflect.jvm.internal.impl.descriptors.e) aVar2).isSuspend()) {
            OverrideCompatibilityInfo overrideCompatibilityInfoB2 = OverrideCompatibilityInfo.b("Incompatible suspendability");
            if (overrideCompatibilityInfoB2 == null) {
                a(37);
            }
            return overrideCompatibilityInfoB2;
        }
        if (z) {
            eh5 returnType = aVar.getReturnType();
            eh5 returnType2 = aVar2.getReturnType();
            if (returnType != null && returnType2 != null && ((!fh5.a(returnType2) || !fh5.a(returnType)) && !AbstractTypeChecker.a.r(typeCheckerStateL, returnType2.L0(), returnType.L0()))) {
                OverrideCompatibilityInfo overrideCompatibilityInfoB3 = OverrideCompatibilityInfo.b("Return type mismatch");
                if (overrideCompatibilityInfoB3 == null) {
                    a(38);
                }
                return overrideCompatibilityInfoB3;
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoE = OverrideCompatibilityInfo.e();
        if (overrideCompatibilityInfoE == null) {
            a(39);
        }
        return overrideCompatibilityInfoE;
    }

    public final TypeCheckerState l(List list, List list2) {
        if (list == null) {
            a(42);
        }
        if (list2 == null) {
            a(43);
        }
        if (list.isEmpty()) {
            TypeCheckerState typeCheckerStateH0 = new lu7(null, this.c, this.a, this.b, this.d).H0(true, true);
            if (typeCheckerStateH0 == null) {
                a(44);
            }
            return typeCheckerStateH0;
        }
        HashMap map = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            map.put(((hcb) list.get(i)).m(), ((hcb) list2.get(i)).m());
        }
        TypeCheckerState typeCheckerStateH1 = new lu7(map, this.c, this.a, this.b, this.d).H0(true, true);
        if (typeCheckerStateH1 == null) {
            a(45);
        }
        return typeCheckerStateH1;
    }

    public final Collection o(CallableMemberDescriptor callableMemberDescriptor, Collection collection, qw0 qw0Var, ku7 ku7Var) {
        if (callableMemberDescriptor == null) {
            a(59);
        }
        if (collection == null) {
            a(60);
        }
        if (qw0Var == null) {
            a(61);
        }
        if (ku7Var == null) {
            a(62);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        cq9 cq9VarB = cq9.b();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) it.next();
            OverrideCompatibilityInfo.Result resultC = D(callableMemberDescriptor2, callableMemberDescriptor, qw0Var).c();
            boolean zI = I(callableMemberDescriptor, callableMemberDescriptor2, false);
            int i = h.b[resultC.ordinal()];
            if (i == 1) {
                if (zI) {
                    cq9VarB.add(callableMemberDescriptor2);
                }
                arrayList.add(callableMemberDescriptor2);
            } else if (i == 2) {
                if (zI) {
                    ku7Var.c(callableMemberDescriptor2, callableMemberDescriptor);
                }
                arrayList.add(callableMemberDescriptor2);
            }
        }
        ku7Var.d(callableMemberDescriptor, cq9VarB);
        return arrayList;
    }

    public void v(by6 by6Var, Collection collection, Collection collection2, qw0 qw0Var, ku7 ku7Var) {
        if (by6Var == null) {
            a(52);
        }
        if (collection == null) {
            a(53);
        }
        if (collection2 == null) {
            a(54);
        }
        if (qw0Var == null) {
            a(55);
        }
        if (ku7Var == null) {
            a(56);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            linkedHashSet.removeAll(o((CallableMemberDescriptor) it.next(), collection, qw0Var, ku7Var));
        }
        k(qw0Var, linkedHashSet, ku7Var);
    }
}
