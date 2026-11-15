package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class p0 extends p1 {

    private int[] f65212a;

    private int f65213b;

    public p0(int[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65212a = bufferWithData;
        this.f65213b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        int[] iArr = this.f65212a;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, RangesKt.e(i10, iArr.length * 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f65212a = iArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65213b;
    }

    public final void e(int i10) {
        p1.c(this, 0, 1, null);
        int[] iArr = this.f65212a;
        int iD = d();
        this.f65213b = iD + 1;
        iArr[iD] = i10;
    }

    @Override
    public int[] a() {
        int[] iArrCopyOf = Arrays.copyOf(this.f65212a, d());
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        return iArrCopyOf;
    }
}
