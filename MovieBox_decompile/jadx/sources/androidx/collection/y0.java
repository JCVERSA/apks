package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class y0 implements Cloneable {

    public boolean f2054a;

    public int[] f2055b;

    public Object[] f2056c;

    public int f2057d;

    @JvmOverloads
    public y0() {
        this(0, 1, null);
    }

    public void a(int i10, Object obj) {
        int i11 = this.f2057d;
        if (i11 != 0 && i10 <= this.f2055b[i11 - 1]) {
            l(i10, obj);
            return;
        }
        if (this.f2054a && i11 >= this.f2055b.length) {
            z0.f(this);
        }
        int i12 = this.f2057d;
        if (i12 >= this.f2055b.length) {
            int iE = n.a.e(i12 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f2055b, iE);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f2055b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2056c, iE);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2056c = objArrCopyOf;
        }
        this.f2055b[i12] = i10;
        this.f2056c[i12] = obj;
        this.f2057d = i12 + 1;
    }

    public void b() {
        int i10 = this.f2057d;
        Object[] objArr = this.f2056c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f2057d = 0;
        this.f2054a = false;
    }

    public y0 clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.f(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        y0 y0Var = (y0) objClone;
        y0Var.f2055b = (int[]) this.f2055b.clone();
        y0Var.f2056c = (Object[]) this.f2056c.clone();
        return y0Var;
    }

    public boolean d(int i10) {
        return i(i10) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public boolean e(Object obj) {
        if (this.f2054a) {
            z0.f(this);
        }
        int i10 = this.f2057d;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f2056c[i11] == obj) {
                if (i11 >= 0) {
                    return true;
                }
                return false;
            }
            i11++;
        }
        i11 = -1;
        if (i11 >= 0) {
            return true;
        }
        return false;
    }

    public Object g(int i10) {
        return z0.c(this, i10);
    }

    public Object h(int i10, Object obj) {
        return z0.d(this, i10, obj);
    }

    public int i(int i10) {
        if (this.f2054a) {
            z0.f(this);
        }
        return n.a.a(this.f2055b, this.f2057d, i10);
    }

    public int j(Object obj) {
        if (this.f2054a) {
            z0.f(this);
        }
        int i10 = this.f2057d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f2056c[i11] == obj) {
                return i11;
            }
        }
        return -1;
    }

    public int k(int i10) {
        if (this.f2054a) {
            z0.f(this);
        }
        return this.f2055b[i10];
    }

    public void l(int i10, Object obj) {
        int iA = n.a.a(this.f2055b, this.f2057d, i10);
        if (iA >= 0) {
            this.f2056c[iA] = obj;
            return;
        }
        int i11 = ~iA;
        if (i11 < this.f2057d && this.f2056c[i11] == z0.f2058a) {
            this.f2055b[i11] = i10;
            this.f2056c[i11] = obj;
            return;
        }
        if (this.f2054a && this.f2057d >= this.f2055b.length) {
            z0.f(this);
            i11 = ~n.a.a(this.f2055b, this.f2057d, i10);
        }
        int i12 = this.f2057d;
        if (i12 >= this.f2055b.length) {
            int iE = n.a.e(i12 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f2055b, iE);
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f2055b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f2056c, iE);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f2056c = objArrCopyOf;
        }
        int i13 = this.f2057d;
        if (i13 - i11 != 0) {
            int[] iArr = this.f2055b;
            int i14 = i11 + 1;
            ArraysKt.j(iArr, iArr, i14, i11, i13);
            Object[] objArr = this.f2056c;
            ArraysKt.l(objArr, objArr, i14, i11, this.f2057d);
        }
        this.f2055b[i11] = i10;
        this.f2056c[i11] = obj;
        this.f2057d++;
    }

    public void m(int i10) {
        z0.e(this, i10);
    }

    public void n(int i10) {
        if (this.f2056c[i10] != z0.f2058a) {
            this.f2056c[i10] = z0.f2058a;
            this.f2054a = true;
        }
    }

    public Object o(int i10, Object obj) {
        int i11 = i(i10);
        if (i11 < 0) {
            return null;
        }
        Object[] objArr = this.f2056c;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public int p() {
        if (this.f2054a) {
            z0.f(this);
        }
        return this.f2057d;
    }

    public Object q(int i10) {
        if (this.f2054a) {
            z0.f(this);
        }
        return this.f2056c[i10];
    }

    public String toString() {
        if (p() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f2057d * 28);
        sb2.append('{');
        int i10 = this.f2057d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(k(i11));
            sb2.append('=');
            Object objQ = q(i11);
            if (objQ != this) {
                sb2.append(objQ);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "buffer.toString()");
        return string;
    }

    public y0(int i10) {
        if (i10 == 0) {
            this.f2055b = n.a.f66842a;
            this.f2056c = n.a.f66844c;
        } else {
            int iE = n.a.e(i10);
            this.f2055b = new int[iE];
            this.f2056c = new Object[iE];
        }
    }

    public y0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
