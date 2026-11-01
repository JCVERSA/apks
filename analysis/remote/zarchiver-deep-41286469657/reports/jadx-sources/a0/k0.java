package a0;

import android.os.Build;
import java.io.File;
import ru.zdevs.zarchiver.ZApp;

public final class k0 extends w0.c {
    @Override
    public final w0.a.b f() {
        ZApp zApp;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(8);
        t0.a.c();
        t0.a.k();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 25 && (zApp = ZApp.f1434c) != null) {
            v0.g.a(zApp, t0.a.d(true));
        }
        if (n0.e.f1243a == null) {
            n0.e.h();
            if (i2 < 31) {
                try {
                    new File(n0.e.f1243a, ".nomedia").createNewFile();
                } catch (Exception unused) {
                }
            }
        }
        threadCurrentThread.setPriority(priority);
        return null;
    }

    @Override
    public final int j() {
        return 1001;
    }
}
