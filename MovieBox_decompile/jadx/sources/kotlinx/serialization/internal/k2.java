package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.ULongArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class k2 extends p1 {

    private long[] f65193a;

    private int f65194b;

    public k2(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    @Override
    public Object a() {
        return ULongArray.a(f());
    }

    @Override
    public void b(int i10) {
        if (ULongArray.o(this.f65193a) < i10) {
            long[] jArr = this.f65193a;
            long[] jArrCopyOf = Arrays.copyOf(jArr, RangesKt.e(i10, ULongArray.o(jArr) * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f65193a = ULongArray.e(jArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.f65194b;
    }

    public final void e(long j10) {
        p1.c(this, 0, 1, null);
        long[] jArr = this.f65193a;
        int iD = d();
        this.f65194b = iD + 1;
        ULongArray.s(jArr, iD, j10);
    }

    public long[] f() {
        long[] jArrCopyOf = Arrays.copyOf(this.f65193a, d());
        Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
        return ULongArray.e(jArrCopyOf);
    }

    private k2(long[] jArr) {
        this.f65193a = jArr;
        this.f65194b = ULongArray.o(jArr);
        b(10);
    }
}
