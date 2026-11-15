package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.e74;
import defpackage.g75;
import defpackage.gh5;
import defpackage.hbb;
import defpackage.hi;
import defpackage.i81;
import defpackage.iy3;
import defpackage.kcb;
import defpackage.m37;
import defpackage.m85;
import defpackage.p54;
import defpackage.tbb;
import defpackage.tcb;
import defpackage.u85;
import defpackage.vbb;
import defpackage.xbb;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

public abstract class AbstractSignatureParts {

    public static final class a {
        public final gh5 a;
        public final u85 b;
        public final kcb c;

        public a(gh5 gh5Var, u85 u85Var, kcb kcbVar) {
            this.a = gh5Var;
            this.b = u85Var;
            this.c = kcbVar;
        }

        public final u85 a() {
            return this.b;
        }

        public final gh5 b() {
            return this.a;
        }

        public final kcb c() {
            return this.c;
        }
    }

    public abstract boolean A(gh5 gh5Var);

    public final m37 B(m37 m37Var, m37 m37Var2) {
        if (m37Var == null) {
            return m37Var2;
        }
        if (m37Var2 == null) {
            return m37Var;
        }
        if (m37Var.d() && !m37Var2.d()) {
            return m37Var2;
        }
        if (m37Var.d() || !m37Var2.d()) {
            return (m37Var.c().compareTo(m37Var2.c()) >= 0 && m37Var.c().compareTo(m37Var2.c()) > 0) ? m37Var : m37Var2;
        }
        return m37Var;
    }

