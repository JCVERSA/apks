package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class Am implements Qn {
    @Override
    @NonNull
    public final byte[] a(@NonNull R8 r8, @NonNull C2469ch c2469ch) {
        return !TextUtils.isEmpty(r8.b) ? StringUtils.getUTF8Bytes(r8.b) : new byte[0];
    }
}
