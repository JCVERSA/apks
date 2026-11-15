package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class y1 extends p1 {

    private short[] f65248a;

    private int f65249b;

    public y1(short[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65248a = bufferWithData;
        this.f65249b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        short[] sArr = this.f65248a;
        if (sArr.length < i10) {
            short[] sArrCopyOf = Arrays.copyOf(sArr, RangesKt.e(i10, sArr.length * 2));
            Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
            this.f65248a = sArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65249b;
    }

    public final void e(short s10) {
        p1.c(this, 0, 1, null);
        short[] sArr = this.f65248a;
        int iD = d();
        this.f65249b = iD + 1;
        sArr[iD] = s10;
    }

    @Override
    public short[] a() {
        short[] sArrCopyOf = Arrays.copyOf(this.f65248a, d());
        Intrinsics.g(sArrCopyOf, "copyOf(this, newSize)");
        return sArrCopyOf;
    }
}
