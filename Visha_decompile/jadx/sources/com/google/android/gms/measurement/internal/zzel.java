package com.google.android.gms.measurement.internal;

import android.util.Log;
import defpackage.nmh;
import defpackage.roh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

final class zzel implements Runnable {
    final int zza;
    final String zzb;
    final Object zzc;
    final Object zzd;
    final Object zze;
    final c zzf;

    public zzel(c cVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = cVar;
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override
    public final void run() {
        roh rohVarF = this.zzf.a.F();
        if (!rohVarF.m()) {
            Log.println(6, this.zzf.B(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c cVar = this.zzf;
        if (cVar.c == 0) {
            if (cVar.a.z().z()) {
                c cVar2 = this.zzf;
                cVar2.a.d();
                cVar2.c = 'C';
            } else {
                c cVar3 = this.zzf;
                cVar3.a.d();
                cVar3.c = 'c';
            }
        }
        c cVar4 = this.zzf;
        if (cVar4.d < 0) {
            cVar4.a.z().l();
            cVar4.d = 73000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.zza);
        c cVar5 = this.zzf;
        String strSubstring = "2" + cCharAt + cVar5.c + cVar5.d + StringUtils.PROCESS_POSTFIX_DELIMITER + c.z(true, this.zzb, this.zzc, this.zzd, this.zze);
        if (strSubstring.length() > 1024) {
            strSubstring = this.zzb.substring(0, 1024);
        }
        nmh nmhVar = rohVarF.d;
        if (nmhVar != null) {
            nmhVar.b(strSubstring, 1L);
        }
    }
}
