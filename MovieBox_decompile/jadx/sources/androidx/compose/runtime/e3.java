package androidx.compose.runtime;

import android.os.Trace;

public final class e3 {

    public static final e3 f3385a = new e3();

    private e3() {
    }

    public final Object a(String str) {
        Trace.beginSection(str);
        return null;
    }

    public final void b(Object obj) {
        Trace.endSection();
    }
}
