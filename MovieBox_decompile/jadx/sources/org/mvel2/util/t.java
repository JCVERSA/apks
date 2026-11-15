package org.mvel2.util;

import java.lang.reflect.Array;

public class t {
    public static Object[] a(Class[] clsArr, Object[] objArr, boolean z10) {
        if (!z10) {
            return objArr;
        }
        Object objNewInstance = objArr.length > 0 ? objArr[objArr.length - 1] : Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), 0);
        if (clsArr.length == objArr.length && (objNewInstance == null || objNewInstance.getClass().isArray())) {
            return objArr;
        }
        int length = (objArr.length - clsArr.length) + 1;
        Object objNewInstance2 = Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), length);
        for (int i10 = 0; i10 < length; i10++) {
            Array.set(objNewInstance2, i10, objArr[(clsArr.length - 1) + i10]);
        }
        Object[] objArr2 = new Object[clsArr.length];
        for (int i11 = 0; i11 < clsArr.length - 1; i11++) {
            objArr2[i11] = objArr[i11];
        }
        objArr2[clsArr.length - 1] = objNewInstance2;
        return objArr2;
    }

    public static Class b(Class[] clsArr, int i10, boolean z10) {
        if (z10) {
            return i10 < clsArr.length + (-1) ? clsArr[i10] : clsArr[clsArr.length - 1].getComponentType();
        }
        return clsArr[i10];
    }
}
