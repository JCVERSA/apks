package com.google.android.libraries.places.internal;

import sun.misc.Unsafe;

public abstract class a {
    public static boolean a(Unsafe unsafe, Object obj, long j10, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j10, obj2, obj3)) {
            if (unsafe.getObject(obj, j10) != obj2) {
                return false;
            }
        }
        return true;
    }
}
