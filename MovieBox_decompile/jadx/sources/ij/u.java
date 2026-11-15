package ij;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

public final class u {

    public static final u f62122a = new u();

    private static Boolean f62123b;

    private u() {
    }

    private final int b() {
        int[][] iArr = {new int[]{96, 254, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, new int[]{248, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 47, 126}, new int[]{Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 73, 255, 72}, new int[]{23, 82, 81, 99}};
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            for (int i12 : iArr[i11]) {
                i10 = (i10 << 1) ^ i12;
            }
        }
        return i10;
    }

    private final int c(String str) {
        int i10 = 0;
        int iC = ProgressionUtilKt.c(0, str.length() - 1, 2);
        if (iC < 0) {
            return 0;
        }
        int i11 = 0;
        while (true) {
            int i12 = i10 + 2;
            String strSubstring = str.substring(i10, i12);
            Intrinsics.g(strSubstring, "substring(...)");
            i11 = (i11 << 1) ^ Integer.parseInt(strSubstring, CharsKt.a(16));
            if (i10 == iC) {
                return i11;
            }
            i10 = i12;
        }
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        Boolean bool = f62123b;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = c(r.f62119a.a(context)) == b();
        f62123b = Boolean.valueOf(z10);
        return z10;
    }
}
