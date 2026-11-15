package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.c5f;
import defpackage.cye;
import defpackage.d5f;
import defpackage.eff;
import defpackage.eme;
import defpackage.fme;
import defpackage.g8i;
import defpackage.im5;
import defpackage.t4f;
import defpackage.zef;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public final class s3 implements eme {
    public volatile t4f a;
    public final Context b;

    public s3(Context context) {
        this.b = context;
    }

    public static void b(s3 s3Var) {
        if (s3Var.a == null) {
            return;
        }
        s3Var.a.disconnect();
        Binder.flushPendingCommands();
    }

    @Override
    public final fme zza(c cVar) throws zzaps {
        Parcelable.Creator<zzbku> creator = zzbku.CREATOR;
        Map mapZzl = cVar.zzl();
        int size = mapZzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry entry : mapZzl.entrySet()) {
            strArr[i] = (String) entry.getKey();
            strArr2[i] = (String) entry.getValue();
            i++;
        }
        zzbku zzbkuVar = new zzbku(cVar.zzk(), strArr, strArr2);
        long jElapsedRealtime = zzv.zzC().elapsedRealtime();
        try {
            eff effVar = new eff();
            this.a = new t4f(this.b, zzv.zzu().zzb(), new c5f(this, effVar), new d5f(this, effVar));
            this.a.checkAvailabilityAndConnect();
            r3 r3Var = new r3(this, zzbkuVar);
            g8i g8iVar = zef.a;
            im5 im5VarO = j8.o(j8.n(effVar, r3Var, g8iVar), ((Integer) zzbd.zzc().b(cye.F4)).intValue(), TimeUnit.MILLISECONDS, zef.d);
            im5VarO.addListener(new zzbld(this), g8iVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) im5VarO.get();
            zze.zza("Http assets remote cache took " + (zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            zzbkw zzbkwVar = (zzbkw) new zzbuw(parcelFileDescriptor).zza(zzbkw.CREATOR);
            if (zzbkwVar == null) {
                return null;
            }
            if (zzbkwVar.zza) {
                throw new zzaps(zzbkwVar.zzb);
            }
            String[] strArr3 = zzbkwVar.zze;
            String[] strArr4 = zzbkwVar.zzf;
            if (strArr3.length != strArr4.length) {
                return null;
            }
            HashMap map = new HashMap();
            for (int i2 = 0; i2 < strArr3.length; i2++) {
                map.put(strArr3[i2], strArr4[i2]);
            }
            return new fme(zzbkwVar.zzc, zzbkwVar.zzd, map, zzbkwVar.zzg, zzbkwVar.zzh);
        } catch (InterruptedException | ExecutionException unused) {
            zze.zza("Http assets remote cache took " + (zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            zze.zza("Http assets remote cache took " + (zzv.zzC().elapsedRealtime() - jElapsedRealtime) + "ms");
            throw th;
        }
    }
}
