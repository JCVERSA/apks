package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Map;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2293oY {
    public static <K, V> Map<K, V> A00(int expectedSize) {
        return C2134lv.A0B(expectedSize);
    }

    public static <T> T[] A01(T[] tArr, int i) {
        if (tArr.length != 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 0);
        }
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T[] A02(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }
}
