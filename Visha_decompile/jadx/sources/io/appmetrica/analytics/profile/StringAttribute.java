package io.appmetrica.analytics.profile;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.A6;
import io.appmetrica.analytics.impl.Bk;
import io.appmetrica.analytics.impl.Bn;
import io.appmetrica.analytics.impl.C2843ri;
import io.appmetrica.analytics.impl.C3022ym;
import io.appmetrica.analytics.impl.C3047zm;
import io.appmetrica.analytics.impl.InterfaceC2624in;
import io.appmetrica.analytics.impl.InterfaceC2728n2;
import io.appmetrica.analytics.impl.J4;
import io.appmetrica.analytics.impl.Pn;

public class StringAttribute {
    private final InterfaceC2624in a;
    private final A6 b;

    public StringAttribute(String str, C3022ym c3022ym, Pn pn, InterfaceC2728n2 interfaceC2728n2) {
        this.b = new A6(str, pn, interfaceC2728n2);
        this.a = c3022ym;
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValue(@NonNull String str) {
        A6 a6 = this.b;
        return new UserProfileUpdate<>(new C3047zm(a6.c, str, this.a, a6.a, new J4(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueIfUndefined(@NonNull String str) {
        A6 a6 = this.b;
        return new UserProfileUpdate<>(new C3047zm(a6.c, str, this.a, a6.a, new Bk(a6.b)));
    }

    @NonNull
    public UserProfileUpdate<? extends Bn> withValueReset() {
        A6 a6 = this.b;
        return new UserProfileUpdate<>(new C2843ri(0, a6.c, a6.a, a6.b));
    }
}
