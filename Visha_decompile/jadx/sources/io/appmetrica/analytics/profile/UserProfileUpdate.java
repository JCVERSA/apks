package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.AbstractC3038zd;
import io.appmetrica.analytics.impl.Bn;

public class UserProfileUpdate<T extends Bn> {
    private final Bn a;

    public UserProfileUpdate(AbstractC3038zd abstractC3038zd) {
        this.a = abstractC3038zd;
    }

    @NonNull
    public T getUserProfileUpdatePatcher() {
        return (T) this.a;
    }
}
