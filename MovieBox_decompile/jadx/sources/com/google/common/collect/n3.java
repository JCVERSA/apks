package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;

public abstract class n3 {
    static Object a(Object obj, int i10) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i10);
    }

    static Object[] b(Object... objArr) {
        c(objArr, objArr.length);
        return objArr;
    }

    static Object[] c(Object[] objArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            a(objArr[i11], i11);
        }
        return objArr;
    }

    private static Object[] d(Iterable iterable, Object[] objArr) {
        Iterator it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return objArr;
    }

    public static Object[] e(Object[] objArr, int i10) {
        return r3.c(objArr, i10);
    }

    static Object[] f(Collection collection) {
        return d(collection, new Object[collection.size()]);
    }

    static Object[] g(Collection collection, Object[] objArr) {
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

    static Object[] h(Object[] objArr, int i10, int i11, Object[] objArr2) {
        com.google.common.base.m.t(i10, i10 + i11, objArr.length);
        if (objArr2.length < i11) {
            objArr2 = e(objArr2, i11);
        } else if (objArr2.length > i11) {
            objArr2[i11] = null;
        }
        System.arraycopy(objArr, i10, objArr2, 0, i11);
        return objArr2;
    }
}
