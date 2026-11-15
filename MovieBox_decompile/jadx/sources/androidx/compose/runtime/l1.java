package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

public final class l1 {

    private final String f3494a;

    public l1(String str) {
        this.f3494a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l1) && Intrinsics.c(this.f3494a, ((l1) obj).f3494a);
    }

    public int hashCode() {
        return this.f3494a.hashCode();
    }

    public String toString() {
        return "OpaqueKey(key=" + this.f3494a + ')';
    }
}
