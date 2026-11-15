package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class x {

    private final String f5972a;

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final String a() {
        return this.f5972a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && Intrinsics.c(this.f5972a, ((x) obj).f5972a);
    }

    public int hashCode() {
        String str = this.f5972a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PlatformImeOptions(privateImeOptions=" + this.f5972a + ')';
    }

    public x(String str) {
        this.f5972a = str;
    }

    public x(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
