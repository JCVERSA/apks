package defpackage;

import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public class iq5 implements et5 {
    public static final Set a = new HashSet();

    @Override
    public void a(String str) {
        b(str, null);
    }

    @Override
    public void b(String str, Throwable th) {
        Set set = a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th);
        set.add(str);
    }

    public void c(String str, Throwable th) {
        if (yh5.a) {
            Log.d("LOTTIE", str, th);
        }
    }

    @Override
    public void debug(String str) {
        c(str, null);
    }

    @Override
    public void error(String str, Throwable th) {
        if (yh5.a) {
            Log.d("LOTTIE", str, th);
        }
    }
}
