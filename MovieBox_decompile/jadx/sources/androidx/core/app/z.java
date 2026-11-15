package androidx.core.app;

import android.app.Service;
import android.os.Build;

public abstract class z {

    static class a {
        static void a(Service service, int i10) {
            service.stopForeground(i10);
        }
    }

    public static void a(Service service, int i10) {
        if (Build.VERSION.SDK_INT >= 24) {
            a.a(service, i10);
        } else {
            service.stopForeground((i10 & 1) != 0);
        }
    }
}
