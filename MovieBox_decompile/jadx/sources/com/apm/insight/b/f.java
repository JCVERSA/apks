package com.apm.insight.b;

import android.content.Context;
import androidx.annotation.NonNull;

public class f {

    private static volatile f f18752a;

    private static g f18753c;

    private final b f18754b;

    private f(@NonNull Context context) {
        this.f18754b = new b(context);
        g gVar = new g();
        f18753c = gVar;
        gVar.a();
    }

    public static f a(Context context) {
        if (f18752a == null) {
            synchronized (f.class) {
                try {
                    if (f18752a == null) {
                        f18752a = new f(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18752a;
    }

    public static g b() {
        return f18753c;
    }

    public final void c() {
        this.f18754b.a();
    }

    public final void d() {
        this.f18754b.b();
    }

    public final b a() {
        return this.f18754b;
    }
}
