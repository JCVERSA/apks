package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;

public final class NH {
    public static byte[] A05;
    public static String[] A06 = {"SwW", "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh", "cNvS8LZQYgXEdOP85dYAvAy4C3J", "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb", "tKedy3gZYTLe", "bmz0vq", "hvIAQTYE0cdtFIL2", "tj9oqRvQS19ndgZTuA"};
    public SF A00;
    public EnumC1424Zt A01 = EnumC1424Zt.A05;
    public ArrayList<C1546bt> A02 = new ArrayList<>();
    public final AbstractC1088Mo A03;
    public final NG A04;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-35, 23, 35, 28, 27, -66, -29, -23, -38, -25, -29, -42, -31, -107, -70, -25, -25, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -25, -107, -89, -91, -91, -85, -107, -20, -34, -23, -35, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -22, -23, -107, -42, -107, -21, -42, -31, -34, -39, -107, -74, -39, -66, -29, -37, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -93, 21, 24, 19, 24, 21, 40, 21, 19, 22, 41, 34, 24, 32, 25, -29, -14, -21, -36, -31, -38, -30, -25, -40, -23, -38, -21, -38, -26, -20, 18, 23, 16, 24, 29, 20, 19, -16, 19, -13, 16, 35, 16, -15, 36, 29, 19, 27, 20, Utf8.REPLACEMENT_BYTE, 68, 74, 59, 72, 73, 74, Utf8.REPLACEMENT_BYTE, 74, Utf8.REPLACEMENT_BYTE, 55, 66};
    }

    static {
        A06();
    }

    public NH(C1635dL c1635dL, NU nu, NG ng, String str) {
        JSONObject dataObject = nu.A03();
        this.A03 = A01(c1635dL, nu, str, dataObject);
        this.A04 = ng;
    }

    private AdError A00(C1635dL c1635dL, AbstractC1910hy abstractC1910hy) {
        if (abstractC1910hy == null || abstractC1910hy.A27().isEmpty()) {
            c1635dL.A08().AAy(A04(62, 3, 33), AbstractC1248Sv.A0Z, new C1249Sw(A04(5, 43, 20)));
            return AdError.internalError(2006);
        }
        return null;
    }

    public static AbstractC1088Mo A01(C1635dL c1635dL, NU nu, String str, JSONObject jSONObject) {
        AbstractC1088Mo abstractC1088MoA00 = null;
        if (jSONObject.has(A04(65, 12, 24))) {
            try {
                abstractC1088MoA00 = C1908hw.A01(jSONObject, c1635dL, true);
                abstractC1088MoA00.A1L(true);
                abstractC1088MoA00.A1I(A04(96, 12, 117));
            } catch (JSONException unused) {
            }
        }
        if (abstractC1088MoA00 == null) {
            abstractC1088MoA00 = AnonymousClass77.A00(jSONObject, c1635dL);
        }
        abstractC1088MoA00.A1H(str);
        TF tfA01 = nu.A01();
        if (tfA01 != null) {
            abstractC1088MoA00.A1D(tfA01.A06());
        }
        return abstractC1088MoA00;
    }

    private SF A03(C1635dL c1635dL) {
        return this.A00 != null ? this.A00 : new SF(c1635dL);
    }

    private void A08(C1635dL c1635dL, AnonymousClass77 anonymousClass77) {
        NB playableData = anonymousClass77.A20().A0H().A07();
        A0B(playableData != null ? playableData.A0B() : EnumC1424Zt.A05);
        C1892hb c1892hb = new C1892hb(this);
        SF sf = new SF(c1635dL);
        boolean z = U7.A2A(c1635dL) && C1207Rf.A0A(anonymousClass77.A1C());
        if (z) {
            C1207Rf unifiedAssetsLoader = new C1207Rf(sf, anonymousClass77.A1C(), anonymousClass77.A0v(), anonymousClass77.A17(), z, new C1891ha(this));
            sf.A0e(new C1278Ua(anonymousClass77.A25(), c1635dL.A0A()));
            unifiedAssetsLoader.A0B();
            return;
        }
        NR.A02(c1635dL, anonymousClass77, true, c1892hb);
    }

    private void A09(C1635dL c1635dL, EnumSet<CacheFlag> enumSet, AbstractC1910hy abstractC1910hy, int i, NG ng) {
        boolean zA1Y = abstractC1910hy.A1Y();
        SF sfA03 = A03(c1635dL);
        sfA03.A0e(new C1278Ua(abstractC1910hy.A25(), c1635dL.A0A()));
        boolean z = U7.A2A(c1635dL) && C1207Rf.A0A(abstractC1910hy.A1C());
        if (z) {
            new C1207Rf(sfA03, abstractC1910hy.A1C(), abstractC1910hy.A0v(), abstractC1910hy.A17(), z, new C1897hi(this, c1635dL, zA1Y, abstractC1910hy, ng)).A0B();
            return;
        }
        String strA04 = A04(96, 12, 117);
        if (zA1Y) {
            SB sb = new SB(abstractC1910hy.A0s(), abstractC1910hy.A17(), strA04);
            sb.A04 = true;
            sb.A03 = A04(0, 5, 78);
            sfA03.A0Y(sb);
        }
        sfA03.A0d(new SD(abstractC1910hy.A23().A01(), C1601cm.A04, C1601cm.A04, abstractC1910hy.A17(), A04(96, 12, 117)));
        boolean zContains = enumSet.contains(CacheFlag.VIDEO);
        int i2 = 0;
        boolean zA2s = U7.A2s(c1635dL, C1690eF.A03());
        for (C1089Mp adInfo : abstractC1910hy.A27()) {
            SD sd = new SD(adInfo.A0H().A08(), NN.A00(adInfo.A0H()), NN.A01(adInfo.A0H()), abstractC1910hy.A17(), A04(96, 12, 117));
            if (i2 == 0) {
                sfA03.A0c(sd);
            } else {
                sfA03.A0d(sd);
            }
            Iterator<String> it = adInfo.A0K().A02().iterator();
            while (it.hasNext()) {
                sfA03.A0d(new SD(it.next(), -1, -1, abstractC1910hy.A17(), A04(96, 12, 117)));
            }
            if (zContains && !TextUtils.isEmpty(adInfo.A0H().A09())) {
                SB sb2 = new SB(adInfo.A0H().A09(), abstractC1910hy.A17(), A04(96, 12, 117), adInfo.A0H().A06());
                sb2.A04 = false;
                if (i2 == 0) {
                    if (zA1Y && !zA2s) {
                        sfA03.A0Y(sb2);
                    } else {
                        sfA03.A0b(sb2);
                    }
                } else if (zA1Y && !zA2s) {
                    sfA03.A0Z(sb2);
                } else {
                    sfA03.A0a(sb2);
                }
            }
            i2++;
        }
        sfA03.A0X(new C1895hg(this, c1635dL, zA1Y, abstractC1910hy, ng), new S8(abstractC1910hy.A17(), strA04, i));
    }

    public void A0A(C1635dL c1635dL, EnumSet<CacheFlag> enumSet, C1908hw c1908hw, AbstractC1910hy abstractC1910hy, int i, NG ng) {
        A09(c1635dL, enumSet, abstractC1910hy, i, new C1899hk(this, c1635dL, abstractC1910hy, c1908hw, i, ng, enumSet));
    }

    private void A0B(EnumC1424Zt enumC1424Zt) {
        this.A01 = enumC1424Zt;
    }

    private boolean A0C(C1635dL c1635dL, AbstractC1910hy abstractC1910hy) {
        AdError adErrorA00 = A00(c1635dL, abstractC1910hy);
        if (adErrorA00 != null) {
            this.A04.ACF(adErrorA00);
            return true;
        }
        return false;
    }

    public final AbstractC1088Mo A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        return com.facebook.ads.redexgen.core.EnumC1305Vb.A0D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        return com.facebook.ads.redexgen.core.EnumC1305Vb.A0B;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EnumC1305Vb A0E() {
        if (this.A03.A1T()) {
            return EnumC1305Vb.A04;
        }
        AbstractC1910hy abstractC1910hy = (AbstractC1910hy) this.A03;
        if (abstractC1910hy.A1Y()) {
            return EnumC1305Vb.A06;
        }
        if (abstractC1910hy.A27().size() > 1) {
            return EnumC1305Vb.A0A;
        }
        NB nbA07 = abstractC1910hy.A20().A0H().A07();
        if (A06[4].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[1] = "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM";
        strArr[3] = "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx";
        if (nbA07 != null) {
            return EnumC1305Vb.A0C;
        }
        boolean zA0L = A0L(abstractC1910hy);
        if (A06[0].length() != 2) {
            String[] strArr2 = A06;
            strArr2[1] = "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ";
            strArr2[3] = "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0";
        }
    }

    public final EnumC1424Zt A0F() {
        return this.A01;
    }

    public final String A0G() {
        if (this.A03.A1T()) {
            return ((C1908hw) this.A03).A20();
        }
        return ((AbstractC1910hy) this.A03).A25();
    }

    public final void A0H() {
        this.A04.AJm();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        this.A03.A1F(rewardData);
        this.A03.A1J(str);
        if (A0D().A1T()) {
            intent.putExtra(A04(77, 19, 78), this.A03);
        }
        intent.putExtra(A04(48, 14, 83), this.A03);
    }

    public final void A0J(C1635dL c1635dL, EnumSet<CacheFlag> enumSet) {
        if (A0E() == EnumC1305Vb.A04) {
            C1908hw c1908hw = (C1908hw) this.A03;
            AbstractC1910hy abstractC1910hyA1w = c1908hw.A1w();
            if (A0C(c1635dL, abstractC1910hyA1w) || abstractC1910hyA1w == null) {
                return;
            }
            this.A04.AGo();
            A0A(c1635dL, enumSet, c1908hw, abstractC1910hyA1w, 0, this.A04);
            return;
        }
        AbstractC1910hy abstractC1910hy = (AbstractC1910hy) this.A03;
        if (A06[5].length() == 0) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[1] = "h3j4XQE4N9RDZ4AU6tvjsFYKX3e30HKG";
        strArr[3] = "lDhcJ7lgFtqhZjTb781X3zaoWDc2BWUc";
        if (A0C(c1635dL, abstractC1910hy)) {
            return;
        }
        this.A04.AGo();
        if (A0E() == EnumC1305Vb.A0C) {
            AnonymousClass77 anonymousClass77 = (AnonymousClass77) this.A03;
            String[] strArr2 = A06;
            if (strArr2[2].length() != strArr2[6].length()) {
                A06[7] = "0uVLF1bkkTEn2WeYm46QMmOd1A6";
                A08(c1635dL, anonymousClass77);
                return;
            } else {
                A08(c1635dL, anonymousClass77);
                return;
            }
        }
        A09(c1635dL, enumSet, (AnonymousClass77) this.A03, -1, this.A04);
    }

    public final boolean A0K() {
        return this.A03.A1P();
    }

    public final boolean A0L(AbstractC1910hy abstractC1910hy) {
        return !TextUtils.isEmpty(abstractC1910hy.A20().A0H().A09());
    }
}
