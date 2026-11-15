package androidx.media3.common.util;

import android.os.Trace;

public abstract class q0 {
    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
