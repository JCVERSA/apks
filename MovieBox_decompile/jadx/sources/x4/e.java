package x4;

import android.util.Log;
import com.airbnb.lottie.n0;
import java.util.HashSet;
import java.util.Set;

public class e implements n0 {

    private static final Set f75074a = new HashSet();

    @Override
    public void a(String str) {
        d(str, null);
    }

    @Override
    public void b(String str, Throwable th2) {
        boolean z10 = com.airbnb.lottie.d.f17093a;
    }

    @Override
    public void c(String str) {
        e(str, null);
    }

    @Override
    public void d(String str, Throwable th2) {
        Set set = f75074a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th2);
        set.add(str);
    }

    public void e(String str, Throwable th2) {
        boolean z10 = com.airbnb.lottie.d.f17093a;
    }
}
