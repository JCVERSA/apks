package com.google.common.hash;

import defpackage.eo4;

public abstract class a {
    public static final int a = (int) System.currentTimeMillis();

    public static eo4 a() {
        return Murmur3_128HashFunction.MURMUR3_128;
    }

    public static eo4 b(int i) {
        return new Murmur3_128HashFunction(i);
    }
}
