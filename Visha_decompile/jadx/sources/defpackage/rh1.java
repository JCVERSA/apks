package defpackage;

import android.app.Application;
import android.content.Context;

public final class rh1 {
    public static final rh1 a = new rh1();
    public static Context b;

    public final Context a() {
        Context context = b;
        if (context != null) {
            y45.g(context);
            return context;
        }
        Application applicationB = b();
        if (applicationB == null) {
            throw new RuntimeException("Unable to get Application Context");
        }
        Context applicationContext = applicationB.getApplicationContext();
        b = applicationContext;
        y45.g(applicationContext);
        return applicationContext;
    }

    public final Application b() {
        Application application;
        Exception e;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            application = (Application) cls.getMethod("currentApplication", null).invoke(null, null);
            if (application != null) {
                return application;
            }
            try {
                return (Application) cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            } catch (Exception e2) {
                e = e2;
                oq5.a.b("ContextGetter", "getApplicationUsingReflection", e);
                return application;
            }
        } catch (Exception e3) {
            application = null;
            e = e3;
        }
    }
}
