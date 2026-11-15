package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;

public abstract class s {

    private static long f7865a;

    private static Method f7866b;

    private static Method f7867c;

    private static Method f7868d;

    private static Method f7869e;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f7865a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f7866b = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                f7867c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                f7868d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                f7869e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception unused) {
            }
        }
    }

    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