    public final List C(gh5 gh5Var) {
        final tcb tcbVarV = v();
        return f(new a(gh5Var, c(gh5Var, n()), null), new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Iterable<AbstractSignatureParts.a> invoke(AbstractSignatureParts.a aVar) {
                tbb tbbVarJ;
                List listA;
                AbstractSignatureParts.a aVar2;
                iy3 iy3VarI;
                y45.j(aVar, "it");
                if (this.this$0.u()) {
                    gh5 gh5VarB = aVar.b();
                    if (((gh5VarB == null || (iy3VarI = tcbVarV.I(gh5VarB)) == null) ? null : tcbVarV.b0(iy3VarI)) != null) {
                        return null;
                    }
                }
                gh5 gh5VarB2 = aVar.b();
                if (gh5VarB2 == null || (tbbVarJ = tcbVarV.J(gh5VarB2)) == null || (listA = tcbVarV.A(tbbVarJ)) == null) {
                    return null;
                }
                List list = listA;
                List listN = tcbVarV.n(aVar.b());
                tcb tcbVar = tcbVarV;
                AbstractSignatureParts abstractSignatureParts = this.this$0;
                Iterator it = list.iterator();
                Iterator it2 = listN.iterator();
                ArrayList arrayList = new ArrayList(Math.min(z71.v(list, 10), z71.v(listN, 10)));
                while (it.hasNext() && it2.hasNext()) {
                    Object next = it.next();
                    hbb hbbVar = (hbb) it2.next();
                    kcb kcbVar = (kcb) next;
                    if (tcbVar.p0(hbbVar)) {
                        aVar2 = new AbstractSignatureParts.a(null, aVar.a(), kcbVar);
                    } else {
                        gh5 gh5VarJ = tcbVar.j(hbbVar);
                        aVar2 = new AbstractSignatureParts.a(gh5VarJ, abstractSignatureParts.c(gh5VarJ, aVar.a()), kcbVar);
                    }
                    arrayList.add(aVar2);
                }
                return arrayList;
            }
        });
    }

    public final e74 b(gh5 gh5Var, Iterable iterable, final vbb vbbVar, boolean z) {
        int size;
        gh5 gh5VarB;
        y45.j(gh5Var, "<this>");
        y45.j(iterable, "overrides");
        List listC = C(gh5Var);
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(C((gh5) it.next()));
        }
        if (r()) {
            size = 1;
        } else {
            if (x() && (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty())) {
                Iterator it2 = iterable.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!y(gh5Var, (gh5) it2.next())) {
                            size = 1;
                        }
                    }
                }
            }
            size = listC.size();
        }
        final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a[] aVarArr = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a[size];
        int i = 0;
        while (i < size) {
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a aVarE = e((a) listC.get(i));
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                a aVar = (a) i81.r0((List) it3.next(), i);
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a aVarD = (aVar == null || (gh5VarB = aVar.b()) == null) ? null : d(gh5VarB);
                if (aVarD != null) {
                    arrayList2.add(aVarD);
                }
            }
            aVarArr[i] = xbb.a(aVarE, arrayList2, i == 0 && x(), i == 0 && o(), z);
            i++;
        }
        return new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final a invoke(int i2) {
                Map mapA;
                a aVar2;
                vbb vbbVar2 = vbbVar;
                if (vbbVar2 != null && (mapA = vbbVar2.a()) != null && (aVar2 = (a) mapA.get(Integer.valueOf(i2))) != null) {
                    return aVar2;
                }
                a[] aVarArr2 = aVarArr;
                return (i2 < 0 || i2 > hi.d0(aVarArr2)) ? a.e.a() : aVarArr2[i2];
            }
        };
    }

    public final u85 c(gh5 gh5Var, u85 u85Var) {
        return i().c(u85Var, j(gh5Var));
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a d(gh5 gh5Var) {
        NullabilityQualifier nullabilityQualifierT;
        NullabilityQualifier nullabilityQualifierT2 = t(gh5Var);
        MutabilityQualifier mutabilityQualifier = null;
        if (nullabilityQualifierT2 == null) {
            gh5 gh5VarQ = q(gh5Var);
            nullabilityQualifierT = gh5VarQ != null ? t(gh5VarQ) : null;
        } else {
            nullabilityQualifierT = nullabilityQualifierT2;
        }
        tcb tcbVarV = v();
        m85 m85Var = m85.a;
        if (m85Var.l(s(tcbVarV.C(gh5Var)))) {
            mutabilityQualifier = MutabilityQualifier.READ_ONLY;
        } else if (m85Var.k(s(tcbVarV.q(gh5Var)))) {
            mutabilityQualifier = MutabilityQualifier.MUTABLE;
        }
        return new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a(nullabilityQualifierT, mutabilityQualifier, v().Z(gh5Var) || A(gh5Var), nullabilityQualifierT != nullabilityQualifierT2);
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a e(final a aVar) {
        List listK;
        m37 m37VarD;
        m37 m37VarK;
        gh5 gh5VarB;
        tbb tbbVarJ;
        if (aVar.b() == null) {
            tcb tcbVarV = v();
            kcb kcbVarC = aVar.c();
            if ((kcbVarC != null ? tcbVarV.V(kcbVarC) : null) == TypeVariance.IN) {
                return kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a.e.a();
            }
        }
        boolean z = false;
        boolean z2 = aVar.c() == null;
        gh5 gh5VarB2 = aVar.b();
        if (gh5VarB2 == null || (listK = j(gh5VarB2)) == null) {
            listK = y71.k();
        }
        tcb tcbVarV2 = v();
        gh5 gh5VarB3 = aVar.b();
        kcb kcbVarA0 = (gh5VarB3 == null || (tbbVarJ = tcbVarV2.J(gh5VarB3)) == null) ? null : tcbVarV2.a0(tbbVarJ);
        boolean z3 = m() == AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS;
        if (z2) {
            if (z3 || !p() || (gh5VarB = aVar.b()) == null || !w(gh5VarB)) {
                listK = i81.H0(l(), listK);
            } else {
                Iterable iterableL = l();
                ArrayList arrayList = new ArrayList();
                for (Object obj : iterableL) {
                    if (!i().m(obj)) {
                        arrayList.add(obj);
                    }
                }
                listK = i81.J0(arrayList, listK);
            }
        }
        MutabilityQualifier mutabilityQualifierE = i().e(listK);
        m37 m37VarF = i().f(listK, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Object obj2) {
                y45.j(obj2, "$this$extractNullability");
                return Boolean.valueOf(this.this$0.h(obj2, aVar.b()));
            }
        });
        if (m37VarF != null) {
            NullabilityQualifier nullabilityQualifierC = m37VarF.c();
            if (m37VarF.c() == NullabilityQualifier.NOT_NULL && kcbVarA0 != null) {
                z = true;
            }
            return new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a(nullabilityQualifierC, mutabilityQualifierE, z, m37VarF.d());
        }
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityTypeM = (z2 || z3) ? m() : AnnotationQualifierApplicabilityType.TYPE_USE;
        u85 u85VarA = aVar.a();
        g75 g75VarA = u85VarA != null ? u85VarA.a(annotationQualifierApplicabilityTypeM) : null;
        m37 m37VarK2 = kcbVarA0 != null ? k(kcbVarA0) : null;
        if (m37VarK2 == null || (m37VarD = m37.b(m37VarK2, NullabilityQualifier.NOT_NULL, false, 2, null)) == null) {
            m37VarD = g75VarA != null ? g75VarA.d() : null;
        }
        boolean z4 = (m37VarK2 != null ? m37VarK2.c() : null) == NullabilityQualifier.NOT_NULL || !(kcbVarA0 == null || g75VarA == null || !g75VarA.c());
        kcb kcbVarC2 = aVar.c();
        if (kcbVarC2 == null || (m37VarK = k(kcbVarC2)) == null) {
            m37VarK = null;
        } else if (m37VarK.c() == NullabilityQualifier.NULLABLE) {
            m37VarK = m37.b(m37VarK, NullabilityQualifier.FORCE_FLEXIBILITY, false, 2, null);
        }
        m37 m37VarB = B(m37VarK, m37VarD);
        NullabilityQualifier nullabilityQualifierC2 = m37VarB != null ? m37VarB.c() : null;
        if (m37VarB != null && m37VarB.d()) {
            z = true;
        }
        return new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a(nullabilityQualifierC2, mutabilityQualifierE, z4, z);
    }

    public final List f(Object obj, e74 e74Var) {
        ArrayList arrayList = new ArrayList(1);
        g(obj, arrayList, e74Var);
        return arrayList;
    }

    public final void g(Object obj, List list, e74 e74Var) {
        list.add(obj);
        Iterable iterable = (Iterable) e74Var.invoke(obj);
        if (iterable != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next(), list, e74Var);
            }
        }
    }

    public abstract boolean h(Object obj, gh5 gh5Var);

    public abstract AbstractAnnotationTypeQualifierResolver i();

    public abstract Iterable j(gh5 gh5Var);

    /* JADX WARN: Code duplicated, block: B:45:0x00af  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:? A[LOOP:3: B:46:0x00b3->B:72:?, LOOP_END, SYNTHETIC] */
    public final m37 k(kcb kcbVar) {
        List arrayList;
        List list;
        Iterator it;
        NullabilityQualifier nullabilityQualifier;
        boolean z;
        tcb tcbVarV = v();
        if (!z(kcbVar)) {
            return null;
        }
        List listH = tcbVarV.h(kcbVar);
        List list2 = listH;
        boolean z2 = list2 instanceof Collection;
        if (!z2 || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (!tcbVarV.m0((gh5) it2.next())) {
                    if (!z2 || !list2.isEmpty()) {
                        Iterator it3 = list2.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                if (t((gh5) it3.next()) != null) {
                                    arrayList = listH;
                                }
                            }
                            list = arrayList;
                            if ((list instanceof Collection) && list.isEmpty()) {
                                nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                break;
                            }
                            it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                    break;
                                }
                                if (!tcbVarV.l0((gh5) it.next())) {
                                    nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                    break;
                                }
                            }
                            if (arrayList != listH) {
                                z = true;
                            } else {
                                z = false;
                            }
                            return new m37(nullabilityQualifier, z);
                        }
                    }
                    if (!z2 || !list2.isEmpty()) {
                        Iterator it4 = list2.iterator();
                        while (it4.hasNext()) {
                            if (q((gh5) it4.next()) != null) {
                                arrayList = new ArrayList();
                                Iterator it5 = list2.iterator();
                                while (it5.hasNext()) {
                                    gh5 gh5VarQ = q((gh5) it5.next());
                                    if (gh5VarQ != null) {
                                        arrayList.add(gh5VarQ);
                                    }
                                }
                                list = arrayList;
                                if (list instanceof Collection) {
                                    it = list.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                            break;
                                        }
                                        if (!tcbVarV.l0((gh5) it.next())) {
                                            nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                            break;
                                        }
                                    }
                                } else {
                                    it = list.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            nullabilityQualifier = NullabilityQualifier.NULLABLE;
                                            break;
                                        }
                                        if (!tcbVarV.l0((gh5) it.next())) {
                                            nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                                            break;
                                        }
                                    }
                                }
                                if (arrayList != listH) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return new m37(nullabilityQualifier, z);
                            }
                        }
                        break;
                    }
                    break;
                }
            }
        }
        return null;
    }

    public abstract Iterable l();

    public abstract AnnotationQualifierApplicabilityType m();

    public abstract u85 n();

    public abstract boolean o();

    public abstract boolean p();

    public abstract gh5 q(gh5 gh5Var);

    public boolean r() {
        return false;
    }

    public abstract p54 s(gh5 gh5Var);

    public final NullabilityQualifier t(gh5 gh5Var) {
        tcb tcbVarV = v();
        if (tcbVarV.w(tcbVarV.C(gh5Var))) {
            return NullabilityQualifier.NULLABLE;
        }
        if (tcbVarV.w(tcbVarV.q(gh5Var))) {
            return null;
        }
        return NullabilityQualifier.NOT_NULL;
    }

    public abstract boolean u();

    public abstract tcb v();

    public abstract boolean w(gh5 gh5Var);

    public abstract boolean x();

    public abstract boolean y(gh5 gh5Var, gh5 gh5Var2);

    public abstract boolean z(kcb kcbVar);
}
