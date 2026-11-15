package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.internal.ads.b8;
import defpackage.c7i;
import defpackage.e7i;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import org.mozilla.javascript.ES6Iterator;
import sun.misc.Unsafe;

public final class b8 extends y7 {
    public static final Unsafe a;
    public static final long b;
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction() {
                @Override
                public final Object run() throws IllegalAccessException {
                    Unsafe unsafe2 = b8.a;
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    throw new NoSuchFieldError("the Unsafe");
                }
            });
        }
        try {
            c = unsafe.objectFieldOffset(d8.class.getDeclaredField("waiters"));
            b = unsafe.objectFieldOffset(d8.class.getDeclaredField("listeners"));
            d = unsafe.objectFieldOffset(d8.class.getDeclaredField(ES6Iterator.VALUE_PROPERTY));
            e = unsafe.objectFieldOffset(c8.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
            f = unsafe.objectFieldOffset(c8.class.getDeclaredField("b"));
            a = unsafe;
        } catch (NoSuchFieldException e3) {
            throw new RuntimeException(e3);
        }
    }

    public b8(e7i e7iVar) {
        super(null);
    }

    @Override
    public final u7 a(d8 d8Var, u7 u7Var) {
        u7 u7Var2;
        do {
            u7Var2 = d8Var.listeners;
            if (u7Var == u7Var2) {
                break;
            }
        } while (!e(d8Var, u7Var2, u7Var));
        return u7Var2;
    }

    @Override
    public final c8 b(d8 d8Var, c8 c8Var) {
        c8 c8Var2;
        do {
            c8Var2 = d8Var.waiters;
            if (c8Var == c8Var2) {
                break;
            }
        } while (!g(d8Var, c8Var2, c8Var));
        return c8Var2;
    }

    @Override
    public final void c(c8 c8Var, c8 c8Var2) {
        a.putObject(c8Var, f, c8Var2);
    }

    @Override
    public final void d(c8 c8Var, Thread thread) {
        a.putObject(c8Var, e, thread);
    }

    @Override
    public final boolean e(d8 d8Var, u7 u7Var, u7 u7Var2) {
        return c7i.a(a, d8Var, b, u7Var, u7Var2);
    }

    @Override
    public final boolean f(d8 d8Var, Object obj, Object obj2) {
        return c7i.a(a, d8Var, d, obj, obj2);
    }

    @Override
    public final boolean g(d8 d8Var, c8 c8Var, c8 c8Var2) {
        return c7i.a(a, d8Var, c, c8Var, c8Var2);
    }
}
