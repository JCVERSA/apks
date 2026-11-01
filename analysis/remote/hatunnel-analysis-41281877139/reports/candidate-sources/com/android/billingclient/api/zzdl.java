package com.android.billingclient.api;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.internal.play_billing.zzim;

final class zzdl {
    static Bundle zza(com.google.android.gms.internal.play_billing.zzes zzesVar, zzim zzimVar) {
        Bundle bundle = new Bundle();
        bundle.putByteArray(ProtectedFastSSH.s("㑷"), zzesVar.zzQ());
        bundle.putByteArray(ProtectedFastSSH.s("㑸"), zzimVar.zzQ());
        return bundle;
    }

    static com.google.android.gms.internal.play_billing.zzes zzb(String str, int i, Context context, String str2) {
        String strValueOf;
        com.google.android.gms.internal.play_billing.zzer zzerVarZza = com.google.android.gms.internal.play_billing.zzes.zza();
        zzerVarZza.zzd(ProtectedFastSSH.s("㑹"));
        zzerVarZza.zze(24);
        zzerVarZza.zzb(context.getPackageName());
        zzerVarZza.zzc(str2);
        try {
            strValueOf = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㑺"), ProtectedFastSSH.s("㑻"));
            strValueOf = null;
        }
        if (strValueOf != null) {
            zzerVarZza.zza(strValueOf);
        }
        return (com.google.android.gms.internal.play_billing.zzes) zzerVarZza.zzi();
    }
}
