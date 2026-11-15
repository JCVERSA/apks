package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;

abstract class r3 {
    static Object[] a(Object[] objArr, int i10, int i11, Object[] objArr2) {
        return Arrays.copyOfRange(objArr, i10, i11, objArr2.getClass());
    }

    static Class b(Enum r10) {
        return r10.getDeclaringClass();
    }

    static Object[] c(Object[] objArr, int i10) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        return Arrays.copyOf(objArr, i10);
    }

    static Map d(int i10) {
        return CompactHashMap.createWithExpectedSize(i10);
    }

    static Set e(int i10) {
        return CompactHashSet.createWithExpectedSize(i10);
    }

    static Map f(int i10) {
        return CompactLinkedHashMap.createWithExpectedSize(i10);
    }

    static Set g(int i10) {
        return CompactLinkedHashSet.createWithExpectedSize(i10);
    }

    static Map h() {
        return CompactHashMap.create();
    }

    static Map i(int i10) {
        return Maps.s(i10);
    }

    static MapMaker j(MapMaker mapMaker) {
        return mapMaker.l();
    }
}
