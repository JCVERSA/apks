package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public abstract class zk5 {
    public static WeakReference a = new WeakReference(null);
    public static boolean b = false;
    public static b c = null;

    public class a implements Application.ActivityLifecycleCallbacks {
        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
        }

        @Override
        public void onActivityPaused(Activity activity) {
        }

        @Override
        public void onActivityResumed(Activity activity) {
            zk5.a.clear();
            WeakReference unused = zk5.a = new WeakReference(activity);
            try {
                if (zk5.c == null || activity == null) {
                    return;
                }
                zk5.c.a(activity.getClass().getSimpleName());
            } catch (Throwable unused2) {
            }
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityStarted(Activity activity) {
        }

        @Override
        public void onActivityStopped(Activity activity) {
        }
    }

    public interface b {
        void a(String str);
    }

    public static List d() {
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            Object objE = e();
            if (objE == null) {
                return linkedList;
            }
            Field declaredField = objE.getClass().getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objE);
            if (!(obj instanceof Map)) {
                return linkedList;
            }
            for (Object obj2 : ((Map) obj).values()) {
                Class<?> cls = obj2.getClass();
                Field declaredField2 = cls.getDeclaredField("activity");
                declaredField2.setAccessible(true);
                Activity activity2 = (Activity) declaredField2.get(obj2);
                if (activity == null) {
                    Field declaredField3 = cls.getDeclaredField("paused");
                    declaredField3.setAccessible(true);
                    if (declaredField3.getBoolean(obj2)) {
                        linkedList.add(activity2);
                    } else {
                        activity = activity2;
                    }
                } else {
                    linkedList.add(activity2);
                }
            }
        } catch (Exception e) {
            ja1.Log().e("LifecycleUtil", "getActivitiesByReflect: " + e.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    public static Object e() {
        Object objF = f();
        return objF != null ? objF : g();
    }

    public static Object f() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            ja1.Log().e("LifecycleUtil", "getActivityThreadInActivityThreadStaticField: " + e.getMessage());
            return null;
        }
    }

    public static Object g() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
        } catch (Exception e) {
            ja1.Log().e("LifecycleUtil", "getActivityThreadInActivityThreadStaticMethod: " + e.getMessage());
            return null;
        }
    }

    public static Activity h() {
        WeakReference weakReference = a;
        Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
        if (i(activity)) {
            ja1.Log().i("LifecycleUtil", "topActivity = " + activity.getClass().getSimpleName());
            return activity;
        }
        ja1.Log().i("LifecycleUtil", "getActivitiesByReflect");
        for (Activity activity2 : d()) {
            if (i(activity2)) {
                ja1.Log().i("LifecycleUtil", "getActivitiesByReflect topActivity = " + activity2.getClass().getSimpleName());
                return activity2;
            }
        }
        ja1.Log().i("LifecycleUtil", "Did not get topActivity");
        return null;
    }

    public static boolean i(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static void j(Application application) {
        if (application == null || b) {
            return;
        }
        b = true;
        application.registerActivityLifecycleCallbacks(new a());
    }

    public static void k(b bVar) {
        c = bVar;
    }
}
