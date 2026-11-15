package defpackage;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

public abstract class bzi {
    public final Unsafe a;

    public bzi(Unsafe unsafe) {
        this.a = unsafe;
    }

    public final int a(Class cls) {
        return this.a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.a.arrayIndexScale(cls);
    }

    public final long c(Field field) {
        return this.a.objectFieldOffset(field);
    }
}
