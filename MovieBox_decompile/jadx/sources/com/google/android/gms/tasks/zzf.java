package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

final class zzf<TResult, TContinuationResult> implements OnSuccessListener<TContinuationResult>, OnFailureListener, OnCanceledListener, zzq {
    private final Executor zza;
    private final Continuation zzb;
    private final zzw zzc;

    public zzf(@NonNull Executor executor, @NonNull Continuation continuation, @NonNull zzw zzwVar) {
        this.zza = executor;
        this.zzb = continuation;
        this.zzc = zzwVar;
    }

    @Override
    public final void onCanceled() {
        this.zzc.zzc();
    }

    @Override
    public final void onFailure(@NonNull Exception exc) {
        this.zzc.zza(exc);
    }

    @Override
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.zzc.zzb(tcontinuationresult);
    }

    @Override
    public final void zzc() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void zzd(@NonNull Task task) {
        this.zza.execute(new zze(this, task));
    }
}
