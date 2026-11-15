package com.facebook.ads.redexgen.core;

import android.os.Bundle;

public final class C2303oi implements C1S {
    public final C2307om A00;

    @Deprecated
    public final C07589r A01;
    public final C2305ok A02;
    public final C2Q A03;

    @Deprecated
    public final C2304oj A04;
    public final C2301og A05;
    public final String A06;
    public static String[] A07 = {"wAM8vtdO0lmHfSdh0aX8JSKdnwpCp9D2", "", "J6SB4ddL0FfEeVIHYuGnUGetWM2QRdUO", "0HTq7SjPEUFdYYph8tikUta3pLjb69Rn", "wGA6vSFg01QHk42FD2L8p637KRkqAXcn", "9eG6h6QaFREs2gWO0", "Z5vutuZNVsi2rK7c87KXUNl8wBJYnGEL", "V2BGt2aUfGoyLxnwwGFsOMeTNor3H3xe"};
    public static final C2303oi A09 = new C2I().A05();
    public static final C1R<C2303oi> A08 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2303oi.A00(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 8 out of bounds for length 8
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C2303oi A00(Bundle bundle) {
        String str = (String) C3M.A01(bundle.getString(A02(0), ""));
        Bundle bundle2 = bundle.getBundle(A02(1));
        C2305ok c2305ok = bundle2 == null ? C2305ok.A07 : (C2305ok) C2305ok.A06.A6X(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        C2301og c2301og = bundle3 == null ? C2301og.A0Z : (C2301og) C2301og.A0Y.A6X(bundle3);
        Bundle bundle4 = bundle.getBundle(A02(3));
        return new C2303oi(str, bundle4 == null ? C07589r.A00 : (C07589r) C2307om.A05.A6X(bundle4), null, c2305ok, c2301og);
    }

    public C2303oi(String str, C07589r c07589r, C2304oj c2304oj, C2305ok c2305ok, C2301og c2301og) {
        this.A06 = str;
        this.A03 = c2304oj;
        this.A04 = c2304oj;
        this.A02 = c2305ok;
        this.A05 = c2301og;
        this.A00 = c07589r;
        this.A01 = c07589r;
    }

    public static String A02(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2303oi)) {
            return false;
        }
        C2303oi c2303oi = (C2303oi) obj;
        if (AbstractC06244a.A1E(this.A06, c2303oi.A06)) {
            C2307om c2307om = this.A00;
            C2307om c2307om2 = c2303oi.A00;
            String[] strArr = A07;
            if (strArr[7].charAt(22) != strArr[2].charAt(22)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[7] = "WE1TlvFnuMEFfhCqOSZQGPel0cAOxnij";
            strArr2[2] = "QIjSvgjDyRqWUwkha5pDZVewjWBdao8T";
            if (c2307om.equals(c2307om2) && AbstractC06244a.A1E(this.A03, c2303oi.A03) && AbstractC06244a.A1E(this.A02, c2303oi.A02) && AbstractC06244a.A1E(this.A05, c2303oi.A05)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A06.hashCode();
        int i = result * 31;
        int result2 = this.A03 != null ? this.A03.hashCode() : 0;
        int iHashCode = (((i + result2) * 31) + this.A02.hashCode()) * 31;
        C2307om c2307om = this.A00;
        String[] strArr = A07;
        String str = strArr[4];
        String str2 = strArr[3];
        int iCharAt = str.charAt(31);
        int result3 = str2.charAt(31);
        if (iCharAt != result3) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "oKnJE1KY80M0C2djBAWfSHeSjkObNKTB";
        strArr2[2] = "bdrBBUaZbF1SVnsIGw0ZL6eMFfyDgZAn";
        int result4 = c2307om.hashCode();
        return ((iHashCode + result4) * 31) + this.A05.hashCode();
    }
}
