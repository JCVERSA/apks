package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UIntArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class h2 extends p1 {

    private int[] f65181a;

    private int f65182b;

    public h2(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    @Override
    public Object a() {
        return UIntArray.a(f());
    }

    @Override
    public void b(int i10) {
        if (UIntArray.o(this.f65181a) < i10) {
            int[] iArr = this.f65181a;
            int[] iArrCopyOf = Arrays.copyOf(iArr, RangesKt.e(i10, UIntArray.o(iArr) * 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f65181a = UIntArray.e(iArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.f65182b;
    }

    public final void e(int i10) {
        p1.c(this, 0, 1, null);
        int[] iArr = this.f65181a;
        int iD = d();
        this.f65182b = iD + 1;
        UIntArray.s(iArr, iD, i10);
    }

    public int[] f() {
        int[] iArrCopyOf = Arrays.copyOf(this.f65181a, d());
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        return UIntArray.e(iArrCopyOf);
    }

    private h2(int[] iArr) {
        this.f65181a = iArr;
        this.f65182b = UIntArray.o(iArr);
        b(10);
    }
}
