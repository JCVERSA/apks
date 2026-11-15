package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class g extends p1 {

    private boolean[] f65169a;

    private int f65170b;

    public g(boolean[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65169a = bufferWithData;
        this.f65170b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        boolean[] zArr = this.f65169a;
        if (zArr.length < i10) {
            boolean[] zArrCopyOf = Arrays.copyOf(zArr, RangesKt.e(i10, zArr.length * 2));
            Intrinsics.g(zArrCopyOf, "copyOf(this, newSize)");
            this.f65169a = zArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65170b;
    }

    public final void e(boolean z10) {
        p1.c(this, 0, 1, null);
        boolean[] zArr = this.f65169a;
        int iD = d();
        this.f65170b = iD + 1;
        zArr[iD] = z10;
    }

    @Override
    public boolean[] a() {
        boolean[] zArrCopyOf = Arrays.copyOf(this.f65169a, d());
        Intrinsics.g(zArrCopyOf, "copyOf(this, newSize)");
        return zArrCopyOf;
    }
}
