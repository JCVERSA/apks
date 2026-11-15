package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class je5 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final sm9 a(j jVar, sbb sbbVar, List list, boolean z) {
        hbb starProjectionImpl;
        List parameters = sbbVar.getParameters();
        y45.i(parameters, "typeConstructor.parameters");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            jf5 jf5Var = (jf5) obj;
            KTypeImpl kTypeImpl = (KTypeImpl) jf5Var.c();
            eh5 eh5VarH = kTypeImpl != null ? kTypeImpl.h() : null;
            KVariance kVarianceD = jf5Var.d();
            int i3 = kVarianceD == null ? -1 : a.a[kVarianceD.ordinal()];
            if (i3 == -1) {
                Object obj2 = parameters.get(i);
                y45.i(obj2, "parameters[index]");
                starProjectionImpl = new StarProjectionImpl((hcb) obj2);
            } else if (i3 == 1) {
                Variance variance = Variance.INVARIANT;
                y45.g(eh5VarH);
                starProjectionImpl = new ocb(variance, eh5VarH);
            } else if (i3 == 2) {
                Variance variance2 = Variance.IN_VARIANCE;
                y45.g(eh5VarH);
                starProjectionImpl = new ocb(variance2, eh5VarH);
            } else {
                if (i3 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                Variance variance3 = Variance.OUT_VARIANCE;
                y45.g(eh5VarH);
                starProjectionImpl = new ocb(variance3, eh5VarH);
            }
            arrayList.add(starProjectionImpl);
            i = i2;
        }
        return KotlinTypeFactory.j(jVar, sbbVar, arrayList, z, null, 16, null);
    }

    public static final ff5 b(he5 he5Var, List list, boolean z, List list2) {
        px0 descriptor;
        y45.j(he5Var, "<this>");
        y45.j(list, "arguments");
        y45.j(list2, "annotations");
        ie5 ie5Var = he5Var instanceof ie5 ? (ie5) he5Var : null;
        if (ie5Var == null || (descriptor = ie5Var.getDescriptor()) == null) {
            throw new KotlinReflectionInternalError("Cannot create type for an unsupported classifier: " + he5Var + " (" + he5Var.getClass() + ')');
        }
        sbb sbbVarM = descriptor.m();
        y45.i(sbbVarM, "descriptor.typeConstructor");
        List parameters = sbbVarM.getParameters();
        y45.i(parameters, "typeConstructor.parameters");
        if (parameters.size() == list.size()) {
            return new KTypeImpl(a(list2.isEmpty() ? j.c.h() : j.c.h(), sbbVarM, list, z), null, 2, null);
        }
        throw new IllegalArgumentException("Class declares " + parameters.size() + " type parameters, but " + list.size() + " were provided.");
    }
}
