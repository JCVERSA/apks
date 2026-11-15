package androidx.compose.ui.node;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class p0 {

    private int f5109a;

    private int[] f5110b = new int[16];

    private androidx.compose.runtime.collection.b[] f5111c = new androidx.compose.runtime.collection.b[16];

    public final boolean a() {
        int i10 = this.f5109a;
        return i10 > 0 && this.f5110b[i10 - 1] >= 0;
    }

    public final Object b() {
        int i10 = this.f5109a;
        if (i10 <= 0) {
            throw new IllegalStateException("Cannot call pop() on an empty stack. Guard with a call to isNotEmpty()");
        }
        int i11 = i10 - 1;
        int i12 = this.f5110b[i11];
        androidx.compose.runtime.collection.b bVar = this.f5111c[i11];
        Intrinsics.e(bVar);
        if (i12 > 0) {
            int[] iArr = this.f5110b;
            iArr[i11] = iArr[i11] - 1;
        } else if (i12 == 0) {
            this.f5111c[i11] = null;
            this.f5109a--;
        }
        return bVar.m()[i12];
    }

    public final void c(androidx.compose.runtime.collection.b bVar) {
        if (bVar.p()) {
            return;
        }
        int i10 = this.f5109a;
        int[] iArr = this.f5110b;
        if (i10 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f5110b = iArrCopyOf;
            androidx.compose.runtime.collection.b[] bVarArr = this.f5111c;
            Object[] objArrCopyOf = Arrays.copyOf(bVarArr, bVarArr.length * 2);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f5111c = (androidx.compose.runtime.collection.b[]) objArrCopyOf;
        }
        this.f5110b[i10] = bVar.n() - 1;
        this.f5111c[i10] = bVar;
        this.f5109a++;
    }
}
