package defpackage;

import sun.misc.Unsafe;

public abstract class c7i {
    public static boolean a(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!b7i.a(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
