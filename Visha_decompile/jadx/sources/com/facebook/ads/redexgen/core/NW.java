package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public abstract class NW {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-121, -122, SocketData.CLAZZ_TYPE_END_SOCKET, -109, 125, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -120, 121, 123, -122, 117, -120, 125, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -109, 121, -122, -122, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -122, -109, SocketData.CLAZZ_TYPE_HEART_BEAT, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 120, 121, -109, 127, 121, SocketData.CLAZZ_TYPE_ERROR_CODE};
    }

    public static AdSettings.IntegrationErrorMode A00(C1635dL c1635dL) {
        AdSettings.IntegrationErrorMode integrationErrorMode = (AdSettings.IntegrationErrorMode) AdInternalSettings.sSettingsBundle.getSerializable(A01(0, 30, 9));
        if (integrationErrorMode == null) {
            integrationErrorMode = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
        }
        AdSettings.IntegrationErrorMode integrationErrorMode2 = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
        if (integrationErrorMode == integrationErrorMode2 && !A03(c1635dL)) {
            return AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CALLBACK_MODE;
        }
        return integrationErrorMode;
    }

    public static boolean A03(C1635dL c1635dL) {
        return (c1635dL.getApplicationInfo().flags & 2) != 0;
    }
}
