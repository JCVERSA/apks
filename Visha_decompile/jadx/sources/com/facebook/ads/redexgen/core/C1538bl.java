package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.widget.FrameLayout;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public final class C1538bl extends FrameLayout {
    public static byte[] A0L;
    public static String[] A0M = {"nL4f6tElOIWkWIMY", "pafc", "mmt", "r2KL", "cPD1EcNrMsc9Il", "HjHry0SxIHtlyHB0wW8GJ6CkWWRugdPq", "pjLQgfnHLp272wJByK44k5CENQyu64qM", "USuv5isgmNE5xLLzg"};
    public EnumC1651db A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final AbstractC1910hy A05;
    public final SF A06;
    public final C1635dL A07;
    public final C1278Ua A08;
    public final InterfaceC1366Xn A09;
    public final YY A0A;
    public final InterfaceC1537bk A0B;
    public final EG A0C;
    public final E1 A0D;
    public final C06063i A0E;
    public final DX A0F;
    public final DV A0G;
    public final DR A0H;
    public final DP A0I;
    public final DN A0J;
    public final DM A0K;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0M[0].length() != 16) {
                throw new RuntimeException();
            }
            A0M[0] = "7kRjpWt7kPSYf5Zn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
            i4++;
        }
    }

    public static void A0C() {
        A0L = new byte[]{-112, -94, -97, -97, -110, -101, -95, SocketData.CLAZZ_TYPE_HEART_BEAT, -106, -102, -110, -81, -64, -67, -84, -65, -76, -70, -71, -20, -12, -13, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -29, -14, -29, -9, -11, -25, -26, -60, -5, -41, -11, -25, -12, -19, -17, -20, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -17, -30, -16, -16};
    }

    static {
        A0C();
    }

    public C1538bl(C1635dL c1635dL, US us, AbstractC1910hy abstractC1910hy, SF sf, C1278Ua c1278Ua, InterfaceC1366Xn interfaceC1366Xn, YY yy, InterfaceC1537bk interfaceC1537bk) {
        boolean z;
        super(c1635dL);
        this.A0J = new DN() {
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 124);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{53, 55, 42, 53, 38, 55, 42, 41};
            }

            @Override
            public final void A03(DO r6) {
                this.A00.A03 = true;
                this.A00.A0B.AFh(A00(0, 8, 73), this.A00.A03());
            }
        };
        this.A0I = new DP() {
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 106);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{112, 108, 97, 121};
            }

            @Override
            public final void A03(DQ dq) {
                this.A00.A04 = true;
                this.A00.A0B.AFh(A00(0, 4, 106), this.A00.A03());
            }
        };
        this.A0H = new DR() {
            public static byte[] A01;
            public static String[] A02 = {"QUZtp6d2PVvxohxxHBY0lFVIZrOHPJmP", "NfxzKLWElZxETrhEeUBSDM4deWBqLSti", "M1wrkGT1p8fg9I16hadPO98y5LyXX3HA", "lshWtPbnAXBsXbgnJLDmxkjrZI", "6PixpSZW8UzyowqAm", "UIpIdTluG2bhvKFOHpQ9k0cfwSXrRmCx", "lSmcWeUXMp1pu4geeqYJMaSrMHF509BD", "gheUZ0KSYWPh4kTG81LfbEHF2a7TTHcT"};

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                int i4 = 0;
                while (true) {
                    int length = bArrCopyOfRange.length;
                    if (A02[6].charAt(28) != '0') {
                        throw new RuntimeException();
                    }
                    A02[6] = "QE45n4HEQOiTUZDVXPk8ylx4JLny0ok5";
                    if (i4 >= length) {
                        return new String(bArrCopyOfRange);
                    }
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
                    i4++;
                }
            }

            public static void A01() {
                A01 = new byte[]{59, 44, 64, 62, 48};
            }

            static {
                A01();
            }

            @Override
            public final void A03(C3Y c3y) {
                this.A00.A0B.AFh(A00(0, 5, 92), this.A00.A03());
            }
        };
        this.A0K = new DM() {
            @Override
            public final void A03(C3Q c3q) {
                this.A00.A0H(c3q);
                this.A00.A0A();
            }
        };
        this.A0F = new DX() {
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{107, 103, 101, 120, 100, 109, 124, 109, 108};
            }

            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A07();
                this.A00.A0B.AFh(A00(0, 9, 87), this.A00.A04(this.A00.A0D.getDuration()));
            }
        };
        this.A0G = new AnonymousClass54(this);
        this.A03 = false;
        this.A04 = false;
        this.A02 = false;
        this.A01 = false;
        this.A07 = c1635dL;
        this.A05 = abstractC1910hy;
        this.A06 = sf;
        this.A08 = c1278Ua;
        this.A09 = interfaceC1366Xn;
        this.A0A = yy;
        this.A0D = new E1(c1635dL);
        this.A0B = interfaceC1537bk;
        this.A0D.setFunnelLoggingHandler(c1278Ua);
        this.A0D.getEventBus().A03(this.A0J, this.A0I, this.A0H, this.A0K, this.A0F, this.A0G);
        this.A0E = new C06063i(c1635dL, us, this.A0D, abstractC1910hy.A25());
        if (U7.A1v(this.A07)) {
            z = true;
            this.A0C = new EG(c1635dL, us, this.A0D, abstractC1910hy.A25(), false, this.A0E, null);
        } else {
            z = true;
            this.A0C = null;
        }
        A0B();
        this.A0D.setVideoURI(this.A06.A0T(this.A05.A20().A0H().A09()));
        A09();
        XP.A0K(this, this.A05.A1z().A01().A08(z));
        String videoUrl = abstractC1910hy.A20().A0H().A08();
        if (!TextUtils.isEmpty(videoUrl)) {
            AbstractC1456aR.A00(c1635dL, this, videoUrl);
        }
        addView(this.A0D, new FrameLayout.LayoutParams(-1, -1));
    }

    public JSONObject A03() {
        return A04(this.A0D.getCurrentPositionInMillis());
    }

    public JSONObject A04(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(0, 11, 32), i);
            jSONObject.put(A02(11, 8, 62), this.A0D.getDuration());
            jSONObject.put(A02(19, 5, 114), this.A0D.A0p());
            jSONObject.put(A02(24, 12, 117), this.A0D.A0r());
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public void A07() {
        if (this.A02) {
            return;
        }
        this.A02 = true;
    }

    private void A08() {
        this.A0D.postDelayed(new IF(this), U7.A0O(this.A07));
    }

    private void A09() {
        this.A0D.postDelayed(new IB(this), U7.A0P(this.A07));
    }

    public void A0A() {
        this.A0B.AFh(A02(36, 8, 112), A03());
    }

    private void A0B() {
        if (!TextUtils.isEmpty(this.A05.A20().A0H().A08())) {
            C05872p c05872p = new C05872p(this.A07);
            this.A0D.A0i(c05872p);
            c05872p.setImage(this.A05.A20().A0H().A08());
        }
        C2R c2r = new C2R(this.A07, true, this.A08);
        this.A0D.A0i(c2r);
        this.A0D.A0i(new D4(c2r, EnumC1666dr.A02, true));
        this.A0D.A0i(new C2Y(this.A07));
    }

    public void A0H(C3Q c3q) {
        if (this.A0D.getState() == EnumC1705eU.A02 && U7.A1Z(this.A07)) {
            this.A0D.postDelayed(new I7(this, c3q), 5000L);
        }
    }

    public void A0I(String str) {
        this.A07.A0F().A3S(str);
        if (U7.A1a(this.A07)) {
            A07();
        } else {
            this.A09.A4b(this.A0A.A7t());
            this.A09.A4b(this.A0A.A7o());
        }
    }

    public final void A0N() {
        this.A0D.setVolume(this.A05.A20().A0H().A0A() ? 0.0f : 1.0f);
        this.A0D.A0h(EnumC1651db.A02, 26);
        A08();
    }

    public final void A0O() {
        if (this.A0D != null) {
            if (!this.A02) {
                this.A0D.A0g(EnumC1643dT.A03);
            }
            this.A0D.getEventBus().A04(this.A0J, this.A0I, this.A0H, this.A0K, this.A0F, this.A0G);
            this.A0D.A0Z();
        }
        if (this.A0C != null) {
            this.A0C.A07();
        }
        this.A0E.A0p();
    }

    public final void A0P() {
        this.A0D.A0e(9);
        XP.A0R(this);
        XP.A0F(this.A0D);
        XP.A0Z(this.A0D);
    }

    public final void A0Q() {
        this.A0D.A0g(EnumC1643dT.A04);
    }

    public final void A0R(boolean z) {
        if (z) {
            this.A0D.setVolume(0.0f);
        } else {
            this.A0D.setVolume(1.0f);
        }
        A0A();
    }

    public final void A0S(boolean z) {
        if (this.A0D.A0q()) {
            return;
        }
        this.A00 = this.A0D.getVideoStartReason();
        this.A01 = z;
        this.A0D.A0l(false, 19);
    }

    public final void A0T(boolean z) {
        if (this.A0D.A0r() || this.A02 || this.A0D.getState() == EnumC1705eU.A06 || this.A00 == null) {
            return;
        }
        if (!this.A01 || z) {
            this.A0D.A0h(this.A00, 27);
        }
    }

    public final void A0U(boolean z) {
        this.A0D.A0l(z, 18);
    }

    public final void A0V(boolean z) {
        this.A0D.A0h(EnumC1651db.A04, 25);
    }
}
