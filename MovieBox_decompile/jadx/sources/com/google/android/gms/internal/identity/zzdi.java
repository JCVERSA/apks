package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzdi implements zzdr {
    final ListenerHolder zza;
    final TaskCompletionSource zzb;

    zzdi(zzdz zzdzVar, ListenerHolder listenerHolder, TaskCompletionSource taskCompletionSource) {
        this.zza = listenerHolder;
        this.zzb = taskCompletionSource;
    }

    @Override
    public final ListenerHolder zza() {
        return this.zza;
    }

    @Override
    public final void zzb(ListenerHolder listenerHolder) {
        throw new IllegalStateException();
    }

    @Override
    public final void zzc() {
        this.zzb.trySetResult(null);
    }
}
