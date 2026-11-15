package com.google.firebase.perf.metrics;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.d0;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.t;
import com.google.firebase.n;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.ApplicationProcessState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import xc.k;

public class AppStartTrace implements Application.ActivityLifecycleCallbacks, t {
    private static volatile AppStartTrace A;
    private static ExecutorService B;

    private static final Timer f31434y = new com.google.firebase.perf.util.a().a();

    private static final long f31435z = TimeUnit.MINUTES.toMicros(1);

    private final k f31437b;

    private final com.google.firebase.perf.util.a f31438c;

    private final com.google.firebase.perf.config.a f31439d;

    private final com.google.firebase.perf.v1.i.b f31440e;

    private Context f31441f;

    private WeakReference f31442g;

    private WeakReference f31443h;

    private final Timer f31445j;

    private final Timer f31446k;

    private PerfSession f31455t;

    private boolean f31436a = false;

    private boolean f31444i = false;

    private Timer f31447l = null;

    private Timer f31448m = null;

    private Timer f31449n = null;

    private Timer f31450o = null;

    private Timer f31451p = null;

    private Timer f31452q = null;

    private Timer f31453r = null;

    private Timer f31454s = null;

    private boolean f31456u = false;

    private int f31457v = 0;

    private final b f31458w = new b();

    private boolean f31459x = false;

    public static class StartFromBackgroundRunnable implements Runnable {
        private final AppStartTrace trace;

        public StartFromBackgroundRunnable(AppStartTrace appStartTrace) {
            this.trace = appStartTrace;
        }

        @Override
        public void run() {
            if (this.trace.f31447l == null) {
                this.trace.f31456u = true;
            }
        }
    }

    private final class b implements ViewTreeObserver.OnDrawListener {
        private b() {
        }

