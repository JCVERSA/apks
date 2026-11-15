package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.p004lifecycle.Lifecycle;
import defpackage.ubc;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public final class UtilsActivityLifecycleImpl implements Application.ActivityLifecycleCallbacks {
    public static final UtilsActivityLifecycleImpl h = new UtilsActivityLifecycleImpl();
    public static final Activity i = new Activity();
    public final LinkedList b = new LinkedList();
    public final List c = new CopyOnWriteArrayList();
    public final Map d = new ConcurrentHashMap();
    public int e = 0;
    public int f = 0;
    public boolean g = false;

    public void addOnAppStatusChangedListener(Utils.c cVar) {
        this.c.add(cVar);
    }

    public void d(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        h.K(new Runnable() {
            @Override
            public void run() {
                UtilsActivityLifecycleImpl.this.f(activity, aVar);
            }
        });
    }

    public void e(Utils.a aVar) {
        d(i, aVar);
    }

    public final void f(Activity activity, Utils.a aVar) {
        List copyOnWriteArrayList = (List) this.d.get(activity);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.d.put(activity, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(aVar)) {
            return;
        }
        copyOnWriteArrayList.add(aVar);
    }

    public final void g(Activity activity, Lifecycle.Event event) {
        h(activity, event, (List) this.d.get(activity));
        h(activity, event, (List) this.d.get(i));
    }

    public final void h(Activity activity, Lifecycle.Event event, List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Utils.a aVar = (Utils.a) it.next();
            aVar.g(activity, event);
            if (event.equals(Lifecycle.Event.ON_CREATE)) {
                aVar.a(activity);
            } else if (event.equals(Lifecycle.Event.ON_START)) {
                aVar.e(activity);
            } else if (event.equals(Lifecycle.Event.ON_RESUME)) {
                aVar.d(activity);
            } else if (event.equals(Lifecycle.Event.ON_PAUSE)) {
                aVar.c(activity);
            } else if (event.equals(Lifecycle.Event.ON_STOP)) {
                aVar.f(activity);
            } else if (event.equals(Lifecycle.Event.ON_DESTROY)) {
                aVar.b(activity);
            }
        }
        if (event.equals(Lifecycle.Event.ON_DESTROY)) {
            this.d.remove(activity);
        }
    }

    public final List i() {
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            Object objK = k();
            if (objK == null) {
                return linkedList;
            }
            Field declaredField = objK.getClass().getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objK);
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
                        linkedList.addFirst(activity2);
                    } else {
                        activity = activity2;
                    }
                } else {
                    linkedList.addFirst(activity2);
                }
            }
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    public List j() {
        if (!this.b.isEmpty()) {
            return new LinkedList(this.b);
        }
        this.b.addAll(i());
        return new LinkedList(this.b);
    }

    public final Object k() {
        Object objL = l();
        return objL != null ? objL : m();
    }

    public final Object l() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e.getMessage());
            return null;
        }
    }

    public final Object m() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null).invoke(null, null);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e.getMessage());
            return null;
        }
    }

    public Application n() {
        Object objInvoke;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objK = k();
            if (objK == null || (objInvoke = cls.getMethod("getApplication", null).invoke(objK, null)) == null) {
                return null;
            }
            return (Application) objInvoke;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Activity o() {
        for (Activity activity : j()) {
            if (h.v(activity)) {
                return activity;
            }
        }
        return null;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.b.size() == 0) {
            r(activity, true);
        }
        g(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        this.b.remove(activity);
        h.g(activity);
        g(activity, Lifecycle.Event.ON_DESTROY);
    }

    @Override
    public void onActivityPaused(Activity activity) {
        g(activity, Lifecycle.Event.ON_PAUSE);
    }

    @Override
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityPostDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPostPaused(Activity activity) {
    }

    @Override
    public void onActivityPostResumed(Activity activity) {
    }

    @Override
    public void onActivityPostSaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityPostStarted(Activity activity) {
    }

    @Override
    public void onActivityPostStopped(Activity activity) {
    }

    @Override
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityPreDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPrePaused(Activity activity) {
    }

    @Override
    public void onActivityPreResumed(Activity activity) {
    }

    @Override
    public void onActivityPreSaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityPreStarted(Activity activity) {
    }

    @Override
    public void onActivityPreStopped(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
        x(activity);
        if (this.g) {
            this.g = false;
            r(activity, true);
        }
        s(activity, false);
        g(activity, Lifecycle.Event.ON_RESUME);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        if (!this.g) {
            x(activity);
        }
        int i2 = this.f;
        if (i2 < 0) {
            this.f = i2 + 1;
        } else {
            this.e++;
        }
        g(activity, Lifecycle.Event.ON_START);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.f--;
        } else {
            int i2 = this.e - 1;
            this.e = i2;
            if (i2 <= 0) {
                this.g = true;
                r(activity, false);
            }
        }
        s(activity, true);
        g(activity, Lifecycle.Event.ON_STOP);
    }

    public void p(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    public boolean q() {
        return !this.g;
    }

    public final void r(Activity activity, boolean z) {
        if (this.c.isEmpty()) {
            return;
        }
        Iterator it = this.c.iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void removeOnAppStatusChangedListener(Utils.c cVar) {
        this.c.remove(cVar);
    }

    public final void s(final Activity activity, boolean z) {
        try {
            if (z) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(-123, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
            } else {
                final Object tag = activity.getWindow().getDecorView().getTag(-123);
                if (!(tag instanceof Integer)) {
                } else {
                    h.L(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                Window window2 = activity.getWindow();
                                if (window2 != null) {
                                    window2.setSoftInputMode(((Integer) tag).intValue());
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }, 100L);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void t(final Activity activity) {
        if (activity == null) {
            return;
        }
        h.K(new Runnable() {
            @Override
            public void run() {
                UtilsActivityLifecycleImpl.this.d.remove(activity);
            }
        });
    }

    public void u(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        h.K(new Runnable() {
            @Override
            public void run() {
                UtilsActivityLifecycleImpl.this.w(activity, aVar);
            }
        });
    }

    public void v(Utils.a aVar) {
        u(i, aVar);
    }

    public final void w(Activity activity, Utils.a aVar) {
        List list = (List) this.d.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(aVar);
    }

    public final void x(Activity activity) {
        if (!this.b.contains(activity)) {
            this.b.addFirst(activity);
        } else {
            if (((Activity) this.b.getFirst()).equals(activity)) {
                return;
            }
            this.b.remove(activity);
            this.b.addFirst(activity);
        }
    }

    public void y(Application application) {
        this.b.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }
}
