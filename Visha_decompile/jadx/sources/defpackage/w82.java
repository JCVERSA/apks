package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.l;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class w82 {
    public static void a(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static TypeSubstitutor b(List list, l lVar, xt1 xt1Var, List list2) {
        if (list == null) {
            a(0);
        }
        if (lVar == null) {
            a(1);
        }
        if (xt1Var == null) {
            a(2);
        }
        if (list2 == null) {
            a(3);
        }
        TypeSubstitutor typeSubstitutorC = c(list, lVar, xt1Var, list2, null);
        if (typeSubstitutorC != null) {
            return typeSubstitutorC;
        }
        throw new AssertionError("Substitution failed");
    }

    public static TypeSubstitutor c(List list, l lVar, xt1 xt1Var, List list2, boolean[] zArr) {
        if (list == null) {
            a(5);
        }
        if (lVar == null) {
            a(6);
        }
        if (xt1Var == null) {
            a(7);
        }
        if (list2 == null) {
            a(8);
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            hcb hcbVar = (hcb) it.next();
            icb icbVarL0 = icb.L0(xt1Var, hcbVar.getAnnotations(), hcbVar.u(), hcbVar.h(), hcbVar.getName(), i, yt9.a, hcbVar.a0());
            map.put(hcbVar.m(), new ocb(icbVarL0.q()));
            map2.put(hcbVar, icbVarL0);
            list2.add(icbVarL0);
            i++;
        }
        k kVarJ = k.j(map);
        TypeSubstitutor typeSubstitutorH = TypeSubstitutor.h(lVar, kVarJ);
        TypeSubstitutor typeSubstitutorH2 = TypeSubstitutor.h(lVar.h(), kVarJ);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            hcb hcbVar2 = (hcb) it2.next();
            icb icbVar = (icb) map2.get(hcbVar2);
            for (eh5 eh5Var : hcbVar2.getUpperBounds()) {
                px0 px0VarC = eh5Var.I0().c();
                eh5 eh5VarP = (((px0VarC instanceof hcb) && TypeUtilsKt.k((hcb) px0VarC)) ? typeSubstitutorH : typeSubstitutorH2).p(eh5Var, Variance.OUT_VARIANCE);
                if (eh5VarP == null) {
                    return null;
                }
                if (eh5VarP != eh5Var && zArr != null) {
                    zArr[0] = true;
                }
                icbVar.H0(eh5VarP);
            }
            icbVar.Q0();
        }
        return typeSubstitutorH;
    }
}
