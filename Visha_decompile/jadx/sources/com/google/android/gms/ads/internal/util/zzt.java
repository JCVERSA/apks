package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzebe;
import defpackage.ejf;
import defpackage.ijf;
import defpackage.wjf;
import java.io.InputStream;
import java.util.Map;

@TargetApi(21)
public class zzt extends zzaa {
    public zzt() {
        super(null);
    }

    @Override
    @Nullable
    public final CookieManager zza(Context context) {
        com.google.android.gms.ads.internal.zzv.zzq();
        if (zzs.zzG()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            int i = zze.zza;
            zzo.zzh("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.zzv.zzp().w(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override
    public final WebResourceResponse zzb(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override
    public final ijf zzc(ejf ejfVar, o0 o0Var, boolean z, @Nullable zzebe zzebeVar) {
        return new wjf(ejfVar, o0Var, z, zzebeVar);
    }
}
