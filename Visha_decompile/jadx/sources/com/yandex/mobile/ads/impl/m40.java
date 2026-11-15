package com.yandex.mobile.ads.impl;

import android.media.MediaDrmResetException;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
final class m40 {
    @DoNotInline
    public static boolean a(@Nullable Throwable th) {
        return th instanceof MediaDrmResetException;
    }
}
