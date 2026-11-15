package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.hunantv.imgo.net.entity.AuthInfo;
import java.util.Arrays;
import okio.Utf8;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.checkerframework.dataflow.qual.SideEffectFree;

public final class C05470z extends C9Z implements Handler.Callback {
    public static byte[] A0H;
    public static String[] A0I = {"58lW15hp88fFpLaSxErp", "56QScXrV6I", "DwEmmtKo2ODeTiA17rxauXwet98Z4", "A4aLtxZMLOPLaVE6SeDzXnpOLTGefetw", "FhOKuZuvLBWd8lghoK1mwxVLtzQRZ", "h1d8vpIJ83Cnf8DVjx4Ui7av1xQxYsFL", "y1YT0hSXczs7bGZDGpuR", "alxZNjekiwxoo3ZSsAAxphzspQJfVEZr"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public C2312or A05;
    public InterfaceC2051kN A06;
    public C07117j A07;
    public AbstractC07107i A08;
    public AbstractC07107i A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final Handler A0D;
    public final C6N A0E;
    public final InterfaceC0855Dn A0F;
    public final InterfaceC0858Dq A0G;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0I;
            if (strArr[6].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[2] = "1YRuRVntTKbD5w1SSS8awuyRss3tM";
            strArr2[4] = "HmFGzdsys3t1iPkkAdwtO8Q44Z9aJ";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
            i4++;
        }
    }

    public static void A09() {
        A0H = new byte[]{89, 127, 104, 126, 99, 126, 102, 111, 42, 110, 111, 105, 101, 110, 99, 100, 109, 42, 108, 107, 99, 102, 111, 110, 36, 42, 121, 126, 120, 111, 107, 103, 76, 101, 120, 103, 107, 126, 55, 57, 8, 21, 25, Utf8.REPLACEMENT_BYTE, 8, 3, 9, 8, 31, 8, 31};
    }

    static {
        A09();
    }

    public C05470z(InterfaceC0858Dq interfaceC0858Dq, Looper looper, InterfaceC0855Dn interfaceC0855Dn) {
        super(3);
        this.A0G = (InterfaceC0858Dq) C3M.A01(interfaceC0858Dq);
        this.A0D = looper == null ? null : AbstractC06244a.A0c(looper, this);
        this.A0F = interfaceC0855Dn;
        this.A0E = new C6N();
        this.A02 = C.TIME_UNSET;
        this.A04 = C.TIME_UNSET;
        this.A03 = C.TIME_UNSET;
    }

    private long A00() {
        if (this.A01 == -1) {
            return Long.MAX_VALUE;
        }
        C3M.A01(this.A09);
        if (this.A01 >= this.A09.A7w()) {
            return Long.MAX_VALUE;
        }
        return this.A09.A7v(this.A01);
    }

    @RequiresNonNull({AuthInfo.Component.CODE_SUBTITLE})
    @SideEffectFree
    private long A01(long j) {
        int iA8S = this.A09.A8S(j);
        if (iA8S != 0) {
            int nextEventTimeIndex = this.A09.A7w();
            if (nextEventTimeIndex != 0) {
                String[] strArr = A0I;
                String str = strArr[6];
                String str2 = strArr[0];
                int length = str.length();
                int nextEventTimeIndex2 = str2.length();
                if (length != nextEventTimeIndex2) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0I;
                strArr2[2] = "dWbBH4lKinuUlTA8CpNFonpmnzuPl";
                strArr2[4] = "MDue3s6tkJ65MZJ0TxYFZvpfeIb1w";
                if (iA8S == -1) {
                    AbstractC07107i abstractC07107i = this.A09;
                    if (A0I[1].length() != 10) {
                        int nextEventTimeIndex3 = this.A09.A7w();
                        return abstractC07107i.A7v(nextEventTimeIndex3 - 1);
                    }
                    A0I[3] = "us0wUp64B7rq5nQeuQUWAOSOIfPFOl8I";
                    int nextEventTimeIndex4 = this.A09.A7w();
                    return abstractC07107i.A7v(nextEventTimeIndex4 - 1);
                }
                int nextEventTimeIndex5 = iA8S - 1;
                return this.A09.A7v(nextEventTimeIndex5);
            }
        }
        return ((AbstractC2233nX) this.A09).A01;
    }

