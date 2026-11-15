package com.google.firebase.perf.util;

import java.util.NoSuchElementException;

public final class e {

    private final Object f31544a;

    private e() {
        this.f31544a = null;
    }

    public static e a() {
        return new e();
    }

    public static e b(Object obj) {
        return obj == null ? a() : e(obj);
    }

    public static e e(Object obj) {
        return new e(obj);
    }

    public Object c() {
        Object obj = this.f31544a;
        if (obj != null) {
            return obj;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean d() {
        return this.f31544a != null;
    }

    private e(Object obj) {
        if (obj != null) {
            this.f31544a = obj;
            return;
        }
        throw new NullPointerException("value for optional is empty.");
    }
}
