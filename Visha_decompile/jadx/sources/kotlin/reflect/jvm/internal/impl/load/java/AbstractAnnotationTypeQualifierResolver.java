package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.e74;
import defpackage.g75;
import defpackage.hi;
import defpackage.i81;
import defpackage.jd;
import defpackage.m37;
import defpackage.o54;
import defpackage.u85;
import defpackage.y45;
import defpackage.zc5;
import defpackage.ze9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

public abstract class AbstractAnnotationTypeQualifierResolver {
    public static final a c = new a(null);
    public static final Map d;
    public final JavaTypeEnhancementState a;
    public final ConcurrentHashMap b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType : AnnotationQualifierApplicabilityType.values()) {
            String javaTarget = annotationQualifierApplicabilityType.getJavaTarget();
            if (linkedHashMap.get(javaTarget) == null) {
                linkedHashMap.put(javaTarget, annotationQualifierApplicabilityType);
            }
        }
        d = linkedHashMap;
    }

    public AbstractAnnotationTypeQualifierResolver(JavaTypeEnhancementState javaTypeEnhancementState) {
        y45.j(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.a = javaTypeEnhancementState;
        this.b = new ConcurrentHashMap();
    }

    public final Set a(Set set) {
        return set.contains(AnnotationQualifierApplicabilityType.TYPE_USE) ? ze9.m(ze9.l(hi.p1(AnnotationQualifierApplicabilityType.values()), AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS), set) : set;
    }

    public abstract Iterable b(Object obj, boolean z);

    public final u85 c(u85 u85Var, Iterable iterable) {
        EnumMap enumMapB;
        y45.j(iterable, "annotations");
        if (this.a.b()) {
            return u85Var;
        }
        ArrayList<g75> arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            g75 g75VarD = d(it.next());
            if (g75VarD != null) {
                arrayList.add(g75VarD);
            }
        }
        if (arrayList.isEmpty()) {
            return u85Var;
        }
        EnumMap enumMap = (u85Var == null || (enumMapB = u85Var.b()) == null) ? new EnumMap(AnnotationQualifierApplicabilityType.class) : new EnumMap(enumMapB);
        boolean z = false;
        for (g75 g75Var : arrayList) {
            Iterator it2 = g75Var.e().iterator();
            while (it2.hasNext()) {
                enumMap.put((AnnotationQualifierApplicabilityType) it2.next(), g75Var);
                z = true;
            }
        }
        return !z ? u85Var : new u85(enumMap);
    }

    public final g75 d(Object obj) {
        m37 m37VarG;
        g75 g75VarR = r(obj);
        if (g75VarR != null) {
            return g75VarR;
        }
        Pair pairT = t(obj);
        if (pairT == null) {
            return null;
        }
        Object objComponent1 = pairT.component1();
        Set set = (Set) pairT.component2();
        ReportLevel reportLevelQ = q(obj);
        if (reportLevelQ == null) {
            reportLevelQ = p(objComponent1);
        }
        if (reportLevelQ.isIgnore() || (m37VarG = g(objComponent1, new e74() {
            @Override
            public final Boolean invoke(Object obj2) {
                y45.j(obj2, "$this$extractNullability");
                return Boolean.FALSE;
            }
        })) == null) {
            return null;
        }
        return new g75(m37.b(m37VarG, null, reportLevelQ.isWarning(), 1, null), set, false, 4, null);
    }

    public final MutabilityQualifier e(Iterable iterable) {
        MutabilityQualifier mutabilityQualifier;
        y45.j(iterable, "annotations");
        Iterator it = iterable.iterator();
        MutabilityQualifier mutabilityQualifier2 = null;
        while (it.hasNext()) {
            o54 o54VarI = i(it.next());
            if (zc5.p().contains(o54VarI)) {
                mutabilityQualifier = MutabilityQualifier.READ_ONLY;
            } else if (zc5.m().contains(o54VarI)) {
                mutabilityQualifier = MutabilityQualifier.MUTABLE;
            } else {
                continue;
            }
            if (mutabilityQualifier2 != null && mutabilityQualifier2 != mutabilityQualifier) {
                return null;
            }
            mutabilityQualifier2 = mutabilityQualifier;
        }
        return mutabilityQualifier2;
    }

    public final m37 f(Iterable iterable, e74 e74Var) {
        y45.j(iterable, "annotations");
        y45.j(e74Var, "forceWarning");
        Iterator it = iterable.iterator();
        m37 m37Var = null;
        while (it.hasNext()) {
            m37 m37VarG = g(it.next(), e74Var);
            if (m37Var != null) {
                if (m37VarG != null && !y45.e(m37VarG, m37Var) && (!m37VarG.d() || m37Var.d())) {
                    if (m37VarG.d() || !m37Var.d()) {
                        return null;
                    }
                }
            }
            m37Var = m37VarG;
        }
        return m37Var;
    }

    public final m37 g(Object obj, e74 e74Var) {
        m37 m37VarN;
        m37 m37VarN2 = n(obj, ((Boolean) e74Var.invoke(obj)).booleanValue());
        if (m37VarN2 != null) {
            return m37VarN2;
        }
        Object objS = s(obj);
        if (objS == null) {
            return null;
        }
        ReportLevel reportLevelP = p(obj);
        if (reportLevelP.isIgnore() || (m37VarN = n(objS, ((Boolean) e74Var.invoke(objS)).booleanValue())) == null) {
            return null;
        }
        return m37.b(m37VarN, null, reportLevelP.isWarning(), 1, null);
    }

    public final Object h(Object obj, o54 o54Var) {
        for (Object obj2 : k(obj)) {
            if (y45.e(i(obj2), o54Var)) {
                return obj2;
            }
        }
        return null;
    }

    public abstract o54 i(Object obj);

    public abstract Object j(Object obj);

    public abstract Iterable k(Object obj);

    public final boolean l(Object obj, o54 o54Var) {
        Iterable iterableK = k(obj);
        if ((iterableK instanceof Collection) && ((Collection) iterableK).isEmpty()) {
            return false;
        }
        Iterator it = iterableK.iterator();
        while (it.hasNext()) {
            if (y45.e(i(it.next()), o54Var)) {
                return true;
            }
        }
        return false;
    }

    public final boolean m(Object obj) {
        y45.j(obj, "annotation");
        Object objH = h(obj, e.a.H);
        if (objH == null) {
            return false;
        }
        Iterable iterableB = b(objH, false);
        if ((iterableB instanceof Collection) && ((Collection) iterableB).isEmpty()) {
            return false;
        }
        Iterator it = iterableB.iterator();
        while (it.hasNext()) {
            if (y45.e((String) it.next(), KotlinTarget.TYPE.name())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0091, code lost:
    
        if (r6.equals("ALWAYS") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
    
        if (r6.equals("NEVER") == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00af, code lost:
    
        if (r6.equals("MAYBE") == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b2, code lost:
    
        r6 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final m37 n(Object obj, boolean z) {
        NullabilityQualifier nullabilityQualifier;
        o54 o54VarI = i(obj);
        if (o54VarI == null) {
            return null;
        }
        ReportLevel reportLevel = (ReportLevel) this.a.c().invoke(o54VarI);
        if (reportLevel.isIgnore()) {
            return null;
        }
        if (zc5.o().contains(o54VarI)) {
            nullabilityQualifier = NullabilityQualifier.NULLABLE;
        } else if (zc5.n().contains(o54VarI)) {
            nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        } else {
            if (y45.e(o54VarI, zc5.j()) ? true : y45.e(o54VarI, zc5.g())) {
                nullabilityQualifier = NullabilityQualifier.NULLABLE;
            } else {
                if (y45.e(o54VarI, zc5.k()) ? true : y45.e(o54VarI, zc5.h())) {
                    nullabilityQualifier = NullabilityQualifier.FORCE_FLEXIBILITY;
                } else if (y45.e(o54VarI, zc5.f())) {
                    String str = (String) i81.p0(b(obj, false));
                    if (str != null) {
                        switch (str.hashCode()) {
                            case 73135176:
                                break;
                            case 74175084:
                                break;
                            case 433141802:
                                if (str.equals("UNKNOWN")) {
                                    nullabilityQualifier = NullabilityQualifier.FORCE_FLEXIBILITY;
                                    break;
                                }
                                return null;
                            case 1933739535:
                                break;
                            default:
                                return null;
                        }
                    } else {
                        nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                    }
                } else if (y45.e(o54VarI, zc5.d())) {
                    nullabilityQualifier = NullabilityQualifier.NULLABLE;
                } else if (y45.e(o54VarI, zc5.c()) || y45.e(o54VarI, zc5.a())) {
                    nullabilityQualifier = NullabilityQualifier.NOT_NULL;
                } else {
                    if (!y45.e(o54VarI, zc5.b())) {
                        return null;
                    }
                    nullabilityQualifier = NullabilityQualifier.NULLABLE;
                }
            }
        }
        return new m37(nullabilityQualifier, reportLevel.isWarning() || z);
    }

    public final ReportLevel o(Object obj) {
        o54 o54VarI = i(obj);
        return (o54VarI == null || !jd.c().containsKey(o54VarI)) ? p(obj) : (ReportLevel) this.a.c().invoke(o54VarI);
    }

    public final ReportLevel p(Object obj) {
        ReportLevel reportLevelQ = q(obj);
        return reportLevelQ != null ? reportLevelQ : this.a.d().a();
    }

    public final ReportLevel q(Object obj) {
        Iterable iterableB;
        String str;
        ReportLevel reportLevel = (ReportLevel) this.a.d().c().get(i(obj));
        if (reportLevel != null) {
            return reportLevel;
        }
        Object objH = h(obj, jd.d());
        if (objH == null || (iterableB = b(objH, false)) == null || (str = (String) i81.p0(iterableB)) == null) {
            return null;
        }
        ReportLevel reportLevelB = this.a.d().b();
        if (reportLevelB != null) {
            return reportLevelB;
        }
        int iHashCode = str.hashCode();
        if (iHashCode == -2137067054) {
            if (str.equals("IGNORE")) {
                return ReportLevel.IGNORE;
            }
            return null;
        }
        if (iHashCode == -1838656823) {
            if (str.equals("STRICT")) {
                return ReportLevel.STRICT;
            }
            return null;
        }
        if (iHashCode == 2656902 && str.equals("WARN")) {
            return ReportLevel.WARN;
        }
        return null;
    }

    public final g75 r(Object obj) {
        g75 g75Var;
        if (this.a.b() || (g75Var = (g75) jd.a().get(i(obj))) == null) {
            return null;
        }
        ReportLevel reportLevelO = o(obj);
        if (reportLevelO == ReportLevel.IGNORE) {
            reportLevelO = null;
        }
        if (reportLevelO == null) {
            return null;
        }
        return g75.b(g75Var, m37.b(g75Var.d(), null, reportLevelO.isWarning(), 1, null), null, false, 6, null);
    }

    public final Object s(Object obj) {
        Object objS;
        y45.j(obj, "annotation");
        if (this.a.d().d()) {
            return null;
        }
        if (i81.d0(jd.b(), i(obj)) || l(obj, jd.f())) {
            return obj;
        }
        if (!l(obj, jd.g())) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        Object objJ = j(obj);
        Object obj2 = concurrentHashMap.get(objJ);
        if (obj2 != null) {
            return obj2;
        }
        Iterator it = k(obj).iterator();
        do {
            if (!it.hasNext()) {
                objS = null;
                break;
            }
            objS = s(it.next());
        } while (objS == null);
        if (objS == null) {
            return null;
        }
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(objJ, objS);
        return objPutIfAbsent == null ? objS : objPutIfAbsent;
    }

    public final Pair t(Object obj) {
        Object objH;
        Object next;
        if (this.a.d().d() || (objH = h(obj, jd.e())) == null) {
            return null;
        }
        Iterator it = k(obj).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (s(next) == null);
        if (next == null) {
            return null;
        }
        Iterable iterableB = b(objH, true);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = iterableB.iterator();
        while (it2.hasNext()) {
            AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = (AnnotationQualifierApplicabilityType) d.get((String) it2.next());
            if (annotationQualifierApplicabilityType != null) {
                linkedHashSet.add(annotationQualifierApplicabilityType);
            }
        }
        return new Pair(next, a(linkedHashSet));
    }
}
