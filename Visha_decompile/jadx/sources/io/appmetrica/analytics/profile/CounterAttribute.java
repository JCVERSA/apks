package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2433b6;
import io.appmetrica.analytics.impl.C2936vb;
import io.appmetrica.analytics.impl.Lb;

public final class CounterAttribute {
    private final A6 a;

    public CounterAttribute(String str, C2936vb c2936vb, Lb lb) {
        this.a = new A6(str, c2936vb, lb);
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withDelta(double d) {
        return new UserProfileUpdate<>(new C2433b6(this.a.c, d));
    }
}
