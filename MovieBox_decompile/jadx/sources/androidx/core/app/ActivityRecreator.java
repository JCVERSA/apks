package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

abstract class ActivityRecreator {

    protected static final Class f7624a;

    protected static final Field f7625b;

    protected static final Field f7626c;

    protected static final Method f7627d;

    protected static final Method f7628e;

    protected static final Method f7629f;

    private static final Handler f7630g = new Handler(Looper.getMainLooper());

    static {
        Class clsA = a();
        f7624a = clsA;
        f7625b = b();
        f7626c = f();
        f7627d = d(clsA);
        f7628e = c(clsA);
        f7629f = e(clsA);
    }

    private static Class a() {
        try {
            return Class.forName(ProcessUtils.ACTIVITY_THREAD);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 26 || i10 == 27;
    }

    protected static boolean h(Object obj, int i10, Activity activity) {
        try {
            final Object obj2 = f7626c.get(activity);
            if (obj2 == obj && activity.hashCode() == i10) {
                final Object obj3 = f7625b.get(activity);
                f7630g.postAtFrontOfQueue(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            Method method = ActivityRecreator.f7627d;
                            if (method != null) {
                                method.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                            } else {
                                ActivityRecreator.f7628e.invoke(obj3, obj2, Boolean.FALSE);
                            }
                        } catch (RuntimeException e10) {
                            if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                                throw e10;
                            }
                        } catch (Throwable th2) {
                            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th2);
                        }
                    }
                });
                return true;
            }
            return false;
        } catch (Throwable th2) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th2);
            return false;
        }
    }

    static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f7629f == null) {
            return false;
        }
        if (f7628e == null && f7627d == null) {
            return false;
        }
        try {
            final Object obj2 = f7626c.get(activity);
            if (obj2 == null || (obj = f7625b.get(activity)) == null) {
                return false;
            }
            final Application application = activity.getApplication();
            final a aVar = new a(activity);
            application.registerActivityLifecycleCallbacks(aVar);
            f7630g.post(new Runnable() {
                @Override
                public void run() {
                    aVar.f7631a = obj2;
                }
            });
            try {
                if (g()) {
                    Method method = f7629f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f7630g.post(new Runnable() {
                    @Override
                    public void run() {
                        application.unregisterActivityLifecycleCallbacks(aVar);
                    }
                });
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    private static final class a implements Application.ActivityLifecycleCallbacks {

        Object f7631a;

        private Activity f7632b;

        private final int f7633c;

        private boolean f7634d = false;

        private boolean f7635e = false;

        private boolean f7636f = false;

        a(Activity activity) {
            this.f7632b = activity;
            this.f7633c = activity.hashCode();
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            if (this.f7632b == activity) {
                this.f7632b = null;
                this.f7635e = true;
            }
        }

        @Override
        public void onActivityPaused(Activity activity) {
            if (!this.f7635e || this.f7636f || this.f7634d || !ActivityRecreator.h(this.f7631a, this.f7633c, activity)) {
                return;
            }
            this.f7636f = true;
            this.f7631a = null;
        }

        @Override
        public void onActivityStarted(Activity activity) {
            if (this.f7632b == activity) {
                this.f7634d = true;
            }
        }

        @Override
        public void onActivityResumed(Activity activity) {
        }

        @Override
        public void onActivityStopped(Activity activity) {
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}
