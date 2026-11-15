package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import defpackage.b0g;
import defpackage.c9g;
import defpackage.izf;
import defpackage.n4g;
import defpackage.o9g;
import defpackage.r4g;
import defpackage.r8g;
import defpackage.u0g;
import defpackage.w1g;
import defpackage.wzf;
import defpackage.z0g;

public class zzegn extends zzeho {
    private final c9g zza;

    public zzegn(izf izfVar, r8g r8gVar, b0g b0gVar, u0g u0gVar, z0g z0gVar, wzf wzfVar, r4g r4gVar, o9g o9gVar, w1g w1gVar, c9g c9gVar, n4g n4gVar) {
        super(izfVar, r8gVar, b0gVar, u0gVar, z0gVar, r4gVar, w1gVar, o9gVar, n4gVar, wzfVar);
        this.zza = c9gVar;
    }

    @Override
    public final void zzs(zzbvw zzbvwVar) {
        this.zza.p(zzbvwVar);
    }

    @Override
    public final void zzt(zzbwa zzbwaVar) throws RemoteException {
        this.zza.p(new zzbvw(zzbwaVar.zzf(), zzbwaVar.zze()));
    }

    @Override
    public final void zzu() throws RemoteException {
        this.zza.p(null);
    }

    @Override
    public final void zzv() throws RemoteException {
        this.zza.zzb();
    }

    @Override
    public final void zzw() {
        this.zza.zzb();
    }

    @Override
    public final void zzz() {
        this.zza.zzc();
    }
}
