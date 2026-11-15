package defpackage;

import com.transsion.gslb.NetResponse;
import java.util.ConcurrentModificationException;
import java.util.Map;

public abstract class tfd {
    public static Object[] e;
    public static int f;
    public static Object[] g;
    public static int h;
    public int[] b = dsc.a;
    public Object[] c = dsc.c;
    public int d = 0;

    public static int d(int[] iArr, int i, int i2) {
        try {
            return dsc.a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static void g(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (rtd.class) {
                try {
                    if (h < 10) {
                        objArr[0] = g;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        g = objArr;
                        h++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (rtd.class) {
                try {
                    if (f < 10) {
                        objArr[0] = e;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        e = objArr;
                        f++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public int a() {
        int i = this.d;
        if (i == 0) {
            return -1;
        }
        int iD = d(this.b, i, 0);
        if (iD < 0 || this.c[iD << 1] == null) {
            return iD;
        }
        int i2 = iD + 1;
        while (i2 < i && this.b[i2] == 0) {
            if (this.c[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iD - 1; i3 >= 0 && this.b[i3] == 0; i3--) {
            if (this.c[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public int b(Object obj) {
        return obj == null ? a() : c(obj, obj.hashCode());
    }

    public int c(Object obj, int i) {
        int i2 = this.d;
        if (i2 == 0) {
            return -1;
        }
        int iD = d(this.b, i2, i);
        if (iD < 0 || obj.equals(this.c[iD << 1])) {
            return iD;
        }
        int i3 = iD + 1;
        while (i3 < i2 && this.b[i3] == i) {
            if (obj.equals(this.c[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iD - 1; i4 >= 0 && this.b[i4] == i; i4--) {
            if (obj.equals(this.c[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public void clear() {
        int i = this.d;
        if (i > 0) {
            int[] iArr = this.b;
            Object[] objArr = this.c;
            this.b = dsc.a;
            this.c = dsc.c;
            this.d = 0;
            g(iArr, objArr, i);
        }
        if (this.d > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return b(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return h(obj) >= 0;
    }

    public Object e(int i, Object obj) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.c;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof tfd) {
            tfd tfdVar = (tfd) obj;
            if (size() != tfdVar.size()) {
                return false;
            }
            for (int i = 0; i < this.d; i++) {
                try {
                    Object objL = l(i);
                    Object objN = n(i);
                    Object obj2 = tfdVar.get(objL);
                    if (objN == null) {
                        if (obj2 != null || !tfdVar.containsKey(objL)) {
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
            for (int i2 = 0; i2 < this.d; i2++) {
                try {
                    Object objL2 = l(i2);
                    Object objN2 = n(i2);
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

    public final void f(int i) {
        if (i == 8) {
            synchronized (rtd.class) {
                try {
                    Object[] objArr = g;
                    if (objArr != null) {
                        this.c = objArr;
                        g = (Object[]) objArr[0];
                        this.b = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        h--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i == 4) {
            synchronized (rtd.class) {
                try {
                    Object[] objArr2 = e;
                    if (objArr2 != null) {
                        this.c = objArr2;
                        e = (Object[]) objArr2[0];
                        this.b = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.b = new int[i];
        this.c = new Object[i << 1];
    }

    public Object get(Object obj) {
        int iB = b(obj);
        if (iB >= 0) {
            return this.c[(iB << 1) + 1];
        }
        return null;
    }

    public int h(Object obj) {
        int i = this.d * 2;
        Object[] objArr = this.c;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int[] iArr = this.b;
        Object[] objArr = this.c;
        int i = this.d;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.d <= 0;
    }

    public void k(int i) {
        int i2 = this.d;
        int[] iArr = this.b;
        if (iArr.length < i) {
            Object[] objArr = this.c;
            f(i);
            if (this.d > 0) {
                System.arraycopy(iArr, 0, this.b, 0, i2);
                System.arraycopy(objArr, 0, this.c, 0, i2 << 1);
            }
            g(iArr, objArr, i2);
        }
        if (this.d != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public Object l(int i) {
        return this.c[i << 1];
    }

    public Object m(int i) {
        Object[] objArr = this.c;
        int i2 = i << 1;
        Object obj = objArr[i2 + 1];
        int i3 = this.d;
        int i4 = 0;
        if (i3 <= 1) {
            g(this.b, objArr, i3);
            this.b = dsc.a;
            this.c = dsc.c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.b;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, iArr, i, i7);
                    Object[] objArr2 = this.c;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.c;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                f(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.d) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.b, 0, i);
                    System.arraycopy(objArr, 0, this.c, 0, i2);
                }
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, this.b, i, i10);
                    System.arraycopy(objArr, i9 << 1, this.c, i2, i10 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.d) {
            throw new ConcurrentModificationException();
        }
        this.d = i4;
        return obj;
    }

    public Object n(int i) {
        return this.c[(i << 1) + 1];
    }

    public Object put(Object obj, Object obj2) {
        int i;
        int iC;
        int i2 = this.d;
        if (obj == null) {
            iC = a();
            i = 0;
        } else {
            int iHashCode = obj.hashCode();
            i = iHashCode;
            iC = c(obj, iHashCode);
        }
        if (iC >= 0) {
            int i3 = (iC << 1) + 1;
            Object[] objArr = this.c;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~iC;
        int[] iArr = this.b;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.c;
            f(i5);
            if (i2 != this.d) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.c, 0, objArr2.length);
            }
            g(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.b;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.d - i4) << 1);
        }
        int i7 = this.d;
        if (i2 == i7) {
            int[] iArr4 = this.b;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.c;
                int i8 = i4 << 1;
                objArr4[i8] = obj;
                objArr4[i8 + 1] = obj2;
                this.d = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public Object remove(Object obj) {
        int iB = b(obj);
        if (iB >= 0) {
            return m(iB);
        }
        return null;
    }

    public int size() {
        return this.d;
    }

    public String toString() {
        if (isEmpty()) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        for (int i = 0; i < this.d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object objL = l(i);
            if (objL != this) {
                sb.append(objL);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objN = n(i);
            if (objN != this) {
                sb.append(objN);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
