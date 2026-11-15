package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

final class zzhe implements PrivilegedExceptionAction {
    zzhe() {
    }

    public static final Unsafe zza() throws Exception {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        return null;
    }

    @Override
    public final Object run() throws Exception {
        return zza();
    }
}
