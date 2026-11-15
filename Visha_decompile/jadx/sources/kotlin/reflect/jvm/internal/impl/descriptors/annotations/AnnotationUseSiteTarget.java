package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import defpackage.kr0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public enum AnnotationUseSiteTarget {
    FIELD(null, 1, null),
    FILE(null, 1, null),
    PROPERTY(null, 1, null),
    PROPERTY_GETTER("get"),
    PROPERTY_SETTER("set"),
    RECEIVER(null, 1, null),
    CONSTRUCTOR_PARAMETER("param"),
    SETTER_PARAMETER("setparam"),
    PROPERTY_DELEGATE_FIELD("delegate");

    private final String renderName;

    AnnotationUseSiteTarget(String str) {
        this.renderName = str == null ? kr0.f(name()) : str;
    }

    public final String getRenderName() {
        return this.renderName;
    }

    AnnotationUseSiteTarget(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }
}