    @SideEffectFree
    private long A02(long j) {
        boolean z = true;
        C3M.A08(j != C.TIME_UNSET);
        if (this.A04 == C.TIME_UNSET) {
            z = false;
        }
        C3M.A08(z);
        return j - this.A04;
    }

    private void A04() {
        A0B(new C2261o0(MetaExoPlayerCustomizedCollections.A01(), A02(this.A03)));
    }

    private void A05() {
        this.A0C = true;
        this.A06 = this.A0F.A5C((C2312or) C3M.A01(this.A05));
    }

    private void A06() {
        this.A07 = null;
        this.A01 = -1;
        if (this.A09 != null) {
            this.A09.A0B();
            this.A09 = null;
        }
        if (this.A08 != null) {
            this.A08.A0B();
            this.A08 = null;
        }
    }

    private void A07() {
        A06();
        ((InterfaceC2051kN) C3M.A01(this.A06)).AGr();
        this.A06 = null;
        this.A00 = 0;
    }

    private void A08() {
        A07();
        A05();
    }

    private void A0A(C2261o0 c2261o0) {
        this.A0G.ACw(c2261o0.A01);
        this.A0G.ACv(c2261o0);
    }

    private void A0B(C2261o0 c2261o0) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(0, c2261o0).sendToTarget();
        } else {
            A0A(c2261o0);
        }
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Method to propagate any SubtitleDecoder Error upwards")
    private void A0C(C0857Dp c0857Dp) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(1, c0857Dp).sendToTarget();
        }
    }

    private void A0D(C2050kM c2050kM) {
        AnonymousClass44.A08(A03(39, 12, 23), A03(0, 39, 112) + this.A05, c2050kM);
        A0C(new C0857Dp(this.A05, c2050kM));
        A04();
        A08();
    }

    @Override
    public final void A1Z() {
        this.A05 = null;
        this.A02 = C.TIME_UNSET;
        A04();
        this.A04 = C.TIME_UNSET;
        this.A03 = C.TIME_UNSET;
        A07();
    }

    @Override
    public final void A1a(long j, boolean z) {
        this.A03 = j;
        A04();
        this.A0A = false;
        this.A0B = false;
        this.A02 = C.TIME_UNSET;
        if (this.A00 != 0) {
            A08();
        } else {
            A06();
            ((InterfaceC2051kN) C3M.A01(this.A06)).flush();
        }
    }

    @Override
    public final void A1c(C2312or[] c2312orArr, long j, long j2) {
        this.A04 = j2;
        this.A05 = c2312orArr[0];
        if (this.A06 != null) {
            this.A00 = 1;
        } else {
            A05();
        }
    }

    @Override
    public final boolean AAG() {
        return this.A0B;
    }

    @Override
    public final boolean AAV() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00ea  */
    @Override
    public final void AHn(long j, long j2) throws C5P {
        this.A03 = j;
        if (AAE() && this.A02 != C.TIME_UNSET && j >= this.A02) {
            A06();
            this.A0B = true;
        }
        if (this.A0B) {
            return;
        }
        if (this.A08 == null) {
            ((InterfaceC2051kN) C3M.A01(this.A06)).AIx(j);
            try {
                this.A08 = ((InterfaceC2051kN) C3M.A01(this.A06)).A5l();
            } catch (C2050kM e) {
                A0D(e);
                return;
            }
        }
        if (A92() != 2) {
            return;
        }
        boolean z = false;
        if (this.A09 != null) {
            long jA00 = A00();
            while (jA00 <= j) {
                this.A01++;
                jA00 = A00();
                z = true;
            }
        }
        if (this.A08 != null) {
            AbstractC07107i abstractC07107i = this.A08;
            boolean textRendererNeedsUpdate = abstractC07107i.A05();
            if (textRendererNeedsUpdate) {
                if (!z && A00() == Long.MAX_VALUE) {
                    if (this.A00 == 2) {
                        A08();
                    } else {
                        A06();
                        this.A0B = true;
                    }
                }
            } else if (((AbstractC2233nX) abstractC07107i).A01 <= j) {
                AbstractC07107i abstractC07107i2 = this.A09;
                if (A0I[1].length() != 10) {
                    String[] strArr = A0I;
                    strArr[6] = "SM2l9fwyY7vSK8U9dCan";
                    strArr[0] = "PLBzRsO91bLUZoRphjDr";
                    if (abstractC07107i2 != null) {
                        this.A09.A0B();
                    }
                } else {
                    A0I[1] = "uDUYlaOON0";
                    if (abstractC07107i2 != null) {
                        this.A09.A0B();
                    }
                }
                this.A01 = abstractC07107i.A8S(j);
                this.A09 = abstractC07107i;
                this.A08 = null;
                z = true;
            }
        }
        if (z) {
            C3M.A01(this.A09);
            A0B(new C2261o0(this.A09.A7P(j), A02(A01(j))));
        }
        int i = this.A00;
        if (A0I[3].charAt(23) != 'O') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[6] = "ML0YoWWFYnm1pIYkMDlj";
        strArr2[0] = "WzY2c9YM67lXJGPj7nnt";
        if (i == 2) {
            return;
        }
        while (true) {
            try {
                boolean textRendererNeedsUpdate2 = this.A0A;
                if (!textRendererNeedsUpdate2) {
                    C07117j c07117jA5j = this.A07;
                    if (c07117jA5j == null) {
                        c07117jA5j = ((InterfaceC2051kN) C3M.A01(this.A06)).A5j();
                        if (c07117jA5j != null) {
                            this.A07 = c07117jA5j;
                        } else {
                            return;
                        }
                    }
                    if (this.A00 == 1) {
                        c07117jA5j.A02(4);
                        ((InterfaceC2051kN) C3M.A01(this.A06)).AGZ(c07117jA5j);
                        this.A07 = null;
                        this.A00 = 2;
                        return;
                    }
                    int iA1R = A1R(this.A0E, c07117jA5j, 0);
                    if (iA1R == -4) {
                        boolean textRendererNeedsUpdate3 = c07117jA5j.A05();
                        if (textRendererNeedsUpdate3) {
                            this.A0A = true;
                            this.A0C = false;
                        } else {
                            C2312or c2312or = this.A0E.A00;
                            if (c2312or != null) {
                                c07117jA5j.A00 = c2312or.A0M;
                                c07117jA5j.A0B();
                                boolean z2 = this.A0C;
                                boolean textRendererNeedsUpdate4 = c07117jA5j.A07();
                                this.A0C = (textRendererNeedsUpdate4 ? false : true) & z2;
                            } else {
                                return;
                            }
                        }
                        boolean textRendererNeedsUpdate5 = this.A0C;
                        if (!textRendererNeedsUpdate5) {
                            ((InterfaceC2051kN) C3M.A01(this.A06)).AGZ(c07117jA5j);
                            this.A07 = null;
                        }
                    } else if (iA1R == -3) {
                        return;
                    }
                } else {
                    return;
                }
            } catch (C2050kM e2) {
                A0D(e2);
                return;
            }
        }
    }

    @Override
    public final int AJb(C2312or c2312or) {
        if (this.A0F.AJc(c2312or)) {
            return AnonymousClass76.A00(4);
        }
        if (AbstractC05792h.A0E(c2312or.A0W)) {
            return AnonymousClass76.A00(1);
        }
        return AnonymousClass76.A00(0);
    }

    @Override
    public final String getName() {
        return A03(39, 12, 23);
    }

    @Override
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                A0A((C2261o0) message.obj);
                return true;
            case 1:
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
