package kotlin.concurrent;

import defpackage.c74;
import defpackage.y45;

public abstract class ThreadsKt {
    public static final Thread a(boolean z, boolean z2, ClassLoader classLoader, String str, int i, final c74 c74Var) {
        y45.j(c74Var, "block");
        Thread thread = new Thread() {
            @Override
            public void run() {
                c74Var.invoke();
            }
        };
        if (z2) {
            thread.setDaemon(true);
        }
        if (i > 0) {
            thread.setPriority(i);
        }
        if (str != null) {
            thread.setName(str);
        }
        if (classLoader != null) {
            thread.setContextClassLoader(classLoader);
        }
        if (z) {
            thread.start();
        }
        return thread;
    }

    public static Thread b(boolean z, boolean z2, ClassLoader classLoader, String str, int i, c74 c74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = true;
        }
        boolean z3 = z;
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        boolean z4 = z2;
        ClassLoader classLoader2 = (i2 & 4) != 0 ? null : classLoader;
        String str2 = (i2 & 8) != 0 ? null : str;
        if ((i2 & 16) != 0) {
            i = -1;
        }
        return a(z3, z4, classLoader2, str2, i, c74Var);
    }
}
