package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.util.ArrayList;
import java.util.Arrays;

public final class C0918Fy extends FrameLayout implements InterfaceC1367Xo {
    public static byte[] A0L;
    public static String[] A0M = {"2u2dP7fJh3RTJE0f5j", "V84xfC9vRBWBw28ag3Wa", "AJ9OWsf0IOCB9JkMwpi03POlIdxFWB0O", "t4KHUJW6pNylT", "agpCzVGtSfjd9ImL9ArnGOWeGltiI7KT", "yQxi0n265GvpKMbNVeZVKXQg4YYx4N", "9gQlnw56", "rIoCFSW2UJYE3I7OlTOsSCWVSaoSra"};
    public static final RelativeLayout.LayoutParams A0N;
    public static final int A0O;
    public static final int A0P;
    public int A00;
    public int A01;
    public int A02;
    public C1437a8 A03;
    public AbstractC0962Hr A04;
    public C1632dI A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1908hw A0A;
    public final R6 A0B;
    public final SF A0C;
    public final C1635dL A0D;
    public final US A0E;
    public final C1278Ua A0F;
    public final XC A0G;
    public final AbstractC1365Xm A0H;
    public final InterfaceC1366Xn A0I;
    public final YY A0J;
    public final ArrayList<C1580cR> A0K;

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0G() {
        A0L = new byte[]{-103, -24, -33, -103, -1, 34, -34};
    }

    static {
        A0G();
        A0N = new RelativeLayout.LayoutParams(-1, -1);
        A0O = (int) (AbstractC1338Wl.A02 * 48.0f);
        A0P = (int) (AbstractC1338Wl.A02 * 64.0f);
    }

