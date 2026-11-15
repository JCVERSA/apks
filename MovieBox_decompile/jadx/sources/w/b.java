package w;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {

    private int f74077a;

    public b() {
        this(0, 1, null);
    }

    public final int a() {
        return this.f74077a;
    }

    public final void b(int i10) {
        this.f74077a += i10;
    }

    public final void c(int i10) {
        this.f74077a = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f74077a == ((b) obj).f74077a;
    }

    public int hashCode() {
        return this.f74077a;
    }

    public String toString() {
        return "DeltaCounter(count=" + this.f74077a + ')';
    }

    public b(int i10) {
        this.f74077a = i10;
    }

    public b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
