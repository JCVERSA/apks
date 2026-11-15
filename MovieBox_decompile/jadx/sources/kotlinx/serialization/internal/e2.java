package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class e2 extends p1 {

    private byte[] f65163a;

    private int f65164b;

    public e2(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    @Override
    public Object a() {
        return UByteArray.a(f());
    }

    @Override
    public void b(int i10) {
        if (UByteArray.o(this.f65163a) < i10) {
            byte[] bArr = this.f65163a;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, RangesKt.e(i10, UByteArray.o(bArr) * 2));
            Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
            this.f65163a = UByteArray.e(bArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.f65164b;
    }

    public final void e(byte b10) {
        p1.c(this, 0, 1, null);
        byte[] bArr = this.f65163a;
        int iD = d();
        this.f65164b = iD + 1;
        UByteArray.s(bArr, iD, b10);
    }

    public byte[] f() {
        byte[] bArrCopyOf = Arrays.copyOf(this.f65163a, d());
        Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
        return UByteArray.e(bArrCopyOf);
    }

    private e2(byte[] bArr) {
        this.f65163a = bArr;
        this.f65164b = UByteArray.o(bArr);
        b(10);
    }
}
