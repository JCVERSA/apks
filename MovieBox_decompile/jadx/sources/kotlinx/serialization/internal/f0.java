package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class f0 extends p1 {

    private float[] f65166a;

    private int f65167b;

    public f0(float[] bufferWithData) {
        Intrinsics.h(bufferWithData, "bufferWithData");
        this.f65166a = bufferWithData;
        this.f65167b = bufferWithData.length;
        b(10);
    }

    @Override
    public void b(int i10) {
        float[] fArr = this.f65166a;
        if (fArr.length < i10) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, RangesKt.e(i10, fArr.length * 2));
            Intrinsics.g(fArrCopyOf, "copyOf(this, newSize)");
            this.f65166a = fArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.f65167b;
    }

    public final void e(float f10) {
        p1.c(this, 0, 1, null);
        float[] fArr = this.f65166a;
        int iD = d();
        this.f65167b = iD + 1;
        fArr[iD] = f10;
    }

    @Override
    public float[] a() {
        float[] fArrCopyOf = Arrays.copyOf(this.f65166a, d());
        Intrinsics.g(fArrCopyOf, "copyOf(this, newSize)");
        return fArrCopyOf;
    }
}
