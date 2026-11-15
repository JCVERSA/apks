package com.cloud.hisavana.sdk;

import java.util.ConcurrentModificationException;
import java.util.Map;

public class x1 {

    static Object[] f22432d;

    static int f22433e;

    static Object[] f22434f;

    static int f22435g;

    int[] f22436a = m1.f21980a;

    Object[] f22437b = m1.f21982c;

    int f22438c = 0;

    private static int e(int[] iArr, int i10, int i11) {
        try {
            return m1.a(iArr, i10, i11);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private void h(int i10) {
        if (i10 == 8) {
            synchronized (u4.class) {
                try {
                    Object[] objArr = f22434f;
                    if (objArr != null) {
                        this.f22437b = objArr;
                        f22434f = (Object[]) objArr[0];
                        this.f22436a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f22435g--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (i10 == 4) {
            synchronized (u4.class) {
                try {
                    Object[] objArr2 = f22432d;
                    if (objArr2 != null) {
                        this.f22437b = objArr2;
                        f22432d = (Object[]) objArr2[0];
                        this.f22436a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f22433e--;
                        return;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        this.f22436a = new int[i10];
        this.f22437b = new Object[i10 << 1];
    }

    private static void i(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (u4.class) {
                try {
                    if (f22435g < 10) {
                        objArr[0] = f22434f;
                        objArr[1] = iArr;
                        for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                            objArr[i11] = null;
                        }
                        f22434f = objArr;
                        f22435g++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (u4.class) {
                try {
                    if (f22433e < 10) {
                        objArr[0] = f22432d;
                        objArr[1] = iArr;
                        for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        f22432d = objArr;
                        f22433e++;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    int a() {
        int i10 = this.f22438c;
        if (i10 == 0) {
            return -1;
        }
        int iE = e(this.f22436a, i10, 0);
        if (iE < 0 || this.f22437b[iE << 1] == null) {
            return iE;
        }
        int i11 = iE + 1;
        while (i11 < i10 && this.f22436a[i11] == 0) {
            if (this.f22437b[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iE - 1; i12 >= 0 && this.f22436a[i12] == 0; i12--) {
            if (this.f22437b[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public int c(Object obj) {
        return obj == null ? a() : d(obj, obj.hashCode());
    }

    public void clear() {
        int i10 = this.f22438c;
        if (i10 > 0) {
            int[] iArr = this.f22436a;
            Object[] objArr = this.f22437b;
            this.f22436a = m1.f21980a;
            this.f22437b = m1.f21982c;
            this.f22438c = 0;
            i(iArr, objArr, i10);
        }
        if (this.f22438c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return c(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return j(obj) >= 0;
    }

    int d(Object obj, int i10) {
        int i11 = this.f22438c;
        if (i11 == 0) {
            return -1;
        }
        int iE = e(this.f22436a, i11, i10);
        if (iE < 0 || obj.equals(this.f22437b[iE << 1])) {
            return iE;
        }
        int i12 = iE + 1;
        while (i12 < i11 && this.f22436a[i12] == i10) {
            if (obj.equals(this.f22437b[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iE - 1; i13 >= 0 && this.f22436a[i13] == i10; i13--) {
            if (obj.equals(this.f22437b[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x1) {
            x1 x1Var = (x1) obj;
            if (size() != x1Var.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f22438c; i10++) {
                try {
                    Object objL = l(i10);
                    Object objN = n(i10);
                    Object obj2 = x1Var.get(objL);
                    if (objN == null) {
                        if (obj2 != null || !x1Var.containsKey(objL)) {
                            return false;
                        }
                    } else if (!objN.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i11 = 0; i11 < this.f22438c; i11++) {
                try {
                    Object objL2 = l(i11);
                    Object objN2 = n(i11);
                    Object obj3 = map.get(objL2);
                    if (objN2 == null) {
                        if (obj3 != null || !map.containsKey(objL2)) {
                            return false;
                        }
                    } else if (!objN2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public Object f(int i10, Object obj) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.f22437b;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public Object get(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return this.f22437b[(iC << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.f22436a;
        Object[] objArr = this.f22437b;
        int i10 = this.f22438c;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.f22438c <= 0;
    }

    int j(Object obj) {
        int i10 = this.f22438c * 2;
        Object[] objArr = this.f22437b;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public void k(int i10) {
        int i11 = this.f22438c;
        int[] iArr = this.f22436a;
        if (iArr.length < i10) {
            Object[] objArr = this.f22437b;
            h(i10);
            if (this.f22438c > 0) {
                System.arraycopy(iArr, 0, this.f22436a, 0, i11);
                System.arraycopy(objArr, 0, this.f22437b, 0, i11 << 1);
            }
            i(iArr, objArr, i11);
        }
        if (this.f22438c != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public Object l(int i10) {
        return this.f22437b[i10 << 1];
    }

    public Object m(int i10) {
        Object[] objArr = this.f22437b;
        int i11 = i10 << 1;
        Object obj = objArr[i11 + 1];
        int i12 = this.f22438c;
        int i13 = 0;
        if (i12 <= 1) {
            i(this.f22436a, objArr, i12);
            this.f22436a = m1.f21980a;
            this.f22437b = m1.f21982c;
        } else {
            int i14 = i12 - 1;
            int[] iArr = this.f22436a;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    int i16 = i14 - i10;
                    System.arraycopy(iArr, i15, iArr, i10, i16);
                    Object[] objArr2 = this.f22437b;
                    System.arraycopy(objArr2, i15 << 1, objArr2, i11, i16 << 1);
                }
                Object[] objArr3 = this.f22437b;
                int i17 = i14 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            } else {
                h(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.f22438c) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f22436a, 0, i10);
                    System.arraycopy(objArr, 0, this.f22437b, 0, i11);
                }
                if (i10 < i14) {
                    int i18 = i10 + 1;
                    int i19 = i14 - i10;
                    System.arraycopy(iArr, i18, this.f22436a, i10, i19);
                    System.arraycopy(objArr, i18 << 1, this.f22437b, i11, i19 << 1);
                }
            }
            i13 = i14;
        }
        if (i12 != this.f22438c) {
            throw new ConcurrentModificationException();
        }
        this.f22438c = i13;
        return obj;
    }

    public Object n(int i10) {
        return this.f22437b[(i10 << 1) + 1];
    }

    public Object put(Object obj, Object obj2) {
        int i10;
        int iD;
        int i11 = this.f22438c;
        if (obj == null) {
            iD = a();
            i10 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i10 = iHashCode;
            iD = d(obj, iHashCode);
        }
        if (iD >= 0) {
            int i12 = (iD << 1) + 1;
            Object[] objArr = this.f22437b;
            Object obj3 = objArr[i12];
            objArr[i12] = obj2;
            return obj3;
        }
        int i13 = ~iD;
        int[] iArr = this.f22436a;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            Object[] objArr2 = this.f22437b;
            h(i14);
            if (i11 != this.f22438c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f22436a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f22437b, 0, objArr2.length);
            }
            i(iArr, objArr2, i11);
        }
        if (i13 < i11) {
            int[] iArr3 = this.f22436a;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.f22437b;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.f22438c - i13) << 1);
        }
        int i16 = this.f22438c;
        if (i11 == i16) {
            int[] iArr4 = this.f22436a;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.f22437b;
                int i17 = i13 << 1;
                objArr4[i17] = obj;
                objArr4[i17 + 1] = obj2;
                this.f22438c = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public Object remove(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return m(iC);
        }
        return null;
    }

    public int size() {
        return this.f22438c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f22438c * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f22438c; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            Object objL = l(i10);
            if (objL != this) {
                sb2.append(objL);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objN = n(i10);
            if (objN != this) {
                sb2.append(objN);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }
}