        @Override
        public void onDraw() {
            AppStartTrace.h(AppStartTrace.this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    AppStartTrace(k kVar, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, ExecutorService executorService) {
        this.f31437b = kVar;
        this.f31438c = aVar;
        this.f31439d = aVar2;
        B = executorService;
        this.f31440e = com.google.firebase.perf.v1.i.M().r("_experiment_app_start_ttid");
        this.f31445j = Build.VERSION.SDK_INT >= 24 ? Timer.ofElapsedRealtime(Process.getStartElapsedRealtime()) : null;
        n nVar = (n) com.google.firebase.f.l().j(n.class);
        this.f31446k = nVar != null ? Timer.ofElapsedRealtime(nVar.b()) : null;
    }

    static int h(AppStartTrace appStartTrace) {
        int i10 = appStartTrace.f31457v;
        appStartTrace.f31457v = i10 + 1;
        return i10;
    }

    private Timer i() {
        Timer timer = this.f31446k;
        return timer != null ? timer : f31434y;
    }

    public static AppStartTrace j() {
        return A != null ? A : k(k.k(), new com.google.firebase.perf.util.a());
    }

    static AppStartTrace k(k kVar, com.google.firebase.perf.util.a aVar) {
        if (A == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (A == null) {
                        A = new AppStartTrace(kVar, aVar, com.google.firebase.perf.config.a.g(), new ThreadPoolExecutor(0, 1, f31435z + 10, TimeUnit.SECONDS, new LinkedBlockingQueue()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return A;
    }

    private Timer l() {
        Timer timer = this.f31445j;
        return timer != null ? timer : i();
    }

    public static boolean m(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        String str = packageName + ":";
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && (runningAppProcessInfo.processName.equals(packageName) || runningAppProcessInfo.processName.startsWith(str))) {
                return true;
            }
        }
        return false;
    }

    public void n(com.google.firebase.perf.v1.i.b bVar) {
        this.f31437b.C((com.google.firebase.perf.v1.i) bVar.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
    }

    public void o() {
        com.google.firebase.perf.v1.i.b bVarQ = com.google.firebase.perf.v1.i.M().r(Constants$TraceNames.APP_START_TRACE_NAME.toString()).p(i().getMicros()).q(i().getDurationMicros(this.f31449n));
        ArrayList arrayList = new ArrayList(3);
        arrayList.add((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r(Constants$TraceNames.ON_CREATE_TRACE_NAME.toString()).p(i().getMicros()).q(i().getDurationMicros(this.f31447l)).build());
        if (this.f31448m != null) {
            com.google.firebase.perf.v1.i.b bVarM = com.google.firebase.perf.v1.i.M();
            bVarM.r(Constants$TraceNames.ON_START_TRACE_NAME.toString()).p(this.f31447l.getMicros()).q(this.f31447l.getDurationMicros(this.f31448m));
            arrayList.add((com.google.firebase.perf.v1.i) bVarM.build());
            com.google.firebase.perf.v1.i.b bVarM2 = com.google.firebase.perf.v1.i.M();
            bVarM2.r(Constants$TraceNames.ON_RESUME_TRACE_NAME.toString()).p(this.f31448m.getMicros()).q(this.f31448m.getDurationMicros(this.f31449n));
            arrayList.add((com.google.firebase.perf.v1.i) bVarM2.build());
        }
        bVarQ.h(arrayList).j(this.f31455t.build());
        this.f31437b.C((com.google.firebase.perf.v1.i) bVarQ.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
    }

    private void p(final com.google.firebase.perf.v1.i.b bVar) {
        if (this.f31452q == null || this.f31453r == null || this.f31454s == null) {
            return;
        }
        B.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31465a.n(bVar);
            }
        });
        u();
    }

    public void q() {
        if (this.f31454s != null) {
            return;
        }
        this.f31454s = this.f31438c.a();
        this.f31440e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_onDrawFoQ").p(l().getMicros()).q(l().getDurationMicros(this.f31454s)).build());
        if (this.f31445j != null) {
            this.f31440e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_procStart_to_classLoad").p(l().getMicros()).q(l().getDurationMicros(i())).build());
        }
        this.f31440e.o("systemDeterminedForeground", this.f31459x ? "true" : "false");
        this.f31440e.n("onDrawCount", this.f31457v);
        this.f31440e.j(this.f31455t.build());
        p(this.f31440e);
    }

    public void r() {
        if (this.f31452q != null) {
            return;
        }
        this.f31452q = this.f31438c.a();
        this.f31440e.p(l().getMicros()).q(l().getDurationMicros(this.f31452q));
        p(this.f31440e);
    }

    public void s() {
        if (this.f31453r != null) {
            return;
        }
        this.f31453r = this.f31438c.a();
        this.f31440e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_preDrawFoQ").p(l().getMicros()).q(l().getDurationMicros(this.f31453r)).build());
        p(this.f31440e);
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    @Override
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            if (!this.f31456u && this.f31447l == null) {
                this.f31459x = this.f31459x || m(this.f31441f);
                this.f31442g = new WeakReference(activity);
                this.f31447l = this.f31438c.a();
                if (l().getDurationMicros(this.f31447l) > f31435z) {
                    this.f31444i = true;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
        View viewFindViewById;
        if (this.f31456u || this.f31444i || !this.f31439d.h() || (viewFindViewById = activity.findViewById(R.id.content)) == null) {
            return;
        }
        viewFindViewById.getViewTreeObserver().removeOnDrawListener(this.f31458w);
    }

    @Override
    public synchronized void onActivityResumed(Activity activity) {
        View viewFindViewById;
        try {
            if (!this.f31456u && !this.f31444i) {
                boolean zH = this.f31439d.h();
                if (zH && (viewFindViewById = activity.findViewById(R.id.content)) != null) {
                    viewFindViewById.getViewTreeObserver().addOnDrawListener(this.f31458w);
                    com.google.firebase.perf.util.c.e(viewFindViewById, new Runnable() {
                        @Override
                        public final void run() {
                            this.f31461a.q();
                        }
                    });
                    com.google.firebase.perf.util.f.a(viewFindViewById, new Runnable() {
                        @Override
                        public final void run() {
                            this.f31462a.r();
                        }
                    }, new Runnable() {
                        @Override
                        public final void run() {
                            this.f31463a.s();
                        }
                    });
                }
                if (this.f31449n != null) {
                    return;
                }
                this.f31443h = new WeakReference(activity);
                this.f31449n = this.f31438c.a();
                this.f31455t = SessionManager.getInstance().perfSession();
                uc.a.e().a("onResume(): " + activity.getClass().getName() + ": " + i().getDurationMicros(this.f31449n) + " microseconds");
                B.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f31464a.o();
                    }
                });
                if (!zH) {
                    u();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public synchronized void onActivityStarted(Activity activity) {
        if (!this.f31456u && this.f31448m == null && !this.f31444i) {
            this.f31448m = this.f31438c.a();
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
    }

    @Keep
    @d0(Lifecycle.Event.ON_STOP)
    public void onAppEnteredBackground() {
        if (this.f31456u || this.f31444i || this.f31451p != null) {
            return;
        }
        this.f31451p = this.f31438c.a();
        this.f31440e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_firstBackgrounding").p(l().getMicros()).q(l().getDurationMicros(this.f31451p)).build());
    }

    @Keep
    @d0(Lifecycle.Event.ON_START)
    public void onAppEnteredForeground() {
        if (this.f31456u || this.f31444i || this.f31450o != null) {
            return;
        }
        this.f31450o = this.f31438c.a();
        this.f31440e.k((com.google.firebase.perf.v1.i) com.google.firebase.perf.v1.i.M().r("_experiment_firstForegrounding").p(l().getMicros()).q(l().getDurationMicros(this.f31450o)).build());
    }

    public synchronized void t(Context context) {
        try {
            if (this.f31436a) {
                return;
            }
            g0.l().getLifecycle().a(this);
            Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                this.f31459x = this.f31459x || m(applicationContext);
                this.f31436a = true;
                this.f31441f = applicationContext;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void u() {
        if (this.f31436a) {
            g0.l().getLifecycle().d(this);
            ((Application) this.f31441f).unregisterActivityLifecycleCallbacks(this);
            this.f31436a = false;
        }
    }
}
