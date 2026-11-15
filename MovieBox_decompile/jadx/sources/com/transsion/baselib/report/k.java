package com.transsion.baselib.report;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class k implements Application.ActivityLifecycleCallbacks {

    public static final k f42210a = new k();

    private static final CopyOnWriteArrayList f42211b = new CopyOnWriteArrayList();

    private static final Lazy f42212c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return k.i();
        }
    });

    private static int f42213d;

    private static long f42214e;

    private static int f42215f;

    private static Boolean f42216g;

    public interface a {
        void onBackgroundStatusChange(boolean z10);
    }

    private k() {
    }

    private final void c(Activity activity) {
        int i10 = f42213d + 1;
        f42213d = i10;
        if (i10 == 1) {
            j(false, activity);
        }
        Log.e("yy", "onActivityStarted  activity:" + activity + "  resumedActivityCount " + f42213d);
    }

    static void d(k kVar, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activity = null;
        }
        kVar.c(activity);
    }

    private final void e(Activity activity) {
        int i10 = f42213d - 1;
        f42213d = i10;
        if (i10 == 0) {
            j(true, activity);
            f42214e = System.currentTimeMillis();
        }
        Log.e("yy", "onActivityStopped  activity:" + activity + " resumedActivityCount " + f42213d);
    }

    static void f(k kVar, Activity activity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activity = null;
        }
        kVar.e(activity);
    }

    public static final CopyOnWriteArrayList i() {
        return new CopyOnWriteArrayList();
    }

    private final void j(boolean z10, Activity activity) {
        h.f42200a.e(z10);
        jg.b.f63119a.j(Boolean.valueOf(z10));
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((a) it.next()).onBackgroundStatusChange(z10);
        }
    }

    private final void k() {
        try {
            Iterator it = f42211b.iterator();
            Intrinsics.g(it, "iterator(...)");
            int i10 = 0;
            while (it.hasNext()) {
                Activity activity = (Activity) it.next();
                try {
                    if (activity.isDestroyed() || activity.isFinishing()) {
                        wf.a.f74274a.c("RoomActivityLifecycleCallbacks", "cleanup destroyed activity: " + activity.getClass().getSimpleName(), true);
                        it.remove();
                        i10++;
                    }
                } catch (Exception e10) {
                    wf.a.f74274a.x("RoomActivityLifecycleCallbacks", "check activity state failed, remove it: " + e10.getMessage(), true);
                    it.remove();
                }
            }
            if (i10 > 0) {
                wf.a.f74274a.c("RoomActivityLifecycleCallbacks", "cleaned " + i10 + " destroyed activities", true);
            }
        } catch (Exception e11) {
            wf.a.f74274a.i("RoomActivityLifecycleCallbacks", "cleanupDestroyedActivities failed: " + e11.getMessage(), true);
        }
    }

    private final List n() {
        return (List) f42212c.getValue();
    }

    public final int b() {
        return f42211b.size();
    }

    public final boolean g(a listener) {
        Intrinsics.h(listener, "listener");
        if (n().contains(listener)) {
            return false;
        }
        return n().add(listener);
    }

    public final void h() {
        d(this, null, 1, null);
    }

    public final void l() {
        CopyOnWriteArrayList copyOnWriteArrayList = f42211b;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            Activity activity = (Activity) it.next();
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                try {
                    activity.finish();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        f42211b.clear();
    }

    public final List m() {
        return f42211b;
    }

    public final Activity o() {
        return p(0);
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityCreated  activity:" + activity);
        if (activity instanceof f) {
            return;
        }
        f42211b.add(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityDestroyed  activity:" + activity);
        if (activity instanceof f) {
            return;
        }
        try {
            f42211b.remove(activity);
        } catch (Exception e10) {
            wf.a.f74274a.i("RoomActivityLifecycleCallbacks", "remove activity from stack failed: " + e10.getMessage(), true);
            Iterator it = f42211b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                if (it.next() == activity) {
                    it.remove();
                    break;
                }
            }
        }
        k();
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityPaused  activity:" + activity);
        if (f42211b.size() > 10) {
            k();
        }
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityResumed  activity:" + activity);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (activity instanceof f) {
            return;
        }
        c(activity);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (activity instanceof f) {
            return;
        }
        e(activity);
    }

    public final Activity p(int i10) {
        CopyOnWriteArrayList copyOnWriteArrayList = f42211b;
        if (copyOnWriteArrayList.isEmpty()) {
            return null;
        }
        int size = copyOnWriteArrayList.size();
        int i11 = (size - 1) - i10;
        if (i11 < 0 || i11 >= size) {
            return null;
        }
        return (Activity) copyOnWriteArrayList.get(i11);
    }

    public final boolean q() {
        return f42213d == 0;
    }

    public final boolean r() {
        return com.transsion.baselib.report.launch.b.f42221a.b().getLong("record_latest_foreground_time", 0L) == 0;
    }

    public final void s(String str) {
        if (Intrinsics.c(str, "android.intent.action.SCREEN_OFF")) {
            if (f42215f == 0) {
                f42215f = System.currentTimeMillis() - f42214e >= 1000 ? q() : false ? 1 : 2;
            }
        } else if (Intrinsics.c(str, "android.intent.action.USER_PRESENT")) {
            f42215f = 0;
        }
    }

    public final boolean t(a listener) {
        Intrinsics.h(listener, "listener");
        return n().remove(listener);
    }

    public final void u() {
        f(this, null, 1, null);
    }

    public final boolean v() {
        String value;
        Long lX;
        Boolean bool = f42216g;
        if (bool != null) {
            return Intrinsics.c(bool, Boolean.TRUE);
        }
        long j10 = com.transsion.baselib.report.launch.b.f42221a.b().getLong("record_latest_foreground_time", 0L);
        ConfigBean configBeanC = cm.f.f17019c.a().c("pull_notification_deadline", true);
        long jLongValue = (configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 0L : lX.longValue();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j10) / ((long) TimeConstants.DAY);
        wf.a.C0922a.f(wf.a.f74274a, "Report", "latestForegroundTime=" + j10 + " sleepDays=" + jCurrentTimeMillis + " notificationDeadlineDays=" + jLongValue, false, 4, null);
        Boolean boolValueOf = Boolean.valueOf(j10 > 0 && jCurrentTimeMillis > jLongValue);
        f42216g = boolValueOf;
        return Intrinsics.c(boolValueOf, Boolean.TRUE);
    }

    public final void w(int i10, Activity activity) {
        Intrinsics.h(activity, "activity");
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = f42211b;
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((Activity) obj).getClass(), activity.getClass())) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size() - i10;
            if (size <= 0) {
                return;
            }
            for (int i11 = 0; i11 < size; i11++) {
                ((Activity) arrayList.get(i11)).finish();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
