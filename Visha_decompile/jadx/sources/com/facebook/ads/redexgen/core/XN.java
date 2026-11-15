package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.bridge.fbsdk.FBLoginASID;
import com.facebook.ads.internal.bridge.gms.AdvertisingId;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;

public final class XN implements SV {
    public static byte[] A01;
    public final SQ A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-20, 25, 15, 29, 26, 20, 15};
    }

    public XN(SQ sq) {
        this.A00 = sq;
    }

    @Override
    public final String A71() {
        return null;
    }

    @Override
    public final String A7y() {
        return VZ.A02(this.A00);
    }

    @Override
    public final String A7z() {
        return FBLoginASID.getFBLoginASID();
    }

    @Override
    public final String A8N() {
        return AdInternalSettings.getMediationService();
    }

    @Override
    public final String A8U() {
        return null;
    }

    @Override
    public final SU A8p() {
        AdvertisingId advertisingIdInfoDirectly = AdvertisingId.getAdvertisingIdInfoDirectly(this.A00);
        if (advertisingIdInfoDirectly == null) {
            return null;
        }
        return new XV(this, advertisingIdInfoDirectly);
    }

    @Override
    public final String A9I() {
        return AdInternalSettings.getUrlPrefix();
    }

    @Override
    public final String A9K() {
        return A00(0, 7, 114);
    }

    @Override
    public final String A9L() {
        return BuildConfigApi.getVersionName(this.A00);
    }

    @Override
    public final boolean AAF() {
        return BuildConfigApi.isDebug();
    }
}
