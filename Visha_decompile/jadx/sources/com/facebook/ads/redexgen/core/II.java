package com.facebook.ads.redexgen.core;

import androidx.media3.common.PlaybackException;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

@MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
public abstract class II {
    public static byte[] A01;

    @MetaExoPlayerCustomization("Adding TYPE_xml")
    public static final int A02;
    public final int A00;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_SKIP_LIMIT_REACHED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-26, -37, -38, SocketData.CLAZZ_TYPE_FILE};
    }

    static {
        A04();
        A02 = AbstractC06244a.A0D(A03(0, 4, 3));
    }

    public II(int i) {
        this.A00 = i;
    }

    public static int A00(int i) {
        return 16777215 & i;
    }

    public static int A01(int i) {
        return (i >> 24) & 255;
    }

    public static String A02(int i) {
        return A03(0, 0, 9) + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        return A02(this.A00);
    }
}
