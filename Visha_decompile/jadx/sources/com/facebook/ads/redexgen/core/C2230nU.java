package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;

public final class C2230nU implements C6W {
    public static byte[] A07;
    public static String[] A08 = {"yII62Bxz4ePSH41vB2jdKSugEbZVWw1P", "xxJts2URfaqafakNk2KbG7F81xmmDazV", "4dv2SznKWSxWwafbIX2ls1ujl8jSHd2n", "ZTUBGrXVNXomnx09AH", "GEOoy7FoThRACcjBmfZ1TUIlEpKlWtQ8", "rZtP7yRh3duuKSKGXoPyzbqapeA3agH5", "0fM4GZ86zQsT7VByU2LW0lXLtFUbu0NT", "1qHBrVxL1wzL98lt8KL7QvczAsaDn4yk"};
    public C6W A00;
    public InterfaceC2222nM A01;
    public boolean A04;
    public final InterfaceC06635n A05;
    public final C2216nG A06;
    public boolean A03 = true;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily")
    public boolean A02 = MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A1d);

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{86, 110, 119, 111, 114, 107, 119, 126, 59, 105, 126, 117, 127, 126, 105, 126, 105, 59, 118, 126, 127, 114, 122, 59, 120, 119, 116, 120, 112, 104, 59, 126, 117, 122, 121, 119, 126, 127, 53};
    }

    static {
        A01();
    }

    public C2230nU(InterfaceC06635n interfaceC06635n, C3T c3t) {
        this.A05 = interfaceC06635n;
        this.A06 = new C2216nG(c3t);
    }

    private void A02(boolean z) {
        if (A03(z)) {
            this.A03 = true;
            if (this.A04) {
                this.A06.A00();
                return;
            }
            return;
        }
        C6W c6w = (C6W) C3M.A01(this.A00);
        long jA8h = c6w.A8h();
        if (this.A03) {
            C6W rendererClock = this.A06;
            long rendererClockPositionUs = rendererClock.A8h();
            if (jA8h < rendererClockPositionUs) {
                this.A06.A01();
                return;
            }
            this.A03 = false;
            if (this.A04) {
                C2216nG c2216nG = this.A06;
                String[] strArr = A08;
                if (strArr[0].charAt(6) != strArr[7].charAt(6)) {
                    throw new RuntimeException();
                }
                A08[3] = "DdBgGw0WSHdH6u";
                c2216nG.A00();
            }
        }
        this.A06.A02(jA8h);
        C2296ob c2296obA8e = c6w.A8e();
        C6W rendererClock2 = this.A06;
        if (!c2296obA8e.equals(rendererClock2.A8e())) {
            C6W rendererClock3 = this.A06;
            rendererClock3.AIt(c2296obA8e);
            this.A05.AEb(c2296obA8e);
        }
    }

    private boolean A03(boolean z) {
        if (this.A01 != null) {
            InterfaceC2222nM interfaceC2222nM = this.A01;
            String[] strArr = A08;
            if (strArr[0].charAt(6) != strArr[7].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "259perxNRfR5uYao2q6cSAfIVJfeeK6N";
            strArr2[7] = "EI3wTVxb9Zi5034aB38J7XgUXur7uJJK";
            if (!interfaceC2222nM.AAG()) {
                if (!this.A01.AAV()) {
                    if (!z) {
                        boolean zA9h = this.A01.A9h();
                        String[] strArr3 = A08;
                        if (strArr3[4].charAt(0) != strArr3[5].charAt(0)) {
                            A08[3] = "UNE8e4mByuhRiLOUb8sZtJ";
                            if (zA9h) {
                            }
                        } else if (zA9h) {
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final long A04(boolean z) {
        A02(z);
        return A8h();
    }

    public final void A05() {
        this.A04 = true;
        this.A06.A00();
    }

    public final void A06() {
        this.A04 = false;
        this.A06.A01();
    }

    public final void A07(long j) {
        this.A06.A02(j);
    }

    public final void A08(InterfaceC2222nM interfaceC2222nM) {
        if (interfaceC2222nM == this.A01) {
            this.A00 = null;
            this.A01 = null;
            this.A03 = true;
        }
    }

    public final void A09(InterfaceC2222nM interfaceC2222nM) throws C9Y {
        C6W c6wA8L = interfaceC2222nM.A8L();
        if (c6wA8L != null) {
            C6W rendererMediaClock = this.A00;
            if (c6wA8L != rendererMediaClock) {
                C6W c6w = this.A00;
                String[] strArr = A08;
                if (strArr[0].charAt(6) != strArr[7].charAt(6)) {
                    throw new RuntimeException();
                }
                A08[3] = "dGOISEf";
                if (c6w == null) {
                    this.A00 = c6wA8L;
                    this.A01 = interfaceC2222nM;
                    C6W c6w2 = this.A00;
                    C6W rendererMediaClock2 = this.A06;
                    c6w2.AIt(rendererMediaClock2.A8e());
                    return;
                }
                throw C9Y.A02(new IllegalStateException(A00(0, 39, 8)));
            }
        }
    }

    @Override
    public final C2296ob A8e() {
        if (this.A00 != null) {
            return this.A00.A8e();
        }
        return this.A06.A8e();
    }

    @Override
    public final long A8h() {
        if (this.A03) {
            return this.A06.A8h();
        }
        return ((C6W) C3M.A01(this.A00)).A8h();
    }

    @Override
    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "This reverts a bug introduced in D48802706. The upgraded exoaccounts for this but not the old exo. Hence, this is needed here temporarily")
    public final void AIt(C2296ob c2296ob) {
        if (this.A00 != null) {
            this.A00.AIt(c2296ob);
            c2296ob = this.A00.A8e();
        }
        this.A06.AIt(c2296ob);
        if (this.A02) {
            this.A05.AEb(c2296ob);
        }
    }
}
