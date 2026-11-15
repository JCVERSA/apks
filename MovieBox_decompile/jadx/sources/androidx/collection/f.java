package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f {

    private int[] f1964a;

    private int f1965b;

    private int f1966c;

    private int f1967d;

    @JvmOverloads
    public f() {
        this(0, 1, null);
    }

    private final void c() {
        int[] iArr = this.f1964a;
        int length = iArr.length;
        int i10 = this.f1965b;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr2 = new int[i12];
        ArraysKt.j(iArr, iArr2, 0, i10, length);
        ArraysKt.j(this.f1964a, iArr2, i11, 0, this.f1965b);
        this.f1964a = iArr2;
        this.f1965b = 0;
        this.f1966c = length;
        this.f1967d = i12 - 1;
    }

    public final void a(int i10) {
        int[] iArr = this.f1964a;
        int i11 = this.f1966c;
        iArr[i11] = i10;
        int i12 = this.f1967d & (i11 + 1);
        this.f1966c = i12;
        if (i12 == this.f1965b) {
            c();
        }
    }

    public final void b() {
        this.f1966c = this.f1965b;
    }

    public final boolean d() {
        return this.f1965b == this.f1966c;
    }

    public final int e() {
        int i10 = this.f1965b;
        if (i10 == this.f1966c) {
            g gVar = g.f1969a;
            throw new ArrayIndexOutOfBoundsException();
        }
        int i11 = this.f1964a[i10];
        this.f1965b = (i10 + 1) & this.f1967d;
        return i11;
    }

    public f(int i10) {
        if (!(i10 >= 1)) {
            n.d.a("capacity must be >= 1");
        }
        if (!(i10 <= 1073741824)) {
            n.d.a("capacity must be <= 2^30");
        }
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.f1967d = i10 - 1;
        this.f1964a = new int[i10];
    }

    public f(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
