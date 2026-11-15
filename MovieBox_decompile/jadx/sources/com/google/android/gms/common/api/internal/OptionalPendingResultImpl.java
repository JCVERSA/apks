package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;

@KeepForSdk
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {
    private final BasePendingResult zaa;

    public OptionalPendingResultImpl(@NonNull PendingResult pendingResult) {
        this.zaa = (BasePendingResult) pendingResult;
    }

    @Override
    public final void addStatusListener(@NonNull PendingResult.StatusListener statusListener) {
        this.zaa.addStatusListener(statusListener);
    }

    @Override
    @NonNull
    public final R await() {
        return (R) this.zaa.await();
    }

    @Override
    public final void cancel() {
        this.zaa.cancel();
    }

    @Override
    @NonNull
    public final R get() {
        if (this.zaa.isReady()) {
            return (R) this.zaa.await(0L, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    @Override
    public final boolean isCanceled() {
        return this.zaa.isCanceled();
    }

    @Override
    public final boolean isDone() {
        return this.zaa.isReady();
    }

    @Override
    public final void setResultCallback(@NonNull ResultCallback<? super R> resultCallback) {
        this.zaa.setResultCallback(resultCallback);
    }

    @Override
    @NonNull
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        return this.zaa.then(resultTransform);
    }

    @Override
    @NonNull
    public final R await(long j10, @NonNull TimeUnit timeUnit) {
        return (R) this.zaa.await(j10, timeUnit);
    }

    @Override
    public final void setResultCallback(@NonNull ResultCallback<? super R> resultCallback, long j10, @NonNull TimeUnit timeUnit) {
        this.zaa.setResultCallback(resultCallback, j10, timeUnit);
    }
}
