package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbb;
import defpackage.asg;
import defpackage.msg;

public final class zzdwz extends zzbup {
    final asg zza;

    public zzdwz(asg asgVar) {
        this.zza = asgVar;
    }

    @Override
    public final void zze(zzbb zzbbVar) {
        this.zza.b.d(zzbbVar.zza());
    }

    @Override
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        asg asgVar = this.zza;
        asgVar.b.c(new msg(autoCloseInputStream, asgVar.f));
    }

    @Override
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbuy zzbuyVar) {
        this.zza.b.c(new msg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbuyVar));
    }
}
