package com.google.android.exoplayer2;

public final class b3 {

    public static final b3 f24163b = new b3(false);

    public final boolean f24164a;

    public b3(boolean z10) {
        this.f24164a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && b3.class == obj.getClass() && this.f24164a == ((b3) obj).f24164a;
    }

    public int hashCode() {
        return !this.f24164a ? 1 : 0;
    }
}
