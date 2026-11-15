package com.hunantv.imgo.c.a.b;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;

public class f {
    private static volatile boolean a = false;
    private static d b;

    public static void a(d dVar) {
        if (a) {
            return;
        }
        a = true;
        b = dVar;
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Iterator<String> it = b.b().iterator();
        while (it.hasNext()) {
            c(it.next()).a(str);
        }
    }

    private static a c(String str) {
        a();
        a aVarA = b.a(str);
        if (aVarA != null) {
            return aVarA;
        }
        throw new IllegalArgumentException("groupName:" + str + " no register");
    }

    public static final ExecutorService a(String str) {
        return c(str).a();
    }

    public static void a(String str, Runnable runnable, String str2, int i, int i2) {
        c(str).a(runnable, str2, i, i2);
    }

    private static void a() {
        if (!a) {
            throw new IllegalArgumentException("thread pool no inti");
        }
    }
}
