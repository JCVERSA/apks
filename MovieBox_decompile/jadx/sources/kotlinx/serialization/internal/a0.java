package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class a0 extends p1 {

    private double[] f65135a;

    private int f65136b;

    public a0(double[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65135a = bufferWithData;
        this.f65136b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        double[] dArr = this.f65135a;
        if (dArr.length < i10) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, RangesKt.e(i10, dArr.length * 2));
            Intrinsics.g(dArrCopyOf, "copyOf(this, newSize)");
            this.f65135a = dArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65136b;
    }

    public final void e(double d10) {
        p1.c(this, 0, 1, null);
        double[] dArr = this.f65135a;
        int iD = d();
        this.f65136b = iD + 1;
        dArr[iD] = d10;
    }

    @Override
    public double[] a() {
        double[] dArrCopyOf = Arrays.copyOf(this.f65135a, d());
        Intrinsics.g(dArrCopyOf, "copyOf(this, newSize)");
        return dArrCopyOf;
    }
}
