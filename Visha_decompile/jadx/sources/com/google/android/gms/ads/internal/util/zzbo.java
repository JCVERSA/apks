package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzaor;
import defpackage.cye;
import defpackage.d3f;
import defpackage.eff;
import defpackage.hme;
import defpackage.im5;
import defpackage.k4f;
import defpackage.kne;
import defpackage.x1f;
import defpackage.yx0;
import java.util.Map;

public final class zzbo {
    public static hme a;
    public static final Object b = new Object();

    /* JADX WARN: Code duplicated, block: B:16:0x0036 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:7:0x0010, B:9:0x0014, B:11:0x001d, B:13:0x002f, B:17:0x003b, B:16:0x0036, B:18:0x003d), top: B:22:0x0010 }] */
    public zzbo(Context context) {
        hme hmeVarA;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (b) {
            try {
                if (a == null) {
                    cye.a(context);
                    if (yx0.a()) {
                        hmeVarA = kne.a(context, null);
                    } else {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.D4)).booleanValue()) {
                            hmeVarA = zzaz.zzb(context);
                        } else {
                            hmeVarA = kne.a(context, null);
                        }
                    }
                    a = hmeVarA;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final im5 zza(String str) {
        eff effVar = new eff();
        a.a(new zzbm(str, null, effVar));
        return effVar;
    }

    public final im5 zzb(int i, String str, @Nullable Map map, @Nullable byte[] bArr) {
        k4f k4fVar = new k4f(null);
        x1f x1fVar = new x1f(this, str, k4fVar);
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        d3f d3fVar = new d3f(this, i, str, k4fVar, x1fVar, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            try {
                zzlVar.zzd(str, ShareTarget.METHOD_GET, d3fVar.zzl(), d3fVar.zzx());
            } catch (zzaor e) {
                String message = e.getMessage();
                int i2 = zze.zza;
                zzo.zzj(message);
            }
        }
        a.a(d3fVar);
        return k4fVar;
    }
}
