package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;

public abstract class l {
    public static Object[] a(Object[] objArr, int i, int i2, Object[] objArr2) {
        return Arrays.copyOfRange(objArr, i, i2, objArr2.getClass());
    }

    public static Class b(Enum r0) {
        return r0.getDeclaringClass();
    }

    public static Object[] c(Object[] objArr, int i) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        return Arrays.copyOf(objArr, i);
    }

    public static Map d(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    public static Set e(int i) {
        return CompactHashSet.createWithExpectedSize(i);
    }

    public static Map f(int i) {
        return CompactLinkedHashMap.createWithExpectedSize(i);
    }

    public static Set g(int i) {
        return CompactLinkedHashSet.createWithExpectedSize(i);
    }

    public static Map h() {
        return CompactHashMap.create();
    }

    public static Map i(int i) {
        return Maps.s(i);
    }

    public static MapMaker j(MapMaker mapMaker) {
        return mapMaker.l();
    }
}
