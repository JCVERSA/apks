package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;
import android.util.Log;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.dynamicloading.FlashPreferences;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import org.mozilla.classfile.ByteCode;

public final class TK {
    public static boolean A00;
    public static boolean A01;
    public static byte[] A02;
    public static String[] A03 = {"i0FOsf0o9fpBvAlaEaGgnCYFRbNnwBKJ", "ZsBa2nEfyhltTo", "ZG6g5nWnUhxh", "6zjosiDwJWE47kuMvKAUCDrCWUeR8P3q", "Gh89HIHHDqfPtiuASbXLVil627eRz", "Lsbp3nhJR34oAmuvtJAouWbaxC4Ny9OM", "s0Y", "C"};
    public static final AtomicBoolean A04;
    public static final AtomicBoolean A05;
    public static final AtomicBoolean A06;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 33);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-86, -93, -92, -39, -85, -43, -92, -85, -54, -58, -59, -7, -24, -19, -23, -14, -25, -23, -46, -23, -8, -5, -13, -10, -17, -88, -103, -96, 117, -66, -61, -66, -55, -66, -74, -63, -66, -49, -74, -55, -66, -60, -61, 117, -56, -55, -74, -57, -55, -70, -71, -84, -67, -60, 121, -48, -70, -52, 121, -70, -59, -53, -66, -70, -67, -46, 121, -62, -57, -62, -51, -62, -70, -59, -62, -45, -66, -67, 122, 121, -84, -60, -62, -55, -55, -62, -57, -64, -121, -90, -68, -62, 109, -79, -68, -69, 116, -63, 109, -80, -82, -71, -71, 109, SocketData.CLAZZ_TYPE_FILE, -62, -79, -74, -78, -69, -80, -78, -101, -78, -63, -60, -68, -65, -72, SocketData.CLAZZ_TYPE_FILE, -79, -64, 123, -74, -69, -74, -63, -74, -82, -71, -74, -57, -78, 117, 118, 123, 109, -96, -68, -70, -78, 109, -77, -62, -69, -80, -63, -74, -68, -69, -82, -71, -74, -63, -58, 109, -70, -82, -58, 109, -69, -68, -63, 109, -60, -68, -65, -72, 109, -67, -65, -68, -67, -78, -65, -71, -58, 123, -120, -105, -112, -58, -52, -63, -45, -56, 0, 6, -5, 13, 2, -7, -3, 9, 8, 0, 3, 1, -42, -44, -35, -44, -31, -40, -46, -3, 2, -3, 8, -3, -11, 0, -3, 14, -7, -51, -46, -51, -40, -51, -59, -48, -51, -34, -55, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, -124, -46, -45, -40, -124, -57, -59, -48, -48, -55, -56, -110, 1, -10, 8, 9, -12, 7, -6, 8, 10, 1, 9};
    }

    static {
        A03();
        A06 = new AtomicBoolean();
        A04 = new AtomicBoolean();
        A05 = new AtomicBoolean();
    }

    public static YU A00() {
        return new YU();
    }

    public static YP A01(C1609cu c1609cu) {
        return new YP(c1609cu);
    }

    public static void A04(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        XJ.A01.execute(new YV(initListener, initResult));
    }

    public static void A06(C1609cu c1609cu) {
        if (U9.A0P(c1609cu) && !A05.getAndSet(true)) {
            try {
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = new C1238Sl(Thread.getDefaultUncaughtExceptionHandler(), c1609cu, new YL());
                Thread.setDefaultUncaughtExceptionHandler(defaultUncaughtExceptionHandler);
            } catch (Exception e) {
                c1609cu.A08().AAy(A02(198, 7, 78), AbstractC1248Sv.A1X, new C1249Sw(e));
            }
        }
    }

    public static void A07(C1609cu c1609cu) {
        A0H(c1609cu, null, null, 3);
    }

    public static void A08(C1609cu c1609cu) {
        A0H(c1609cu, null, null, 3);
    }

    public static void A09(C1609cu c1609cu) {
        if (U7.A2H(c1609cu)) {
            A0F(c1609cu, 0);
        }
        if (U7.A2Q(c1609cu)) {
            A0B(c1609cu);
        }
    }

    public static void A0A(C1609cu c1609cu) {
        if (U7.A2I(c1609cu)) {
            String[] strArr = A03;
            if (strArr[1].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[1] = "XjvPwbQrSqkAxC";
            strArr2[6] = "skO";
            A0G(c1609cu, null, 3);
        }
    }

    public static void A0B(C1609cu c1609cu) {
        XU.A06.execute(new C1385Yg(c1609cu));
    }

    public static void A0C(C1609cu c1609cu) {
        AbstractC1111Nl.A02(c1609cu);
        C1242Sp.A0C(c1609cu, new YK(c1609cu), new C1453aO(), BuildConfigApi.isDebug());
        c1609cu.A0A();
        A0D(c1609cu);
    }

    public static void A0D(C1609cu c1609cu) {
        if (ProcessUtils.isRemoteRenderingProcess()) {
            return;
        }
        SharedPreferences sharedPreferences = FlashPreferences.getSharedPreferences(c1609cu);
        String string = sharedPreferences.getString(A02(ByteCode.INVOKEDYNAMIC, 12, 121), null);
        String string2 = sharedPreferences.getString(A02(239, 11, 116), null);
        if (string != null && string2 != null) {
            InterfaceC1247Su interfaceC1247SuA08 = c1609cu.A08();
            C1249Sw c1249Sw = new C1249Sw(string2);
            String flashConfig = A02(181, 5, 63);
            interfaceC1247SuA08.ABR(flashConfig, 3701, c1249Sw);
        }
    }

    public static void A0F(C1609cu c1609cu, int i) {
        SP.A01(c1609cu);
        if (A04.getAndSet(true)) {
            return;
        }
        if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isDebuggerOn()) {
            VF.A02();
        }
        A06(c1609cu);
        AbstractC1325Vw.A00(U7.A0q(c1609cu), BuildConfigApi.isDebug(), A00(), A01(c1609cu));
        S0.A03(U7.A04(c1609cu));
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            C1732ev.A09(new YN(c1609cu));
        }
        if (i == 3) {
            Log.e(A02(8, 17, 99), A02(89, 89, 44));
            c1609cu.A08().ABR(A02(178, 3, 6), AbstractC1248Sv.A0R, new C1249Sw(A02(IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 24, 67)));
        }
        ActivityUtils.A04(c1609cu, AudienceNetworkActivity.class);
        XU.A05(c1609cu);
        C1281Ud.A05(c1609cu);
        MW.A01(c1609cu);
        if (U7.A16(c1609cu)) {
            AbstractC1195Qt.A00(c1609cu);
        }
        if (U7.A1u(c1609cu)) {
            C1346Wt.A02().A8s(c1609cu);
        }
    }

    public static void A0G(C1609cu c1609cu, AudienceNetworkAds.InitListener initListener, int i) {
        SP.A01(c1609cu);
        boolean z = false;
        synchronized (TK.class) {
            boolean execute = A00;
            if (!execute) {
                if (i != 1 && i != 2) {
                    if (i == 3) {
                        boolean execute2 = A01;
                        if (!execute2) {
                            A01 = true;
                            z = true;
                        }
                    }
                } else {
                    A00 = true;
                    z = true;
                }
            }
        }
        if (z) {
            A0F(c1609cu, i);
            XU.A08.execute(new ZW(c1609cu, initListener));
        } else {
            if (i != 1) {
                return;
            }
            String strA02 = A02(51, 38, 56);
            if (initListener != null) {
                A04(initListener, new TJ(true, strA02));
            } else {
                Log.w(A02(8, 17, 99), strA02);
            }
        }
    }

    public static void A0H(C1609cu c1609cu, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, int i) {
        VF.A05(A02(IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, 10, 115), A02(25, 26, 52), A02(0, 8, 82));
        C1732ev.A06();
        A0G(c1609cu, initListener, i);
    }

    public static synchronized boolean A0I() {
        return A00;
    }
}
