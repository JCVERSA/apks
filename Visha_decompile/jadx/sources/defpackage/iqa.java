package defpackage;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class iqa {
    public final int a;
    public final Comparator b;
    public final Object[] c;
    public int d;
    public Object e;

    public iqa(Comparator comparator, int i) {
        this.b = (Comparator) xd8.p(comparator, "comparator");
        this.a = i;
        xd8.f(i >= 0, "k (%s) must be >= 0", i);
        xd8.f(i <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i);
        this.c = new Object[r15.b(i, 2)];
        this.d = 0;
        this.e = null;
    }

    public static iqa a(int i, Comparator comparator) {
        return new iqa(comparator, i);
    }

    public void b(Object obj) {
        int i = this.a;
        if (i == 0) {
            return;
        }
        int i2 = this.d;
        if (i2 == 0) {
            this.c[0] = obj;
            this.e = obj;
            this.d = 1;
            return;
        }
        if (i2 < i) {
            Object[] objArr = this.c;
            this.d = i2 + 1;
            objArr[i2] = obj;
            if (this.b.compare(obj, r37.a(this.e)) > 0) {
                this.e = obj;
                return;
            }
            return;
        }
        if (this.b.compare(obj, r37.a(this.e)) < 0) {
            Object[] objArr2 = this.c;
            int i3 = this.d;
            int i4 = i3 + 1;
            this.d = i4;
            objArr2[i3] = obj;
            if (i4 == this.a * 2) {
                g();
            }
        }
    }

    public void c(Iterator it) {
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public final int d(int i, int i2, int i3) {
        Object objA = r37.a(this.c[i3]);
        Object[] objArr = this.c;
        objArr[i3] = objArr[i2];
        int i4 = i;
        while (i < i2) {
            if (this.b.compare(r37.a(this.c[i]), objA) < 0) {
                e(i4, i);
                i4++;
            }
            i++;
        }
        Object[] objArr2 = this.c;
        objArr2[i2] = objArr2[i4];
        objArr2[i4] = objA;
        return i4;
    }

    public final void e(int i, int i2) {
        Object[] objArr = this.c;
        Object obj = objArr[i];
        objArr[i] = objArr[i2];
        objArr[i2] = obj;
    }

    public List f() {
        Object[] objArr = this.c;
        Arrays.sort(objArr, 0, this.d, this.b);
        int i = this.d;
        int i2 = this.a;
        if (i > i2) {
            Object[] objArr2 = this.c;
            Arrays.fill(objArr2, i2, objArr2.length, (Object) null);
            int i3 = this.a;
            this.d = i3;
            this.e = this.c[i3 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(objArr, this.d)));
    }

    public final void g() {
        int i = (this.a * 2) - 1;
        int iF = r15.f(i, RoundingMode.CEILING) * 3;
        int iMax = 0;
        int i2 = 0;
        int i3 = 0;
        while (iMax < i) {
            int iD = d(iMax, i, ((iMax + i) + 1) >>> 1);
            int i4 = this.a;
            if (iD <= i4) {
                if (iD >= i4) {
                    break;
                }
                iMax = Math.max(iD, iMax + 1);
                i3 = iD;
            } else {
                i = iD - 1;
            }
            i2++;
            if (i2 >= iF) {
                Arrays.sort(this.c, iMax, i + 1, this.b);
                break;
            }
        }
        this.d = this.a;
        this.e = r37.a(this.c[i3]);
        while (true) {
            i3++;
            if (i3 >= this.a) {
                return;
            }
            if (this.b.compare(r37.a(this.c[i3]), r37.a(this.e)) > 0) {
                this.e = this.c[i3];
            }
        }
    }
}
