package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzeu;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcak;
import com.google.android.gms.internal.ads.zzcfe;
import java.util.List;

public class MobileAds {
    public static final String ERROR_DOMAIN = ProtectedFastSSH.s("㟕");

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(Context context) {
        zzeu.zzb().zzm(context);
    }

    public static InitializationStatus getInitializationStatus() {
        return zzeu.zzb().zzl();
    }

    private static String getInternalVersion() {
        return zzeu.zzb().zzo();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzeu.zzb().zzp();
    }

    public static VersionInfo getVersion() {
        zzeu.zzb();
        String[] strArrSplit = TextUtils.split(ProtectedFastSSH.s("㟏"), ProtectedFastSSH.s("㟐"));
        if (strArrSplit.length != 3) {
            return new VersionInfo(0, 0, 0);
        }
        try {
            return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
        } catch (NumberFormatException unused) {
            return new VersionInfo(0, 0, 0);
        }
    }

    public static void initialize(Context context) {
        zzeu.zzb().zzc(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzeu.zzb().zzc(context, null, onInitializationCompleteListener);
    }

    public static void openAdInspector(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzeu.zzb().zzn(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(Context context, String str) {
        zzeu.zzb().zzj(context, str);
    }

    public static boolean putPublisherFirstPartyIdEnabled(boolean z) {
        return zzeu.zzb().zzr(z);
    }

    public static CustomTabsSession registerCustomTabsSession(Context context, CustomTabsClient customTabsClient, String str, CustomTabsCallback customTabsCallback) {
        zzeu.zzb();
        Preconditions.checkMainThread(ProtectedFastSSH.s("㟑"));
        zzcfe zzcfeVarZza = zzcak.zza(context);
        if (zzcfeVarZza == null) {
            zzo.zzf(ProtectedFastSSH.s("㟒"));
            return null;
        }
        try {
            return (CustomTabsSession) ObjectWrapper.unwrap(zzcfeVarZza.zzm(ObjectWrapper.wrap(context), ObjectWrapper.wrap(customTabsClient), str, ObjectWrapper.wrap(customTabsCallback)));
        } catch (RemoteException | IllegalArgumentException e) {
            zzo.zzg(ProtectedFastSSH.s("㟓"), e);
            return null;
        }
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        zzeu.zzb().zzk(cls);
    }

    public static void registerWebView(WebView webView) {
        zzeu.zzb();
        Preconditions.checkMainThread(ProtectedFastSSH.s("㟑"));
        if (webView == null) {
            zzo.zzf(ProtectedFastSSH.s("㟔"));
            return;
        }
        zzcfe zzcfeVarZza = zzcak.zza(webView.getContext());
        if (zzcfeVarZza == null) {
            zzo.zzf(ProtectedFastSSH.s("㟒"));
            return;
        }
        try {
            zzcfeVarZza.zzj(ObjectWrapper.wrap(webView));
        } catch (RemoteException e) {
            zzo.zzg("", e);
        }
    }

    public static void setAppMuted(boolean z) {
        zzeu.zzb().zzh(z);
    }

    public static void setAppVolume(float f) {
        zzeu.zzb().zzf(f);
    }

    private static void setPlugin(String str) {
        zzeu.zzb().zzs(str);
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        zzeu.zzb().zzq(requestConfiguration);
    }

    @Deprecated
    public static void startPreload(Context context, List<PreloadConfiguration> list, PreloadCallback preloadCallback) {
        zzeu.zzb().zze(context, list, preloadCallback);
    }

    private static void stop() {
        zzeu.zzb().zzd();
    }
}
