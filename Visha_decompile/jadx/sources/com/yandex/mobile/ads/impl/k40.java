package com.yandex.mobile.ads.impl;

import android.media.DeniedByServerException;
import android.media.NotProvisionedException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
final class k40 {
    @DoNotInline
    public static boolean a(@Nullable Throwable th) {
        return th instanceof DeniedByServerException;
    }

    @DoNotInline
    public static boolean b(@Nullable Throwable th) {
        return th instanceof NotProvisionedException;
    }
}
