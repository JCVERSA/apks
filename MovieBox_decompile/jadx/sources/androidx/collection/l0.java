package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class l0 extends ObjectList {
    public l0() {
        this(0, 1, null);
    }

    public final boolean e(Object obj) {
        g(this.f1936b + 1);
        Object[] objArr = this.f1935a;
        int i10 = this.f1936b;
        objArr[i10] = obj;
        this.f1936b = i10 + 1;
        return true;
    }

    public final void f() {
        ArraysKt.u(this.f1935a, null, 0, this.f1936b);
        this.f1936b = 0;
    }

    public final void g(int i10) {
        Object[] objArr = this.f1935a;
        if (objArr.length < i10) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(i10, (objArr.length * 3) / 2));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f1935a = objArrCopyOf;
        }
    }

    public l0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public l0(int i10) {
        super(i10, null);
    }
}
