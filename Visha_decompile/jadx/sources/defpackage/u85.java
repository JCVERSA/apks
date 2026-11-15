package defpackage;

import java.util.EnumMap;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;

public final class u85 {
    public final EnumMap a;

    public u85(EnumMap enumMap) {
        y45.j(enumMap, "defaultQualifiers");
        this.a = enumMap;
    }

    public final g75 a(AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType) {
        return (g75) this.a.get(annotationQualifierApplicabilityType);
    }

    public final EnumMap b() {
        return this.a;
    }
}
