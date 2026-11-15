package io.reactivex.rxjava3.internal.util;

public final class f {

    final float f62552a;

    int f62553b;

    int f62554c;

    int f62555d;

    Object[] f62556e;

    public f() {
        this(16, 0.75f);
    }

    static int c(int i10) {
        int i11 = i10 * (-1640531527);
        return i11 ^ (i11 >>> 16);
    }

    public boolean a(Object obj) {
        Object obj2;
        Object[] objArr = this.f62556e;
        int i10 = this.f62553b;
        int iC = c(obj.hashCode()) & i10;
        Object obj3 = objArr[iC];
        if (obj3 != null) {
            if (obj3.equals(obj)) {
                return false;
            }
            do {
                iC = (iC + 1) & i10;
                obj2 = objArr[iC];
                if (obj2 == null) {
                }
            } while (!obj2.equals(obj));
            return false;
        }
        objArr[iC] = obj;
        int i11 = this.f62554c + 1;
        this.f62554c = i11;
        if (i11 >= this.f62555d) {
            d();
        }
        return true;
    }

    public Object[] b() {
        return this.f62556e;
    }

    void d() {
        Object obj;
        Object[] objArr = this.f62556e;
        int length = objArr.length;
        int i10 = length << 1;
        int i11 = i10 - 1;
        Object[] objArr2 = new Object[i10];
        int i12 = this.f62554c;
        while (true) {
            int i13 = i12 - 1;
            if (i12 == 0) {
                this.f62553b = i11;
                this.f62555d = (int) (i10 * this.f62552a);
                this.f62556e = objArr2;
                return;
            }
            do {
                length--;
                obj = objArr[length];
            } while (obj == null);
            int iC = c(obj.hashCode()) & i11;
            if (objArr2[iC] != null) {
                do {
                    iC = (iC + 1) & i11;
                } while (objArr2[iC] != null);
            }
            objArr2[iC] = objArr[length];
            i12 = i13;
        }
    }

    public boolean e(Object obj) {
        Object obj2;
        Object[] objArr = this.f62556e;
        int i10 = this.f62553b;
        int iC = c(obj.hashCode()) & i10;
        Object obj3 = objArr[iC];
        if (obj3 == null) {
            return false;
        }
        if (obj3.equals(obj)) {
            return f(iC, objArr, i10);
        }
        do {
            iC = (iC + 1) & i10;
            obj2 = objArr[iC];
            if (obj2 == null) {
                return false;
            }
        } while (!obj2.equals(obj));
        return f(iC, objArr, i10);
    }

    boolean f(int i10, Object[] objArr, int i11) {
        int i12;
        Object obj;
        this.f62554c--;
        while (true) {
            int i13 = i10 + 1;
            while (true) {
                i12 = i13 & i11;
                obj = objArr[i12];
                if (obj != null) {
                    int iC = c(obj.hashCode()) & i11;
                    if (i10 > i12) {
                        if (i10 >= iC && iC > i12) {
                            break;
                        }
                        i13 = i12 + 1;
                    } else {
                        if (i10 >= iC || iC > i12) {
                            break;
                        }
                        i13 = i12 + 1;
                    }
                } else {
                    objArr[i10] = null;
                    return true;
                }
            }
            objArr[i10] = obj;
            i10 = i12;
        }
    }

    public f(int i10, float f10) {
        this.f62552a = f10;
        int iA = g.a(i10);
        this.f62553b = iA - 1;
        this.f62555d = (int) (f10 * iA);
        this.f62556e = new Object[iA];
    }
}
