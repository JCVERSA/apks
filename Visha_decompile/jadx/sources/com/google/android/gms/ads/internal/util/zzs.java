package com.google.android.gms.ads.internal.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.b;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.l6;
import com.google.android.gms.internal.ads.zzdoh;
import com.hisavana.common.constant.ComConstants;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.hubsdk.display.BuildConfig;
import defpackage.cye;
import defpackage.dcf;
import defpackage.dl1;
import defpackage.ghj;
import defpackage.hmh;
import defpackage.i0f;
import defpackage.i2i;
import defpackage.ia2;
import defpackage.im5;
import defpackage.j3i;
import defpackage.jkf;
import defpackage.kmh;
import defpackage.mpc;
import defpackage.pzh;
import defpackage.qxe;
import defpackage.rjf;
import defpackage.rmg;
import defpackage.smg;
import defpackage.tg9;
import defpackage.udj;
import defpackage.vfj;
import defpackage.vif;
import defpackage.wyi;
import defpackage.xye;
import defpackage.yx0;
import defpackage.zef;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzs {
    public static final pzh zza = new zzf(Looper.getMainLooper());
    public String g;
    public volatile String h;
    public final AtomicReference a = new AtomicReference(null);
    public final AtomicReference b = new AtomicReference(null);
    public final AtomicReference c = new AtomicReference(new Bundle());
    public final AtomicBoolean d = new AtomicBoolean();
    public boolean e = true;
    public final Object f = new Object();
    public boolean i = false;
    public boolean j = false;
    public final Executor k = Executors.newSingleThreadExecutor();

    public static KeyguardManager a(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    public static Bundle b(Context context) {
        try {
            return mpc.a(context).c(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb("Error getting metadata", e);
            return null;
        }
    }

    public static String c(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        return (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
    }

    public static boolean d(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = (Pattern) atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static final void e(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static final void f(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static final String g(final Context context, String str) {
        String strI;
        String str2;
        if (str == null) {
            return i();
        }
        try {
            zzcg zzcgVarZza = zzcg.zza();
            if (TextUtils.isEmpty(zzcgVarZza.a)) {
                if (yx0.a()) {
                    str2 = (String) zzcd.zza(context, new Callable() {
                        @Override
                        public final Object call() {
                            Context context2 = context;
                            SharedPreferences sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                            String string = sharedPreferences.getString("user_agent", "");
                            if (!TextUtils.isEmpty(string)) {
                                zze.zza("User agent is already initialized on Google Play Services.");
                                return string;
                            }
                            zze.zza("User agent is not initialized on Google Play Services. Initializing.");
                            String defaultUserAgent = WebSettings.getDefaultUserAgent(context2);
                            tg9.a(context2, sharedPreferences.edit().putString("user_agent", defaultUserAgent), "admob_user_agent");
                            return defaultUserAgent;
                        }
                    });
                } else {
                    final Context contextE = b.e(context);
                    str2 = (String) zzcd.zza(context, new Callable() {
                        @Override
                        public final Object call() {
                            SharedPreferences sharedPreferences;
                            Context context2 = contextE;
                            Context context3 = context;
                            boolean z = false;
                            if (context2 != null) {
                                zze.zza("Attempting to read user agent from Google Play Services.");
                                sharedPreferences = context2.getSharedPreferences("admob_user_agent", 0);
                            } else {
                                zze.zza("Attempting to read user agent from local cache.");
                                sharedPreferences = context3.getSharedPreferences("admob_user_agent", 0);
                                z = true;
                            }
                            String string = sharedPreferences.getString("user_agent", "");
                            if (TextUtils.isEmpty(string)) {
                                zze.zza("Reading user agent from WebSettings");
                                string = WebSettings.getDefaultUserAgent(context3);
                                if (z) {
                                    sharedPreferences.edit().putString("user_agent", string).apply();
                                    zze.zza("Persisting user agent.");
                                }
                            }
                            return string;
                        }
                    });
                }
                zzcgVarZza.a = str2;
            }
            strI = zzcgVarZza.a;
        } catch (Exception unused) {
            strI = null;
        }
        if (TextUtils.isEmpty(strI)) {
            strI = WebSettings.getDefaultUserAgent(context);
        }
        if (TextUtils.isEmpty(strI)) {
            strI = i();
        }
        String str3 = strI + " (Mobile; " + str;
        try {
            if (mpc.a(context).g()) {
                str3 = str3 + ";aia";
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdUtil.getUserAgent");
        }
        return str3.concat(")");
    }

    public static final String i() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static final int[] j() {
        return new int[]{0, 0};
    }

    @Nullable
    public static final zzbr zzA(Context context) {
        try {
            Object objNewInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(null).newInstance(null);
            if (!(objNewInstance instanceof IBinder)) {
                int i = zze.zza;
                zzo.zzg("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return iInterfaceQueryLocalInterface instanceof zzbr ? (zzbr) iInterfaceQueryLocalInterface : new zzbp(iBinder);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final boolean zzB(Context context, String str) {
        Context contextA = dcf.a(context);
        return mpc.a(contextA).b(str, contextA.getPackageName()) == 0;
    }

    public static final boolean zzC(Context context) {
        try {
            return ia2.b(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean zzD(String str) {
        if (!com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.i5)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.k5);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(ProcessInfo.SPLIT_NEW_VERSION)) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.j5);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(ProcessInfo.SPLIT_NEW_VERSION)) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean zzE(Context context) {
        KeyguardManager keyguardManagerA;
        return (context == null || (keyguardManagerA = a(context)) == null || !keyguardManagerA.isKeyguardLocked()) ? false : true;
    }

    public static final boolean zzF(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            int i = zze.zza;
            zzo.zzh("Error loading class.", th);
            com.google.android.gms.ads.internal.zzv.zzp().x(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static final boolean zzG() {
        int iMyUid = Process.myUid();
        return iMyUid == 0 || iMyUid == 1000;
    }

    public static final boolean zzH(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    return runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || (powerManager = (PowerManager) context.getSystemService("power")) == null || !powerManager.isScreenOn();
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean zzI(Context context) {
        try {
            Bundle bundleB = b(context);
            return TextUtils.isEmpty(c(bundleB)) && !TextUtils.isEmpty(bundleB.getString("com.google.android.gms.ads.INTEGRATION_MANAGER"));
        } catch (RemoteException unused) {
        }
    }

    public static final boolean zzJ(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void zzK(View view, int i, MotionEvent motionEvent) {
        String strA;
        int i2;
        int iHeight;
        int iWidth;
        String str;
        String str2;
        hmh hmhVarZzD;
        kmh kmhVarZzR;
        View childAt = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (childAt instanceof zzdoh) {
                childAt = ((zzdoh) childAt).getChildAt(0);
            }
            if ((childAt instanceof com.google.android.gms.ads.formats.zzj) || (childAt instanceof NativeAdView)) {
                strA = "NATIVE";
                i2 = 1;
            } else {
                strA = "UNKNOWN";
                i2 = 0;
            }
            if (childAt.getLocalVisibleRect(rect)) {
                iWidth = rect.width();
                iHeight = rect.height();
            } else {
                iHeight = 0;
                iWidth = 0;
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            long jZzx = zzx(childAt);
            childAt.getLocationOnScreen(iArr);
            int i3 = iArr[0];
            int i4 = iArr[1];
            if (!(childAt instanceof rjf) || (kmhVarZzR = ((rjf) childAt).zzR()) == null) {
                str = "none";
            } else {
                String str3 = kmhVarZzR.b;
                childAt.setContentDescription(str3 + StringUtils.PROCESS_POSTFIX_DELIMITER + childAt.hashCode());
                str = str3;
            }
            if (!(childAt instanceof vif) || (hmhVarZzD = ((vif) childAt).zzD()) == null) {
                str2 = "none";
            } else {
                strA = hmh.a(hmhVarZzD.b);
                i2 = hmhVarZzD.e;
                str2 = hmhVarZzD.E;
            }
            String str4 = String.format(Locale.US, "<Ad hashCode=%d, package=%s, adNetCls=%s, gwsQueryId=%s, format=%s, impType=%d, class=%s, x=%d, y=%d, width=%d, height=%d, vWidth=%d, vHeight=%d, alpha=%d, state=%s>", Integer.valueOf(childAt.hashCode()), packageName, str2, str, strA, Integer.valueOf(i2), childAt.getClass().getName(), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(childAt.getWidth()), Integer.valueOf(childAt.getHeight()), Integer.valueOf(iWidth), Integer.valueOf(iHeight), Long.valueOf(jZzx), Integer.toString(i, 2));
            int i5 = zze.zza;
            zzo.zzi(str4);
        } catch (Exception e) {
            int i6 = zze.zza;
            zzo.zzh("Failure getting view location.", e);
        }
    }

    public static final AlertDialog.Builder zzL(Context context) {
        com.google.android.gms.ads.internal.zzv.zzr();
        return new AlertDialog.Builder(context, R.style.Theme.Material.Dialog.Alert);
    }

    public static final void zzM(Context context, String str, String str2) {
        new zzbw(context, str, str2, null, null).zzb();
    }

    public static final void zzN(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        try {
            if (((Boolean) i0f.b.e()).booleanValue()) {
                dl1.a(context, th);
            }
        } catch (IllegalStateException unused) {
        }
    }

    public static final boolean zzO(@Nullable hmh hmhVar) {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.pd)).booleanValue() && hmhVar != null && hmhVar.e == 4;
    }

    public static final int zzP(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String strConcat = "Could not parse value:".concat(e.toString());
            int i = zze.zza;
            zzo.zzj(strConcat);
            return 0;
        }
    }

    @Nullable
    public static final Map zzQ(Uri uri) {
        String encodedQuery;
        if (uri == null) {
            return null;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.q)).booleanValue()) {
            HashMap map = new HashMap();
            for (String str : uri.getQueryParameterNames()) {
                if (!TextUtils.isEmpty(str)) {
                    map.put(str, uri.getQueryParameter(str));
                }
            }
            return map;
        }
        HashMap map2 = new HashMap();
        if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
            int i = 0;
            while (true) {
                int iIndexOf = encodedQuery.indexOf(38, i);
                int length = encodedQuery.length();
                if (iIndexOf != -1) {
                    length = iIndexOf;
                }
                int iIndexOf2 = encodedQuery.indexOf(61, i);
                if (iIndexOf2 > length || iIndexOf2 == -1) {
                    iIndexOf2 = length;
                }
                map2.put(Uri.decode(encodedQuery.substring(i, iIndexOf2)), iIndexOf2 == length ? "" : Uri.decode(encodedQuery.substring(iIndexOf2 + 1, length)));
                if (iIndexOf == -1) {
                    break;
                }
                i = iIndexOf + 1;
            }
        }
        return map2;
    }

    public static final int[] zzR(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? j() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static final int[] zzS(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrJ = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? j() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(activity, iArrJ[0]), com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(activity, iArrJ[1])};
    }

    public static final boolean zzT(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = com.google.android.gms.ads.internal.zzv.zzq().e || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzo(view);
        long jZzx = zzx(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.y1)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Ia)).booleanValue()) {
                    return true;
                }
                if (jZzx >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Ka)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void zzU(Context context, Intent intent) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.fb)).booleanValue()) {
            f(context, intent);
            return;
        }
        try {
            f(context, intent);
        } catch (SecurityException e) {
            int i = zze.zza;
            zzo.zzk("", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdUtil.startActivityWithUnknownContext");
        }
    }

    public static final void zzV(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzp(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String str = "Opening " + uri.toString() + " in a new browser.";
            int i = zze.zza;
            zzo.zze(str);
        } catch (ActivityNotFoundException e) {
            int i2 = zze.zza;
            zzo.zzh("No browser is found.", e);
        }
    }

    public static final int[] zzW(Activity activity) {
        int[] iArrZzR = zzR(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(activity, iArrZzR[0]), com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(activity, iArrZzR[1])};
    }

    public static final boolean zzX(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zzT(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, a(context));
    }

    public static final void zzY(Context context, Intent intent, @Nullable smg smgVar, String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.fd)).booleanValue() || !(context instanceof jkf)) {
            zzU(context, intent);
            return;
        }
        try {
            Uri data = intent.getData();
            if (data != null && data.toString() != null) {
                if (data.toString().matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.hd))) {
                    ((jkf) context).c(intent, 236);
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.gd)).booleanValue() || smgVar == null) {
                        return;
                    }
                    rmg rmgVarA = smgVar.a();
                    rmgVarA.b("action", "hila");
                    rmgVarA.b("gqi", j3i.c(str));
                    rmgVarA.i();
                    return;
                }
            }
            zzU(context, intent);
        } catch (ActivityNotFoundException | SecurityException e) {
            int i = zze.zza;
            zzo.zzh("Error occurred while starting activity for result", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdUtil.startActivityForResult");
            zzU(context, intent);
        } catch (Exception e2) {
            int i2 = zze.zza;
            zzo.zzh("Error occurred while starting activity for result", e2);
            com.google.android.gms.ads.internal.zzv.zzp().x(e2, "AdUtil.startActivityForResult");
            zzU(context, intent);
        }
    }

    public static int zza(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return ComConstants.defScheduleTime;
        }
        int i2 = zze.zza;
        zzo.zzj("HTTP timeout too low: " + i + " milliseconds. Reverting to default timeout: 60000 milliseconds.");
        return ComConstants.defScheduleTime;
    }

    public static List zzd() {
        qxe qxeVar = cye.a;
        List listB = com.google.android.gms.ads.internal.client.zzbd.zza().b();
        ArrayList arrayList = new ArrayList();
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            Iterator it2 = l6.b(i2i.b(',')).d((String) it.next()).iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it2.next()));
                } catch (NumberFormatException unused) {
                    zze.zza("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public static void zzh(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zef.a.execute(runnable);
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public static final boolean zzo(View view) {
        Activity activity;
        View rootView = view.getRootView();
        if (rootView == null) {
            activity = null;
        } else {
            Context context = rootView.getContext();
            if (context instanceof Activity) {
                activity = (Activity) context;
            } else {
                activity = null;
            }
        }
        if (activity == null) {
            return false;
        }
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        return (attributes == null || (attributes.flags & 524288) == 0) ? false : true;
    }

    public static final void zzp(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder(CustomTabsIntent.EXTRA_SESSION, null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String zzq(Context context) throws RemoteException {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return c(b(context));
    }

    public static final String zzs() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return str + " " + str2;
    }

    @Nullable
    public static final Integer zzt(Context context) {
        Object systemService = context.getSystemService(BuildConfig.FLAVOR);
        if (systemService instanceof DisplayManager) {
            return Integer.valueOf(((DisplayManager) systemService).getDisplays().length);
        }
        return null;
    }

    public static final DisplayMetrics zzu(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final Map zzw(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                HashSet hashSet = new HashSet();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i);
                        if (strOptString != null) {
                            hashSet.add(strOptString);
                        }
                    }
                    map.put(next, hashSet);
                }
            }
            return map;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdUtil.getMapOfFileNamesToKeysFromJsonString");
            return map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long zzx(View view) {
        float fMin = Float.MAX_VALUE;
        do {
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            fMin = Math.min(fMin, view2.getAlpha());
            view = view2.getParent();
        } while (fMin > 0.0f);
        return Math.round((fMin >= 0.0f ? fMin : 0.0f) * 100.0f);
    }

    @Nullable
    public static final WebResourceResponse zzy(Context context, String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = (String) new zzbo(context).zzb(0, str2, map, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse(FastJsonJsonView.DEFAULT_JSONP_CONTENT_TYPE, "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            int i = zze.zza;
            zzo.zzk("Could not fetch MRAID JS.", e);
        }
        return null;
    }

    public static final String zzz() {
        Resources resourcesF = com.google.android.gms.ads.internal.zzv.zzp().f();
        return resourcesF != null ? resourcesF.getString(com.google.android.gms.ads.impl.R.string.s7) : "Test Ad";
    }

    public final im5 zzb(final Uri uri) {
        return j8.j(new Callable() {
            @Override
            public final Object call() {
                pzh pzhVar = zzs.zza;
                com.google.android.gms.ads.internal.zzv.zzq();
                return zzs.zzQ(uri);
            }
        }, this.k);
    }

    public final String zzc(Context context, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.rb)).booleanValue()) {
            if (this.h != null) {
                return this.h;
            }
            this.h = g(context, str);
            return this.h;
        }
        synchronized (this.f) {
            try {
                String str2 = this.g;
                if (str2 != null) {
                    return str2;
                }
                String strG = g(context, str);
                this.g = strG;
                return strG;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzg(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int iZza = zza(i);
        int i2 = zze.zza;
        zzo.zzi("HTTP timeout: " + iZza + " milliseconds.");
        httpURLConnection.setConnectTimeout(iZza);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(iZza);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", zzc(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final void zzi(final Context context, @Nullable final String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzv.zzq();
        bundle.putString("device", zzs());
        qxe qxeVar = cye.a;
        bundle.putString("eids", TextUtils.join(StringUtils.COMMA, com.google.android.gms.ads.internal.client.zzbd.zza().a()));
        if (bundle.isEmpty()) {
            int i = zze.zza;
            zzo.zze("Empty or null bundle.");
        } else {
            final String str3 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Ga);
            if (!this.d.getAndSet(true)) {
                this.c.set(zzad.zza(context, str3, new SharedPreferences.OnSharedPreferenceChangeListener() {
                    @Override
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str4) {
                        this.zza.c.set(zzad.zzb(context, str3));
                    }
                }));
            }
            bundle.putAll((Bundle) this.c.get());
        }
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        com.google.android.gms.ads.internal.util.client.zzf.zzx(context, str, "gmob-apps", bundle, true, new com.google.android.gms.ads.internal.util.client.zze() {
            @Override
            public final com.google.android.gms.ads.internal.util.client.zzt zza(String str4) {
                pzh pzhVar = zzs.zza;
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzM(context, str, str4);
                return com.google.android.gms.ads.internal.util.client.zzt.SUCCESS;
            }
        });
    }

    public final boolean zzj(String str) {
        return d(str, this.a, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.s0));
    }

    public final boolean zzk(String str) {
        return d(str, this.b, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.t0));
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzl(Context context) {
        if (this.j) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        cye.a(context);
        zzr zzrVar = null;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.eb)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new vfj(this, zzrVar), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new vfj(this, zzrVar), intentFilter, 4);
        }
        this.j = true;
        return true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzm(Context context) {
        if (this.i) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        cye.a(context);
        zzr zzrVar = null;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.eb)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new ghj(this, zzrVar), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new ghj(this, zzrVar), intentFilter, 4);
        }
        this.i = true;
        return true;
    }

    public final int zzn(Context context, Uri uri) {
        if (context == null) {
            zze.zza("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!(context instanceof Activity)) {
            e(context, uri);
            return 2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.N4)).booleanValue()) {
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(com.google.android.gms.ads.internal.zzv.zzf().a()).build();
            customTabsIntentBuild.intent.setPackage(wyi.a(context));
            customTabsIntentBuild.launchUrl(context, uri);
            return 5;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.L4)).booleanValue()) {
            e(context, uri);
            return 9;
        }
        xye xyeVar = new xye();
        xyeVar.e(new udj(this, xyeVar, context, uri));
        xyeVar.b((Activity) context);
        return 5;
    }
}
