package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C1H implements A6 {
    public static byte[] A09;
    public static String[] A0A = {"5g", "bfnfjiUri9kvxuLEKnZU3kJc1ieY23zz", "NIX", "B1MUzprhDDigVQ4p3NlPN3VyWdkPEAJB", "UzK", "rOCmuOM4l5uJjn2akKGm2JxYL79BUlOr", "kAulvLpzcmVynuK8kNGYEaaJbNqcwElD", "7ScKsdjGN77oK2tO1d"};
    public static final String A0B;
    public long A00;
    public InterfaceC2356pr A01;
    public final InterfaceC2355pq A02;
    public final C2348pi A03;
    public final C2348pi A04;
    public final List<Rect> A05;
    public final Map<String, C2347ph> A06;
    public final boolean A07;
    public final boolean A08;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0A;
            if (strArr[3].charAt(2) == strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[5] = "GBjOApmdB9meVYu3h8dWYwSrfWPE5QmB";
            strArr2[6] = "rSzbUr5mB5cqWCHa6t40U5C3uIAdU8ry";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
            i4++;
        }
    }

    public static void A03() {
        A09 = new byte[]{20, 40, 41, 51, 96, 54, 41, 37, 55, 48, 47, 41, 46, 52, 96, 40, 33, 51, 96, 46, 47, 52, 96, 34, 37, 37, 46, 96, 45, 37, 33, 51, 53, 50, 37, 36, 96, 47, 50, 96, 41, 51, 96, 33, 96, 39, 50, 47, 53, 48, 96, 55, 40, 41, 35, 40, 96, 55, 41, 44, 44, 96, 46, 37, 54, 37, 50, 96, 50, 37, 52, 53, 50, 46, 96, 33, 96, 45, 37, 33, 51, 53, 50, 37, 45, 37, 46, 52, 96, 51, 41, 46, 35, 37, 96, 41, 52, 103, 51, 96, 45, 33, 36, 37, 96, 53, 48, 96, 47, 38, 96, 51, 53, 34, 54, 41, 37, 55, 51, 96, 52, 40, 33, 52, 96, 35, 47, 53, 44, 36, 96, 34, 37, 96, 47, 38, 38, 51, 35, 50, 37, 37, 46, 16, 27, 9, 45, 29, 31, 16, 61, 38, Utf8.REPLACEMENT_BYTE, Utf8.REPLACEMENT_BYTE, 115, 37, 58, 54, 36, 115, 35, 33, 60, 35, 54, 33, 39, 42, 115, 53, 60, 33, 115, 33, 54, 62, 60, 37, 54, 55, 115, 58, 39, 54, 62, 115, 30, 2, ByteCode.T_LONG, 25, Utf8.REPLACEMENT_BYTE, 8, 29, 2, 31, 25};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 9
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final void A6H(List<C2359pu<?, ?>> list) {
        if (list != null && !list.isEmpty()) {
            A06(list);
        }
        A05(this.A04);
        A04(this.A04);
        A05(this.A03);
        A04(this.A03);
        if (0 != 0) {
            new C2345pf(toString(), this, this.A05, this.A04.A00(), this.A03.A00());
            throw new NullPointerException(A02(143, 7, 55));
        }
    }

    static {
        A03();
        A0B = C1H.class.getSimpleName();
    }

    public C1H(InterfaceC2355pq interfaceC2355pq) {
        this(interfaceC2355pq, false, false);
    }

    public C1H(InterfaceC2355pq interfaceC2355pq, boolean z, boolean z2) {
        this.A06 = new HashMap();
        this.A04 = new C2348pi();
        this.A03 = new C2348pi();
        this.A05 = new ArrayList(1);
        this.A02 = interfaceC2355pq;
        this.A08 = z;
        this.A07 = z2;
    }

    public static Rect A00(C2347ph c2347ph) {
        if (c2347ph == null || c2347ph.A02.top == Integer.MIN_VALUE || c2347ph.A02.left == Integer.MIN_VALUE || c2347ph.A02.right == Integer.MIN_VALUE || c2347ph.A02.bottom == Integer.MIN_VALUE) {
            throw new IllegalStateException(A02(0, 143, 9));
        }
        return c2347ph.A02;
    }

    private C2347ph A01(C2359pu c2359pu, Rect rect, Rect rect2) {
        C2347ph c2347phA03 = this.A06.get(c2359pu.A02);
        if (this.A04.A06(c2359pu)) {
            if (c2347phA03 != null) {
                c2347phA03.A01 = EnumC2351pl.A04;
            } else {
                c2347phA03 = C2347ph.A03(this.A00);
                this.A06.put(c2359pu.A02, c2347phA03);
            }
        }
        C2347ph viewProperties = (C2347ph) Preconditions.checkNotNull(c2347phA03);
        viewProperties.A02.set(rect2);
        c2347phA03.A03.add(new Rect(rect));
        return c2347phA03;
    }

    private void A04(C2348pi c2348pi) {
        for (C2359pu c2359pu : c2348pi.A01()) {
            C2347ph c2347ph = this.A06.get(c2359pu.A02);
            if (c2347ph == null) {
                if (0 != 0) {
                    String str = A02(150, 36, 26) + c2359pu.A02;
                    throw new NullPointerException(A02(ByteCode.INVOKEDYNAMIC, 10, 36));
                }
            } else {
                c2347ph.A01 = EnumC2351pl.A03;
                c2347ph.A03.clear();
                if (A07(c2359pu)) {
                    c2359pu.A03(this);
                }
                if (this.A08) {
                    this.A06.remove(c2347ph);
                }
            }
        }
    }

    private void A05(C2348pi c2348pi) {
        for (C2359pu visible : c2348pi.A00()) {
            if (A07(visible)) {
                visible.A03(this);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x005c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    private void A06(List<C2359pu<?, ?>> list) {
        for (C2359pu<?, ?> c2359pu : list) {
            if (this.A06.get(c2359pu.A02) != null) {
                boolean z = c2359pu.A04;
                if (A0A[0].length() != 2) {
                    throw new RuntimeException();
                }
                A0A[7] = "nPwsVC";
                if (z) {
                    EnumC2351pl enumC2351pl = c2359pu.A01;
                    String[] strArr = A0A;
                    if (strArr[5].length() != strArr[6].length()) {
                        A0A[0] = "zj";
                        if (enumC2351pl != null) {
                            if (c2359pu.A01 != EnumC2351pl.A03) {
                                c2359pu.A03(this);
                            }
                        }
                    } else {
                        String[] strArr2 = A0A;
                        strArr2[4] = "4Gl";
                        strArr2[2] = "t26";
                        if (enumC2351pl != null) {
                            if (c2359pu.A01 != EnumC2351pl.A03) {
                                c2359pu.A03(this);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public static boolean A07(C2359pu<?, ?> c2359pu) {
        if (c2359pu.A04) {
            EnumC2360pv enumC2360pv = c2359pu.A00;
            EnumC2360pv enumC2360pv2 = EnumC2360pv.A04;
            String[] strArr = A0A;
            if (strArr[5].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0A[7] = "iICfc1p4CYNR1vFaz";
            if (enumC2360pv == enumC2360pv2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:22:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e6  */
    @Override
    public final void A3y(C2359pu c2359pu, Rect rect, Rect rect2, boolean z) {
        EnumC2351pl enumC2351pl;
        A01(c2359pu, rect, rect2);
        C2359pu c2359pu2 = c2359pu.A05;
        C2359pu parentViewpointData = C2359pu.A0B;
        if (c2359pu2 == parentViewpointData || c2359pu2 == null) {
            return;
        }
        boolean zA06 = this.A03.A06(c2359pu2);
        C2347ph c2347phA03 = this.A06.get(c2359pu2.A02);
        if (zA06) {
            if (c2347phA03 == null) {
                c2347phA03 = C2347ph.A03(this.A00);
                c2347phA03.A02.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
                this.A06.put(c2359pu2.A02, c2347phA03);
            } else {
                c2347phA03.A03.clear();
                if (this.A07) {
                    boolean zA04 = c2359pu2.A04();
                    if (A0A[0].length() != 2) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0A;
                    strArr[5] = "H54AceamXdthsYm78mtSydojeY2Fx6Sn";
                    strArr[6] = "PVfiJKIqQ6L9JP1UYx1CLIU2NiQOo1Yq";
                    if (zA04) {
                        enumC2351pl = EnumC2351pl.A04;
                        if (A0A[7].length() != 26) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0A;
                        strArr2[5] = "tsuWg7tiHeCbTZ79GKvfVJLQxaexBCGH";
                        strArr2[6] = "f1Y9d3aTAam6AIKjxx39fqUFlMtOCeIE";
                        c2347phA03.A01 = enumC2351pl;
                    }
                } else {
                    enumC2351pl = EnumC2351pl.A04;
                    if (A0A[7].length() != 26) {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A0A;
                    strArr3[5] = "tsuWg7tiHeCbTZ79GKvfVJLQxaexBCGH";
                    strArr3[6] = "f1Y9d3aTAam6AIKjxx39fqUFlMtOCeIE";
                    c2347phA03.A01 = enumC2351pl;
                }
            }
            if (z) {
                c2347phA03.A02.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
        } else if (z && c2347phA03 != null) {
            c2347phA03.A02.set(Math.min(rect2.left, c2347phA03.A02.left), Math.min(rect2.top, c2347phA03.A02.top), Math.max(rect2.right, c2347phA03.A02.right), Math.max(rect2.bottom, c2347phA03.A02.bottom));
        }
        Preconditions.checkNotNull(c2347phA03);
        ((List) Preconditions.checkNotNull(c2347phA03.A03)).add(new Rect(rect));
    }

    @Override
    public final void A4Z(long j, List<Rect> list) {
        this.A00 = j;
        this.A05.clear();
        Iterator<Rect> it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A0A;
            if (strArr[3].charAt(2) == strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[4] = "xWg";
            strArr2[2] = "l5f";
            if (zHasNext) {
                this.A05.add(new Rect(it.next()));
            } else {
                Iterator it2 = this.A04.A01().iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    if (A0A[0].length() == 2) {
                        String[] strArr3 = A0A;
                        strArr3[3] = "KXc0LwnJCEJYYpq44EYPYXvj71LHxLBt";
                        strArr3[1] = "SZ9db6jeJg1WeryC8zmRUBHGUrGxU8hd";
                        if (!zHasNext2) {
                            break;
                        }
                        this.A06.remove(((C2359pu) it2.next()).A02);
                    } else {
                        if (!zHasNext2) {
                            break;
                        }
                        this.A06.remove(((C2359pu) it2.next()).A02);
                    }
                }
                Collection<C2359pu> collectionA01 = this.A03.A01();
                if (A0A[0].length() != 2) {
                    throw new RuntimeException();
                }
                A0A[0] = "Au";
                for (C2359pu viewpointData : collectionA01) {
                    this.A06.remove(viewpointData.A02);
                }
                Iterator<C2347ph> it3 = this.A06.values().iterator();
                while (it3.hasNext()) {
                    it3.next().A03.clear();
                }
                this.A04.A04();
                this.A03.A04();
                return;
            }
        }
    }

    @Override
    public final void A85(C2359pu c2359pu, Rect rect) {
        rect.setEmpty();
        Iterator it = ((C2347ph) Preconditions.checkNotNull(this.A06.get(c2359pu.A02))).A03.iterator();
        while (it.hasNext()) {
            rect.union((Rect) it.next());
        }
    }

    @Override
    public final EnumC2351pl A9M(C2359pu c2359pu) {
        EnumC2351pl enumC2351pl = ((C2347ph) Preconditions.checkNotNull(this.A06.get(c2359pu.A02))).A01;
        if (c2359pu.A04) {
            if (c2359pu.A00 == EnumC2360pv.A04) {
                EnumC2351pl viewState = EnumC2351pl.A03;
                return viewState;
            }
            EnumC2351pl viewState2 = EnumC2351pl.A04;
            if (enumC2351pl == viewState2 && !c2359pu.A04()) {
                EnumC2351pl viewState3 = EnumC2351pl.A02;
                return viewState3;
            }
        }
        return enumC2351pl;
    }

    @Override
    public final void A9O(Rect rect) {
        rect.setEmpty();
        Iterator<Rect> it = this.A05.iterator();
        while (it.hasNext()) {
            rect.union(it.next());
        }
    }

    @Override
    public final float A9P(C2359pu c2359pu) {
        C2347ph c2347ph = this.A06.get(c2359pu.A02);
        if (c2347ph != null) {
            Rect rectA00 = A00(c2347ph);
            int iHeight = rectA00.height() * rectA00.width();
            int totalVisibleArea = 0;
            for (Rect rect : c2347ph.A03) {
                totalVisibleArea += rect.height() * rect.width();
            }
            return totalVisibleArea / iHeight;
        }
        return 0.0f;
    }

    @Override
    public final void AJA(InterfaceC2356pr interfaceC2356pr) {
        this.A01 = interfaceC2356pr;
    }
}
