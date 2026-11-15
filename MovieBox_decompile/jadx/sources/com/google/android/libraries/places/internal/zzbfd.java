package com.google.android.libraries.places.internal;

import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

final class zzbfd implements zzbfw {
    private final zzbfw zza;
    private final Executor zzb;

    zzbfd(zzbfw zzbfwVar, zzayf zzayfVar, Executor executor) {
        this.zza = zzbfwVar;
        zzmt.zzc(executor, "appExecutor");
        this.zzb = executor;
    }

    @Override
    public final void close() {
        this.zza.close();
    }

    @Override
    public final zzbgf zza(SocketAddress socketAddress, zzbfv zzbfvVar, zzaym zzaymVar) {
        return new zzbfc(this, this.zza.zza(socketAddress, zzbfvVar, zzaymVar), zzbfvVar.zzg());
    }

    @Override
    public final ScheduledExecutorService zzb() {
        return this.zza.zzb();
    }
}
