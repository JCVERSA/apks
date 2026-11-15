package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.c74;
import defpackage.eh5;
import defpackage.f07;
import defpackage.g72;
import defpackage.i81;
import defpackage.ky3;
import defpackage.l37;
import defpackage.mgb;
import defpackage.s74;
import defpackage.sm9;
import defpackage.tu9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class TypeIntersector {
    public static final TypeIntersector a = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ResultNullability {
        public static final ResultNullability START = new START("START", 0);
        public static final ResultNullability ACCEPT_NULL = new ACCEPT_NULL("ACCEPT_NULL", 1);
        public static final ResultNullability UNKNOWN = new UNKNOWN("UNKNOWN", 2);
        public static final ResultNullability NOT_NULL = new NOT_NULL("NOT_NULL", 3);
        public static final ResultNullability[] b = a();

        public static final class ACCEPT_NULL extends ResultNullability {
            public ACCEPT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override
            public ResultNullability combine(mgb mgbVar) {
                y45.j(mgbVar, "nextType");
                return getResultNullability(mgbVar);
            }
        }

        public static final class NOT_NULL extends ResultNullability {
            public NOT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override
            public NOT_NULL combine(mgb mgbVar) {
                y45.j(mgbVar, "nextType");
                return this;
            }
        }

        public static final class START extends ResultNullability {
            public START(String str, int i) {
                super(str, i, null);
            }

            @Override
            public ResultNullability combine(mgb mgbVar) {
                y45.j(mgbVar, "nextType");
                return getResultNullability(mgbVar);
            }
        }

        public static final class UNKNOWN extends ResultNullability {
            public UNKNOWN(String str, int i) {
                super(str, i, null);
            }

            @Override
            public ResultNullability combine(mgb mgbVar) {
                y45.j(mgbVar, "nextType");
                ResultNullability resultNullability = getResultNullability(mgbVar);
                return resultNullability == ResultNullability.ACCEPT_NULL ? this : resultNullability;
            }
        }

        public ResultNullability(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i);
        }

        public static final ResultNullability[] a() {
            return new ResultNullability[]{START, ACCEPT_NULL, UNKNOWN, NOT_NULL};
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) b.clone();
        }

        public abstract ResultNullability combine(mgb mgbVar);

        public final ResultNullability getResultNullability(mgb mgbVar) {
            y45.j(mgbVar, "<this>");
            if (mgbVar.J0()) {
                return ACCEPT_NULL;
            }
            if (mgbVar instanceof g72) {
                ((g72) mgbVar).U0();
            }
            return l37.a.a(mgbVar) ? NOT_NULL : UNKNOWN;
        }

        public ResultNullability(String str, int i) {
            super(str, i);
        }
    }

    public final Collection b(Collection collection, s74 s74Var) {
        ArrayList<sm9> arrayList = new ArrayList(collection);
        Iterator it = arrayList.iterator();
        y45.i(it, "filteredTypes.iterator()");
        while (it.hasNext()) {
            sm9 sm9Var = (sm9) it.next();
            if (!arrayList.isEmpty()) {
                for (sm9 sm9Var2 : arrayList) {
                    if (sm9Var2 != sm9Var) {
                        y45.i(sm9Var2, "lower");
                        y45.i(sm9Var, "upper");
                        if (((Boolean) s74Var.invoke(sm9Var2, sm9Var)).booleanValue()) {
                            it.remove();
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final sm9 c(List list) {
        y45.j(list, "types");
        list.size();
        ArrayList<sm9> arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sm9 sm9Var = (sm9) it.next();
            if (sm9Var.I0() instanceof IntersectionTypeConstructor) {
                Collection collectionK = sm9Var.I0().k();
                y45.i(collectionK, "type.constructor.supertypes");
                Collection<eh5> collection = collectionK;
                ArrayList arrayList2 = new ArrayList(z71.v(collection, 10));
                for (eh5 eh5Var : collection) {
                    y45.i(eh5Var, "it");
                    sm9 sm9VarD = ky3.d(eh5Var);
                    if (sm9Var.J0()) {
                        sm9VarD = sm9VarD.M0(true);
                    }
                    arrayList2.add(sm9VarD);
                }
                arrayList.addAll(arrayList2);
            } else {
                arrayList.add(sm9Var);
            }
        }
        ResultNullability resultNullabilityCombine = ResultNullability.START;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            resultNullabilityCombine = resultNullabilityCombine.combine((mgb) it2.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (sm9 sm9VarI : arrayList) {
            if (resultNullabilityCombine == ResultNullability.NOT_NULL) {
                if (sm9VarI instanceof f07) {
                    sm9VarI = tu9.k((f07) sm9VarI);
                }
                sm9VarI = tu9.i(sm9VarI, false, 1, null);
            }
            linkedHashSet.add(sm9VarI);
        }
        List list2 = list;
        ArrayList arrayList3 = new ArrayList(z71.v(list2, 10));
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((sm9) it3.next()).H0());
        }
        Iterator it4 = arrayList3.iterator();
        if (!it4.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it4.next();
        while (it4.hasNext()) {
            next = ((j) next).n((j) it4.next());
        }
        return d(linkedHashSet).O0((j) next);
    }

    public final sm9 d(final Set set) {
        if (set.size() == 1) {
            return (sm9) i81.N0(set);
        }
        new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return "This collections cannot be empty! input types: " + i81.y0(set, null, null, null, 0, null, null, 63, null);
            }
        };
        Set set2 = set;
        Collection collectionB = b(set2, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(this));
        collectionB.isEmpty();
        sm9 sm9VarB = IntegerLiteralTypeConstructor.f.b(collectionB);
        if (sm9VarB != null) {
            return sm9VarB;
        }
        Collection collectionB2 = b(collectionB, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(e.b.a()));
        collectionB2.isEmpty();
        return collectionB2.size() < 2 ? (sm9) i81.N0(collectionB2) : new IntersectionTypeConstructor(set2).f();
    }

    public final boolean e(eh5 eh5Var, eh5 eh5Var2) {
        f fVarA = e.b.a();
        return fVarA.c(eh5Var, eh5Var2) && !fVarA.c(eh5Var2, eh5Var);
    }
}
