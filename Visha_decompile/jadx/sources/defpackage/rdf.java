package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzfr;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.mozilla.javascript.ES6Iterator;

public final class rdf {
    public final AtomicReference a = new AtomicReference(null);
    public final Object b = new Object();
    public String c = null;
    public final AtomicBoolean d = new AtomicBoolean(false);
    public final AtomicInteger e = new AtomicInteger(-1);
    public final AtomicReference f = new AtomicReference(null);
    public final AtomicReference g = new AtomicReference(null);
    public final ConcurrentMap h = new ConcurrentHashMap(9);
    public final Object i;

    public rdf() {
        new AtomicReference(null);
        new ArrayBlockingQueue(20);
        this.i = new Object();
    }

    public static String a(rdf rdfVar, Context context) {
        return (String) rdfVar.s("getAppInstanceId", context);
    }

    public static final Bundle q(Map map) {
        Bundle bundle = new Bundle();
        if (map != null) {
            for (String str : map.keySet()) {
                try {
                    if (Objects.equals(str, ES6Iterator.VALUE_PROPERTY)) {
                        bundle.putDouble(str, Double.parseDouble((String) map.get(str)));
                    } else {
                        bundle.putString(str, (String) map.get(str));
                    }
                } catch (NullPointerException | NumberFormatException unused) {
                }
            }
        }
        return bundle;
    }

