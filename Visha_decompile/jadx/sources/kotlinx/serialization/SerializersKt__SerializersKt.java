package kotlinx.serialization;

import defpackage.a28;
import defpackage.c74;
import defpackage.de5;
import defpackage.e28;
import defpackage.ef5;
import defpackage.ff5;
import defpackage.go4;
import defpackage.he5;
import defpackage.jf5;
import defpackage.jo4;
import defpackage.kf8;
import defpackage.kl5;
import defpackage.ml5;
import defpackage.qn0;
import defpackage.sd9;
import defpackage.td9;
import defpackage.xq8;
import defpackage.y45;
import defpackage.z71;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Triple;

public abstract class SerializersKt__SerializersKt {
    public static final ef5 a(de5 de5Var, List list, c74 c74Var) {
        if (y45.e(de5Var, xq8.b(Collection.class)) ? true : y45.e(de5Var, xq8.b(List.class)) ? true : y45.e(de5Var, xq8.b(List.class)) ? true : y45.e(de5Var, xq8.b(ArrayList.class))) {
            return new zg((ef5) list.get(0));
        }
        if (y45.e(de5Var, xq8.b(HashSet.class))) {
            return new jo4((ef5) list.get(0));
        }
        if (y45.e(de5Var, xq8.b(Set.class)) ? true : y45.e(de5Var, xq8.b(Set.class)) ? true : y45.e(de5Var, xq8.b(LinkedHashSet.class))) {
            return new ml5((ef5) list.get(0));
        }
        if (y45.e(de5Var, xq8.b(HashMap.class))) {
            return new go4((ef5) list.get(0), (ef5) list.get(1));
        }
        if (y45.e(de5Var, xq8.b(Map.class)) ? true : y45.e(de5Var, xq8.b(Map.class)) ? true : y45.e(de5Var, xq8.b(LinkedHashMap.class))) {
            return new kl5((ef5) list.get(0), (ef5) list.get(1));
        }
        if (y45.e(de5Var, xq8.b(Map.Entry.class))) {
            return qn0.j((ef5) list.get(0), (ef5) list.get(1));
        }
        if (y45.e(de5Var, xq8.b(Pair.class))) {
            return qn0.m((ef5) list.get(0), (ef5) list.get(1));
        }
        if (y45.e(de5Var, xq8.b(Triple.class))) {
            return qn0.o((ef5) list.get(0), (ef5) list.get(1), (ef5) list.get(2));
        }
        if (!a28.k(de5Var)) {
            return null;
        }
        Object objInvoke = c74Var.invoke();
        y45.h(objInvoke, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
        return qn0.a((de5) objInvoke, (ef5) list.get(0));
    }

    public static final ef5 b(de5 de5Var, List list) {
        ef5[] ef5VarArr = (ef5[]) list.toArray(new ef5[0]);
        return a28.c(de5Var, (ef5[]) Arrays.copyOf(ef5VarArr, ef5VarArr.length));
    }

    public static final ef5 c(ef5 ef5Var, boolean z) {
        if (z) {
            return qn0.t(ef5Var);
        }
        y45.h(ef5Var, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
        return ef5Var;
    }

    public static final ef5 d(de5 de5Var, List list, c74 c74Var) {
        y45.j(de5Var, "<this>");
        y45.j(list, "serializers");
        y45.j(c74Var, "elementClassifierIfArray");
        ef5 ef5VarA = a(de5Var, list, c74Var);
        return ef5VarA == null ? b(de5Var, list) : ef5VarA;
    }

    public static final ef5 e(td9 td9Var, ff5 ff5Var) {
        y45.j(td9Var, "<this>");
        y45.j(ff5Var, "type");
        ef5 ef5VarF = f(td9Var, ff5Var, true);
        if (ef5VarF != null) {
            return ef5VarF;
        }
        a28.l(e28.c(ff5Var));
        throw new KotlinNothingValueException();
    }

    public static final ef5 f(td9 td9Var, ff5 ff5Var, boolean z) {
        ef5 ef5VarA;
        ef5 ef5VarB;
        de5 de5VarC = e28.c(ff5Var);
        boolean zK = ff5Var.k();
        List listL = ff5Var.l();
        final ArrayList arrayList = new ArrayList(z71.v(listL, 10));
        Iterator it = listL.iterator();
        while (it.hasNext()) {
            ff5 ff5VarC = ((jf5) it.next()).c();
            if (ff5VarC == null) {
                throw new IllegalArgumentException(("Star projections in type arguments are not allowed, but had " + ff5Var).toString());
            }
            arrayList.add(ff5VarC);
        }
        if (arrayList.isEmpty()) {
            ef5VarA = SerializersCacheKt.a(de5VarC, zK);
        } else {
            Object objB = SerializersCacheKt.b(de5VarC, arrayList, zK);
            if (z) {
                if (Result.m285isFailureimpl(objB)) {
                    objB = null;
                }
                ef5VarA = (ef5) objB;
            } else {
                if (Result.m282exceptionOrNullimpl(objB) != null) {
                    return null;
                }
                ef5VarA = (ef5) objB;
            }
        }
        if (ef5VarA != null) {
            return ef5VarA;
        }
        if (arrayList.isEmpty()) {
            ef5VarB = td9.c(td9Var, de5VarC, null, 2, null);
        } else {
            List listE = sd9.e(td9Var, arrayList, z);
            if (listE == null) {
                return null;
            }
            ef5 ef5VarA2 = sd9.a(de5VarC, listE, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override
                public final he5 invoke() {
                    return arrayList.get(0).j();
                }
            });
            ef5VarB = ef5VarA2 == null ? td9Var.b(de5VarC, listE) : ef5VarA2;
        }
        if (ef5VarB != null) {
            return c(ef5VarB, zK);
        }
        return null;
    }

    public static final ef5 g(de5 de5Var) {
        y45.j(de5Var, "<this>");
        ef5 ef5VarB = a28.b(de5Var);
        return ef5VarB == null ? kf8.b(de5Var) : ef5VarB;
    }

    public static final ef5 h(td9 td9Var, ff5 ff5Var) {
        y45.j(td9Var, "<this>");
        y45.j(ff5Var, "type");
        return f(td9Var, ff5Var, false);
    }

    public static final List i(td9 td9Var, List list, boolean z) {
        ArrayList arrayList;
        y45.j(td9Var, "<this>");
        y45.j(list, "typeArguments");
        if (z) {
            List list2 = list;
            arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(sd9.b(td9Var, (ff5) it.next()));
            }
        } else {
            List list3 = list;
            arrayList = new ArrayList(z71.v(list3, 10));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                ef5 ef5VarD = sd9.d(td9Var, (ff5) it2.next());
                if (ef5VarD == null) {
                    return null;
                }
                arrayList.add(ef5VarD);
            }
        }
        return arrayList;
    }
}
