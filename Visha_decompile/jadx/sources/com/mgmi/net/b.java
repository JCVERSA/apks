package com.mgmi.net;

import com.mgmi.ads.api.c;
import com.mgmi.e.a.d;
import com.mgmi.e.a.e;

public class b {
    private static b a;
    private d b = new d(new com.mgmi.e.a.b(c.a()), new e(c.a()));

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                try {
                    if (a == null) {
                        a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public d b() {
        if (this.b == null) {
            this.b = new d(new com.mgmi.e.a.b(c.a()), new e(c.a()));
        }
        return this.b;
    }
}
