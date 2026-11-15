package defpackage;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

public abstract class jd {
    public static final o54 a = new o54("javax.annotation.meta.TypeQualifierNickname");
    public static final o54 b = new o54("javax.annotation.meta.TypeQualifier");
    public static final o54 c = new o54("javax.annotation.meta.TypeQualifierDefault");
    public static final o54 d = new o54("kotlin.annotations.jvm.UnderMigration");
    public static final List e;
    public static final Map f;
    public static final Map g;
    public static final Set h;

    static {
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.FIELD;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType2 = AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE;
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType3 = AnnotationQualifierApplicabilityType.VALUE_PARAMETER;
        List listN = y71.n(annotationQualifierApplicabilityType, annotationQualifierApplicabilityType2, annotationQualifierApplicabilityType3, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, AnnotationQualifierApplicabilityType.TYPE_USE);
        e = listN;
        o54 o54VarL = zc5.l();
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        Map mapP = a.p(abb.a(o54VarL, new g75(new m37(nullabilityQualifier, false, 2, null), listN, false)), abb.a(zc5.i(), new g75(new m37(nullabilityQualifier, false, 2, null), listN, false)));
        f = mapP;
        g = a.s(a.p(abb.a(new o54("javax.annotation.ParametersAreNullableByDefault"), new g75(new m37(NullabilityQualifier.NULLABLE, false, 2, null), x71.e(annotationQualifierApplicabilityType3), false, 4, null)), abb.a(new o54("javax.annotation.ParametersAreNonnullByDefault"), new g75(new m37(nullabilityQualifier, false, 2, null), x71.e(annotationQualifierApplicabilityType3), false, 4, null))), mapP);
        h = ye9.j(zc5.f(), zc5.e());
    }

    public static final Map a() {
        return g;
    }

    public static final Set b() {
        return h;
    }

    public static final Map c() {
        return f;
    }

    public static final o54 d() {
        return d;
    }

    public static final o54 e() {
        return c;
    }

    public static final o54 f() {
        return b;
    }

    public static final o54 g() {
        return a;
    }
}
