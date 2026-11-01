package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzbil;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzclm;
import com.google.android.gms.internal.ads.zzclx;
import com.google.android.gms.internal.ads.zzcnb;
import com.google.android.gms.internal.ads.zzelp;

public class zzv extends zzu {
    @Override
    public final zzclx zzb(zzclm zzclmVar, zzbif zzbifVar, boolean z, zzelp zzelpVar) {
        return new zzcnb(zzclmVar, zzbifVar, z, zzelpVar);
    }

    @Override
    public final zzbil.zzq zzd(Context context, TelephonyManager telephonyManager) {
        com.google.android.gms.ads.internal.zzt.zzc();
        if (zzs.zzD(context, ProtectedFastSSH.s("㭰")) && zzy$$ExternalSyntheticApiModelOutline0.m(telephonyManager)) {
            return zzbil.zzq.zzb;
        }
        return zzbil.zzq.zza;
    }

    @Override
    public final void zze(Context context, String str, String str2) {
        zzy$$ExternalSyntheticApiModelOutline0.m516m$1();
        NotificationChannel notificationChannelM = ComponentDialog$$ExternalSyntheticApiModelOutline0.m(ProtectedFastSSH.s("㭱"), ProtectedFastSSH.s("㭲"), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjS)).intValue());
        zzy$$ExternalSyntheticApiModelOutline0.m(notificationChannelM, false);
        ComponentDialog$$ExternalSyntheticApiModelOutline0.m((NotificationManager) context.getSystemService(NotificationManager.class), notificationChannelM);
    }

    @Override
    public final boolean zzf(Context context, String str) {
        NotificationChannel notificationChannelM = ComponentDialog$$ExternalSyntheticApiModelOutline0.m((NotificationManager) context.getSystemService(NotificationManager.class), ProtectedFastSSH.s("㭱"));
        return notificationChannelM != null && ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationChannelM) == 0;
    }

    @Override
    public final Intent zzg(Activity activity) {
        Intent intent = new Intent();
        intent.setAction(ProtectedFastSSH.s("㭳"));
        intent.putExtra(ProtectedFastSSH.s("㭴"), activity.getPackageName());
        return intent;
    }
}
