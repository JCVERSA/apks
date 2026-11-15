package androidx.compose.runtime.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

public final class c {

    private int f3454a;

    public c() {
        this(0, 1, null);
    }

    public final int a() {
        return this.f3454a;
    }

    public final void b(int i10) {
        this.f3454a = i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("IntRef(element = ");
        sb2.append(this.f3454a);
        sb2.append(")@");
        String string = Integer.toString(hashCode(), CharsKt.a(16));
        Intrinsics.g(string, "toString(this, checkRadix(radix))");
        sb2.append(string);
        return sb2.toString();
    }

    public c(int i10) {
        this.f3454a = i10;
    }

    public c(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
