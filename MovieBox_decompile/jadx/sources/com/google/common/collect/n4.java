package com.google.common.collect;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

final class n4 {

    private final int f30002a;

    private final Comparator f30003b;

    private final Object[] f30004c;

    private int f30005d;

    private Object f30006e;

    private n4(Comparator comparator, int i10) {
        this.f30003b = (Comparator) com.google.common.base.m.p(comparator, "comparator");
        this.f30002a = i10;
        com.google.common.base.m.f(i10 >= 0, "k (%s) must be >= 0", i10);
        com.google.common.base.m.f(i10 <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i10);
        this.f30004c = new Object[com.google.common.math.d.b(i10, 2)];
        this.f30005d = 0;
        this.f30006e = null;
    }

    public static n4 a(int i10, Comparator comparator) {
        return new n4(comparator, i10);
    }

    private int d(int i10, int i11, int i12) {
        Object objA = m3.a(this.f30004c[i12]);
        Object[] objArr = this.f30004c;
        objArr[i12] = objArr[i11];
        int i13 = i10;
        while (i10 < i11) {
            if (this.f30003b.compare(m3.a(this.f30004c[i10]), objA) < 0) {
                e(i13, i10);
                i13++;
            }
            i10++;
        }
        Object[] objArr2 = this.f30004c;
        objArr2[i11] = objArr2[i13];
        objArr2[i13] = objA;
        return i13;
    }

    private void e(int i10, int i11) {
        Object[] objArr = this.f30004c;
        Object obj = objArr[i10];
        objArr[i10] = objArr[i11];
        objArr[i11] = obj;
    }

    private void g() {
        int i10 = (this.f30002a * 2) - 1;
        int iF = com.google.common.math.d.f(i10, RoundingMode.CEILING) * 3;
        int iMax = 0;
        int i11 = 0;
        int i12 = 0;
        while (iMax < i10) {
            int iD = d(iMax, i10, ((iMax + i10) + 1) >>> 1);
            int i13 = this.f30002a;
            if (iD <= i13) {
                if (iD >= i13) {
                    break;
                }
                iMax = Math.max(iD, iMax + 1);
                i12 = iD;
            } else {
                i10 = iD - 1;
            }
            i11++;
            if (i11 >= iF) {
                Arrays.sort(this.f30004c, iMax, i10 + 1, this.f30003b);
                break;
            }
        }
        this.f30005d = this.f30002a;
        this.f30006e = m3.a(this.f30004c[i12]);
        while (true) {
            i12++;
            if (i12 >= this.f30002a) {
                return;
            }
            if (this.f30003b.compare(m3.a(this.f30004c[i12]), m3.a(this.f30006e)) > 0) {
                this.f30006e = this.f30004c[i12];
            }
        }
    }

    public void b(Object obj) {
        int i10 = this.f30002a;
        if (i10 == 0) {
            return;
        }
        int i11 = this.f30005d;
        if (i11 == 0) {
            this.f30004c[0] = obj;
            this.f30006e = obj;
            this.f30005d = 1;
            return;
        }
        if (i11 < i10) {
            Object[] objArr = this.f30004c;
            this.f30005d = i11 + 1;
            objArr[i11] = obj;
            if (this.f30003b.compare(obj, m3.a(this.f30006e)) > 0) {
                this.f30006e = obj;
                return;
            }
            return;
        }
        if (this.f30003b.compare(obj, m3.a(this.f30006e)) < 0) {
            Object[] objArr2 = this.f30004c;
            int i12 = this.f30005d;
            int i13 = i12 + 1;
            this.f30005d = i13;
            objArr2[i12] = obj;
            if (i13 == this.f30002a * 2) {
                g();
            }
        }
    }

    public void c(Iterator it) {
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public List f() {
        Object[] objArr = this.f30004c;
        Arrays.sort(objArr, 0, this.f30005d, this.f30003b);
        int i10 = this.f30005d;
        int i11 = this.f30002a;
        if (i10 > i11) {
            Object[] objArr2 = this.f30004c;
            Arrays.fill(objArr2, i11, objArr2.length, (Object) null);
            int i12 = this.f30002a;
            this.f30005d = i12;
            this.f30006e = this.f30004c[i12 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(objArr, this.f30005d)));
    }
}
