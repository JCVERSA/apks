package androidx.room.util;

import kotlin.jvm.internal.Intrinsics;

final class e implements Comparable {

    private final int f14455a;

    private final int f14456b;

    private final String f14457c;

    private final String f14458d;

    public e(int i10, int i11, String from, String to2) {
        Intrinsics.h(from, "from");
        Intrinsics.h(to2, "to");
        this.f14455a = i10;
        this.f14456b = i11;
        this.f14457c = from;
        this.f14458d = to2;
    }

    @Override
    public int compareTo(e other) {
        Intrinsics.h(other, "other");
        int i10 = this.f14455a - other.f14455a;
        return i10 == 0 ? this.f14456b - other.f14456b : i10;
    }

    public final String b() {
        return this.f14457c;
    }

    public final int d() {
        return this.f14455a;
    }

    public final String e() {
        return this.f14458d;
    }
}
