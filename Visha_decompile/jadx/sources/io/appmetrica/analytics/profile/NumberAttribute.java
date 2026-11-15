package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bk;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2843ri;
import io.appmetrica.analytics.impl.C2936vb;
import io.appmetrica.analytics.impl.D4;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Lb;
import io.appmetrica.analytics.impl.Xd;

public final class NumberAttribute {
    private final A6 a;

    public NumberAttribute(String str, C2936vb c2936vb, Lb lb) {
        this.a = new A6(str, c2936vb, lb);
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValue(double d) {
        return new UserProfileUpdate<>(new Xd(this.a.c, d, new C2936vb(), new J4(new Lb(new D4(100)))));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueIfUndefined(double d) {
        return new UserProfileUpdate<>(new Xd(this.a.c, d, new C2936vb(), new Bk(new Lb(new D4(100)))));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueReset() {
        return new UserProfileUpdate<>(new C2843ri(1, this.a.c, new C2936vb(), new Lb(new D4(100))));
    }
}
