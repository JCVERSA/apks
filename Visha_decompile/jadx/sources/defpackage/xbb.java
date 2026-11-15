package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a;
import kotlin.reflect.jvm.internal.impl.types.m;

public abstract class xbb {
    public static final a a(a aVar, Collection collection, boolean z, boolean z2, boolean z3) {
        NullabilityQualifier nullabilityQualifierE;
        boolean z4;
        y45.j(aVar, "<this>");
        y45.j(collection, "superQualifiers");
        Collection collection2 = collection;
        ArrayList arrayList = new ArrayList();
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            NullabilityQualifier nullabilityQualifierB = b((a) it.next());
            if (nullabilityQualifierB != null) {
                arrayList.add(nullabilityQualifierB);
            }
        }
        NullabilityQualifier nullabilityQualifierE2 = e(i81.g1(arrayList), b(aVar), z);
        if (nullabilityQualifierE2 == null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = collection2.iterator();
            while (it2.hasNext()) {
                NullabilityQualifier nullabilityQualifierD = ((a) it2.next()).d();
                if (nullabilityQualifierD != null) {
                    arrayList2.add(nullabilityQualifierD);
                }
            }
            nullabilityQualifierE = e(i81.g1(arrayList2), aVar.d(), z);
        } else {
            nullabilityQualifierE = nullabilityQualifierE2;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = collection2.iterator();
        while (it3.hasNext()) {
            MutabilityQualifier mutabilityQualifierC = ((a) it3.next()).c();
            if (mutabilityQualifierC != null) {
                arrayList3.add(mutabilityQualifierC);
            }
        }
        MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) d(i81.g1(arrayList3), MutabilityQualifier.MUTABLE, MutabilityQualifier.READ_ONLY, aVar.c(), z);
        NullabilityQualifier nullabilityQualifier = null;
        if (nullabilityQualifierE != null && !z3 && (!z2 || nullabilityQualifierE != NullabilityQualifier.NULLABLE)) {
            nullabilityQualifier = nullabilityQualifierE;
        }
        boolean z5 = false;
        if (nullabilityQualifier != NullabilityQualifier.NOT_NULL) {
            z4 = false;
        } else {
            if (!aVar.b()) {
                if (!collection2.isEmpty()) {
                    Iterator it4 = collection2.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            if (((a) it4.next()).b()) {
                            }
                        }
                    }
                }
                z4 = false;
            }
            z4 = true;
        }
        if (nullabilityQualifier != null && nullabilityQualifierE2 != nullabilityQualifierE) {
            z5 = true;
        }
        return new a(nullabilityQualifier, mutabilityQualifier, z4, z5);
    }

    public static final NullabilityQualifier b(a aVar) {
        if (aVar.e()) {
            return null;
        }
        return aVar.d();
    }

    public static final boolean c(m mVar, gh5 gh5Var) {
        y45.j(mVar, "<this>");
        y45.j(gh5Var, "type");
        o54 o54Var = yc5.u;
        y45.i(o54Var, "ENHANCED_NULLABILITY_ANNOTATION");
        return mVar.x(gh5Var, o54Var);
    }

    public static final Object d(Set set, Object obj, Object obj2, Object obj3, boolean z) {
        Set setG1;
        Object obj4;
        if (!z) {
            if (obj3 != null && (setG1 = i81.g1(ze9.n(set, obj3))) != null) {
                set = setG1;
            }
            return i81.P0(set);
        }
        if (set.contains(obj)) {
            obj4 = obj;
        } else {
            obj4 = set.contains(obj2) ? obj2 : null;
        }
        if (y45.e(obj4, obj) && y45.e(obj3, obj2)) {
            return null;
        }
        return obj3 == null ? obj4 : obj3;
    }

    public static final NullabilityQualifier e(Set set, NullabilityQualifier nullabilityQualifier, boolean z) {
        NullabilityQualifier nullabilityQualifier2 = NullabilityQualifier.FORCE_FLEXIBILITY;
        return nullabilityQualifier == nullabilityQualifier2 ? nullabilityQualifier2 : (NullabilityQualifier) d(set, NullabilityQualifier.NOT_NULL, NullabilityQualifier.NULLABLE, nullabilityQualifier, z);
    }
}
