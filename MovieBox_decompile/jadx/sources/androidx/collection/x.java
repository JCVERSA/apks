package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class x implements Cloneable {

    public boolean f2049a;

    public long[] f2050b;

    public Object[] f2051c;

    public int f2052d;

    @JvmOverloads
    public x() {
        this(0, 1, null);
    }

    public void a(long j10, Object obj) {
        int i10 = this.f2052d;
        if (i10 != 0 && j10 <= this.f2050b[i10 - 1]) {
            k(j10, obj);
            return;
        }
        if (this.f2049a) {
            long[] jArr = this.f2050b;
            if (i10 >= jArr.length) {
                Object[] objArr = this.f2051c;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj2 = objArr[i12];
                    if (obj2 != y.f2053a) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr[i11] = obj2;
                            objArr[i12] = null;
                        }
                        i11++;
                    }
                }
                this.f2049a = false;
                this.f2052d = i11;
            }
        }
        int i13 = this.f2052d;
        if (i13 >= this.f2050b.length) {
            int iF = n.a.f(i13 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.f2050b, iF);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f2050b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2051c, iF);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2051c = objArrCopyOf;
        }
        this.f2050b[i13] = j10;
        this.f2051c[i13] = obj;
        this.f2052d = i13 + 1;
    }

    public void b() {
        int i10 = this.f2052d;
        Object[] objArr = this.f2051c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f2052d = 0;
        this.f2049a = false;
    }

    public x clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.f(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        x xVar = (x) objClone;
        xVar.f2050b = (long[]) this.f2050b.clone();
        xVar.f2051c = (Object[]) this.f2051c.clone();
        return xVar;
    }

    public boolean d(long j10) {
        return h(j10) >= 0;
    }

    public Object e(long j10) {
        int iB = n.a.b(this.f2050b, this.f2052d, j10);
        if (iB < 0 || this.f2051c[iB] == y.f2053a) {
            return null;
        }
        return this.f2051c[iB];
    }

    public Object g(long j10, Object obj) {
        int iB = n.a.b(this.f2050b, this.f2052d, j10);
        return (iB < 0 || this.f2051c[iB] == y.f2053a) ? obj : this.f2051c[iB];
    }

    public int h(long j10) {
        if (this.f2049a) {
            int i10 = this.f2052d;
            long[] jArr = this.f2050b;
            Object[] objArr = this.f2051c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != y.f2053a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f2049a = false;
            this.f2052d = i11;
        }
        return n.a.b(this.f2050b, this.f2052d, j10);
    }

    public boolean i() {
        return n() == 0;
    }

    public long j(int i10) {
        if (!(i10 >= 0 && i10 < this.f2052d)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (this.f2049a) {
            int i11 = this.f2052d;
            long[] jArr = this.f2050b;
            Object[] objArr = this.f2051c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != y.f2053a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f2049a = false;
            this.f2052d = i12;
        }
        return this.f2050b[i10];
    }

    public void k(long j10, Object obj) {
        int iB = n.a.b(this.f2050b, this.f2052d, j10);
        if (iB >= 0) {
            this.f2051c[iB] = obj;
            return;
        }
        int i10 = ~iB;
        if (i10 < this.f2052d && this.f2051c[i10] == y.f2053a) {
            this.f2050b[i10] = j10;
            this.f2051c[i10] = obj;
            return;
        }
        if (this.f2049a) {
            int i11 = this.f2052d;
            long[] jArr = this.f2050b;
            if (i11 >= jArr.length) {
                Object[] objArr = this.f2051c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj2 = objArr[i13];
                    if (obj2 != y.f2053a) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj2;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f2049a = false;
                this.f2052d = i12;
                i10 = ~n.a.b(this.f2050b, i12, j10);
            }
        }
        int i14 = this.f2052d;
        if (i14 >= this.f2050b.length) {
            int iF = n.a.f(i14 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.f2050b, iF);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f2050b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2051c, iF);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2051c = objArrCopyOf;
        }
        int i15 = this.f2052d;
        if (i15 - i10 != 0) {
            long[] jArr2 = this.f2050b;
            int i16 = i10 + 1;
            ArraysKt.k(jArr2, jArr2, i16, i10, i15);
            Object[] objArr2 = this.f2051c;
            ArraysKt.l(objArr2, objArr2, i16, i10, this.f2052d);
        }
        this.f2050b[i10] = j10;
        this.f2051c[i10] = obj;
        this.f2052d++;
    }

    public void l(long j10) {
        int iB = n.a.b(this.f2050b, this.f2052d, j10);
        if (iB < 0 || this.f2051c[iB] == y.f2053a) {
            return;
        }
        this.f2051c[iB] = y.f2053a;
        this.f2049a = true;
    }

    public void m(int i10) {
        if (this.f2051c[i10] != y.f2053a) {
            this.f2051c[i10] = y.f2053a;
            this.f2049a = true;
        }
    }

    public int n() {
        if (this.f2049a) {
            int i10 = this.f2052d;
            long[] jArr = this.f2050b;
            Object[] objArr = this.f2051c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != y.f2053a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f2049a = false;
            this.f2052d = i11;
        }
        return this.f2052d;
    }

    public Object o(int i10) {
        if (!(i10 >= 0 && i10 < this.f2052d)) {
            n.d.a("Expected index to be within 0..size()-1, but was " + i10);
        }
        if (this.f2049a) {
            int i11 = this.f2052d;
            long[] jArr = this.f2050b;
            Object[] objArr = this.f2051c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != y.f2053a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f2049a = false;
            this.f2052d = i12;
        }
        return this.f2051c[i10];
    }

    public String toString() {
        if (n() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f2052d * 28);
        sb2.append('{');
        int i10 = this.f2052d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(j(i11));
            sb2.append('=');
            Object objO = o(i11);
            if (objO != sb2) {
                sb2.append(objO);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public x(int i10) {
        if (i10 == 0) {
            this.f2050b = n.a.f66843b;
            this.f2051c = n.a.f66844c;
        } else {
            int iF = n.a.f(i10);
            this.f2050b = new long[iF];
            this.f2051c = new Object[iF];
        }
    }

    public x(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
