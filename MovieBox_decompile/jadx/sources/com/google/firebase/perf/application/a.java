package com.google.firebase.perf.application;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.metrics.g;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.e;
import com.google.firebase.perf.util.h;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.i;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import xc.k;

public class a implements Application.ActivityLifecycleCallbacks {

    private static final uc.a f31370r = uc.a.e();

    private static volatile a f31371s;

    private final WeakHashMap f31372a;

    private final WeakHashMap f31373b;

    private final WeakHashMap f31374c;

    private final WeakHashMap f31375d;

    private final Map f31376e;

    private final Set f31377f;

    private Set f31378g;

    private final AtomicInteger f31379h;

    private final k f31380i;

    private final com.google.firebase.perf.config.a f31381j;

    private final com.google.firebase.perf.util.a f31382k;

    private final boolean f31383l;

    private Timer f31384m;

    private Timer f31385n;

    private ApplicationProcessState f31386o;

    private boolean f31387p;

    private boolean f31388q;

    public interface InterfaceC0421a {
        void a();
    }

    public interface b {
        void onUpdateAppState(ApplicationProcessState applicationProcessState);
    }

    a(k kVar, com.google.firebase.perf.util.a aVar) {
        this(kVar, aVar, com.google.firebase.perf.config.a.g(), g());
    }

    public static a b() {
        if (f31371s == null) {
            synchronized (a.class) {
                try {
                    if (f31371s == null) {
                        f31371s = new a(k.k(), new com.google.firebase.perf.util.a());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f31371s;
    }

    public static String c(Activity activity) {
        return "_st_" + activity.getClass().getSimpleName();
    }

    private static boolean g() {
        return d.a();
    }

    private void l() {
        synchronized (this.f31378g) {
            try {
                for (InterfaceC0421a interfaceC0421a : this.f31378g) {
                    if (interfaceC0421a != null) {
                        interfaceC0421a.a();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void m(Activity activity) {
        Trace trace = (Trace) this.f31375d.get(activity);
        if (trace == null) {
            return;
        }
        this.f31375d.remove(activity);
        e eVarE = ((d) this.f31373b.get(activity)).e();
        if (!eVarE.d()) {
            f31370r.k("Failed to record frame data for %s.", activity.getClass().getSimpleName());
        } else {
            h.a(trace, (g.a) eVarE.c());
            trace.stop();
        }
    }

    private void n(String str, Timer timer, Timer timer2) {
        if (this.f31381j.K()) {
            i.b bVarJ = i.M().r(str).p(timer.getMicros()).q(timer.getDurationMicros(timer2)).j(SessionManager.getInstance().perfSession().build());
            int andSet = this.f31379h.getAndSet(0);
            synchronized (this.f31376e) {
                try {
                    bVarJ.l(this.f31376e);
                    if (andSet != 0) {
                        bVarJ.n(Constants$CounterNames.TRACE_STARTED_NOT_STOPPED.toString(), andSet);
                    }
                    this.f31376e.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f31380i.C((i) bVarJ.build(), ApplicationProcessState.FOREGROUND_BACKGROUND);
        }
    }

    private void o(Activity activity) {
        if (h() && this.f31381j.K()) {
            d dVar = new d(activity);
            this.f31373b.put(activity, dVar);
            if (activity instanceof FragmentActivity) {
                c cVar = new c(this.f31382k, this.f31380i, this, dVar);
                this.f31374c.put(activity, cVar);
                ((FragmentActivity) activity).getSupportFragmentManager().p1(cVar, true);
            }
        }
    }

    private void q(ApplicationProcessState applicationProcessState) {
        this.f31386o = applicationProcessState;
        synchronized (this.f31377f) {
            try {
                Iterator it = this.f31377f.iterator();
                while (it.hasNext()) {
                    b bVar = (b) ((WeakReference) it.next()).get();
                    if (bVar != null) {
                        bVar.onUpdateAppState(this.f31386o);
                    } else {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public ApplicationProcessState a() {
        return this.f31386o;
    }

    public void d(String str, long j10) {
        synchronized (this.f31376e) {
            try {
                Long l10 = (Long) this.f31376e.get(str);
                if (l10 == null) {
                    this.f31376e.put(str, Long.valueOf(j10));
                } else {
                    this.f31376e.put(str, Long.valueOf(l10.longValue() + j10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(int i10) {
        this.f31379h.addAndGet(i10);
    }

    public boolean f() {
        return this.f31388q;
    }

    protected boolean h() {
        return this.f31383l;
    }

    public synchronized void i(Context context) {
        if (this.f31387p) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            this.f31387p = true;
        }
    }

    public void j(InterfaceC0421a interfaceC0421a) {
        synchronized (this.f31378g) {
            this.f31378g.add(interfaceC0421a);
        }
    }

    public void k(WeakReference weakReference) {
        synchronized (this.f31377f) {
            this.f31377f.add(weakReference);
        }
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        o(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        this.f31373b.remove(activity);
        if (this.f31374c.containsKey(activity)) {
            ((FragmentActivity) activity).getSupportFragmentManager().N1((FragmentManager.k) this.f31374c.remove(activity));
        }
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public synchronized void onActivityResumed(Activity activity) {
        try {
            if (this.f31372a.isEmpty()) {
                this.f31384m = this.f31382k.a();
                this.f31372a.put(activity, Boolean.TRUE);
                if (this.f31388q) {
                    q(ApplicationProcessState.FOREGROUND);
                    l();
                    this.f31388q = false;
                } else {
                    n(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString(), this.f31385n, this.f31384m);
                    q(ApplicationProcessState.FOREGROUND);
                }
            } else {
                this.f31372a.put(activity, Boolean.TRUE);
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
        try {
            if (h() && this.f31381j.K()) {
                if (!this.f31373b.containsKey(activity)) {
                    o(activity);
                }
                ((d) this.f31373b.get(activity)).c();
                Trace trace = new Trace(c(activity), this.f31380i, this.f31382k, this);
                trace.start();
                this.f31375d.put(activity, trace);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void onActivityStopped(Activity activity) {
        try {
            if (h()) {
                m(activity);
            }
            if (this.f31372a.containsKey(activity)) {
                this.f31372a.remove(activity);
                if (this.f31372a.isEmpty()) {
                    this.f31385n = this.f31382k.a();
                    n(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString(), this.f31384m, this.f31385n);
                    q(ApplicationProcessState.BACKGROUND);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void p(WeakReference weakReference) {
        synchronized (this.f31377f) {
            this.f31377f.remove(weakReference);
        }
    }

    a(k kVar, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, boolean z10) {
        this.f31372a = new WeakHashMap();
        this.f31373b = new WeakHashMap();
        this.f31374c = new WeakHashMap();
        this.f31375d = new WeakHashMap();
        this.f31376e = new HashMap();
        this.f31377f = new HashSet();
        this.f31378g = new HashSet();
        this.f31379h = new AtomicInteger(0);
        this.f31386o = ApplicationProcessState.BACKGROUND;
        this.f31387p = false;
        this.f31388q = true;
        this.f31380i = kVar;
        this.f31382k = aVar;
        this.f31381j = aVar2;
        this.f31383l = z10;
    }
}
