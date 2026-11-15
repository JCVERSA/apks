package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private Object[] f1959a;

    private int f1960b;

    private int f1961c;

    private int f1962d;

    @JvmOverloads
    public e() {
        this(0, 1, null);
    }

    private final void b() {
        Object[] objArr = this.f1959a;
        int length = objArr.length;
        int i10 = this.f1960b;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i12];
        ArraysKt.l(objArr, objArr2, 0, i10, length);
        ArraysKt.l(this.f1959a, objArr2, i11, 0, this.f1960b);
        this.f1959a = objArr2;
        this.f1960b = 0;
        this.f1961c = length;
        this.f1962d = i12 - 1;
    }

    public final void a(Object obj) {
        Object[] objArr = this.f1959a;
        int i10 = this.f1961c;
        objArr[i10] = obj;
        int i11 = this.f1962d & (i10 + 1);
        this.f1961c = i11;
        if (i11 == this.f1960b) {
            b();
        }
    }

    public final Object c(int i10) {
        if (i10 < 0 || i10 >= f()) {
            g gVar = g.f1969a;
            throw new ArrayIndexOutOfBoundsException();
        }
        Object obj = this.f1959a[this.f1962d & (this.f1960b + i10)];
        Intrinsics.e(obj);
        return obj;
    }

    public final boolean d() {
        return this.f1960b == this.f1961c;
    }

    public final Object e() {
        int i10 = this.f1960b;
        if (i10 == this.f1961c) {
            g gVar = g.f1969a;
            throw new ArrayIndexOutOfBoundsException();
        }
        Object[] objArr = this.f1959a;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f1960b = (i10 + 1) & this.f1962d;
        return obj;
    }

    public final int f() {
        return (this.f1961c - this.f1960b) & this.f1962d;
    }

    public e(int i10) {
        if (!(i10 >= 1)) {
            n.d.a("capacity must be >= 1");
        }
        if (!(i10 <= 1073741824)) {
            n.d.a("capacity must be <= 2^30");
        }
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.f1962d = i10 - 1;
        this.f1959a = new Object[i10];
    }

    public e(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
