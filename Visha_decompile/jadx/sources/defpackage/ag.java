package defpackage;

import freemarker.core.BugException;
import freemarker.ext.beans.OverloadedNumberUtil;
import freemarker.ext.beans.b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ag {
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
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
    public final Class[] a;
    public final boolean b;

    public static final class a extends qq0 {
        public final ar8 a;

        public a(ar8 ar8Var) {
            this.a = ar8Var;
        }

        @Override
        public String a() {
            return this.a.a();
        }

        @Override
        public Class[] b() {
            return this.a.b();
        }

        @Override
        public Object c(b bVar, Object[] objArr) throws Throwable {
            g(bVar, objArr);
            return this.a.c(bVar, objArr);
        }

        @Override
        public zfa d(b bVar, Object obj, Object[] objArr) throws Throwable {
            g(bVar, objArr);
            return this.a.d(bVar, obj, objArr);
        }

        @Override
        public boolean e() {
            return this.a.e();
        }

        @Override
        public boolean f() {
            return this.a.f();
        }

        /* JADX WARN: Code duplicated, block: B:40:0x008a  */
        public final void g(b bVar, Object[] objArr) throws Throwable {
            Class[] clsArrB = this.a.b();
            int length = clsArrB.length;
            for (int i = 0; i < length; i++) {
                Class cls = clsArrB[i];
                Object obj = objArr[i];
                if (obj != null) {
                    if (cls.isArray() && (obj instanceof List)) {
                        objArr[i] = bVar.E((List) obj, cls, null);
                    }
                    if (obj.getClass().isArray()) {
                        Class<?> clsA = ag.f;
                        if (clsA == null) {
                            clsA = ag.a("java.util.List");
                            ag.f = clsA;
                        }
                        if (cls.isAssignableFrom(clsA)) {
                            objArr[i] = bVar.g(obj);
                        }
                    }
                    if (obj instanceof mv0) {
                        Class clsA2 = ag.h;
                        if (clsA2 == null) {
                            clsA2 = ag.a("java.lang.Character");
                            ag.h = clsA2;
                        }
                        if (cls == clsA2 || cls == Character.TYPE) {
                            objArr[i] = new Character(((mv0) obj).a());
                        } else {
                            Class<?> clsA3 = ag.i;
                            if (clsA3 == null) {
                                clsA3 = ag.a("java.lang.String");
                                ag.i = clsA3;
                            }
                            if (!cls.isAssignableFrom(clsA3)) {
                                Class<?> clsA4 = ag.h;
                                if (clsA4 == null) {
                                    clsA4 = ag.a("java.lang.Character");
                                    ag.h = clsA4;
                                }
                                if (cls.isAssignableFrom(clsA4)) {
                                    objArr[i] = new Character(((mv0) obj).a());
                                }
                            }
                            objArr[i] = ((mv0) obj).b();
                        }
                    }
                }
            }
        }
    }

    public ag(Object[] objArr, boolean z) throws Throwable {
        Class<?> clsA;
        int length = objArr.length;
        Class[] clsArr = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            if (obj != null) {
                clsA = obj.getClass();
            } else if (z) {
                clsA = c;
                if (clsA == null) {
                    clsA = a("freemarker.ext.beans.ArgumentTypes$Null");
                    c = clsA;
                }
            } else {
                clsA = d;
                if (clsA == null) {
                    clsA = a("java.lang.Object");
                    d = clsA;
                }
            }
            clsArr[i2] = clsA;
        }
        this.a = clsArr;
        this.b = z;
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Class f(Class[] clsArr, int i2, int i3, boolean z) {
        int i4;
        return (!z || i3 < (i4 = i2 + (-1))) ? clsArr[i3] : clsArr[i4].getComponentType();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x015d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0161  */
    /* JADX WARN: Code duplicated, block: B:104:0x0164  */
    /* JADX WARN: Code duplicated, block: B:108:0x016b  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:94:0x0151  */
    /* JADX WARN: Code duplicated, block: B:96:0x0157  */
    /* JADX WARN: Code duplicated, block: B:99:0x015b A[DONT_INVERT] */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e3, code lost:
    
        if (r2.isAssignableFrom(r1) != false) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int b(Class[] clsArr, Class[] clsArr2, boolean z) throws Throwable {
        int iC;
        int i2;
        int i3;
        int iD;
        int i4;
        int iD2;
        int i5;
        int iC2;
        Class[] clsArr3 = clsArr;
        Class[] clsArr4 = clsArr2;
        boolean z2 = z;
        int length = this.a.length;
        int length2 = clsArr3.length;
        int length3 = clsArr4.length;
        if (!this.b) {
            ?? r0 = 0;
            int i6 = 0;
            ?? r7 = 0;
            int i7 = 0;
            while (i6 < length2) {
                Class clsF = f(clsArr3, length2, i6, z2);
                Class clsF2 = f(clsArr4, length3, i6, z2);
                if (clsF != clsF2) {
                    r7 = (r7 == 0 && u0d.h(clsF, clsF2, r0, r0) == 0) ? r0 : 1;
                    i7 = (i7 == 0 && u0d.h(clsF2, clsF, r0, r0) == 0) ? 0 : 1;
                }
                i6++;
                r0 = 0;
                r7 = r7;
            }
            if (r7 != 0) {
                return 1 ^ i7;
            }
            return i7 != 0 ? -1 : 0;
        }
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i8 < length) {
            int i18 = length;
            Class<?> clsF3 = f(clsArr3, length2, i8, z2);
            Class<?> clsF4 = f(clsArr4, length3, i8, z2);
            if (clsF3 == clsF4) {
                i2 = length2;
                i3 = length3;
            } else {
                Class<?> cls = this.a[i8];
                Class clsA = e;
                if (clsA == null) {
                    clsA = a("java.lang.Number");
                    e = clsA;
                }
                i2 = length2;
                boolean zIsAssignableFrom = clsA.isAssignableFrom(cls);
                i3 = length3;
                if (zIsAssignableFrom && hx0.l(clsF3)) {
                    iD = OverloadedNumberUtil.d(cls, clsF3.isPrimitive() ? hx0.m(clsF3) : clsF3);
                } else {
                    iD = Integer.MAX_VALUE;
                }
                if (zIsAssignableFrom && hx0.l(clsF4)) {
                    iD2 = OverloadedNumberUtil.d(cls, clsF4.isPrimitive() ? hx0.m(clsF4) : clsF4);
                    i4 = Integer.MAX_VALUE;
                } else {
                    i4 = Integer.MAX_VALUE;
                    iD2 = Integer.MAX_VALUE;
                }
                if (iD != i4) {
                    if (iD2 != i4) {
                        if (iD == iD2) {
                            i5 = (clsF3.isPrimitive() ? 1 : 0) - (clsF4.isPrimitive() ? 1 : 0);
                            if (i5 == 1) {
                                i9++;
                            } else if (i5 == -1) {
                                i11++;
                            }
                        } else if (iD < iD2) {
                            if (iD < 40000 && iD2 > 40000) {
                                i14++;
                            }
                            i5 = 1;
                        } else {
                            if (iD2 >= 40000 || iD <= 40000) {
                                i10++;
                            } else {
                                i15++;
                            }
                            i5 = -1;
                        }
                    }
                    i16++;
                    i5 = 1;
                } else if (iD2 != i4) {
                    i10++;
                    i5 = -1;
                } else {
                    Class clsA2 = f;
                    if (clsA2 == null) {
                        clsA2 = a("java.util.List");
                        f = clsA2;
                    }
                    int i19 = 2;
                    if (clsA2.isAssignableFrom(cls) && (clsF3.isArray() || clsF4.isArray())) {
                        if (clsF3.isArray()) {
                            if (clsF4.isArray()) {
                                int iC3 = c(clsF3.getComponentType(), clsF4.getComponentType());
                                if (iC3 <= 0) {
                                    if (iC3 < 0) {
                                        i14++;
                                        i19 = 1;
                                    } else {
                                        i19 = 0;
                                    }
                                }
                            } else {
                                Class clsA3 = g;
                                if (clsA3 == null) {
                                    clsA3 = a("java.util.Collection");
                                    g = clsA3;
                                }
                            }
                            i15++;
                        } else {
                            Class clsA4 = g;
                            if (clsA4 == null) {
                                clsA4 = a("java.util.Collection");
                                g = clsA4;
                            }
                            if (!clsA4.isAssignableFrom(clsF3)) {
                                i11++;
                            }
                            i14++;
                            i5 = 1;
                        }
                        i5 = i19;
                    } else if (cls.isArray()) {
                        Class clsA5 = f;
                        if (clsA5 == null) {
                            clsA5 = a("java.util.List");
                            f = clsA5;
                        }
                        if (!clsA5.isAssignableFrom(clsF3)) {
                            Class clsA6 = f;
                            if (clsA6 == null) {
                                clsA6 = a("java.util.List");
                                f = clsA6;
                            }
                            if (!clsA6.isAssignableFrom(clsF4)) {
                                iC2 = c(clsF3, clsF4);
                                if (iC2 > 0) {
                                    if (iC2 > 1) {
                                        i16++;
                                    } else {
                                        i9++;
                                    }
                                    i5 = 1;
                                } else if (iC2 < 0) {
                                    if (iC2 < -1) {
                                        i10++;
                                    } else {
                                        i11++;
                                    }
                                    i5 = -1;
                                }
                            }
                        }
                        Class clsA7 = f;
                        if (clsA7 == null) {
                            clsA7 = a("java.util.List");
                            f = clsA7;
                        }
                        if (clsA7.isAssignableFrom(clsF3)) {
                            Class clsA8 = f;
                            if (clsA8 == null) {
                                clsA8 = a("java.util.List");
                                f = clsA8;
                            }
                            if (!clsA8.isAssignableFrom(clsF4)) {
                                i13++;
                                i5 = i19;
                            }
                        } else {
                            i12++;
                            i5 = 1;
                        }
                    } else {
                        iC2 = c(clsF3, clsF4);
                        if (iC2 > 0) {
                            if (iC2 > 1) {
                                i16++;
                            } else {
                                i9++;
                            }
                            i5 = 1;
                        } else if (iC2 < 0) {
                            if (iC2 < -1) {
                                i10++;
                            } else {
                                i11++;
                            }
                            i5 = -1;
                        }
                    }
                }
                if (i17 != 0 && i5 != 0) {
                    i17 = i5;
                }
                i8++;
                clsArr3 = clsArr;
                clsArr4 = clsArr2;
                z2 = z;
                length = i18;
                length3 = i3;
                length2 = i2;
            }
            i5 = 0;
            if (i17 != 0) {
            }
            i8++;
            clsArr3 = clsArr;
            clsArr4 = clsArr2;
            z2 = z;
            length = i18;
            length3 = i3;
            length2 = i2;
        }
        int i20 = length;
        int i21 = length2;
        int i22 = length3;
        if (i12 != i13) {
            return i12 - i13;
        }
        if (i14 != i15) {
            return i14 - i15;
        }
        if (i16 != i10) {
            return i16 - i10;
        }
        if (i9 != i11) {
            return i9 - i11;
        }
        if (i17 != 0) {
            return i17;
        }
        if (!z) {
            return 0;
        }
        if (i21 != i22) {
            return i21 - i22;
        }
        if (i20 != i21 - 1) {
            return 0;
        }
        Class clsF5 = f(clsArr, i21, i20, true);
        Class clsF6 = f(clsArr2, i22, i20, true);
        return (hx0.l(clsF5) && hx0.l(clsF6) && (iC = OverloadedNumberUtil.c(clsF5, clsF6)) != 0) ? iC : c(clsF5, clsF6);
    }

    public final int c(Class cls, Class cls2) throws Throwable {
        Class clsM = cls.isPrimitive() ? hx0.m(cls) : cls;
        Class<?> clsM2 = cls2.isPrimitive() ? hx0.m(cls2) : cls2;
        if (clsM == clsM2) {
            if (clsM != cls) {
                return clsM2 != cls2 ? 0 : 1;
            }
            return clsM2 != cls2 ? -1 : 0;
        }
        if (clsM2.isAssignableFrom(clsM)) {
            return 2;
        }
        if (clsM.isAssignableFrom(clsM2)) {
            return -2;
        }
        Class clsA = h;
        if (clsA == null) {
            clsA = a("java.lang.Character");
            h = clsA;
        }
        if (clsM == clsA) {
            Class<?> clsA2 = i;
            if (clsA2 == null) {
                clsA2 = a("java.lang.String");
                i = clsA2;
            }
            if (clsM2.isAssignableFrom(clsA2)) {
                return 2;
            }
        }
        Class<?> clsA3 = h;
        if (clsA3 == null) {
            clsA3 = a("java.lang.Character");
            h = clsA3;
        }
        if (clsM2 == clsA3) {
            Class<?> clsA4 = i;
            if (clsA4 == null) {
                clsA4 = a("java.lang.String");
                i = clsA4;
            }
            if (clsM.isAssignableFrom(clsA4)) {
                return -2;
            }
        }
        return 0;
    }

    public LinkedList d(List list, boolean z) throws Throwable {
        LinkedList linkedList = new LinkedList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ar8 ar8Var = (ar8) it.next();
            int iG = g(ar8Var, z);
            if (iG != 2) {
                if (iG == 0) {
                    linkedList.add(ar8Var);
                } else {
                    if (iG != 1) {
                        throw new BugException();
                    }
                    linkedList.add(new a(ar8Var));
                }
            }
        }
        return linkedList;
    }

    public e96 e(List list, boolean z) throws Throwable {
        LinkedList<qq0> linkedListD = d(list, z);
        if (linkedListD.isEmpty()) {
            return o93.a;
        }
        if (linkedListD.size() == 1) {
            return (qq0) linkedListD.getFirst();
        }
        LinkedList linkedList = new LinkedList();
        for (qq0 qq0Var : linkedListD) {
            Iterator it = linkedList.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                int iB = b(qq0Var.b(), ((qq0) it.next()).b(), z);
                if (iB > 0) {
                    it.remove();
                } else if (iB < 0) {
                    z2 = true;
                }
            }
            if (!z2) {
                linkedList.addLast(qq0Var);
            }
        }
        return linkedList.size() > 1 ? o93.b : (qq0) linkedList.getFirst();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ag)) {
            return false;
        }
        ag agVar = (ag) obj;
        if (agVar.a.length != this.a.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            Class[] clsArr = this.a;
            if (i2 >= clsArr.length) {
                return true;
            }
            if (agVar.a[i2] != clsArr[i2]) {
                return false;
            }
            i2++;
        }
    }

    public final int g(ar8 ar8Var, boolean z) throws Throwable {
        Class[] clsArrB = ar8Var.b();
        int length = this.a.length;
        int length2 = clsArrB.length - (z ? 1 : 0);
        if (z) {
            if (length < length2) {
                return 2;
            }
        } else if (length != length2) {
            return 2;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            int iH = h(clsArrB[i3], this.a[i3]);
            if (iH == 2) {
                return 2;
            }
            if (i2 < iH) {
                i2 = iH;
            }
        }
        if (z) {
            Class<?> componentType = clsArrB[length2].getComponentType();
            while (length2 < length) {
                int iH2 = h(componentType, this.a[length2]);
                if (iH2 == 2) {
                    return 2;
                }
                if (i2 < iH2) {
                    i2 = iH2;
                }
                length2++;
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x014b, code lost:
    
        if (r10 == r8) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0174, code lost:
    
        if (r10 == r8) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01a9, code lost:
    
        if (r10 == r8) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x01ea, code lost:
    
        if (r10 == r8) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x022b, code lost:
    
        if (r10 == r8) goto L197;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int h(Class cls, Class cls2) throws Throwable {
        Class clsM;
        Class cls3;
        if (cls.isAssignableFrom(cls2)) {
            Class clsA = j;
            if (clsA == null) {
                clsA = a("freemarker.ext.beans.CharacterOrString");
                j = clsA;
            }
            if (cls2 != clsA) {
                return 0;
            }
        }
        if (this.b) {
            if (cls.isPrimitive()) {
                Class clsA2 = c;
                if (clsA2 == null) {
                    clsA2 = a("freemarker.ext.beans.ArgumentTypes$Null");
                    c = clsA2;
                }
                if (cls2 == clsA2) {
                    return 2;
                }
                clsM = hx0.m(cls);
                if (cls2 == clsM) {
                    return 0;
                }
            } else {
                Class clsA3 = c;
                if (clsA3 == null) {
                    clsA3 = a("freemarker.ext.beans.ArgumentTypes$Null");
                    c = clsA3;
                }
                if (cls2 == clsA3) {
                    return 0;
                }
                clsM = cls;
            }
            Class clsA4 = e;
            if (clsA4 == null) {
                clsA4 = a("java.lang.Number");
                e = clsA4;
            }
            if (clsA4.isAssignableFrom(cls2)) {
                Class cls4 = e;
                if (cls4 == null) {
                    cls3 = cls4;
                    Class clsA5 = a("java.lang.Number");
                    e = clsA5;
                    cls3 = clsA5;
                }
                cls3 = cls4;
                if (cls3.isAssignableFrom(clsM)) {
                    return OverloadedNumberUtil.d(cls2, clsM) == Integer.MAX_VALUE ? 2 : 0;
                }
            }
            if (cls.isArray()) {
                Class clsA6 = f;
                if (clsA6 == null) {
                    clsA6 = a("java.util.List");
                    f = clsA6;
                }
                return clsA6.isAssignableFrom(cls2) ? 1 : 2;
            }
            if (cls2.isArray()) {
                Class<?> clsA7 = f;
                if (clsA7 == null) {
                    clsA7 = a("java.util.List");
                    f = clsA7;
                }
                if (cls.isAssignableFrom(clsA7)) {
                    return 1;
                }
            }
            Class clsA8 = j;
            if (clsA8 == null) {
                clsA8 = a("freemarker.ext.beans.CharacterOrString");
                j = clsA8;
            }
            if (cls2 == clsA8) {
                Class<?> clsA9 = i;
                if (clsA9 == null) {
                    clsA9 = a("java.lang.String");
                    i = clsA9;
                }
                if (!cls.isAssignableFrom(clsA9)) {
                    Class<?> clsA10 = h;
                    if (clsA10 == null) {
                        clsA10 = a("java.lang.Character");
                        h = clsA10;
                    }
                    if (cls.isAssignableFrom(clsA10) || cls == Character.TYPE) {
                    }
                }
                return 1;
            }
            return 2;
        }
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE) {
                Class clsA11 = k;
                if (clsA11 == null) {
                    clsA11 = a("java.lang.Boolean");
                    k = clsA11;
                }
                return cls2 == clsA11 ? 0 : 2;
            }
            if (cls == Double.TYPE) {
                Class clsA12 = l;
                if (clsA12 == null) {
                    clsA12 = a("java.lang.Double");
                    l = clsA12;
                }
                if (cls2 != clsA12) {
                    Class clsA13 = m;
                    if (clsA13 == null) {
                        clsA13 = a("java.lang.Float");
                        m = clsA13;
                    }
                    if (cls2 != clsA13) {
                        Class clsA14 = n;
                        if (clsA14 == null) {
                            clsA14 = a("java.lang.Long");
                            n = clsA14;
                        }
                        if (cls2 != clsA14) {
                            Class clsA15 = o;
                            if (clsA15 == null) {
                                clsA15 = a("java.lang.Integer");
                                o = clsA15;
                            }
                            if (cls2 != clsA15) {
                                Class clsA16 = p;
                                if (clsA16 == null) {
                                    clsA16 = a("java.lang.Short");
                                    p = clsA16;
                                }
                                if (cls2 != clsA16) {
                                    Class clsA17 = q;
                                    if (clsA17 == null) {
                                        clsA17 = a("java.lang.Byte");
                                        q = clsA17;
                                    }
                                }
                            }
                        }
                    }
                }
                return 0;
            }
            if (cls == Integer.TYPE) {
                Class clsA18 = o;
                if (clsA18 == null) {
                    clsA18 = a("java.lang.Integer");
                    o = clsA18;
                }
                if (cls2 != clsA18) {
                    Class clsA19 = p;
                    if (clsA19 == null) {
                        clsA19 = a("java.lang.Short");
                        p = clsA19;
                    }
                    if (cls2 != clsA19) {
                        Class clsA20 = q;
                        if (clsA20 == null) {
                            clsA20 = a("java.lang.Byte");
                            q = clsA20;
                        }
                    }
                }
                return 0;
            }
            if (cls == Long.TYPE) {
                Class clsA21 = n;
                if (clsA21 == null) {
                    clsA21 = a("java.lang.Long");
                    n = clsA21;
                }
                if (cls2 != clsA21) {
                    Class clsA22 = o;
                    if (clsA22 == null) {
                        clsA22 = a("java.lang.Integer");
                        o = clsA22;
                    }
                    if (cls2 != clsA22) {
                        Class clsA23 = p;
                        if (clsA23 == null) {
                            clsA23 = a("java.lang.Short");
                            p = clsA23;
                        }
                        if (cls2 != clsA23) {
                            Class clsA24 = q;
                            if (clsA24 == null) {
                                clsA24 = a("java.lang.Byte");
                                q = clsA24;
                            }
                        }
                    }
                }
                return 0;
            }
            if (cls == Float.TYPE) {
                Class clsA25 = m;
                if (clsA25 == null) {
                    clsA25 = a("java.lang.Float");
                    m = clsA25;
                }
                if (cls2 != clsA25) {
                    Class clsA26 = n;
                    if (clsA26 == null) {
                        clsA26 = a("java.lang.Long");
                        n = clsA26;
                    }
                    if (cls2 != clsA26) {
                        Class clsA27 = o;
                        if (clsA27 == null) {
                            clsA27 = a("java.lang.Integer");
                            o = clsA27;
                        }
                        if (cls2 != clsA27) {
                            Class clsA28 = p;
                            if (clsA28 == null) {
                                clsA28 = a("java.lang.Short");
                                p = clsA28;
                            }
                            if (cls2 != clsA28) {
                                Class clsA29 = q;
                                if (clsA29 == null) {
                                    clsA29 = a("java.lang.Byte");
                                    q = clsA29;
                                }
                            }
                        }
                    }
                }
                return 0;
            }
            if (cls == Character.TYPE) {
                Class clsA30 = h;
                if (clsA30 == null) {
                    clsA30 = a("java.lang.Character");
                    h = clsA30;
                }
                return cls2 == clsA30 ? 0 : 2;
            }
            if (cls == Byte.TYPE) {
                Class clsA31 = q;
                if (clsA31 == null) {
                    clsA31 = a("java.lang.Byte");
                    q = clsA31;
                }
                if (cls2 == clsA31) {
                    return 0;
                }
            }
            if (cls == Short.TYPE) {
                Class clsA32 = p;
                if (clsA32 == null) {
                    clsA32 = a("java.lang.Short");
                    p = clsA32;
                }
                if (cls2 != clsA32) {
                    Class clsA33 = q;
                    if (clsA33 == null) {
                        clsA33 = a("java.lang.Byte");
                        q = clsA33;
                    }
                }
                return 0;
            }
            Class clsA34 = r;
            if (clsA34 == null) {
                clsA34 = a("java.math.BigDecimal");
                r = clsA34;
            }
            if (clsA34.isAssignableFrom(cls2) && hx0.l(cls)) {
                return 0;
            }
        }
        return 2;
    }

    public int hashCode() {
        int i2 = 0;
        int iHashCode = 0;
        while (true) {
            Class[] clsArr = this.a;
            if (i2 >= clsArr.length) {
                return iHashCode;
            }
            iHashCode ^= clsArr[i2].hashCode();
            i2++;
        }
    }
}
