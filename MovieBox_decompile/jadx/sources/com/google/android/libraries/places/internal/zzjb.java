package com.google.android.libraries.places.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.libraries.places.api.net.PlacesStatusCodes;

public final class zzjb {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    public static int zza(@Nullable String str) {
        byte b10;
        if (str == null) {
            return 13;
        }
        switch (str) {
            case "REQUEST_DENIED":
                b10 = 3;
                break;
            case "INVALID_REQUEST":
                b10 = 4;
                break;
            case "ZERO_RESULTS":
                b10 = 1;
                break;
            case "OK":
                b10 = 0;
                break;
            case "NOT_FOUND":
                b10 = 5;
                break;
            case "OVER_QUERY_LIMIT":
                b10 = 2;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0 || b10 == 1) {
            return 0;
        }
        if (b10 == 2) {
            return 9010;
        }
        if (b10 == 3) {
            return PlacesStatusCodes.REQUEST_DENIED;
        }
        if (b10 != 4) {
            return b10 != 5 ? 13 : 9013;
        }
        return PlacesStatusCodes.INVALID_REQUEST;
    }

    @Nullable
    public static String zzb(@Nullable String str, @Nullable String str2) {
        return TextUtils.isEmpty(str2) ? str : str2;
    }
}
