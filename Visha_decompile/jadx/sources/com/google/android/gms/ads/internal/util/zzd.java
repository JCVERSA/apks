package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.cff;
import defpackage.im5;
import defpackage.lgf;
import defpackage.vze;

public final class zzd {
    public static void zza(Context context) {
        Object obj = com.google.android.gms.ads.internal.util.client.zzl.b;
        if (((Boolean) vze.a.e()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 0 || com.google.android.gms.ads.internal.util.client.zzl.zzl()) {
                    return;
                }
                im5 im5VarZzb = new lgf(context).zzb();
                int i = zze.zza;
                zzo.zzi("Updating ad debug logging enablement.");
                cff.a(im5VarZzb, "AdDebugLogUpdater.updateEnablement");
            } catch (Exception e) {
                zzo.zzk("Fail to determine debug setting.", e);
            }
        }
    }
}
