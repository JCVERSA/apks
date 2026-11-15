package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzet;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.v3;
import com.google.android.gms.internal.ads.zzbyi;
import defpackage.wd8;
import java.util.List;

public class MobileAds {

    @NonNull
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    public static void disableMediationAdapterInitialization(@NonNull Context context) {
        zzet.zzf().zzp(context);
    }

    @Nullable
    public static InitializationStatus getInitializationStatus() {
        return zzet.zzf().zze();
    }

    @NonNull
    public static RequestConfiguration getRequestConfiguration() {
        return zzet.zzf().zzc();
    }

    @NonNull
    public static VersionInfo getVersion() {
        zzet.zzf();
        String[] strArrSplit = TextUtils.split("24.2.0", "\\.");
        if (strArrSplit.length != 3) {
            return new VersionInfo(0, 0, 0);
        }
        try {
            return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
        } catch (NumberFormatException unused) {
            return new VersionInfo(0, 0, 0);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(@NonNull Context context) {
        zzet.zzf().zzq(context, null, null);
    }

    public static void openAdInspector(@NonNull Context context, @NonNull OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzet.zzf().zzr(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(@NonNull Context context, @NonNull String str) {
        zzet.zzf().zzs(context, str);
    }

    public static boolean putPublisherFirstPartyIdEnabled(boolean z) {
        return zzet.zzf().zzz(z);
    }

    @Nullable
    public static CustomTabsSession registerCustomTabsSession(@NonNull Context context, @NonNull CustomTabsClient customTabsClient, @NonNull String str, @Nullable CustomTabsCallback customTabsCallback) {
        zzet.zzf();
        wd8.e("#008 Must be called on the main UI thread.");
        zzbyi zzbyiVarA = v3.a(context);
        if (zzbyiVarA == null) {
            zzo.zzg("Internal error, query info generator is null.");
            return null;
        }
        try {
            return (CustomTabsSession) ObjectWrapper.unwrap(zzbyiVarA.zze(ObjectWrapper.wrap(context), ObjectWrapper.wrap(customTabsClient), str, ObjectWrapper.wrap(customTabsCallback)));
        } catch (RemoteException | IllegalArgumentException e) {
            zzo.zzh("Unable to register custom tabs session. Error: ", e);
            return null;
        }
    }

    public static void registerRtbAdapter(@NonNull Class<? extends RtbAdapter> cls) {
        zzet.zzf().zzt(cls);
    }

    public static void registerWebView(@NonNull WebView webView) {
        zzet.zzf();
        wd8.e("#008 Must be called on the main UI thread.");
        if (webView == null) {
            zzo.zzg("The webview to be registered cannot be null.");
            return;
        }
        zzbyi zzbyiVarA = v3.a(webView.getContext());
        if (zzbyiVarA == null) {
            zzo.zzg("Internal error, query info generator is null.");
            return;
        }
        try {
            zzbyiVarA.zzj(ObjectWrapper.wrap(webView));
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    public static void setAppMuted(boolean z) {
        zzet.zzf().zzu(z);
    }

    public static void setAppVolume(float f) {
        zzet.zzf().zzv(f);
    }

    private static void setPlugin(String str) {
        zzet.zzf().zzw(str);
    }

    public static void setRequestConfiguration(@NonNull RequestConfiguration requestConfiguration) {
        zzet.zzf().zzx(requestConfiguration);
    }

    public static void startPreload(@NonNull Context context, @NonNull List<PreloadConfiguration> list, @NonNull PreloadCallback preloadCallback) {
        zzet.zzf().zzh(context, list, preloadCallback);
    }

    public static void initialize(@NonNull Context context, @NonNull OnInitializationCompleteListener onInitializationCompleteListener) {
        zzet.zzf().zzq(context, null, onInitializationCompleteListener);
    }
}
