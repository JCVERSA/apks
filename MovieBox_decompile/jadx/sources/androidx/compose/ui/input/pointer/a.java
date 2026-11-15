package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.Intrinsics;

public final class a implements s {

    private final int f4664b;

    public a(int i10) {
        this.f4664b = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(a.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIconType");
        return this.f4664b == ((a) obj).f4664b;
    }

    public int hashCode() {
        return this.f4664b;
    }

    public String toString() {
        return "AndroidPointerIcon(type=" + this.f4664b + ')';
    }
}
