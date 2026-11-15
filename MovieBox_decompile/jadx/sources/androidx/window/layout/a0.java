package androidx.window.layout;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a0 {

    private final List f15004a;

    public a0(List displayFeatures) {
        Intrinsics.h(displayFeatures, "displayFeatures");
        this.f15004a = displayFeatures;
    }

    public final List a() {
        return this.f15004a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(a0.class, obj.getClass())) {
            return false;
        }
        return Intrinsics.c(this.f15004a, ((a0) obj).f15004a);
    }

    public int hashCode() {
        return this.f15004a.hashCode();
    }

    public String toString() {
        return CollectionsKt.s0(this.f15004a, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
    }
}
