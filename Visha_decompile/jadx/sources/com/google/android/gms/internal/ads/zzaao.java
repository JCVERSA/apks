package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import defpackage.l6e;
import defpackage.n7g;
import defpackage.pjg;

public final class zzaao extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzaam zzd;
    private boolean zze;

    public zzaao(zzaam zzaamVar, SurfaceTexture surfaceTexture, boolean z, l6e l6eVar) {
        super(surfaceTexture);
        this.zzd = zzaamVar;
        this.zza = z;
    }

    public static zzaao zza(Context context, boolean z) {
        boolean z2 = true;
        if (z && !zzb(context)) {
            z2 = false;
        }
        n7g.f(z2);
        return new zzaam().zza(z ? zzb : 0);
    }

    public static synchronized boolean zzb(Context context) {
        int i;
        try {
            if (!zzc) {
                if (pjg.b(context)) {
                    i = pjg.c() ? 1 : 2;
                } else {
                    i = 0;
                }
                zzb = i;
                zzc = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzb != 0;
    }

    @Override
    public final void release() {
        super.release();
        zzaam zzaamVar = this.zzd;
        synchronized (zzaamVar) {
            try {
                if (!this.zze) {
                    zzaamVar.zzb();
                    this.zze = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
