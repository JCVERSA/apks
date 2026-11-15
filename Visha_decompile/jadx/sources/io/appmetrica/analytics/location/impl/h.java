package io.appmetrica.analytics.location.impl;

import android.location.Location;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;

public final class h implements Consumer {
    public final m a;

    public h(@NonNull m mVar) {
        this.a = mVar;
    }

    @Override
    public final void consume(@Nullable Location location) {
        if (location != null) {
            this.a.updateData(location);
        }
    }
}
