package com.google.android.gms.internal.ads;

import defpackage.z5g;
import java.lang.ref.WeakReference;

final class zzcxs implements Runnable {
    private final WeakReference zza;

    @Override
    public final void run() {
        i4 i4Var = (i4) this.zza.get();
        if (i4Var != null) {
            i4Var.E(new z5g() {
                @Override
                public final void zza(Object obj) {
                    ((d2g) obj).zza();
                }
            });
        }
    }
}
