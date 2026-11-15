package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;

public final class C3015yf implements Qn, D8 {
    @Override
    public final int a(@NonNull M8 m8) {
        return 2;
    }

    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        return TextUtils.isEmpty(r8.b) ? new byte[0] : Base64.decode(r8.b, 0);
    }
}
