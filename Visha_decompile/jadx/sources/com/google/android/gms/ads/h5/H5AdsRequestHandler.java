package com.google.android.gms.ads.h5;

import android.content.Context;
import androidx.annotation.NonNull;
import defpackage.q4f;

public final class H5AdsRequestHandler {
    public final q4f a;

    public H5AdsRequestHandler(@NonNull Context context, @NonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.a = new q4f(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.a.a();
    }

    public boolean handleH5AdsRequest(@NonNull String str) {
        return this.a.b(str);
    }

    public boolean shouldInterceptRequest(@NonNull String str) {
        return q4f.c(str);
    }
}
