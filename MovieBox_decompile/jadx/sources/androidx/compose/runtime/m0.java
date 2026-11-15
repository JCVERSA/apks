package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class m0 {

    private int[] f3495a = new int[10];

    private int f3496b;

    public final void a() {
        this.f3496b = 0;
    }

    public final int b() {
        return this.f3496b;
    }

    public final int c(int i10) {
        int i11 = this.f3496b;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f3495a[i12] == i10) {
                return i12;
            }
        }
        return -1;
    }

    public final boolean d() {
        return this.f3496b == 0;
    }

    public final int e() {
        return this.f3495a[this.f3496b - 1];
    }

    public final int f(int i10) {
        return this.f3495a[i10];
    }

    public final int g() {
        return this.f3495a[this.f3496b - 2];
    }

    public final int h(int i10) {
        return this.f3496b > 0 ? e() : i10;
    }

    public final int i() {
        int[] iArr = this.f3495a;
        int i10 = this.f3496b - 1;
        this.f3496b = i10;
        return iArr[i10];
    }

    public final void j(int i10) {
        int i11 = this.f3496b;
        int[] iArr = this.f3495a;
        if (i11 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f3495a = iArrCopyOf;
        }
        int[] iArr2 = this.f3495a;
        int i12 = this.f3496b;
        this.f3496b = i12 + 1;
        iArr2[i12] = i10;
    }
}
