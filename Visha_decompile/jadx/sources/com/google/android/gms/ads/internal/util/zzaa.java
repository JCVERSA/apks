package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzbbn$zzq;
import com.google.android.gms.internal.ads.zzebe;
import defpackage.ejf;
import defpackage.ijf;
import java.io.InputStream;
import java.util.Map;

public class zzaa {
    public zzaa(zzz zzzVar) {
    }

    @Nullable
    public CookieManager zza(Context context) {
        throw null;
    }

    public WebResourceResponse zzb(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        throw null;
    }

    public ijf zzc(ejf ejfVar, o0 o0Var, boolean z, @Nullable zzebe zzebeVar) {
        throw null;
    }

    public boolean zzd(Activity activity, Configuration configuration) {
        return false;
    }

    @Nullable
    public Intent zzf(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", activity.getPackageName());
        intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        return intent;
    }

    public zzbbn$zzq zzg(Context context, TelephonyManager telephonyManager) {
        return zzbbn$zzq.ENUM_UNKNOWN;
    }

    public void zzh(Context context, String str, String str2) {
    }

    public boolean zzi(Context context, String str) {
        return false;
    }

    public int zzj(AudioManager audioManager) {
        return 0;
    }

    public void zzl(Activity activity) {
    }

    public int zzm(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }
}
