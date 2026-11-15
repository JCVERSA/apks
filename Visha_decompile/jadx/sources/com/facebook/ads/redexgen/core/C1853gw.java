package com.facebook.ads.redexgen.core;

import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public final class C1853gw implements InterfaceC1102Nc {
    public static byte[] A0A;
    public static final String A0B;
    public long A02;
    public RewardedVideoAd A03;
    public AbstractC1088Mo A04;
    public C06936r A05;
    public final C1635dL A07;
    public final S2SRewardedVideoAdExtendedListener A08;
    public final C1843gm A09;
    public int A00 = 0;
    public boolean A06 = false;
    public long A01 = -1;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0A = new byte[]{116, -95, 83, -108, -105, 83, -97, -94, -108, -105, 83, -100, -90, 83, -108, -97, -91, -104, -108, -105, -84, 83, -100, -95, 83, -93, -91, -94, -102, -91, -104, -90, -90, 97, 83, SocketData.CLAZZ_TYPE_CODE, -94, -88, 83, -90, -101, -94, -88, -97, -105, 83, -86, -108, -100, -89, 83, -103, -94, -91, 83, -108, -105, 127, -94, -108, -105, -104, -105, 91, 92, 83, -89, -94, 83, -107, -104, 83, -106, -108, -97, -97, -104, -105, -60, -15, -15, -18, -15, -97, -21, -18, -32, -29, -24, -19, -26, -97, -15, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -10, -32, -15, -29, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -29, -97, -11, -24, -29, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -18, -97, -32, -29, -19, -4, -11};
    }

    static {
        A0A();
        A0B = C1853gw.class.getSimpleName();
    }

    public C1853gw(C1843gm c1843gm, InterfaceC1118Ns interfaceC1118Ns, String str) {
        this.A09 = c1843gm;
        this.A07 = c1843gm.A0B;
        this.A08 = new C1840gj(str, interfaceC1118Ns, this, c1843gm);
    }

    private void A0C(String str, AdExperienceType adExperienceType, boolean z) {
        String extraHints;
        if (!this.A06 && this.A05 != null) {
            Log.w(A0B, A09(0, 78, 37));
        }
        A0D(false);
        this.A06 = false;
        NT nt = new NT(this.A09.A0D, V6.A07, AdPlacementType.REWARDED_VIDEO, V4.A08, 1, this.A09.A0C);
        nt.A08(z);
        if (U7.A2Y(this.A07) && (extraHints = WR.A02(this.A07, this.A09.A06)) != null) {
            this.A09.A06 = extraHints;
        }
        nt.A06(this.A09.A06);
        nt.A07(this.A09.A07);
        this.A05 = new C06936r(this.A09.A0B, nt);
        this.A05.A0S(new C1855gy(this));
        this.A05.A0X(str, adExperienceType);
    }

    public void A0D(boolean z) {
        if (this.A05 != null) {
            this.A05.A0S(new C1854gx(this));
            this.A05.A0Y(z);
            this.A05.A0K();
            this.A05 = null;
        }
    }

    public final long A0F() {
        if (this.A05 != null) {
            return this.A05.A0G();
        }
        return -1L;
    }

    public final C1843gm A0G() {
        return this.A09;
    }

    public final C1635dL A0H() {
        return this.A07;
    }

    public final void A0I(RewardData rewardData) {
        this.A09.A03 = rewardData;
        if (this.A06 && this.A05 != null) {
            this.A05.A0a(rewardData);
        }
    }

    public final void A0J(String str, AdExperienceType adExperienceType, boolean z) {
        this.A01 = System.currentTimeMillis();
        try {
            A0C(str, adExperienceType, z);
        } catch (Exception e) {
            Log.e(A0B, A09(78, 31, 113), e);
            this.A09.A0B.A08().AAy(A09(109, 3, 126), AbstractC1248Sv.A0b, new C1249Sw(e));
            AdError adErrorInternalError = AdError.internalError(2004);
            this.A09.A0B.A0F().A3F(XG.A01(this.A01), adErrorInternalError.getErrorCode(), adErrorInternalError.getErrorMessage());
            this.A08.onError(this.A09.A6c(), adErrorInternalError);
        }
    }

    public final boolean A0K() {
        return this.A05 == null || this.A05.A0Z();
    }

    public final boolean A0L() {
        return this.A06;
    }

    public final boolean A0M(int i, long j) {
        if (!this.A06) {
            this.A08.onError(this.A09.A6c(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            return false;
        }
        if (this.A05 != null) {
            this.A02 = System.currentTimeMillis();
            this.A05.A08.A02(i);
            this.A05.A08.A03(j);
            this.A05.A0M();
            this.A06 = false;
            return true;
        }
        this.A06 = false;
        return false;
    }

    @Override
    public final void destroy() {
        A0D(true);
    }
}
