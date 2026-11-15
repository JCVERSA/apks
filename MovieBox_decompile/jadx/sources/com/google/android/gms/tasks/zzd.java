package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

final class zzd implements zzq {
    private final Executor zza;
    private final Continuation zzb;
    private final zzw zzc;

    public zzd(@NonNull Executor executor, @NonNull Continuation continuation, @NonNull zzw zzwVar) {
        this.zza = executor;
        this.zzb = continuation;
        this.zzc = zzwVar;
    }

    @Override
    public final void zzc() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void zzd(@NonNull Task task) {
        this.zza.execute(new zzc(this, task));
    }
}
