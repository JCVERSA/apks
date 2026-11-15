package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.b.d;
import java.lang.reflect.AccessibleObject;

public abstract class b {

    private static final b f19806a;

    static {
        f19806a = d.a() < 9 ? new a() : new c();
    }

    public static b a() {
        return f19806a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
