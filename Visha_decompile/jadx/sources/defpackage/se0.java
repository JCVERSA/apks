package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class se0 {
    public static final a f = new a(null);
    public final int[] a;
    public final int b;
    public final int c;
    public final int d;
    public final List e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public se0(int... iArr) {
        List listK;
        y45.j(iArr, "numbers");
        this.a = iArr;
        Integer numE0 = hi.e0(iArr, 0);
        this.b = numE0 != null ? numE0.intValue() : -1;
        Integer numE1 = hi.e0(iArr, 1);
        this.c = numE1 != null ? numE1.intValue() : -1;
        Integer numE2 = hi.e0(iArr, 2);
        this.d = numE2 != null ? numE2.intValue() : -1;
        if (iArr.length <= 3) {
            listK = y71.k();
        } else {
            if (iArr.length > 1024) {
                throw new IllegalArgumentException("BinaryVersion with length more than 1024 are not supported. Provided length " + iArr.length + '.');
            }
            listK = i81.b1(fi.e(iArr).subList(3, iArr.length));
        }
        this.e = listK;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final boolean c(int i, int i2, int i3) {
        int i4 = this.b;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.c;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.d >= i3;
    }

    public final boolean d(se0 se0Var) {
        y45.j(se0Var, "version");
        return c(se0Var.b, se0Var.c, se0Var.d);
    }

    public final boolean e(int i, int i2, int i3) {
        int i4 = this.b;
        if (i4 < i) {
            return true;
        }
        if (i4 > i) {
            return false;
        }
        int i5 = this.c;
        if (i5 < i2) {
            return true;
        }
        return i5 <= i2 && this.d <= i3;
    }

    public boolean equals(Object obj) {
        if (obj != null && y45.e(getClass(), obj.getClass())) {
            se0 se0Var = (se0) obj;
            if (this.b == se0Var.b && this.c == se0Var.c && this.d == se0Var.d && y45.e(this.e, se0Var.e)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(se0 se0Var) {
        y45.j(se0Var, "ourVersion");
        int i = this.b;
        if (i == 0) {
            if (se0Var.b != 0 || this.c != se0Var.c) {
                return false;
            }
        } else if (i != se0Var.b || this.c > se0Var.c) {
            return false;
        }
        return true;
    }

    public final int[] g() {
        return this.a;
    }

    public int hashCode() {
        int i = this.b;
        int i2 = i + (i * 31) + this.c;
        int i3 = i2 + (i2 * 31) + this.d;
        return i3 + (i3 * 31) + this.e.hashCode();
    }

    public String toString() {
        int[] iArrG = g();
        ArrayList arrayList = new ArrayList();
        for (int i : iArrG) {
            if (i == -1) {
                break;
            }
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList.isEmpty() ? "unknown" : i81.y0(arrayList, Consts.DOT, null, null, 0, null, null, 62, null);
    }
}
