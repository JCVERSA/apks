package com.facebook.ads.redexgen.core;

import android.content.Context;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C1346Wt implements SS {
    public static C1346Wt A07;
    public static byte[] A08;
    public LL A00;
    public SJ A01;
    public SR A02;
    public InterfaceC1234Sh A03;
    public TP A04;
    public InterfaceC1282Ue A05;
    public InterfaceC0805Bn A06;

    static {
        A07();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A08 = new byte[]{15, 13, 13, 18, 13, 17, 14, 58, 13, 31, 45, 45, 35, 41, 40, -38, 30, 27, 46, 27, -38, 35, 40, 35, 46, 35, 27, 38, 35, 52, 31, 30, 28, 15, 26, 25, 28, 30, -3, 15, 29, 29, 19, 25, 24, -18, ByteCode.T_LONG, 30, ByteCode.T_LONG, -13, 24, 19, 30, 19, ByteCode.T_LONG, 22, 19, 36, 15, 14};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final synchronized void A0C(C1609cu c1609cu) {
        if (this.A06 != null) {
            return;
        }
        this.A03 = A01(c1609cu);
        this.A06 = A05(c1609cu, this.A03, A03(c1609cu));
        A09(c1609cu, A00(c1609cu, this.A06));
        A0A(c1609cu, this.A06);
        A0B(c1609cu, this.A06);
        if (this.A06 != null) {
            this.A06.A6V();
        }
    }

    public static InterfaceC1211Rj A00(C1609cu c1609cu, InterfaceC0805Bn interfaceC0805Bn) {
        if (!U7.A1m(c1609cu) || interfaceC0805Bn == null) {
            return null;
        }
        return AbstractC1212Rk.A00().A00(interfaceC0805Bn);
    }

    public static InterfaceC1234Sh A01(C1609cu c1609cu) {
        return AbstractC1235Si.A00().A00(c1609cu, new YJ());
    }

    public static synchronized C1346Wt A02() {
        if (A07 == null) {
            A07 = new C1346Wt();
        }
        return A07;
    }

    public static InterfaceC1714ed A03(C1609cu c1609cu) {
        if (!U7.A1i(c1609cu)) {
            return null;
        }
        return C1732ev.A01(c1609cu);
    }

    @Override
    public final synchronized InterfaceC0805Bn A97() {
        return this.A06;
    }

    public static InterfaceC0805Bn A05(C1609cu c1609cu, InterfaceC1234Sh interfaceC1234Sh, InterfaceC1714ed interfaceC1714ed) {
        if (!U7.A2e(c1609cu) || interfaceC1714ed == null || ProcessUtils.isRemoteRenderingProcess()) {
            return null;
        }
        return AbstractC1754fI.A00().A00(c1609cu, interfaceC1234Sh, interfaceC1714ed, VZ.A04(c1609cu), new X8(new VR(c1609cu, A06(0, 0, 9), null, V6.A08, 0, new VB(), X7.A01(U7.A0N(c1609cu)), null, null, new C1867hB()), c1609cu), C1752fG.A00().A00());
    }

    public static void A08() {
        VF.A05(A06(32, 28, 52), A06(8, 24, 68), A06(0, 8, 99));
    }

    public static void A09(C1609cu c1609cu, InterfaceC1211Rj interfaceC1211Rj) {
        if (!U7.A1m(c1609cu) || interfaceC1211Rj == null) {
            return;
        }
        AbstractC1209Rh.A00().A00(interfaceC1211Rj, c1609cu);
    }

    public static void A0A(C1609cu c1609cu, InterfaceC0805Bn interfaceC0805Bn) {
        if (!U7.A0m(c1609cu) || interfaceC0805Bn == null) {
            return;
        }
        new S4(c1609cu, interfaceC0805Bn, new S5(), DynamicLoaderImpl.getBidderTokenProviderApi().A00());
    }

    public static void A0B(C1609cu c1609cu, InterfaceC0805Bn interfaceC0805Bn) {
        if (interfaceC0805Bn == null) {
            return;
        }
        UB.A00(c1609cu, interfaceC0805Bn);
    }

    @Override
    public final US A6f(C1609cu c1609cu) {
        return VG.A01(c1609cu);
    }

    @Override
    public final synchronized SR A6w(SQ sq) {
        if (this.A02 == null) {
            this.A02 = new XI(this);
        }
        return this.A02;
    }

    @Override
    public final synchronized SJ A78() {
        if (this.A01 == null) {
            this.A01 = new C1658di();
        }
        return this.A01;
    }

    @Override
    public final synchronized InterfaceC1234Sh A7d(SQ sq) {
        if (this.A03 == null) {
            this.A03 = A01(sq.A02());
        }
        return this.A03;
    }

    @Override
    public final synchronized InterfaceC1247Su A7f(SQ sq) {
        return new C1408Zd(sq);
    }

    @Override
    public final synchronized ST A7p(final SQ sq) {
        return new YI(sq) {
            @Override
            public final boolean A9e() {
                return CM.A09();
            }

            @Override
            public final void ABq() {
                TK.A06(RB.A09(super.A00));
            }

            @Override
            public final void ACE() {
                TK.A07(RB.A09(super.A00));
            }

            @Override
            public final void ACe(C1609cu c1609cu) {
                AbstractC1111Nl.A01(c1609cu);
            }
        };
    }

    @Override
    public final synchronized LL A84(SQ sq) {
        if (!U7.A13(sq)) {
            return null;
        }
        if (this.A00 == null) {
            this.A00 = LM.A00().A00(new YH(sq));
        }
        return this.A00;
    }

    @Override
    public final synchronized SV A8q(SQ sq) {
        return new XN(sq);
    }

    @Override
    public final C1609cu A8r(Context context) {
        C1609cu sdkContext = SP.A00();
        if (sdkContext == null) {
            C1609cu sdkContext2 = new C1609cu(context, this);
            SP.A01(sdkContext2);
            return sdkContext2;
        }
        return sdkContext;
    }

    @Override
    public final synchronized InterfaceC1282Ue A8s(C1609cu c1609cu) {
        if (this.A05 == null) {
            this.A05 = new VO(c1609cu);
        }
        return this.A05;
    }

    @Override
    public final synchronized TP A8y() {
        if (this.A04 == null) {
            this.A04 = new TP();
            A08();
        }
        return this.A04;
    }
}
