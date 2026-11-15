package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.utility.NullArgumentException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class hu7 {
    public static final int[] g;
    public static final int[][] h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public static Class m;
    public static Class n;
    public static Class o;
    public static Class p;
    public static Class q;
    public static Class r;
    public static Class s;
    public static Class t;
    public Class[][] a;
    public int[][] b;
    public final Map c;
    public final boolean d;
    public final List e;
    public final boolean f;

    static {
        int[] iArr = new int[0];
        g = iArr;
        h = new int[][]{iArr};
    }

    public hu7(boolean z) {
        Map mapD = c0d.d(6, 0.75f, 1);
        this.c = mapD;
        this.d = c0d.b(mapD);
        this.e = new LinkedList();
        this.f = z;
    }

    public static Class c(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public void a(ar8 ar8Var) throws Throwable {
        this.e.add(ar8Var);
        Class[] clsArrL = l(ar8Var);
        int length = clsArrL.length;
        Class[][] clsArr = this.a;
        if (clsArr == null) {
            Class[][] clsArr2 = new Class[length + 1][];
            this.a = clsArr2;
            clsArr2[length] = (Class[]) clsArrL.clone();
        } else if (clsArr.length <= length) {
            Class[][] clsArr3 = new Class[length + 1][];
            System.arraycopy(clsArr, 0, clsArr3, 0, clsArr.length);
            this.a = clsArr3;
            clsArr3[length] = (Class[]) clsArrL.clone();
        } else {
            Class[] clsArr4 = clsArr[length];
            if (clsArr4 == null) {
                clsArr[length] = (Class[]) clsArrL.clone();
            } else {
                for (int i2 = 0; i2 < clsArrL.length; i2++) {
                    clsArr4[i2] = e(clsArr4[i2], clsArrL[i2]);
                }
            }
        }
        int[] iArr = g;
        if (this.f) {
            for (int i3 = 0; i3 < length; i3++) {
                int iB = ybb.b(clsArrL[i3]);
                if (iB != 0) {
                    if (iArr == g) {
                        iArr = new int[length];
                    }
                    iArr[i3] = iB;
                }
            }
            k(length, iArr);
        }
        if (!this.f) {
            clsArrL = this.a[length];
        }
        b(clsArrL, iArr);
    }

    public abstract void b(Class[] clsArr, int[] iArr);

    public void d(Object[] objArr, Class[] clsArr, int[] iArr) {
        int length = clsArr.length;
        int length2 = objArr.length;
        int i2 = 0;
        while (i2 < length2) {
            int i3 = i2 < length ? i2 : length - 1;
            if ((iArr[i3] & 1) != 0) {
                Object obj = objArr[i2];
                if (obj instanceof Number) {
                    Number numberP = b.p((Number) obj, clsArr[i3], this.f);
                    if (numberP != null) {
                        objArr[i2] = numberP;
                    }
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Class e(Class cls, Class cls2) throws Throwable {
        boolean z;
        boolean z2;
        Class cls3;
        Class cls4;
        if (cls == cls2) {
            return cls;
        }
        if (this.f) {
            if (cls.isPrimitive()) {
                cls = hx0.m(cls);
                z = true;
            } else {
                z = false;
            }
            if (cls2.isPrimitive()) {
                cls2 = hx0.m(cls2);
                z2 = true;
            } else {
                z2 = false;
            }
            if (cls == cls2) {
                return cls;
            }
            Class cls5 = i;
            if (cls5 == null) {
                cls3 = cls5;
                Class clsC = c("java.lang.Number");
                i = clsC;
                cls3 = clsC;
            }
            cls3 = cls5;
            if (cls3.isAssignableFrom(cls)) {
                Class cls6 = i;
                if (cls6 == null) {
                    cls4 = cls6;
                    Class clsC2 = c("java.lang.Number");
                    i = clsC2;
                    cls4 = clsC2;
                }
                cls4 = cls6;
                if (cls4.isAssignableFrom(cls2)) {
                    Class cls7 = i;
                    if (cls7 != null) {
                        return cls7;
                    }
                    Class clsC3 = c("java.lang.Number");
                    i = clsC3;
                    return clsC3;
                }
            }
            if (z || z2) {
                Class cls8 = j;
                if (cls8 != null) {
                    return cls8;
                }
                Class clsC4 = c("java.lang.Object");
                j = clsC4;
                return clsC4;
            }
        } else if (cls2.isPrimitive()) {
            if (cls2 == Byte.TYPE) {
                cls2 = k;
                if (cls2 == null) {
                    cls2 = c("java.lang.Byte");
                    k = cls2;
                }
            } else if (cls2 == Short.TYPE) {
                cls2 = l;
                if (cls2 == null) {
                    cls2 = c("java.lang.Short");
                    l = cls2;
                }
            } else if (cls2 == Character.TYPE) {
                cls2 = m;
                if (cls2 == null) {
                    cls2 = c("java.lang.Character");
                    m = cls2;
                }
            } else if (cls2 == Integer.TYPE) {
                cls2 = n;
                if (cls2 == null) {
                    cls2 = c("java.lang.Integer");
                    n = cls2;
                }
            } else if (cls2 == Float.TYPE) {
                cls2 = o;
                if (cls2 == null) {
                    cls2 = c("java.lang.Float");
                    o = cls2;
                }
            } else if (cls2 == Long.TYPE) {
                cls2 = p;
                if (cls2 == null) {
                    cls2 = c("java.lang.Long");
                    p = cls2;
                }
            } else if (cls2 == Double.TYPE && (cls2 = q) == null) {
                cls2 = c("java.lang.Double");
                q = cls2;
            }
        }
        Set<Class> setC = u0d.c(cls, cls2);
        setC.retainAll(u0d.c(cls2, cls));
        if (setC.isEmpty()) {
            Class cls9 = j;
            if (cls9 != null) {
                return cls9;
            }
            Class clsC5 = c("java.lang.Object");
            j = clsC5;
            return clsC5;
        }
        ArrayList arrayList = new ArrayList();
        for (Class cls10 : setC) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    arrayList.add(cls10);
                    break;
                }
                Class cls11 = (Class) it.next();
                if (u0d.h(cls11, cls10, false, 0) != 0) {
                    break;
                }
                if (u0d.h(cls10, cls11, false, 0) != 0) {
                    it.remove();
                }
            }
        }
        if (arrayList.size() > 1) {
            if (!this.f) {
                Class cls12 = j;
                if (cls12 != null) {
                    return cls12;
                }
                Class clsC6 = c("java.lang.Object");
                j = clsC6;
                return clsC6;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Class cls13 = (Class) it2.next();
                if (!cls13.isInterface()) {
                    Class clsC7 = j;
                    if (clsC7 == null) {
                        clsC7 = c("java.lang.Object");
                        j = clsC7;
                    }
                    if (cls13 != clsC7) {
                        return cls13;
                    }
                    it2.remove();
                }
            }
            Class clsC8 = r;
            if (clsC8 == null) {
                clsC8 = c("java.lang.Cloneable");
                r = clsC8;
            }
            arrayList.remove(clsC8);
            if (arrayList.size() > 1) {
                Class clsC9 = s;
                if (clsC9 == null) {
                    clsC9 = c("java.io.Serializable");
                    s = clsC9;
                }
                arrayList.remove(clsC9);
                if (arrayList.size() > 1) {
                    Class clsC10 = t;
                    if (clsC10 == null) {
                        clsC10 = c("java.lang.Comparable");
                        t = clsC10;
                    }
                    arrayList.remove(clsC10);
                    if (arrayList.size() > 1) {
                        Class cls14 = j;
                        if (cls14 != null) {
                            return cls14;
                        }
                        Class clsC11 = c("java.lang.Object");
                        j = clsC11;
                        return clsC11;
                    }
                }
            }
        }
        return (Class) arrayList.get(0);
    }

    public abstract f96 f(List list, b bVar);

    public final e96 g(Object[] objArr, boolean z) {
        ag agVar = new ag(objArr, this.f);
        e96 e96VarE = this.d ? (e96) this.c.get(agVar) : null;
        if (e96VarE == null) {
            synchronized (this.c) {
                try {
                    e96VarE = (e96) this.c.get(agVar);
                    if (e96VarE == null) {
                        e96VarE = agVar.e(this.e, z);
                        this.c.put(agVar, e96VarE);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e96VarE;
    }

    public Iterator h() {
        return this.e.iterator();
    }

    public final int[] i(int i2) {
        int[][] iArr = this.b;
        if (iArr == null || iArr.length <= i2) {
            return null;
        }
        return iArr[i2];
    }

    public Class[][] j() {
        return this.a;
    }

    public final void k(int i2, int[] iArr) {
        int i3;
        NullArgumentException.check("srcTypesFlagsByParamIdx", iArr);
        int i4 = 0;
        if (i2 == 0) {
            int[][] iArr2 = this.b;
            if (iArr2 == null) {
                this.b = h;
                return;
            } else {
                if (iArr2 != h) {
                    iArr2[0] = g;
                    return;
                }
                return;
            }
        }
        int[][] iArr3 = this.b;
        if (iArr3 == null) {
            this.b = new int[i2 + 1][];
        } else if (iArr3.length <= i2) {
            int[][] iArr4 = new int[i2 + 1][];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.b = iArr4;
        }
        int[][] iArr5 = this.b;
        int[] iArr6 = iArr5[i2];
        if (iArr6 == null) {
            int[] iArr7 = g;
            if (iArr != iArr7) {
                int length = iArr.length;
                int[] iArr8 = new int[i2];
                while (i4 < i2) {
                    iArr8[i4] = iArr[i4 < length ? i4 : length - 1];
                    i4++;
                }
                iArr7 = iArr8;
            }
            this.b[i2] = iArr7;
            return;
        }
        if (iArr == iArr6) {
            return;
        }
        if (iArr6 == g && i2 > 0) {
            iArr6 = new int[i2];
            iArr5[i2] = iArr6;
        }
        int i5 = 0;
        while (i5 < i2) {
            if (iArr != g) {
                int length2 = iArr.length;
                i3 = iArr[i5 < length2 ? i5 : length2 - 1];
            } else {
                i3 = 0;
            }
            int i6 = iArr6[i5];
            if (i6 != i3) {
                int i7 = i3 | i6;
                if ((i7 & 2044) != 0) {
                    i7 |= 1;
                }
                iArr6[i5] = i7;
            }
            i5++;
        }
    }

    public abstract Class[] l(qq0 qq0Var);
}