    public static final boolean r(Context context) {
        if (!((Boolean) zzbd.zzc().b(cye.z0)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) < ((Integer) zzbd.zzc().b(cye.A0)).intValue()) {
            return false;
        }
        if (((Boolean) zzbd.zzc().b(cye.B0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public final String b(Context context) {
        Object objS;
        if (p(context) && (objS = s("generateEventId", context)) != null) {
            return objS.toString();
        }
        return null;
    }

    public final String c(final Context context) {
        ExecutorService threadPoolExecutor;
        if (!p(context)) {
            return null;
        }
        long jLongValue = ((Long) zzbd.zzc().b(cye.x0)).longValue();
        if (jLongValue < 0) {
            return (String) s("getAppInstanceId", context);
        }
        AtomicReference atomicReference = this.a;
        if (atomicReference.get() == null) {
            if (yx0.a()) {
                threadPoolExecutor = ozh.a().b(((Integer) zzbd.zzc().b(cye.y0)).intValue(), new qdf(this), 2);
            } else {
                qxe qxeVar = cye.y0;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) zzbd.zzc().b(qxeVar)).intValue(), ((Integer) zzbd.zzc().b(qxeVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new qdf(this));
            }
            odf.a(atomicReference, null, threadPoolExecutor);
        }
        try {
            return (String) ((ExecutorService) atomicReference.get()).submit(new Callable() {
                @Override
                public final Object call() {
                    return rdf.a(this.b, context);
                }
            }).get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused) {
            return "TIME_OUT";
        } catch (Exception unused2) {
            return null;
        }
    }

    public final String d(Context context) {
        if (p(context)) {
            AtomicReference atomicReference = this.f;
            if (x(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                try {
                    String str = (String) t(context, "getCurrentScreenName").invoke(atomicReference.get(), null);
                    if (str == null) {
                        str = (String) t(context, "getCurrentScreenClass").invoke(atomicReference.get(), null);
                    }
                    return str == null ? "" : str;
                } catch (Exception unused) {
                    w("getCurrentScreenName", false);
                }
            }
        }
        return "";
    }

    public final String e(Context context) {
        if (!p(context)) {
            return null;
        }
        synchronized (this.b) {
            try {
                String str = this.c;
                if (str != null) {
                    return str;
                }
                String str2 = (String) s("getGmpAppId", context);
                this.c = str2;
                return str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(Context context, String str) {
        if (p(context)) {
            u(context, str, "beginAdUnitExposure");
        }
    }

    public final void g(Context context, String str) {
        if (p(context)) {
            u(context, str, "endAdUnitExposure");
        }
    }

    public final void h(Context context, String str) {
        v(context, "_aa", str, null);
    }

    public final void i(Context context, String str) {
        v(context, "_aq", str, null);
    }

    public final void j(Context context, String str, Map map) {
        v(context, "_ac", str, q(map));
    }

    public final void k(Context context, String str, Map map) {
        v(context, "_ai", str, q(map));
    }

    public final void l(Context context, String str, String str2, String str3, int i) {
        if (p(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            v(context, "_ar", str, bundle);
            zze.zza("Log a Firebase reward video event, reward type: " + str3 + ", reward value: " + i);
        }
    }

    public final void m(Context context, zzm zzmVar) {
        if (((Boolean) zzbd.zzc().b(cye.E0)).booleanValue() && p(context) && r(context)) {
            synchronized (this.i) {
            }
        }
    }

    public final void n(Context context, zzfr zzfrVar) {
        sdf.b(context).a().c(zzfrVar);
        if (((Boolean) zzbd.zzc().b(cye.E0)).booleanValue() && p(context) && r(context)) {
            synchronized (this.i) {
            }
        }
    }

    public final void o(Context context, String str) {
        if (p(context) && (context instanceof Activity) && x(context, "com.google.firebase.analytics.FirebaseAnalytics", this.g, false)) {
            ConcurrentMap concurrentMap = this.h;
            Method declaredMethod = (Method) concurrentMap.get("setCurrentScreen");
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                    concurrentMap.put("setCurrentScreen", declaredMethod);
                } catch (Exception unused) {
                    w("setCurrentScreen", false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(this.g.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception unused2) {
                w("setCurrentScreen", false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0059  */
    public final boolean p(Context context) {
        if (((Boolean) zzbd.zzc().b(cye.r0)).booleanValue() && !this.d.get()) {
            if (((Boolean) zzbd.zzc().b(cye.C0)).booleanValue()) {
                return true;
            }
            AtomicInteger atomicInteger = this.e;
            if (atomicInteger.get() == -1) {
                zzbb.zzb();
                if (zzf.zzt(context, 12451000)) {
                    atomicInteger.set(1);
                } else {
                    zzbb.zzb();
                    if (zzf.zzu(context)) {
                        int i = zze.zza;
                        zzo.zzj("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                        atomicInteger.set(0);
                    } else {
                        atomicInteger.set(1);
                    }
                }
            }
            if (atomicInteger.get() == 1) {
                return true;
            }
        }
        return false;
    }

    public final Object s(String str, Context context) {
        AtomicReference atomicReference = this.f;
        if (!x(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
            return null;
        }
        try {
            return t(context, str).invoke(atomicReference.get(), null);
        } catch (Exception unused) {
            w(str, true);
            return null;
        }
    }

    public final Method t(Context context, String str) {
        ConcurrentMap concurrentMap = this.h;
        Method method = (Method) concurrentMap.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, null);
            concurrentMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            w(str, false);
            return null;
        }
    }

    public final void u(Context context, String str, String str2) {
        if (x(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
            ConcurrentMap concurrentMap = this.h;
            Method declaredMethod = (Method) concurrentMap.get(str2);
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    concurrentMap.put(str2, declaredMethod);
                } catch (Exception unused) {
                    w(str2, false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(this.f.get(), str);
                zze.zza("Invoke Firebase method " + str2 + ", Ad Unit Id: " + str);
            } catch (Exception unused2) {
                w(str2, false);
            }
        }
    }

    public final void v(Context context, String str, String str2, Bundle bundle) {
        if (p(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String strValueOf = String.valueOf(str2);
                int i = zze.zza;
                zzo.zzh("Invalid event ID: ".concat(strValueOf), e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (x(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
                ConcurrentMap concurrentMap = this.h;
                Method declaredMethod = (Method) concurrentMap.get("logEventInternal");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        concurrentMap.put("logEventInternal", declaredMethod);
                    } catch (Exception unused) {
                        w("logEventInternal", true);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.f.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    w("logEventInternal", true);
                }
            }
        }
    }

    public final void w(String str, boolean z) {
        AtomicBoolean atomicBoolean = this.d;
        if (atomicBoolean.get()) {
            return;
        }
        int i = zze.zza;
        zzo.zzj("Invoke Firebase method " + str + " error.");
        if (z) {
            zzo.zzj("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            atomicBoolean.set(true);
        }
    }

    public final boolean x(Context context, String str, AtomicReference atomicReference, boolean z) {
        if (atomicReference.get() != null) {
            return true;
        }
        try {
            odf.a(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            return true;
        } catch (Exception unused) {
            w("getInstance", z);
            return false;
        }
    }
}
