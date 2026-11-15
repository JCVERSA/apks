package defpackage;

import android.content.Context;
import android.os.StrictMode;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

public abstract class t1j implements jzi {
    public static final Map a = new ArrayMap();

    public static t1j a(Context context, String str, Runnable runnable) {
        if (kui.b()) {
            throw null;
        }
        synchronized (t1j.class) {
            ubc.a(a.get(null));
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                throw null;
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th;
            }
        }
    }

    public static synchronized void b() {
        Map map = a;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
        map.clear();
    }
}
