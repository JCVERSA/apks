package defpackage;

import com.squareup.moshi.e;
import com.squareup.moshi.j;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

public final class br6 extends si1.a {
    public final j a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public br6(j jVar, boolean z, boolean z2, boolean z3) {
        this.a = jVar;
        this.b = z;
        this.c = z2;
        this.d = z3;
    }

    public static br6 a(j jVar) {
        if (jVar != null) {
            return new br6(jVar, false, false, false);
        }
        throw new NullPointerException("moshi == null");
    }

    public static Set b(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(ub5.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : Collections.emptySet();
    }

    @Override
    public si1 requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, ru8 ru8Var) {
        e eVarE = this.a.e(type, b(annotationArr));
        if (this.b) {
            eVarE = eVarE.lenient();
        }
        if (this.c) {
            eVarE = eVarE.failOnUnknown();
        }
        if (this.d) {
            eVarE = eVarE.serializeNulls();
        }
        return new cr6(eVarE);
    }

    @Override
    public si1 responseBodyConverter(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        e eVarE = this.a.e(type, b(annotationArr));
        if (this.b) {
            eVarE = eVarE.lenient();
        }
        if (this.c) {
            eVarE = eVarE.failOnUnknown();
        }
        if (this.d) {
            eVarE = eVarE.serializeNulls();
        }
        return new dr6(eVarE);
    }
}
