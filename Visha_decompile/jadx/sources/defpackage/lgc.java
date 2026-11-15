package defpackage;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.stats.zzi;
import defpackage.lgc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class lgc {
    public static final long r = TimeUnit.DAYS.toMillis(366);
    public static volatile ScheduledExecutorService s = null;
    public static final Object t = new Object();
    public static volatile u4g u = new sve();
    public final Object a;
    public final PowerManager.WakeLock b;
    public int c;
    public Future d;
    public long e;
    public final Set f;
    public boolean g;
    public int h;
    public qve i;
    public fy0 j;
    public WorkSource k;
    public final String l;
    public final String m;
    public final Context n;
    public final Map o;
    public AtomicInteger p;
    public final ScheduledExecutorService q;

    public lgc(Context context, int i, String str) {
        String packageName = context.getPackageName();
        this.a = new Object();
        this.c = 0;
        this.f = new HashSet();
        this.g = true;
        this.j = m02.a();
        this.o = new HashMap();
        this.p = new AtomicInteger(0);
        wd8.m(context, "WakeLock: context must not be null");
        wd8.g(str, "WakeLock: wakeLockName must not be empty");
        this.n = context.getApplicationContext();
        this.m = str;
        this.i = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.l = str;
        } else {
            String strValueOf = String.valueOf(str);
            this.l = strValueOf.length() != 0 ? "*gcore*:".concat(strValueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb.toString());
        }
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(i, str);
        this.b = wakeLockNewWakeLock;
        if (gpc.c(context)) {
            WorkSource workSourceB = gpc.b(context, v0a.a(packageName) ? context.getPackageName() : packageName);
            this.k = workSourceB;
            if (workSourceB != null) {
                i(wakeLockNewWakeLock, workSourceB);
            }
        }
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = s;
        if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
            synchronized (t) {
                try {
                    scheduledExecutorServiceUnconfigurableScheduledExecutorService = s;
                    if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
                        iui.a();
                        scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        s = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.q = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    public static void e(lgc lgcVar) {
        synchronized (lgcVar.a) {
            try {
                if (lgcVar.b()) {
                    Log.e("WakeLock", String.valueOf(lgcVar.l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                    lgcVar.g();
                    if (lgcVar.b()) {
                        lgcVar.c = 1;
                        lgcVar.h(0);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void i(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
            Log.wtf("WakeLock", e.toString());
        }
    }

    public void a(long j) {
        this.p.incrementAndGet();
        long jMax = Math.max(Math.min(Long.MAX_VALUE, r), 1L);
        if (j > 0) {
            jMax = Math.min(j, jMax);
        }
        synchronized (this.a) {
            try {
                if (!b()) {
                    this.i = qve.a(false, null);
                    this.b.acquire();
                    this.j.elapsedRealtime();
                }
                this.c++;
                this.h++;
                f(null);
                yff yffVar = (yff) this.o.get(null);
                if (yffVar == null) {
                    yffVar = new yff(null);
                    this.o.put(null, yffVar);
                }
                yffVar.a++;
                long jElapsedRealtime = this.j.elapsedRealtime();
                long j2 = Long.MAX_VALUE - jElapsedRealtime > jMax ? jElapsedRealtime + jMax : Long.MAX_VALUE;
                if (j2 > this.e) {
                    this.e = j2;
                    Future future = this.d;
                    if (future != null) {
                        future.cancel(false);
                    }
                    this.d = this.q.schedule(new Runnable() {
                        @Override
                        public final void run() {
                            lgc.e(this.zza);
                        }
                    }, jMax, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.a) {
            z = this.c > 0;
        }
        return z;
    }

    public void c() {
        if (this.p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.l).concat(" release without a matched acquire!"));
        }
        synchronized (this.a) {
            try {
                f(null);
                if (this.o.containsKey(null)) {
                    yff yffVar = (yff) this.o.get(null);
                    if (yffVar != null) {
                        int i = yffVar.a - 1;
                        yffVar.a = i;
                        if (i == 0) {
                            this.o.remove(null);
                        }
                    }
                } else {
                    Log.w("WakeLock", String.valueOf(this.l).concat(" counter does not exist"));
                }
                h(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(boolean z) {
        synchronized (this.a) {
            this.g = z;
        }
    }

    public final String f(String str) {
        if (this.g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    public final void g() {
        if (this.f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f);
        this.f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        ubc.a(arrayList.get(0));
        throw null;
    }

    public final void h(int i) {
        synchronized (this.a) {
            try {
                if (b()) {
                    if (this.g) {
                        int i2 = this.c - 1;
                        this.c = i2;
                        if (i2 > 0) {
                            return;
                        }
                    } else {
                        this.c = 0;
                    }
                    g();
                    Iterator it = this.o.values().iterator();
                    while (it.hasNext()) {
                        ((yff) it.next()).a = 0;
                    }
                    this.o.clear();
                    Future future = this.d;
                    if (future != null) {
                        future.cancel(false);
                        this.d = null;
                        this.e = 0L;
                    }
                    this.h = 0;
                    if (this.b.isHeld()) {
                        try {
                            try {
                                this.b.release();
                                if (this.i != null) {
                                    this.i = null;
                                }
                            } catch (RuntimeException e) {
                                if (!e.getClass().equals(RuntimeException.class)) {
                                    throw e;
                                }
                                Log.e("WakeLock", String.valueOf(this.l).concat(" failed to release!"), e);
                                if (this.i != null) {
                                    this.i = null;
                                }
                            }
                        } catch (Throwable th) {
                            if (this.i != null) {
                                this.i = null;
                            }
                            throw th;
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.l).concat(" should be held!"));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
