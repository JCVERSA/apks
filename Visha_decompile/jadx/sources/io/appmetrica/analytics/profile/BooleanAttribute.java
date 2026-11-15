package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bk;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2828r3;
import io.appmetrica.analytics.impl.C2843ri;
import io.appmetrica.analytics.impl.InterfaceC2728n2;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Pn;

public class BooleanAttribute {
    private final A6 a;

    public BooleanAttribute(String str, Pn pn, InterfaceC2728n2 interfaceC2728n2) {
        this.a = new A6(str, pn, interfaceC2728n2);
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValue(boolean z) {
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C2828r3(a6.c, z, a6.a, new J4(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueIfUndefined(boolean z) {
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C2828r3(a6.c, z, a6.a, new Bk(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueReset() {
        A6 a6 = this.a;
        return new UserProfileUpdate<>(new C2843ri(3, a6.c, a6.a, a6.b));
    }
}
