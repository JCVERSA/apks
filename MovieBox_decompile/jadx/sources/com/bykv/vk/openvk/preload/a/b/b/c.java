package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

final class c extends b {

    private static Class f19807a;

    private final Object f19808b = b();

    private final Field f19809c = c();

    c() {
    }

    private boolean b(AccessibleObject accessibleObject) {
        if (this.f19808b != null && this.f19809c != null) {
            try {
                Long l10 = (Long) f19807a.getMethod("objectFieldOffset", Field.class).invoke(this.f19808b, this.f19809c);
                l10.longValue();
                f19807a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f19808b, accessibleObject, l10, Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    @Override
    public final void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e10) {
            throw new j("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
        }
    }

    private static Object b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f19807a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
