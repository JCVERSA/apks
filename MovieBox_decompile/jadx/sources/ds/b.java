package ds;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.support.v4.media.session.c;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b implements Application.ActivityLifecycleCallbacks {

    public static final b f59063a = new b();

    private static final CopyOnWriteArrayList f59064b = new CopyOnWriteArrayList();

    private static final Lazy f59065c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.b();
        }
    });

    private static int f59066d;

    private b() {
    }

    public static final CopyOnWriteArrayList b() {
        return new CopyOnWriteArrayList();
    }

    private final void c(boolean z10, Activity activity) {
        jg.b.f63119a.j(Boolean.valueOf(z10));
        Iterator it = e().iterator();
        if (it.hasNext()) {
            c.a(it.next());
            throw null;
        }
    }

    private final void d() {
        try {
            Iterator it = f59064b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                Activity activity = (Activity) it.next();
                try {
                    if (activity.isDestroyed() || activity.isFinishing()) {
                        it.remove();
                    }
                } catch (Exception unused) {
                    it.remove();
                }
            }
        } catch (Exception unused2) {
        }
    }

    private final List e() {
        return (List) f59065c.getValue();
    }

    public final void f(int i10, Activity activity) {
        Intrinsics.h(activity, "activity");
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = f59064b;
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

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityCreated  activity:" + activity);
        f59064b.add(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityDestroyed  activity:" + activity);
        try {
            f59064b.remove(activity);
        } catch (Exception unused) {
            Iterator it = f59064b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                if (it.next() == activity) {
                    it.remove();
                    break;
                }
            }
        }
        d();
    }

    @Override
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityPaused  activity:" + activity);
        if (f59064b.size() > 5) {
            d();
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
        Log.e("yy", "onActivityStarted  activity:" + activity);
        int i10 = f59066d + 1;
        f59066d = i10;
        if (i10 == 1) {
            c(false, activity);
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityStopped  activity:" + activity);
        int i10 = f59066d + (-1);
        f59066d = i10;
        if (i10 == 0) {
            c(true, activity);
        }
    }
}
