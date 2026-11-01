package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzcaq implements zzcas {
    public static zzcas zza;
    static zzcas zzb;
    static zzcas zzc;
    static Boolean zzd;
    private static final Object zze = new Object();
    private final Object zzf;
    private final Context zzg;
    private final WeakHashMap zzh;
    private final ExecutorService zzi;
    private final VersionInfoParcel zzj;
    private final PackageInfo zzk;
    private final String zzl;
    private final String zzm;
    private final AtomicBoolean zzn;
    private boolean zzo;
    private Set zzp;

    /* JADX WARN: Code duplicated, block: B:14:0x005f  */
    protected zzcaq(Context context, VersionInfoParcel versionInfoParcel) {
        PackageInfo packageInfo;
        String country;
        this.zzf = new Object();
        this.zzh = new WeakHashMap();
        this.zzi = zzgbo.zza().zza(2);
        this.zzn = new AtomicBoolean();
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzg = context;
        this.zzj = versionInfoParcel;
        String string = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjb)).booleanValue()) {
            Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
            if (context == null || context.getApplicationInfo() == null) {
                packageInfo = null;
            } else {
                try {
                    packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfo = null;
                }
            }
        } else {
            packageInfo = null;
        }
        this.zzk = packageInfo;
        zzbix zzbixVar = zzbjg.zziO;
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue();
        String strS = ProtectedFastSSH.s("峏");
        if (zBooleanValue) {
            Handler handler2 = com.google.android.gms.ads.internal.util.client.zzf.zza;
            country = Locale.getDefault().getCountry();
        } else {
            country = strS;
        }
        this.zzl = country;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue()) {
            Context context2 = this.zzg;
            Handler handler3 = com.google.android.gms.ads.internal.util.client.zzf.zza;
            if (context2 != null) {
                try {
                    PackageInfo packageInfo2 = Wrappers.packageManager(context2).getPackageInfo(ProtectedFastSSH.s("峐"), 128);
                    if (packageInfo2 != null) {
                        string = Integer.toString(packageInfo2.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
        } else {
            string = strS;
        }
        this.zzm = string;
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziK)).intValue() > 0) {
            this.zzp = new HashSet();
        }
    }

    protected zzcaq(Context context, VersionInfoParcel versionInfoParcel, boolean z) {
        this(context, versionInfoParcel);
        this.zzo = true;
    }

    public static zzcas zza(Context context) {
        synchronized (zze) {
            if (zza == null) {
                if (zzj(context)) {
                    zza = new zzcaq(context, VersionInfoParcel.forPackage());
                } else {
                    zza = new zzcar();
                }
            }
        }
        return zza;
    }

    public static zzcas zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzc == null) {
                boolean z = false;
                if (((Boolean) zzbkz.zzc.zze()).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziI)).booleanValue() || ((Boolean) zzbkz.zza.zze()).booleanValue()) {
                        z = true;
                    }
                }
                if (zzj(context)) {
                    zzcaq zzcaqVar = new zzcaq(context, versionInfoParcel);
                    zzcaqVar.zzl();
                    zzcaqVar.zzk();
                    zzc = zzcaqVar;
                } else if (!z || context == null) {
                    zzc = new zzcar();
                } else {
                    zzcaq zzcaqVar2 = new zzcaq(context, versionInfoParcel, true);
                    zzcaqVar2.zzl();
                    zzcaqVar2.zzk();
                    zzc = zzcaqVar2;
                }
            }
        }
        return zzc;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:11:0x002d, B:12:0x0039, B:13:0x0040), top: B:19:0x0003 }] */
    public static zzcas zzc(Context context) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziJ)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziI)).booleanValue() || context == null) {
                        zzb = new zzcar();
                    } else {
                        zzb = new zzcaq(context, VersionInfoParcel.forPackage());
                    }
                } else {
                    zzb = new zzcar();
                }
            }
        }
        return zzb;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0033 A[Catch: all -> 0x003e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x002b, B:11:0x0033, B:12:0x003a), top: B:18:0x0003 }] */
    public static zzcas zzd(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziJ)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziI)).booleanValue()) {
                        zzb = new zzcar();
                    } else {
                        zzb = new zzcaq(context, versionInfoParcel);
                    }
                } else {
                    zzb = new zzcar();
                }
            }
        }
        return zzb;
    }

    public static String zze(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zzf(Throwable th) {
        return zzgvb.zza(com.google.android.gms.ads.internal.util.client.zzf.zzh(zze(th)));
    }

    private static boolean zzj(Context context) {
        if (context == null) {
            return false;
        }
        synchronized (zze) {
            if (zzd == null) {
                zzd = Boolean.valueOf(com.google.android.gms.ads.internal.client.zzay.zzh().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzot)).intValue());
            }
        }
        if (zzd.booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziI)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private final void zzk() {
        Thread.setDefaultUncaughtExceptionHandler(new zzcan(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private final void zzl() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.zzf) {
            this.zzh.put(thread, true);
        }
        thread.setUncaughtExceptionHandler(new zzcao(this, thread.getUncaughtExceptionHandler()));
    }

    protected final void zzg(Thread thread, Throwable th) {
        if (th != null) {
            boolean zZzq = false;
            boolean zEquals = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    zZzq |= com.google.android.gms.ads.internal.util.client.zzf.zzq(stackTraceElement.getClassName());
                    zEquals |= getClass().getName().equals(stackTraceElement.getClassName());
                }
            }
            int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziK)).intValue();
            if (iIntValue > 0) {
                if (this.zzp.size() >= iIntValue) {
                    return;
                }
                String strZzf = zzf(th);
                if (this.zzp.contains(strZzf)) {
                    return;
                } else {
                    this.zzp.add(strZzf);
                }
            }
            if (!zZzq || zEquals) {
                return;
            }
            if (!this.zzo) {
                zzh(th, "");
            }
            if (this.zzn.getAndSet(true) || !((Boolean) zzbkz.zzc.zze()).booleanValue()) {
                return;
            }
            zzbir.zzb(this.zzg);
        }
    }

    @Override
    public final void zzh(Throwable th, String str) {
        if (this.zzo) {
            return;
        }
        zzi(th, str, 1.0f);
    }

    @Override
    public final void zzi(Throwable th, String str, float f) {
        Throwable th2;
        String strS;
        PackageInfo packageInfo;
        ActivityManager.MemoryInfo memoryInfoZze;
        if (this.zzo) {
            return;
        }
        Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
        boolean zIsCallerInstantApp = false;
        if (((Boolean) zzblq.zze.zze()).booleanValue()) {
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
                boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdk)).booleanValue() && stackTrace != null && stackTrace.length == 0 && com.google.android.gms.ads.internal.util.client.zzf.zzq(th3.getClass().getName());
                ArrayList arrayList = new ArrayList();
                String name = th3.getClass().getName();
                String strS2 = ProtectedFastSSH.s("峑");
                arrayList.add(new StackTraceElement(name, strS2, strS2, 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (com.google.android.gms.ads.internal.util.client.zzf.zzq(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith(ProtectedFastSSH.s("峒")) || className.startsWith(ProtectedFastSSH.s("峓")))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement(strS2, strS2, strS2, 1));
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
            String name2 = th.getClass().getName();
            String strZze = zze(th);
            String strZzf = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzkj)).booleanValue() ? zzf(th) : "";
            double d = f;
            double dRandom = Math.random();
            int i = f > 0.0f ? (int) (1.0f / f) : 1;
            if (dRandom < d) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    zIsCallerInstantApp = Wrappers.packageManager(this.zzg).isCallerInstantApp();
                } catch (Throwable th4) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("峔"), th4);
                }
                try {
                    strS = this.zzg.getPackageName();
                } catch (Throwable unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("峕"));
                    strS = ProtectedFastSSH.s("峏");
                }
                Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(ProtectedFastSSH.s("峖")).path(ProtectedFastSSH.s("峗")).appendQueryParameter(ProtectedFastSSH.s("峘"), Boolean.toString(zIsCallerInstantApp)).appendQueryParameter(ProtectedFastSSH.s("峙"), ProtectedFastSSH.s("峚")).appendQueryParameter(ProtectedFastSSH.s("峛"), Build.VERSION.RELEASE).appendQueryParameter(ProtectedFastSSH.s("峜"), String.valueOf(Build.VERSION.SDK_INT));
                String str2 = Build.MANUFACTURER;
                String string = Build.MODEL;
                if (!string.startsWith(str2)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(string).length());
                    sb.append(str2);
                    sb.append(ProtectedFastSSH.s("峝"));
                    sb.append(string);
                    string = sb.toString();
                }
                Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter(ProtectedFastSSH.s("峞"), string);
                VersionInfoParcel versionInfoParcel = this.zzj;
                Uri.Builder builderAppendQueryParameter3 = builderAppendQueryParameter2.appendQueryParameter(ProtectedFastSSH.s("峟"), versionInfoParcel.afmaVersion).appendQueryParameter(ProtectedFastSSH.s("峠"), strS).appendQueryParameter(ProtectedFastSSH.s("峡"), name2).appendQueryParameter(ProtectedFastSSH.s("峢"), strZze).appendQueryParameter(ProtectedFastSSH.s("峤"), TextUtils.join(ProtectedFastSSH.s("峣"), com.google.android.gms.ads.internal.client.zzba.zzb().zze())).appendQueryParameter(ProtectedFastSSH.s("峥"), str).appendQueryParameter(ProtectedFastSSH.s("峦"), ProtectedFastSSH.s("峧")).appendQueryParameter(ProtectedFastSSH.s("峨"), ProtectedFastSSH.s("峩")).appendQueryParameter(ProtectedFastSSH.s("峪"), Integer.toString(i)).appendQueryParameter(ProtectedFastSSH.s("峫"), String.valueOf(zzblq.zzc.zze()));
                Context context = this.zzg;
                Uri.Builder builderAppendQueryParameter4 = builderAppendQueryParameter3.appendQueryParameter(ProtectedFastSSH.s("峬"), String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(context)));
                boolean z2 = versionInfoParcel.isLiteSdk;
                String strS3 = ProtectedFastSSH.s("峭");
                String strS4 = ProtectedFastSSH.s("峮");
                Uri.Builder builderAppendQueryParameter5 = builderAppendQueryParameter4.appendQueryParameter(ProtectedFastSSH.s("峯"), true != z2 ? strS3 : strS4);
                if (!TextUtils.isEmpty(strZzf)) {
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峰"), strZzf);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziP)).booleanValue() && (memoryInfoZze = com.google.android.gms.ads.internal.util.client.zzf.zze(context)) != null) {
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峱"), Long.toString(memoryInfoZze.availMem));
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峲"), Long.toString(memoryInfoZze.totalMem));
                    if (true == memoryInfoZze.lowMemory) {
                        strS3 = strS4;
                    }
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峳"), strS3);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziO)).booleanValue()) {
                    String str3 = this.zzl;
                    if (!TextUtils.isEmpty(str3)) {
                        builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峴"), str3);
                    }
                    String str4 = this.zzm;
                    if (!TextUtils.isEmpty(str4)) {
                        builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峵"), str4);
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        packageInfo = zzy$$ExternalSyntheticApiModelOutline0.m();
                    } else if (context == null) {
                        packageInfo = null;
                    } else {
                        try {
                            packageInfo = Wrappers.packageManager(context).getPackageInfo(ProtectedFastSSH.s("島"), 128);
                        } catch (PackageManager.NameNotFoundException unused2) {
                            packageInfo = null;
                        }
                    }
                    if (packageInfo != null) {
                        builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峷"), Integer.toString(packageInfo.versionCode));
                        builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峸"), packageInfo.versionName);
                        builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峹"), packageInfo.packageName);
                    }
                }
                PackageInfo packageInfo2 = this.zzk;
                if (packageInfo2 != null) {
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峺"), String.valueOf(packageInfo2.versionCode));
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峻"), packageInfo2.versionName);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zznf)).booleanValue()) {
                    builderAppendQueryParameter5.appendQueryParameter(ProtectedFastSSH.s("峼"), zzgvb.zza(com.google.android.gms.ads.internal.util.client.zzf.zzf(this.zzg)));
                }
                arrayList2.add(builderAppendQueryParameter5.toString());
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    this.zzi.execute(new zzcap(new com.google.android.gms.ads.internal.util.client.zzu(this.zzg, null), (String) it.next()));
                }
            }
        }
    }
}
