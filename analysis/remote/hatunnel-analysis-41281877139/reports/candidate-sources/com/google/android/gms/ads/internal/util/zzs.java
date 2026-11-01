package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.app.LocaleManager;
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
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.widget.AbsListView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.os.Profiling$$ExternalSyntheticApiModelOutline0;
import androidx.core.view.ScrollingView;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzblq;
import com.google.android.gms.internal.ads.zzccf;
import com.google.android.gms.internal.ads.zzcld;
import com.google.android.gms.internal.ads.zzcmt;
import com.google.android.gms.internal.ads.zzcno;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzeai;
import com.google.android.gms.internal.ads.zzeaj;
import com.google.android.gms.internal.ads.zzfld;
import com.google.android.gms.internal.ads.zzflg;
import com.google.android.gms.internal.ads.zzgbp;
import com.google.android.gms.internal.ads.zzgty;
import com.google.android.gms.internal.ads.zzguz;
import com.google.android.gms.internal.ads.zzgvb;
import com.google.android.gms.internal.ads.zzhcy;
import com.google.android.gms.internal.ads.zziom;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.ByteArrayInputStream;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzs {
    public static final zzgbp zza = new zzf(Looper.getMainLooper());
    private String zzh;
    private volatile String zzi;
    private final AtomicReference zzb = new AtomicReference(null);
    private final AtomicReference zzc = new AtomicReference(null);
    private final AtomicReference zzd = new AtomicReference(new Bundle());
    private final AtomicBoolean zze = new AtomicBoolean();
    private boolean zzf = true;
    private final Object zzg = new Object();
    private boolean zzj = false;
    private boolean zzk = false;
    private final Executor zzl = Executors.newSingleThreadExecutor();

    public static final int zzA(View view) {
        ViewParent parent = view.getParent();
        while (true) {
            if (parent == null) {
                return 0;
            }
            if (parent instanceof ScrollView) {
                return 1;
            }
            if (parent instanceof AbsListView) {
                return 2;
            }
            if (parent instanceof HorizontalScrollView) {
                return 3;
            }
            if (parent instanceof ScrollingView) {
                return 4;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjo)).booleanValue()) {
                String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjp);
                if (TextUtils.isEmpty(str)) {
                    continue;
                } else {
                    for (String str2 : str.split(ProtectedFastSSH.s("㬜"))) {
                        if (parent.getClass().getName().toLowerCase(Locale.ROOT).contains(str2)) {
                            return 5;
                        }
                    }
                }
            }
            parent = parent.getParent();
        }
    }

    public static final String zzB() {
        Resources resourcesZzg = com.google.android.gms.ads.internal.zzt.zzh().zzg();
        return resourcesZzg != null ? resourcesZzg.getString(R.string.s7) : ProtectedFastSSH.s("㬝");
    }

    public static final zzbo zzC(Context context) {
        try {
            Object objNewInstance = context.getClassLoader().loadClass(ProtectedFastSSH.s("㬞")).getDeclaredConstructor(null).newInstance(null);
            if (!(objNewInstance instanceof IBinder)) {
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("㬟"));
                return null;
            }
            IBinder iBinder = (IBinder) objNewInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ProtectedFastSSH.s("㬠"));
            return iInterfaceQueryLocalInterface instanceof zzbo ? (zzbo) iInterfaceQueryLocalInterface : new zzbm(iBinder);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("㬡"));
            return null;
        }
    }

    public static final boolean zzD(Context context, String str) {
        Context contextZza = zzccf.zza(context);
        return Wrappers.packageManager(contextZza).checkPermission(str, contextZza.getPackageName()) == 0;
    }

    public static final boolean zzE(Context context) {
        try {
            return DeviceProperties.isBstar(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean zzF(String str) {
        if (!com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzgm)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzgo);
        boolean zIsEmpty = str2.isEmpty();
        String strS = ProtectedFastSSH.s("㬢");
        if (!zIsEmpty) {
            for (String str3 : str2.split(strS)) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzgn);
        if (str4.isEmpty()) {
            return true;
        }
        String[] strArrSplit = str4.split(strS);
        for (String str5 : strArrSplit) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean zzG(Context context) {
        KeyguardManager keyguardManagerZzad;
        return (context == null || (keyguardManagerZzad = zzad(context)) == null || !keyguardManagerZzad.isKeyguardLocked()) ? false : true;
    }

    public static final boolean zzH(Context context) {
        try {
            context.getClassLoader().loadClass(ProtectedFastSSH.s("㬣"));
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("㬤"), th);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("㬥"));
            return false;
        }
    }

    public static final boolean zzI() {
        int iMyUid = Process.myUid();
        return iMyUid == 0 || iMyUid == 1000;
    }

    public static final boolean zzJ(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ProtectedFastSSH.s("㬦"));
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(ProtectedFastSSH.s("㬧"));
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    return runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode() || (powerManager = (PowerManager) context.getSystemService(ProtectedFastSSH.s("㬨"))) == null || !powerManager.isScreenOn();
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean zzK(Context context) {
        try {
            Bundle bundleZzag = zzag(context);
            return TextUtils.isEmpty(zzaf(bundleZzag)) && !TextUtils.isEmpty(bundleZzag.getString(ProtectedFastSSH.s("㬩")));
        } catch (RemoteException unused) {
        }
    }

    public static final boolean zzL(Context context) {
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

    public static final void zzM(View view, int i, MotionEvent motionEvent) {
        String strS;
        int i2;
        int iHeight;
        int iWidth;
        String str;
        zzfld zzfldVarZzC;
        zzflg zzflgVarZzaC;
        View childAt = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        String strS2 = ProtectedFastSSH.s("㬪");
        try {
            String packageName = childAt.getContext().getPackageName();
            if (childAt instanceof zzdxj) {
                childAt = ((zzdxj) childAt).getChildAt(0);
            }
            if ((childAt instanceof com.google.android.gms.ads.formats.zzh) || (childAt instanceof NativeAdView)) {
                strS = ProtectedFastSSH.s("㬬");
                i2 = 1;
            } else {
                strS = ProtectedFastSSH.s("㬫");
                i2 = 0;
            }
            if (childAt.getLocalVisibleRect(rect)) {
                iWidth = rect.width();
                iHeight = rect.height();
            } else {
                iHeight = 0;
                iWidth = 0;
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            long jZzy = zzy(childAt);
            childAt.getLocationOnScreen(iArr);
            int i3 = iArr[0];
            int i4 = iArr[1];
            boolean z = childAt instanceof zzcmt;
            String strS3 = ProtectedFastSSH.s("㬭");
            if (!z || (zzflgVarZzaC = ((zzcmt) childAt).zzaC()) == null) {
                str = strS3;
            } else {
                str = zzflgVarZzaC.zzb;
                int iHashCode = childAt.hashCode();
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(iHashCode).length());
                sb.append(str);
                sb.append(strS2);
                sb.append(iHashCode);
                childAt.setContentDescription(sb.toString());
            }
            if ((childAt instanceof zzcld) && (zzfldVarZzC = ((zzcld) childAt).zzC()) != null) {
                strS = zzfld.zza(zzfldVarZzC.zzb);
                i2 = zzfldVarZzC.zze;
                strS3 = zzfldVarZzC.zzE;
            }
            String str2 = String.format(Locale.US, ProtectedFastSSH.s("㬮"), Integer.valueOf(childAt.hashCode()), packageName, strS3, str, strS, Integer.valueOf(i2), childAt.getClass().getName(), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(childAt.getWidth()), Integer.valueOf(childAt.getHeight()), Integer.valueOf(iWidth), Integer.valueOf(iHeight), Long.valueOf(jZzy), Integer.toString(i, 2));
            int i5 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh(str2);
        } catch (Exception e) {
            int i6 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("㬯"), e);
        }
    }

    public static final AlertDialog.Builder zzN(Context context) {
        com.google.android.gms.ads.internal.zzt.zzf();
        return new AlertDialog.Builder(context, android.R.style.Theme.Material.Dialog.Alert);
    }

    public static final void zzO(Context context, String str, String str2) {
        new zzbt(context, str, str2, null, null).zzb();
    }

    public static final void zzP(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        try {
            if (((Boolean) zzblq.zzb.zze()).booleanValue()) {
                CrashUtils.addDynamiteErrorToDropBox(context, th);
            }
        } catch (IllegalStateException unused) {
        }
    }

    public static final void zzQ(Context context, zzfld zzfldVar, zzeaj zzeajVar) {
        zzeai zzeaiVarZza = zzeajVar.zza();
        zzeaiVarZza.zzc(ProtectedFastSSH.s("㬰"), ProtectedFastSSH.s("㬱"));
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zZzJ = zzJ(context);
        String strS = ProtectedFastSSH.s("㬲");
        String strS2 = ProtectedFastSSH.s("㬳");
        zzeaiVarZza.zzc(ProtectedFastSSH.s("㬴"), true != zZzJ ? strS : strS2);
        if (true != com.google.android.gms.ads.internal.zzt.zzg().zzf()) {
            strS = strS2;
        }
        zzeaiVarZza.zzc(ProtectedFastSSH.s("㬵"), strS);
        if (zzfldVar != null) {
            List list = zzfldVar.zzt;
            if (!list.isEmpty()) {
                zzeaiVarZza.zzc(ProtectedFastSSH.s("㬶"), (String) list.get(0));
            }
            zzeaiVarZza.zzc(ProtectedFastSSH.s("㬷"), zzfld.zza(zzfldVar.zzb));
        }
        zzeaiVarZza.zzd();
    }

    public static final boolean zzR(zzfld zzfldVar) {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzpp)).booleanValue() && zzfldVar != null && zzfldVar.zze == 4;
    }

    public static final int zzS(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String strConcat = ProtectedFastSSH.s("㬸").concat(e.toString());
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(strConcat);
            return 0;
        }
    }

    public static final Map zzT(Uri uri) {
        String encodedQuery;
        if (uri == null) {
            return null;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzx)).booleanValue()) {
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

    static final void zzU(CustomTabsIntent.Builder builder, Bundle bundle) {
        zzai(builder, bundle);
    }

    public static final int[] zzV(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(android.R.id.content)) == null) ? zzw() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public static final int[] zzW(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrZzw = (window == null || (viewFindViewById = window.findViewById(android.R.id.content)) == null) ? zzw() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{com.google.android.gms.ads.internal.client.zzay.zza().zza(activity, iArrZzw[0]), com.google.android.gms.ads.internal.client.zzay.zza().zza(activity, iArrZzw[1])};
    }

    public static final boolean zzX(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = com.google.android.gms.ads.internal.zzt.zzc().zzf || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzo(view);
        long jZzy = zzy(view);
        if (view.getVisibility() != 0 || !view.isShown() || ((powerManager != null && !powerManager.isScreenOn()) || !z)) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcc)).booleanValue() && !view.getLocalVisibleRect(new Rect()) && !view.getGlobalVisibleRect(new Rect())) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmj)).booleanValue()) {
            if (jZzy < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzml)).intValue()) {
                return false;
            }
        }
        return true;
    }

    public static final void zzY(Context context, Intent intent) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmG)).booleanValue()) {
            zzaj(context, intent);
            return;
        }
        try {
            zzaj(context, intent);
        } catch (SecurityException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("", e);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("㬹"));
        }
    }

    public static final void zzZ(Context context, Uri uri) {
        String strS = ProtectedFastSSH.s("㬺");
        String strS2 = ProtectedFastSSH.s("㬻");
        try {
            Intent intent = new Intent(ProtectedFastSSH.s("㬼"), uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzq(context, intent);
            bundle.putString(ProtectedFastSSH.s("㬽"), context.getPackageName());
            context.startActivity(intent);
            String string = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 26);
            sb.append(strS2);
            sb.append(string);
            sb.append(strS);
            String string2 = sb.toString();
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(string2);
        } catch (ActivityNotFoundException e) {
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("㬾"), e);
        }
    }

    public static int zza(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 86);
        sb.append(ProtectedFastSSH.s("㬿"));
        sb.append(i);
        sb.append(ProtectedFastSSH.s("㭀"));
        String string = sb.toString();
        int i2 = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(string);
        return 60000;
    }

    public static final int[] zzaa(Activity activity) {
        int[] iArrZzV = zzV(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzay.zza().zza(activity, iArrZzV[0]), com.google.android.gms.ads.internal.client.zzay.zza().zza(activity, iArrZzV[1])};
    }

    public static final boolean zzab(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zzX(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService(ProtectedFastSSH.s("㬨")) : null, zzad(context));
    }

    public static final void zzac(Context context, Intent intent, zzeaj zzeajVar, String str) {
        String strS = ProtectedFastSSH.s("㭁");
        String strS2 = ProtectedFastSSH.s("㭂");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoU)).booleanValue() || !(context instanceof zzcno)) {
            zzY(context, intent);
            return;
        }
        try {
            Uri data = intent.getData();
            if (data != null && data.toString() != null) {
                if (data.toString().matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoW))) {
                    ((zzcno) context).zza(intent, 236);
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoV)).booleanValue() || zzeajVar == null) {
                        return;
                    }
                    zzeai zzeaiVarZza = zzeajVar.zza();
                    zzeaiVarZza.zzc(ProtectedFastSSH.s("㬰"), ProtectedFastSSH.s("㭃"));
                    zzeaiVarZza.zzc(ProtectedFastSSH.s("㭄"), zzgvb.zza(str));
                    zzeaiVarZza.zzf();
                    return;
                }
            }
            zzY(context, intent);
        } catch (ActivityNotFoundException e) {
            e = e;
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(strS2, e);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, strS);
            zzY(context, intent);
        } catch (SecurityException e2) {
            e = e2;
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(strS2, e);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, strS);
            zzY(context, intent);
        } catch (Exception e3) {
            int i3 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(strS2, e3);
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e3, strS);
            zzY(context, intent);
        }
    }

    private static KeyguardManager zzad(Context context) {
        Object systemService = context.getSystemService(ProtectedFastSSH.s("㬧"));
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    private static boolean zzae(String str, AtomicReference atomicReference, String str2) {
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

    private static String zzaf(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString(ProtectedFastSSH.s("㭅"));
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        return (string.matches(ProtectedFastSSH.s("㭆")) || string.matches(ProtectedFastSSH.s("㭇"))) ? string : "";
    }

    private static Bundle zzag(Context context) throws RemoteException {
        try {
            return Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb(ProtectedFastSSH.s("㭈"), e);
            return null;
        }
    }

    private static final void zzah(Context context, Uri uri) {
        Intent intent = new Intent(ProtectedFastSSH.s("㬼"));
        intent.setData(uri);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    private static final void zzai(CustomTabsIntent.Builder builder, Bundle bundle) {
        if (bundle.isEmpty()) {
            return;
        }
        int i = bundle.getInt(ProtectedFastSSH.s("㭉"), -1);
        if (i >= 0) {
            builder.setInitialActivityHeightPx(i);
        }
        int i2 = bundle.getInt(ProtectedFastSSH.s("㭊"), -1);
        if (i2 < 0 || i2 > 2) {
            return;
        }
        builder.setCloseButtonPosition(i2);
    }

    private static final void zzaj(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    private static final String zzak(Context context, String str) {
        String strZzs;
        String strS = ProtectedFastSSH.s("㭋");
        String strS2 = ProtectedFastSSH.s("㭌");
        if (str == null) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(new Exception(ProtectedFastSSH.s("㭍")), strS2);
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzh)).booleanValue()) {
                return zzs();
            }
            str = VersionInfoParcel.forPackage().afmaVersion;
        }
        try {
            zzce zzceVarZza = zzce.zza();
            if (TextUtils.isEmpty(zzceVarZza.zza)) {
                zzceVarZza.zza = ClientLibraryUtils.isPackageSide() ? (String) zzcb.zza(context, new zzcc(context)) : (String) zzcb.zza(context, new zzcd(GooglePlayServicesUtilLight.getRemoteContext(context), context));
            }
            strZzs = zzceVarZza.zza;
        } catch (Exception unused) {
            strZzs = null;
        }
        if (TextUtils.isEmpty(strZzs)) {
            strZzs = WebSettings.getDefaultUserAgent(context);
        }
        if (TextUtils.isEmpty(strZzs)) {
            strZzs = zzs();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strZzs).length() + 10 + String.valueOf(str).length());
        sb.append(strZzs);
        sb.append(ProtectedFastSSH.s("㭎"));
        sb.append(str);
        String string = sb.toString();
        try {
            if (Wrappers.packageManager(context).isCallerInstantApp()) {
                StringBuilder sb2 = new StringBuilder(string.length() + 4);
                sb2.append(string);
                sb2.append(strS);
                string = sb2.toString();
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, strS2);
        }
        return string.concat(ProtectedFastSSH.s("㭏"));
    }

    public static List zzj() {
        zzbix zzbixVar = zzbjg.zza;
        List listZzf = com.google.android.gms.ads.internal.client.zzba.zzb().zzf();
        ArrayList arrayList = new ArrayList();
        Iterator it = listZzf.iterator();
        while (it.hasNext()) {
            Iterator it2 = zzguz.zza(zzgty.zzd(AbstractJsonLexerKt.COMMA)).zzf((String) it.next()).iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it2.next()));
                } catch (NumberFormatException unused) {
                    zze.zza(ProtectedFastSSH.s("㭐"));
                }
            }
        }
        return arrayList;
    }

    public static zzq zzk(Context context) {
        if (Build.VERSION.SDK_INT < 33) {
            if (Build.VERSION.SDK_INT >= 24) {
                Locale localeM = Profiling$$ExternalSyntheticApiModelOutline0.m(ComponentDialog$$ExternalSyntheticApiModelOutline0.m10m(context.getResources().getConfiguration()), 0);
                return new zzq(localeM.getLanguage(), localeM.getCountry());
            }
            Locale locale = context.getResources().getConfiguration().locale;
            return new zzq(locale.getLanguage(), locale.getCountry());
        }
        zzq zzqVar = new zzq(Locale.getDefault().getLanguage(), Locale.getDefault().getCountry());
        try {
            LocaleManager localeManagerM492m = zzy$$ExternalSyntheticApiModelOutline0.m492m(context.getSystemService(zzy$$ExternalSyntheticApiModelOutline0.m$1()));
            if (localeManagerM492m == null || ComponentDialog$$ExternalSyntheticApiModelOutline0.m23m(zzy$$ExternalSyntheticApiModelOutline0.m(localeManagerM492m))) {
                return zzqVar;
            }
            Locale localeM2 = Profiling$$ExternalSyntheticApiModelOutline0.m(zzy$$ExternalSyntheticApiModelOutline0.m(localeManagerM492m), 0);
            return new zzq(localeM2.getLanguage(), localeM2.getCountry());
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("㭑"));
            return zzqVar;
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

    public static final boolean zzp(Context context, WebSettings webSettings) {
        zzcb.zza(context, new zzn(webSettings, context));
        webSettings.setAllowFileAccessFromFileURLs(false);
        webSettings.setAllowUniversalAccessFromFileURLs(false);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    public static final void zzq(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder(ProtectedFastSSH.s("㭒"), null);
        extras.putString(ProtectedFastSSH.s("㬽"), context.getPackageName());
        intent.putExtras(extras);
    }

    public static final String zzr(Context context) throws RemoteException {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return zzaf(zzag(context));
    }

    static final String zzs() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(ProtectedFastSSH.s("㭓"));
        if (Build.VERSION.RELEASE != null) {
            sb.append(ProtectedFastSSH.s("㭔"));
            sb.append(Build.VERSION.RELEASE);
        }
        String strS = ProtectedFastSSH.s("㭕");
        sb.append(strS);
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append(strS);
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(ProtectedFastSSH.s("㭖"));
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(ProtectedFastSSH.s("㭗"));
        return sb.toString();
    }

    public static final String zzt() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(ProtectedFastSSH.s("㭔"));
        sb.append(str2);
        return sb.toString();
    }

    public static final Integer zzu(Context context) {
        Object systemService = context.getSystemService(ProtectedFastSSH.s("㭘"));
        if (systemService instanceof DisplayManager) {
            return Integer.valueOf(((DisplayManager) systemService).getDisplays().length);
        }
        return null;
    }

    public static final DisplayMetrics zzv(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    protected static final int[] zzw() {
        return new int[]{0, 0};
    }

    public static final Map zzx(String str) {
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
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("㭙"));
            return map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long zzy(View view) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final WebResourceResponse zzz(Context context, String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put(ProtectedFastSSH.s("㭚"), com.google.android.gms.ads.internal.zzt.zzc().zze(context, str));
            map.put(ProtectedFastSSH.s("㭛"), ProtectedFastSSH.s("㭜"));
            String str3 = (String) new zzbl(context).zzb(0, str2, map, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse(ProtectedFastSSH.s("㭝"), ProtectedFastSSH.s("㭞"), new ByteArrayInputStream(str3.getBytes(StandardCharsets.UTF_8)));
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(ProtectedFastSSH.s("㭟"), e);
        }
        return null;
    }

    public final void zzb(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int iZza = zza(i);
        StringBuilder sb = new StringBuilder(String.valueOf(iZza).length() + 28);
        sb.append(ProtectedFastSSH.s("㭠"));
        sb.append(iZza);
        sb.append(ProtectedFastSSH.s("㭡"));
        String string = sb.toString();
        int i2 = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(string);
        httpURLConnection.setConnectTimeout(iZza);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(iZza);
        String strS = ProtectedFastSSH.s("㭚");
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty(strS))) {
            httpURLConnection.setRequestProperty(strS, zze(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zzc(Context context) {
        if (this.zzj) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ProtectedFastSSH.s("㭢"));
        intentFilter.addAction(ProtectedFastSSH.s("㭣"));
        zzbjg.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmF)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new zzr(this, null), intentFilter);
        } else {
            zzy$$ExternalSyntheticApiModelOutline0.m(context.getApplicationContext(), new zzr(this, null), intentFilter, 4);
        }
        this.zzj = true;
        return true;
    }

    public final boolean zzd(Context context) {
        if (this.zzk) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ProtectedFastSSH.s("㭤"));
        zzbjg.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmF)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new zzp(this, null), intentFilter);
        } else {
            zzy$$ExternalSyntheticApiModelOutline0.m(context.getApplicationContext(), new zzp(this, null), intentFilter, 4);
        }
        this.zzk = true;
        return true;
    }

    public final String zze(Context context, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmS)).booleanValue()) {
            if (this.zzi != null) {
                return this.zzi;
            }
            String strZzak = zzak(context, str);
            if (str != null) {
                this.zzi = strZzak;
            }
            return strZzak;
        }
        synchronized (this.zzg) {
            String str2 = this.zzh;
            if (str2 != null) {
                return str2;
            }
            String strZzak2 = zzak(context, str);
            if (str != null) {
                this.zzh = strZzak2;
            }
            return strZzak2;
        }
    }

    public final ListenableFuture zzf(Uri uri) {
        return zzhcy.zzd(new zzo(uri), this.zzl);
    }

    public final void zzg(Context context, String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzt.zzc();
        bundle.putString(ProtectedFastSSH.s("㭥"), zzt());
        zzbix zzbixVar = zzbjg.zza;
        bundle.putString(ProtectedFastSSH.s("㭦"), TextUtils.join(ProtectedFastSSH.s("㬜"), com.google.android.gms.ads.internal.client.zzba.zzb().zze()));
        if (bundle.isEmpty()) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("㭧"));
        } else {
            String str3 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmh);
            if (!this.zze.getAndSet(true)) {
                this.zzd.set(zzac.zzc(context, str3, new zzm(this, context, str3)));
            }
            bundle.putAll((Bundle) this.zzd.get());
        }
        com.google.android.gms.ads.internal.client.zzay.zza();
        com.google.android.gms.ads.internal.util.client.zzf.zzD(context, str, ProtectedFastSSH.s("㭨"), bundle, true, new zzl(context, str));
    }

    public final boolean zzh(String str) {
        return zzae(str, this.zzb, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaV));
    }

    public final boolean zzi(String str) {
        return zzae(str, this.zzc, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaW));
    }

    final void zzl(Context context, String str, SharedPreferences sharedPreferences, String str2) {
        this.zzd.set(zzac.zzb(context, str));
    }

    final void zzm(boolean z) {
        this.zzf = z;
    }

    public final int zzn(Context context, Uri uri, Bundle bundle) {
        if (context == null) {
            zze.zza(ProtectedFastSSH.s("㭩"));
            return 3;
        }
        if (!(context instanceof Activity)) {
            zzah(context, uri);
            return 2;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzfI)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzfG)).booleanValue()) {
                zzah(context, uri);
                return 9;
            }
            zzbkh zzbkhVar = new zzbkh();
            zzbkhVar.zzd(new zzk(this, zzbkhVar, bundle, context, uri));
            zzbkhVar.zze((Activity) context);
            return 5;
        }
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(com.google.android.gms.ads.internal.zzt.zzn().zzb());
        zzai(builder, bundle);
        CustomTabsIntent customTabsIntentBuild = builder.build();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzfW)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzay.zza();
            if (com.google.android.gms.ads.internal.util.client.zzf.zzy()) {
                return 5;
            }
        }
        customTabsIntentBuild.intent.setPackage(zziom.zza(context));
        customTabsIntentBuild.launchUrl(context, uri);
        return 5;
    }
}
