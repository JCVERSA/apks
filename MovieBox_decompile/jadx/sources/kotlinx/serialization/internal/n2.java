package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UShortArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class n2 extends p1 {

    private short[] f65204a;

    private int f65205b;

    public n2(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    @Override
    public Object a() {
        return UShortArray.a(f());
    }

    @Override
    public void b(int i10) {
        if (UShortArray.o(this.f65204a) < i10) {
            short[] sArr = this.f65204a;
            short[] sArrCopyOf = Arrays.copyOf(sArr, RangesKt.e(i10, UShortArray.o(sArr) * 2));
            Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
            this.f65204a = UShortArray.e(sArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.f65205b;
    }

    public final void e(short s10) {
        p1.c(this, 0, 1, null);
        short[] sArr = this.f65204a;
        int iD = d();
        this.f65205b = iD + 1;
        UShortArray.s(sArr, iD, s10);
    }

    public short[] f() {
        short[] sArrCopyOf = Arrays.copyOf(this.f65204a, d());
        Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
        return UShortArray.e(sArrCopyOf);
    }

    private n2(short[] sArr) {
        this.f65204a = sArr;
        this.f65205b = UShortArray.o(sArr);
        b(10);
    }
}
