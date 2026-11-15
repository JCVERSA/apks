package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d0 extends m {
    public d0() {
        this(0, 1, null);
    }

    public final boolean e(int i10) {
        g(this.f1990b + 1);
        int[] iArr = this.f1989a;
        int i11 = this.f1990b;
        iArr[i11] = i10;
        this.f1990b = i11 + 1;
        return true;
    }

    public final boolean f(int i10, int[] elements) {
        int i11;
        Intrinsics.h(elements, "elements");
        if (i10 < 0 || i10 > (i11 = this.f1990b)) {
            throw new IndexOutOfBoundsException("Index " + i10 + " must be in 0.." + this.f1990b);
        }
        if (elements.length == 0) {
            return false;
        }
        g(i11 + elements.length);
        int[] iArr = this.f1989a;
        int i12 = this.f1990b;
        if (i10 != i12) {
            ArraysKt.j(iArr, iArr, elements.length + i10, i10, i12);
        }
        ArraysKt.o(elements, iArr, i10, 0, 0, 12, null);
        this.f1990b += elements.length;
        return true;
    }

    public final void g(int i10) {
        int[] iArr = this.f1989a;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, Math.max(i10, (iArr.length * 3) / 2));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f1989a = iArrCopyOf;
        }
    }

    public final void h(int[] elements) {
        Intrinsics.h(elements, "elements");
        f(this.f1990b, elements);
    }

    public final int i(int i10) {
        int i11;
        if (i10 < 0 || i10 >= (i11 = this.f1990b)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Index ");
            sb2.append(i10);
            sb2.append(" must be in 0..");
            sb2.append(this.f1990b - 1);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int[] iArr = this.f1989a;
        int i12 = iArr[i10];
        if (i10 != i11 - 1) {
            ArraysKt.j(iArr, iArr, i10, i10 + 1, i11);
        }
        this.f1990b--;
        return i12;
    }

    public final int j(int i10, int i11) {
        if (i10 >= 0 && i10 < this.f1990b) {
            int[] iArr = this.f1989a;
            int i12 = iArr[i10];
            iArr[i10] = i11;
            return i12;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("set index ");
        sb2.append(i10);
        sb2.append(" must be between 0 .. ");
        sb2.append(this.f1990b - 1);
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public d0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public d0(int i10) {
        super(i10, null);
    }
}
