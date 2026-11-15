package com.apm.insight.c;

import com.apm.insight.e;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a {

    private static AtomicBoolean f18822a = new AtomicBoolean(false);

    public static boolean a() {
        synchronized (f18822a) {
            try {
                if (f18822a.get()) {
                    return false;
                }
                f18822a.set(true);
                return b();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean b() {
        if (!com.apm.insight.runtime.a.g()) {
            return false;
        }
        try {
            File file = new File(e.h().getFilesDir(), "apminsight/crashCommand");
            file.mkdirs();
            new File(file, "0_" + System.currentTimeMillis()).createNewFile();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
