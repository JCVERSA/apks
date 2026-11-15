package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;

public final class C2841rg implements T7 {
    public final InterfaceC2731n5 a;

    public C2841rg(@NonNull InterfaceC2731n5 interfaceC2731n5) {
        this.a = interfaceC2731n5;
    }

    @Override
    public final C2817qg a(@NonNull Context context, @NonNull C2532f5 c2532f5, @NonNull G4 g4) {
        return new C2817qg(context, c2532f5, g4, this.a, new C2557g5(), C2647jl.a());
    }

    @NonNull
    @VisibleForTesting
    public final InterfaceC2731n5 a() {
        return this.a;
    }
}
