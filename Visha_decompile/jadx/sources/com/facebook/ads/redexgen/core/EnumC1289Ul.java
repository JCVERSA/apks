package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAdBase;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import javax.annotation.Nullable;

public enum EnumC1289Ul {
    A05(0, NativeAdBase.MediaCacheFlag.NONE),
    A04(1, NativeAdBase.MediaCacheFlag.ALL);

    public static byte[] A02;
    public final long A00;
    public final NativeAdBase.MediaCacheFlag A01;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{117, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_END_SOCKET, -123, -122, -123, 124};
    }

    static {
        A02();
    }

    EnumC1289Ul(long j, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = j;
        this.A01 = mediaCacheFlag;
    }

    @Nullable
    public static EnumC1289Ul A00(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        for (EnumC1289Ul enumC1289Ul : values()) {
            if (enumC1289Ul.A01 == mediaCacheFlag) {
                return enumC1289Ul;
            }
        }
        return null;
    }
}
