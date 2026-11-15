package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;

public final class zabv extends zaag {
    private final GoogleApi zaa;

    public zabv(GoogleApi googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.zaa = googleApi;
    }

    @Override
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@NonNull T t10) {
        return (T) this.zaa.doRead(t10);
    }

    @Override
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@NonNull T t10) {
        return (T) this.zaa.doWrite(t10);
    }

    @Override
    public final Context getContext() {
        return this.zaa.getApplicationContext();
    }

    @Override
    public final Looper getLooper() {
        return this.zaa.getLooper();
    }

    @Override
    public final void zao(zada zadaVar) {
    }

    @Override
    public final void zap(zada zadaVar) {
    }
}
