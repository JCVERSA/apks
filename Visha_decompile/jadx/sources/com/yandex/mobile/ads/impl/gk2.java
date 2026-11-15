package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.drm.WidevineUtil;
import java.util.Map;

public final class gk2 {
    @Nullable
    public static Pair<Long, Long> a(g40 g40Var) {
        long j;
        Map<String, String> mapQueryKeyStatus = g40Var.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        long j2 = C.TIME_UNSET;
        try {
            String str = mapQueryKeyStatus.get(WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING);
            j = str != null ? Long.parseLong(str) : -9223372036854775807L;
        } catch (NumberFormatException unused) {
        }
        Long lValueOf = Long.valueOf(j);
        try {
            String str2 = mapQueryKeyStatus.get(WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING);
            if (str2 != null) {
                j2 = Long.parseLong(str2);
            }
        } catch (NumberFormatException unused2) {
        }
        return new Pair<>(lValueOf, Long.valueOf(j2));
    }
}
