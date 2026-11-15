package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;

public final class C2562ga {
    public static volatile C2562ga c;
    public final Context a;
    public final HashMap b = new HashMap();

    public C2562ga(Context context) {
        this.a = context;
    }

    public static C2562ga a(Context context) {
        if (c == null) {
            synchronized (C2562ga.class) {
                try {
                    if (c == null) {
                        c = new C2562ga(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final D9 a(String str) {
        if (!this.b.containsKey(str)) {
            synchronized (this) {
                try {
                    if (!this.b.containsKey(str)) {
                        this.b.put(str, new D9(this.a, str));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (D9) this.b.get(str);
    }
}
