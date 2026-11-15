package defpackage;

import android.app.Application;
import android.os.Handler;

public abstract class se {
    public static Application a;
    public static Handler b;

    public static Application a() {
        return a;
    }

    public static Handler b() {
        return b;
    }

    public static void c(Application application, Handler handler) {
        a = application;
        b = handler;
    }
}