    public C0918Fy(C1635dL c1635dL, YY yy, US us, C1908hw c1908hw, SF sf, InterfaceC1366Xn interfaceC1366Xn) {
        FrameLayout.LayoutParams layoutParams;
        super(c1635dL);
        this.A0K = new ArrayList<>();
        this.A09 = false;
        this.A07 = false;
        this.A08 = false;
        this.A06 = true;
        this.A02 = 1;
        this.A00 = 0;
        this.A01 = 0;
        this.A0B = new G1(this);
        this.A0D = c1635dL;
        this.A0J = yy;
        this.A0E = us;
        this.A0A = c1908hw;
        this.A0C = sf;
        this.A0I = interfaceC1366Xn;
        this.A0F = new C1278Ua(this.A0A.A1x(0).A25(), this.A0E);
        this.A0G = new XC(this);
        this.A0G.A05(XB.A02);
        this.A05 = new C1632dI(this.A0D, this.A0J, this.A0A.A1A(), interfaceC1366Xn);
        this.A0H = A05();
        if (this.A0A.A1U()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0P, A0O, 0, 0);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-1, this.A0H.getToolbarHeight());
        }
        addView(this.A0H, layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x009b  */
    /* JADX WARN: Code duplicated, block: B:45:0x00af  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6  */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bf, code lost:
    
        if (r4.A1I() != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c1, code lost:
    
        r6.A0H.setToolbarActionMode(0);
        r6.A0D.A0F().A4p();
        r6.A04.A1D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
    
        return 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e6, code lost:
    
        if (r4.A1I() != false) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int A00() {
        String[] strArr;
        if (!this.A09) {
            if (this.A04 == null || !this.A04.A1J() || this.A0A.A1t() != 1 || !this.A04.A1K()) {
                return 0;
            }
            A0V(false, this.A02);
            return 1;
        }
        if (this.A04 != null && this.A04.A1J() && this.A0A.A1t() == 1 && !this.A04.A1K()) {
            return 0;
        }
        if (!A0W()) {
            if (this.A04 != null) {
                AbstractC0962Hr abstractC0962Hr = this.A04;
                strArr = A0M;
                if (strArr[6].length() != strArr[3].length()) {
                    String[] strArr2 = A0M;
                    strArr2[2] = "s0FLaM76nMM9Qr7TZwL2usTxvSsXcmqy";
                    strArr2[4] = "fT84jb4om2WjLoB8b8HhBoC0fCgiLofU";
                } else {
                    String[] strArr3 = A0M;
                    strArr3[5] = "A7yRQ8ZNY7QUzDAYMeY8X6eQmfD57M";
                    strArr3[7] = "dEOP0V0Fm3EsPKfzbtzpY8oiy2RB1y";
                }
            }
            if (!A0X()) {
            }
            if (!(this.A04 instanceof AnonymousClass50)) {
            }
            this.A0F.A04(UZ.A07, null);
            A0K(4);
            return 6;
        }
        AbstractC0962Hr abstractC0962Hr2 = this.A04;
        String[] strArr4 = A0M;
        if (strArr4[6].length() != strArr4[3].length()) {
            String[] strArr5 = A0M;
            strArr5[5] = "AFu5VcCLRWlCVSPev3Ny5pnjuJiPpe";
            strArr5[7] = "Nhy8N08k5Vw4Z8hL9UmI1FpStaZ0OS";
            if (abstractC0962Hr2 != null && (this.A04.A1J() || this.A0A.A1t() == 2 || !this.A04.A1I())) {
                if (!this.A0A.A26()) {
                    this.A08 = true;
                }
                A0V(false, this.A02);
                return 2;
            }
            if (this.A04 != null) {
                AbstractC0962Hr abstractC0962Hr3 = this.A04;
                strArr = A0M;
                if (strArr[6].length() != strArr[3].length()) {
                    String[] strArr6 = A0M;
                    strArr6[2] = "s0FLaM76nMM9Qr7TZwL2usTxvSsXcmqy";
                    strArr6[4] = "fT84jb4om2WjLoB8b8HhBoC0fCgiLofU";
                } else {
                    String[] strArr7 = A0M;
                    strArr7[5] = "A7yRQ8ZNY7QUzDAYMeY8X6eQmfD57M";
                    strArr7[7] = "dEOP0V0Fm3EsPKfzbtzpY8oiy2RB1y";
                }
            }
            if (!A0X() && !A0Y()) {
                A0F();
                String[] strArr8 = A0M;
                if (strArr8[6].length() != strArr8[3].length()) {
                    String[] strArr9 = A0M;
                    strArr9[6] = "ldx0hXy1";
                    strArr9[3] = "A9K45C3zzpDFd";
                    return 4;
                }
            } else {
                if (!(this.A04 instanceof AnonymousClass50) && A0W()) {
                    A0V(false, this.A02);
                    return 5;
                }
                this.A0F.A04(UZ.A07, null);
                A0K(4);
                return 6;
            }
        }
        throw new RuntimeException();
    }

    private int A01(int i) {
        if (this.A0A.A26()) {
            C1908hw c1908hw = this.A0A;
            String[] strArr = A0M;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "SFVCTE3Hv2F6eV4jkYzgVN3BuZvLlt";
            strArr2[7] = "be2ILDbetBMqGPrAeiZBpkZxeTc1wp";
            if (i < c1908hw.A21().size() && i >= 0) {
                return this.A0A.A21().get(i).intValue();
            }
        }
        return this.A0A.A0m();
    }

    public static int A02(C0918Fy c0918Fy, int i) {
        int i2 = c0918Fy.A01 + i;
        c0918Fy.A01 = i2;
        return i2;
    }

    private AbstractC1365Xm A05() {
        AbstractC1365Xm c1117Nr;
        if (!this.A0A.A1U()) {
            c1117Nr = new FullScreenAdToolbar(this.A0D, this.A0I, this.A0F, 2, -1, false);
        } else {
            c1117Nr = new C1117Nr(this.A0D, this.A0I, this.A0F, 2);
        }
        c1117Nr.setFullscreen(true);
        c1117Nr.setToolbarListener(new C0919Fz(this));
        return c1117Nr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00c1  */
    private AbstractC0962Hr A0A(boolean z, int i) {
        boolean z2;
        G0 g0 = new G0(this, i);
        AbstractC1910hy abstractC1910hyA1x = this.A0A.A1x(this.A00);
        if (abstractC1910hyA1x.A2K()) {
            this.A0H.setOnClickListener(new ViewOnClickListenerC1581cS(this));
        }
        if (this.A0A.A25()) {
            int i2 = this.A00;
            String[] strArr = A0M;
            if (strArr[2].charAt(19) == strArr[4].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[0] = "c3gdOFv01Kz0ZnyucW";
            strArr2[1] = "uUEmXxf6IoafQfC48jcO";
            if (i2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        boolean z3 = this.A0A.A24() && this.A00 > 0;
        String strA1z = this.A0A.A1z();
        if (A0Z(abstractC1910hyA1x)) {
            int iA01 = A01(this.A00);
            if (iA01 == 0) {
                setUnskippableSecondsComplete(true);
            }
            this.A0D.A0F().AJ9(LT.A06);
            this.A0D.A0F().AIb(this.A00);
            this.A0D.A0F().A4n(strA1z);
            return new AnonymousClass50(this.A0D, this.A0J, this.A00, this.A0E, abstractC1910hyA1x, this.A0I, this.A0H, this.A0F, z2, z3, g0, iA01, this.A0A.A1u());
        }
        if (abstractC1910hyA1x.A20().A0T()) {
            this.A0D.A0F().AJ9(LT.A07);
            this.A0D.A0F().AIb(this.A00);
            this.A0D.A0F().A4n(strA1z);
            if (this.A0A.A1U()) {
                return new C4K(this.A0D, this.A0E, this.A0H, abstractC1910hyA1x, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, i, z2, z3, g0, A01(this.A00), this.A0A.A1u());
            }
            return new C4Z(this.A0D, this.A0E, this.A0H, abstractC1910hyA1x, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, i, z2, z3, g0, A01(this.A00), this.A0A.A1u());
        }
        this.A0D.A0F().AJ9(LT.A07);
        this.A0D.A0F().AIb(this.A00);
        this.A0D.A0F().A4n(strA1z);
        return new C06374n(this.A0D, this.A0E, abstractC1910hyA1x, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, this.A0H, this.A0A.A0m(), i, this.A0A.A1t(), z, this.A0A.A1v(), this.A0A.A26(), z2, z3, g0, A01(this.A00), this.A0A.A1u());
    }

    public void A0C() {
        int iA00 = A00();
        if (iA00 != 0) {
            this.A0D.A0F().A4q(iA00);
        }
    }

    private void A0D() {
        if (this.A00 > 0 && !TextUtils.isEmpty(this.A0A.A1x(this.A00 - 1).A25())) {
            US us = this.A0E;
            String strA25 = this.A0A.A1x(this.A00 - 1).A25();
            C1420Zp c1420ZpA03 = new C1420Zp().A03(this.A04 != null ? this.A04.getAdViewabilityChecker() : null);
            AbstractC0962Hr abstractC0962Hr = this.A04;
            String[] strArr = A0M;
            if (strArr[6].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[2] = "pDlFeLBfyToKKboIUgGc0hC9I32LVeJD";
            strArr2[4] = "3B6yIVnUpbF0PBycHqRFA1bh2UEjPzxQ";
            us.AAt(strA25, c1420ZpA03.A02(abstractC0962Hr != null ? this.A04.getTouchDataRecorder() : null).A05());
        }
    }

    public void A0E() {
        if (this.A0H.getToolbarActionMode() == 8) {
            AbstractC1365Xm abstractC1365Xm = this.A0H;
            String[] strArr = A0M;
            if (strArr[2].charAt(19) == strArr[4].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[2] = "ALooRHp0AOPErSNB2N5ax0GYeQeSWGkg";
            strArr2[4] = "Jojrpwo5bfgl2L1NDhbRQaPRUafbLI0W";
            abstractC1365Xm.setToolbarActionMode(2);
        }
        int i = this.A00 - 1;
        if (this.A0A.A27(i)) {
            AbstractC1910hy abstractC1910hyA1x = this.A0A.A1x(i);
            AbstractC1365Xm abstractC1365Xm2 = this.A0H;
            String[] strArr3 = A0M;
            String str = strArr3[2];
            String str2 = strArr3[4];
            int iCharAt = str.charAt(19);
            int index = str2.charAt(19);
            if (iCharAt == index) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0M;
            strArr4[0] = "SYmrADrPyc9xENaNAh";
            strArr4[1] = "82lRVJ32R9K27GgHKLOx";
            abstractC1365Xm2.setProgressSpinnerInvisible(!abstractC1910hyA1x.A2J());
            abstractC1910hyA1x.A2B(false);
            abstractC1910hyA1x.A20().A0M(-1);
        }
    }

    private void A0F() {
        this.A0D.A0F().A4o();
        this.A07 = true;
        this.A03 = new C1437a8(this.A0D, this.A0A, this.A0E, this.A0I, this.A0H.getToolbarHeight(), this.A02);
        C1580cR c1580cR = null;
        for (C1580cR c1580cR2 : this.A0K) {
            if (c1580cR2.A00 == C1580cR.A06) {
                c1580cR = c1580cR2;
                break;
            }
        }
        if (c1580cR != null) {
            A0L(this.A03, c1580cR);
        } else {
            boolean zIsEmpty = this.A0K.isEmpty();
            String[] strArr = A0M;
            if (strArr[5].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "8vyvfMLKM55zirtuKFzVGEL0IOO7sZ";
            strArr2[7] = "ODibu6eYSRbNQzGgUnvrLUj83p1fS4";
            if (!zIsEmpty) {
                A0L(this.A03, this.A0K.get(0));
            }
        }
        A0U(true);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
        }
        if (this.A04 != null) {
            XP.A0H(this.A04);
            this.A04.A1B();
            this.A04 = null;
        }
        XP.A0H(this.A03);
        XP.A0E(1102, this.A03);
        addView(this.A03, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    private final void A0H() {
        this.A0G.A05(XB.A03);
    }

    private synchronized void A0I() {
        this.A0I.A4b(this.A0J.A6d());
        this.A05.A05();
    }

    public void A0J(float f) {
        float seenCurrentPosMS;
        float fA01 = A01(this.A00 - 1);
        float seenCurrentPosMS2 = (this.A0A.A26() ? 0 : this.A01) + f;
        if (fA01 > 0.0f) {
            seenCurrentPosMS = seenCurrentPosMS2 / fA01;
        } else {
            seenCurrentPosMS = 1.0f;
        }
        if (this.A06 && this.A0A.A26()) {
            this.A06 = false;
            this.A0H.setProgressImmediate(0.0f);
        }
        float unskippableSeconds = 100.0f * seenCurrentPosMS;
        this.A0H.setProgress(unskippableSeconds);
        if (seenCurrentPosMS >= 1.0f && !this.A09) {
            setUnskippableSecondsComplete(true);
            this.A0H.setToolbarActionMode(1);
        }
    }

    public void A0K(int i) {
        this.A0D.A0F().A4l(i);
        setUnskippableSecondsComplete(true);
        A0I();
        A0D();
        this.A0I.A4b(this.A0J.A7o());
    }

    private void A0L(ViewGroup viewGroup, C1580cR c1580cR) {
        if (c1580cR.A00 == C1580cR.A06 && c1580cR.A03 != null) {
            AbstractC1456aR.A00(this.A0D, viewGroup, c1580cR.A03);
        } else {
            int i = c1580cR.A01;
            String[] strArr = A0M;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "6Qw2GncBlIK9qwoUetngT0jkAnHCQL";
            strArr2[7] = "iVxLMdIUnWJTFKOlNtOcmcGRsmSn6x";
            XP.A0K(viewGroup, i);
        }
        this.A0H.setFullscreen(c1580cR.A05);
        this.A0H.A0A(c1580cR.A02, c1580cR.A04);
    }

    private void A0M(AbstractC1910hy abstractC1910hy) {
        if (this.A0H instanceof FullScreenAdToolbar) {
            if (A0Z(abstractC1910hy) && this.A02 == 2) {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(abstractC1910hy.A23());
            } else {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
            }
        }
    }

    private final void A0N(R0 r0) {
        r0.A0A(this.A0B);
        int i = r0.A05().getResources().getConfiguration().orientation;
        this.A02 = i;
        A0V(this.A0A.A23(), i);
        A0H();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00a5  */
    public void A0U(boolean z) {
        boolean z2;
        if (!A0X() || A0W()) {
            z2 = false;
        } else {
            boolean zA0Y = A0Y();
            String[] strArr = A0M;
            if (strArr[0].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[2] = "abX2oERzf98UggHhJlwc5xOu8ehA434Q";
            strArr2[4] = "mcfqurarHSiAo6r6yfyhrMyo3UPU5OrE";
            if (zA0Y) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        boolean willShowCombinedEndCards = A0W();
        if (!willShowCombinedEndCards && !z2) {
            setUnskippableSecondsComplete(true);
            if (z) {
                this.A0H.setToolbarActionMessage(A0B(0, 0, 85));
            }
            AbstractC1365Xm abstractC1365Xm = this.A0H;
            String[] strArr3 = A0M;
            if (strArr3[6].length() == strArr3[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0M;
            strArr4[0] = "6hDdRvQvhZI2wvmWyf";
            strArr4[1] = "dfELTL2TgrvtcbRt37j2";
            abstractC1365Xm.setToolbarActionMode(0);
            return;
        }
        AbstractC1365Xm abstractC1365Xm2 = this.A0H;
        String[] strArr5 = A0M;
        if (strArr5[0].length() != strArr5[1].length()) {
            String[] strArr6 = A0M;
            strArr6[2] = "JMDiVFyp4yY8WixxdBAiYWzIdfNljSYZ";
            strArr6[4] = "DEcXsd0kn675y00aYcKTg0COR2JcG3d3";
            abstractC1365Xm2.setToolbarActionMode(1);
            return;
        }
        String[] strArr7 = A0M;
        strArr7[6] = "uCb48oA3";
        strArr7[3] = "eCwSqnipc7icS";
        abstractC1365Xm2.setToolbarActionMode(1);
    }

    public void A0V(boolean z, int i) {
        if (this.A04 != null) {
            this.A04.A1B();
            this.A04.removeAllViews();
            XP.A0H(this.A04);
        }
        if (this.A0A.A1U()) {
            XP.A0H(this.A0H);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0P, A0O, 0, 0);
            addView(this.A0H, layoutParams);
        }
        if (!A0W()) {
            setUnskippableSecondsComplete(true);
            if (A0X()) {
                A0F();
                return;
            }
            A0K(1);
            String[] strArr = A0M;
            if (strArr[6].length() != strArr[3].length()) {
                String[] strArr2 = A0M;
                strArr2[5] = "b6hirdpqFqEpTGRF7TvzfLNB23PEQW";
                strArr2[7] = "Y5Eb3FssofDa3ImZpKtnPvm2BrdUNN";
                return;
            }
        } else {
            if (this.A0A.A26()) {
                setUnskippableSecondsComplete(false);
                this.A0H.setProgressImmediate(0.0f);
            }
            SJ sjA01 = this.A0D.A01();
            AbstractC1910hy abstractC1910hyA1x = this.A0A.A1x(this.A00);
            String[] strArr3 = A0M;
            if (strArr3[6].length() != strArr3[3].length()) {
                String[] strArr4 = A0M;
                strArr4[0] = "SeXhCWKDArfU2xbUHE";
                strArr4[1] = "icHjaKCGoPIgSTYVXjnx";
                boolean isLoaded = sjA01.AAD(abstractC1910hyA1x.A25(), this.A0A.A1y());
                if (!isLoaded) {
                    this.A0D.A0F().A4m();
                    A0K(2);
                    return;
                }
                AbstractC0962Hr abstractC0962HrA0A = A0A(z, i);
                this.A04 = abstractC0962HrA0A;
                AbstractC0962Hr abstractC0962Hr = this.A04;
                boolean isLoaded2 = this.A09;
                abstractC0962Hr.A1F(isLoaded2);
                setupToolbarForAd(abstractC0962HrA0A);
                addView(this.A04, 0, A0N);
                this.A00++;
                this.A04.A1E();
                return;
            }
        }
        throw new RuntimeException();
    }

    private boolean A0W() {
        return this.A00 < this.A0A.A1u();
    }

    private boolean A0X() {
        return this.A0A.A1t() == 2;
    }

    private final boolean A0Y() {
        return this.A07;
    }

    public static boolean A0Z(AbstractC1910hy abstractC1910hy) {
        return TextUtils.isEmpty(abstractC1910hy.A20().A0H().A09());
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        this.A0I.A3x(this, A0N);
        A0N(r0);
    }

    @Override
    public final void AEV(boolean z) {
        if (this.A04 != null) {
            this.A04.A1G(z);
        }
    }

    @Override
    public final void AF0(boolean z) {
        if (this.A04 != null) {
            this.A04.A1H(z);
        }
    }

    @Override
    public final void AIB(Bundle bundle) {
    }

    public AbstractC0962Hr getContentView() {
        return this.A04;
    }

    @Override
    public String getCurrentClientToken() {
        return null;
    }

    @Override
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A02 = configuration.orientation;
        if (this.A04 != null) {
            this.A04.onConfigurationChanged(configuration);
        }
        if (this.A04 instanceof AnonymousClass50) {
            A0L(this.A04, this.A04.getFullScreenAdStyle());
            A0M(this.A04.getAdDataBundle());
        }
    }

    @Override
    public final void onDestroy() {
        if (this.A04 != null) {
            this.A04.A1B();
            this.A04 = null;
        }
        this.A0D.A01().A4r(this.A0A.A1y());
        this.A0G.A03();
    }

    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC1366Xn interfaceC1366Xn) {
    }

    public void setServerSideRewardHandler(C1632dI c1632dI) {
        this.A05 = c1632dI;
    }

    public void setUnskippableSecondsComplete(boolean z) {
        this.A09 = z;
        if (this.A04 != null) {
            this.A04.A1F(this.A09);
        }
    }

    private void setupToolbarForAd(AbstractC0962Hr abstractC0962Hr) {
        if (this.A0H == null) {
            return;
        }
        this.A06 = true;
        AbstractC1910hy abstractC1910hyA1x = this.A0A.A1x(this.A00);
        int iA01 = A01(this.A00);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).A0D(this.A0D, abstractC1910hyA1x.A1t());
            ((FullScreenAdToolbar) this.A0H).A0C(abstractC1910hyA1x.A23(), abstractC1910hyA1x.A25(), iA01);
        } else if (this.A0H instanceof C1117Nr) {
            ((C1117Nr) this.A0H).setInitialUnskippableSeconds(iA01);
        }
        C1580cR fullScreenAdStyle = abstractC0962Hr.getFullScreenAdStyle();
        A0L(abstractC0962Hr, fullScreenAdStyle);
        this.A0K.add(fullScreenAdStyle);
        this.A0H.setToolbarActionMessage(A0B(4, 3, 90) + (this.A00 + 1) + A0B(0, 4, 21) + this.A0A.A1u());
        if (this.A08) {
            this.A0H.setToolbarActionMode(1);
        }
        A0M(abstractC1910hyA1x);
    }
}
