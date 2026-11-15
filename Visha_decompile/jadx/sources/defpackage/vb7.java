package defpackage;

import com.google.common.collect.l;
import java.util.Collection;
import java.util.Iterator;

public abstract class vb7 {
    public static Object a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    public static Object[] b(Object... objArr) {
        c(objArr, objArr.length);
        return objArr;
    }

    public static Object[] c(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            a(objArr[i2], i2);
        }
        return objArr;
    }

    public static Object[] d(Iterable iterable, Object[] objArr) {
        Iterator it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    public static Object[] e(Object[] objArr, int i) {
        return l.c(objArr, i);
    }

    public static Object[] f(Collection collection) {
        return d(collection, new Object[collection.size()]);
    }

    public static Object[] g(Collection collection, Object[] objArr) {
        int size = collection.size();
        if (objArr.length < size) {
            objArr = e(objArr, size);
        }
        d(collection, objArr);
        if (objArr.length > size) {
            objArr[size] = null;
        }
        return objArr;
    }

    public static Object[] h(Object[] objArr, int i, int i2, Object[] objArr2) {
        xd8.t(i, i + i2, objArr.length);
        if (objArr2.length < i2) {
            objArr2 = e(objArr2, i2);
        } else if (objArr2.length > i2) {
            objArr2[i2] = null;
        }
        System.arraycopy(objArr, i, objArr2, 0, i2);
        return objArr2;
    }
}
