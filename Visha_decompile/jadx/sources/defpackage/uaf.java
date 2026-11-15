package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzu;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public final class uaf implements waf {
    public static final Object l = new Object();
    public static waf m;
    public static waf n;
    public static waf o;
    public static Boolean p;
    public final Object a;
    public final Context b;
    public final WeakHashMap c;
    public final ExecutorService d;
    public final VersionInfoParcel e;
    public final PackageInfo f;
    public final String g;
    public final String h;
    public final AtomicBoolean i;
    public boolean j;
    public Set k;

    /* JADX WARN: Code duplicated, block: B:11:0x0050  */
    public uaf(Context context, VersionInfoParcel versionInfoParcel) {
        PackageInfo packageInfoF;
        String country;
        this.a = new Object();
        this.c = new WeakHashMap();
        ozh.a();
        this.d = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.i = new AtomicBoolean();
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.b = context;
        this.e = versionInfoParcel;
        String string = null;
        if (((Boolean) zzbd.zzc().b(cye.Q7)).booleanValue()) {
            Handler handler = zzf.zza;
            if (context == null || context.getApplicationInfo() == null) {
                packageInfoF = null;
            } else {
                try {
                    packageInfoF = mpc.a(context).f(context.getApplicationInfo().packageName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfoF = null;
                }
            }
        } else {
            packageInfoF = null;
        }
        this.f = packageInfoF;
        qxe qxeVar = cye.O7;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            Handler handler2 = zzf.zza;
            country = Locale.getDefault().getCountry();
        } else {
            country = "unknown";
        }
        this.g = country;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            Context context2 = this.b;
            Handler handler3 = zzf.zza;
            if (context2 != null) {
                try {
                    PackageInfo packageInfoF2 = mpc.a(context2).f("com.android.vending", 128);
                    if (packageInfoF2 != null) {
                        string = Integer.toString(packageInfoF2.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
        } else {
            string = "unknown";
        }
        this.h = string;
        if (((Integer) zzbd.zzc().b(cye.K7)).intValue() > 0) {
            this.k = new HashSet();
        }
    }

    public static waf c(Context context) {
        synchronized (l) {
            try {
                if (m == null) {
                    if (l(context)) {
                        m = new uaf(context, VersionInfoParcel.forPackage());
                    } else {
                        m = new vaf();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m;
    }

    public static waf d(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (l) {
            try {
                if (o == null) {
                    boolean z = false;
                    if (((Boolean) rze.c.e()).booleanValue()) {
                        if (!((Boolean) zzbd.zzc().b(cye.I7)).booleanValue() || ((Boolean) rze.a.e()).booleanValue()) {
                            z = true;
                        }
                    }
                    if (l(context)) {
                        uaf uafVar = new uaf(context, versionInfoParcel);
                        uafVar.k();
                        uafVar.j();
                        o = uafVar;
                    } else if (!z || context == null) {
                        o = new vaf();
                    } else {
                        uaf uafVar2 = new uaf(context, versionInfoParcel, true);
                        uafVar2.k();
                        uafVar2.j();
                        o = uafVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return o;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0039 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x002b, B:13:0x0039, B:14:0x0040), top: B:19:0x0003 }] */
    public static waf e(Context context) {
        synchronized (l) {
            try {
                if (n == null) {
                    if (((Boolean) zzbd.zzc().b(cye.J7)).booleanValue()) {
                        if (((Boolean) zzbd.zzc().b(cye.I7)).booleanValue()) {
                            n = new vaf();
                        } else {
                            n = new uaf(context, VersionInfoParcel.forPackage());
                        }
                    } else {
                        n = new vaf();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return n;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0035 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x002b, B:13:0x0035, B:14:0x003c), top: B:19:0x0003 }] */
    public static waf f(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (l) {
            try {
                if (n == null) {
                    if (((Boolean) zzbd.zzc().b(cye.J7)).booleanValue()) {
                        if (((Boolean) zzbd.zzc().b(cye.I7)).booleanValue()) {
                            n = new vaf();
                        } else {
                            n = new uaf(context, versionInfoParcel);
                        }
                    } else {
                        n = new vaf();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return n;
    }

    public static String g(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String h(Throwable th) {
        return j3i.c(zzf.zzh(g(th)));
    }

    public static boolean l(Context context) {
        if (context == null) {
            return false;
        }
        synchronized (l) {
            try {
                if (p == null) {
                    p = Boolean.valueOf(zzbb.zze().nextInt(100) < ((Integer) zzbd.zzc().b(cye.Nc)).intValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (p.booleanValue()) {
            if (!((Boolean) zzbd.zzc().b(cye.I7)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(Throwable th, String str, float f) {
        Throwable th2;
        String packageName;
        ActivityManager.MemoryInfo memoryInfoZzc;
        if (this.j) {
            return;
        }
        Handler handler = zzf.zza;
        boolean zG = false;
        if (((Boolean) i0f.e.e()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                linkedList.push(cause);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                boolean z = ((Boolean) zzbd.zzc().b(cye.y2)).booleanValue() && stackTrace != null && stackTrace.length == 0 && zzf.zzp(th3.getClass().getName());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (zzf.zzp(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z) {
                    th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String strG = g(th);
            String strH = ((Boolean) zzbd.zzc().b(cye.U8)).booleanValue() ? h(th) : "";
            double d = f;
            double dRandom = Math.random();
            int i = f > 0.0f ? (int) (1.0f / f) : 1;
            if (dRandom < d) {
                ArrayList<String> arrayList2 = new ArrayList();
                try {
                    zG = mpc.a(this.b).g();
                } catch (Throwable th4) {
                    zzo.zzh("Error fetching instant app info", th4);
                }
                try {
                    packageName = this.b.getPackageName();
                } catch (Throwable unused) {
                    zzo.zzj("Cannot obtain package name, proceeding.");
                    packageName = "unknown";
                }
                Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zG)).appendQueryParameter(TtmlNode.ATTR_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
                String str2 = Build.MANUFACTURER;
                String str3 = Build.MODEL;
                if (!str3.startsWith(str2)) {
                    str3 = str2 + " " + str3;
                }
                Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter("device", str3);
                VersionInfoParcel versionInfoParcel = this.e;
                Uri.Builder builderAppendQueryParameter3 = builderAppendQueryParameter2.appendQueryParameter("js", versionInfoParcel.afmaVersion).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", strG).appendQueryParameter("eids", TextUtils.join(StringUtils.COMMA, zzbd.zza().a())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "741296643").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(i0f.c.e()));
                Context context = this.b;
                Uri.Builder builderAppendQueryParameter4 = builderAppendQueryParameter3.appendQueryParameter("gmscv", String.valueOf(aj4.g().b(context))).appendQueryParameter("lite", true != versionInfoParcel.isLiteSdk ? "0" : "1");
                if (!TextUtils.isEmpty(strH)) {
                    builderAppendQueryParameter4.appendQueryParameter("hash", strH);
                }
                if (((Boolean) zzbd.zzc().b(cye.P7)).booleanValue() && (memoryInfoZzc = zzf.zzc(context)) != null) {
                    builderAppendQueryParameter4.appendQueryParameter("available_memory", Long.toString(memoryInfoZzc.availMem));
                    builderAppendQueryParameter4.appendQueryParameter("total_memory", Long.toString(memoryInfoZzc.totalMem));
                    builderAppendQueryParameter4.appendQueryParameter("is_low_memory", true != memoryInfoZzc.lowMemory ? "0" : "1");
                }
                if (((Boolean) zzbd.zzc().b(cye.O7)).booleanValue()) {
                    String str4 = this.g;
                    if (!TextUtils.isEmpty(str4)) {
                        builderAppendQueryParameter4.appendQueryParameter("countrycode", str4);
                    }
                    String str5 = this.h;
                    if (!TextUtils.isEmpty(str5)) {
                        builderAppendQueryParameter4.appendQueryParameter("psv", str5);
                    }
                    PackageInfo currentWebViewPackage = WebView.getCurrentWebViewPackage();
                    if (currentWebViewPackage != null) {
                        builderAppendQueryParameter4.appendQueryParameter("wvvc", Integer.toString(currentWebViewPackage.versionCode));
                        builderAppendQueryParameter4.appendQueryParameter("wvvn", currentWebViewPackage.versionName);
                        builderAppendQueryParameter4.appendQueryParameter("wvpn", currentWebViewPackage.packageName);
                    }
                }
                PackageInfo packageInfo = this.f;
                if (packageInfo != null) {
                    builderAppendQueryParameter4.appendQueryParameter("appvc", String.valueOf(packageInfo.versionCode));
                    builderAppendQueryParameter4.appendQueryParameter("appvn", packageInfo.versionName);
                }
                arrayList2.add(builderAppendQueryParameter4.toString());
                for (final String str6 : arrayList2) {
                    final zzu zzuVar = new zzu(null);
                    this.d.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzuVar.zza(str6);
                        }
                    });
                }
            }
        }
    }

    @Override
    public final void b(Throwable th, String str) {
        if (this.j) {
            return;
        }
        a(th, str, 1.0f);
    }

    public final void i(Thread thread, Throwable th) {
        if (th != null) {
            boolean zZzp = false;
            boolean zEquals = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    zZzp |= zzf.zzp(stackTraceElement.getClassName());
                    zEquals |= uaf.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            int iIntValue = ((Integer) zzbd.zzc().b(cye.K7)).intValue();
            if (iIntValue > 0) {
                if (this.k.size() >= iIntValue) {
                    return;
                }
                String strH = h(th);
                if (this.k.contains(strH)) {
                    return;
                } else {
                    this.k.add(strH);
                }
            }
            if (!zZzp || zEquals) {
                return;
            }
            if (!this.j) {
                b(th, "");
            }
            if (this.i.getAndSet(true) || !((Boolean) rze.c.e()).booleanValue()) {
                return;
            }
            jxe.c(this.b);
        }
    }

    public final void j() {
        Thread.setDefaultUncaughtExceptionHandler(new saf(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    public final void k() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.a) {
            this.c.put(thread, Boolean.TRUE);
        }
        thread.setUncaughtExceptionHandler(new taf(this, thread.getUncaughtExceptionHandler()));
    }

    public uaf(Context context, VersionInfoParcel versionInfoParcel, boolean z) {
        this(context, versionInfoParcel);
        this.j = true;
    }
}
