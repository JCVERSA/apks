package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.ave;
import java.util.Iterator;

final class zzayy implements Runnable {
    final j0 zza;

    public zzayy(j0 j0Var) {
        this.zza = j0Var;
    }

    @Override
    public final void run() {
        j0 j0Var = this.zza;
        synchronized (j0Var.d) {
            if (j0Var.e && j0Var.f) {
                j0Var.e = false;
                int i = zze.zza;
                zzo.zze("App went background");
                Iterator it = j0Var.g.iterator();
                while (it.hasNext()) {
                    try {
                        ((ave) it.next()).zza(false);
                    } catch (Exception e) {
                        zzo.zzh("", e);
                    }
                }
            } else {
                int i2 = zze.zza;
                zzo.zze("App is still foreground");
            }
        }
    }
}
