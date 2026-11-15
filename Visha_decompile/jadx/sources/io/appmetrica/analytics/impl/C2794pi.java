package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;

public final class C2794pi extends R4 {
    public C2794pi(O4 o4) {
        super(o4);
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6, @NonNull L4 l4) {
        Bundle bundle = c2408a6.m;
        this.a.k.a(new N4(bundle != null ? (ResultReceiver) bundle.getParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver") : null));
        return false;
    }
}
