package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

public final class g0 {

    private final String f5869a;

    public g0(String str) {
        this.f5869a = str;
    }

    public final String a() {
        return this.f5869a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g0) && Intrinsics.c(this.f5869a, ((g0) obj).f5869a);
    }

    public int hashCode() {
        return this.f5869a.hashCode();
    }

    public String toString() {
        return "UrlAnnotation(url=" + this.f5869a + ')';
    }
}
