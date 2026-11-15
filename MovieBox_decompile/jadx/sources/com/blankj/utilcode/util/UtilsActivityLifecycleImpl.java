package com.blankj.utilcode.util;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.p009lifecycle.Lifecycle;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

final class UtilsActivityLifecycleImpl implements Application.ActivityLifecycleCallbacks {

    static final UtilsActivityLifecycleImpl f19457g = new UtilsActivityLifecycleImpl();

    private static final Activity f19458h = new Activity();

    private final LinkedList f19459a = new LinkedList();

    private final List f19460b = new CopyOnWriteArrayList();

    private final Map f19461c = new ConcurrentHashMap();

    private int f19462d = 0;

    private int f19463e = 0;

    private boolean f19464f = false;

    class AnonymousClass2 implements Runnable {
        final Activity val$activity;

        AnonymousClass2(Activity activity) {
            this.val$activity = activity;
        }

        @Override
        public void run() {
            UtilsActivityLifecycleImpl.this.f19461c.remove(this.val$activity);
        }
    }

    UtilsActivityLifecycleImpl() {
    }

    public void f(Activity activity, Utils.a aVar) {
        List copyOnWriteArrayList = (List) this.f19461c.get(activity);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.f19461c.put(activity, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(aVar)) {
            return;
        }
        copyOnWriteArrayList.add(aVar);
    }

    private void g(Activity activity, Lifecycle.Event event) {
        h(activity, event, (List) this.f19461c.get(activity));
        h(activity, event, (List) this.f19461c.get(f19458h));
    }

    private void h(Activity activity, Lifecycle.Event event, List list) {
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
            this.f19461c.remove(activity);
        }
    }

    private List i() {
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
        } catch (Exception e10) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e10.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    private Object k() {
        Object objL = l();
        return objL != null ? objL : m();
    }

    private Object l() {
        try {
            Field declaredField = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e10) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e10.getMessage());
            return null;
        }
    }

    private Object m() {
        try {
            return Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null).invoke(null, null);
        } catch (Exception e10) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e10.getMessage());
            return null;
        }
    }

    private void r(Activity activity, boolean z10) {
        if (this.f19460b.isEmpty()) {
            return;
        }
        Iterator it = this.f19460b.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            if (!z10) {
                throw null;
            }
            throw null;
        }
    }

    private void s(final Activity activity, boolean z10) {
        try {
            if (z10) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(-123, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
            } else {
                final Object tag = activity.getWindow().getDecorView().getTag(-123);
                if (!(tag instanceof Integer)) {
                } else {
                    e0.K(new Runnable() {
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

    public void v(Activity activity, Utils.a aVar) {
        List list = (List) this.f19461c.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(aVar);
    }

    private static void w() {
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                    declaredField.set(null, Float.valueOf(1.0f));
                }
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchFieldException e11) {
                e11.printStackTrace();
            }
        }
    }

    private void x(Activity activity) {
        if (!this.f19459a.contains(activity)) {
            this.f19459a.addFirst(activity);
        } else {
            if (((Activity) this.f19459a.getFirst()).equals(activity)) {
                return;
            }
            this.f19459a.remove(activity);
            this.f19459a.addFirst(activity);
        }
    }

    void d(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        e0.J(new Runnable() {
            @Override
            public void run() {
                UtilsActivityLifecycleImpl.this.f(activity, aVar);
            }
        });
    }

    void e(Utils.a aVar) {
        d(f19458h, aVar);
    }

    List j() {
        if (!this.f19459a.isEmpty()) {
            return new LinkedList(this.f19459a);
        }
        this.f19459a.addAll(i());
        return new LinkedList(this.f19459a);
    }

    Application n() {
        Object objInvoke;
        try {
            Class<?> cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            Object objK = k();
            if (objK == null || (objInvoke = cls.getMethod("getApplication", null).invoke(objK, null)) == null) {
                return null;
            }
            return (Application) objInvoke;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    Activity o() {
        for (Activity activity : j()) {
            if (e0.w(activity)) {
                return activity;
            }
        }
        return null;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.f19459a.size() == 0) {
            r(activity, true);
        }
        LanguageUtils.a(activity);
        w();
        x(activity);
        g(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        this.f19459a.remove(activity);
        e0.f(activity);
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
        if (this.f19464f) {
            this.f19464f = false;
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
        if (!this.f19464f) {
            x(activity);
        }
        int i10 = this.f19463e;
        if (i10 < 0) {
            this.f19463e = i10 + 1;
        } else {
            this.f19462d++;
        }
        g(activity, Lifecycle.Event.ON_START);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.f19463e--;
        } else {
            int i10 = this.f19462d - 1;
            this.f19462d = i10;
            if (i10 <= 0) {
                this.f19464f = true;
                r(activity, false);
            }
        }
        s(activity, true);
        g(activity, Lifecycle.Event.ON_STOP);
    }

    void p(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    boolean q() {
        return !this.f19464f;
    }

    void t(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        e0.J(new Runnable() {
            @Override
            public void run() {
                UtilsActivityLifecycleImpl.this.v(activity, aVar);
            }
        });
    }

    void u(Utils.a aVar) {
        t(f19458h, aVar);
    }

    void y(Application application) {
        this.f19459a.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }
}
