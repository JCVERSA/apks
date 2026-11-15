package com.bumptech.glide.repackaged.com.google.common.collect;

import java.lang.reflect.Array;

final class Platform {
    public static <T> T[] newArray(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }
}
