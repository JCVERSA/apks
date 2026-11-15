package com.facebook.ads.androidx.media3.common;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.AbstractC0779Am;
import com.facebook.ads.redexgen.core.C05551h;
import com.facebook.ads.redexgen.core.C07539m;
import com.facebook.ads.redexgen.core.C1Q;
import com.facebook.ads.redexgen.core.C1R;
import com.facebook.ads.redexgen.core.C1S;
import com.facebook.ads.redexgen.core.C2281oL;
import com.facebook.ads.redexgen.core.C2283oN;
import com.facebook.ads.redexgen.core.C3M;
import com.facebook.ads.redexgen.core.C3R;

public abstract class Timeline implements C1S {
    public static String[] A00 = {"u1TV1j0aFj13GJQ9ixTagHG8KyMgbnog", "4GMeFBxldVuonExwkIPaDDi9I59L728Z", "hqD1wOYcZTmehOTQOtlNc0UQ2KV4ETaI", "yejsGunEYiKaKfUzobCfCtheJf3zEEcL", "wYd9LRHFlTpJXE3VqmNr3ySXFdmyeGzN", "VCegaKN739XbWKUaP5Uwy30Zmvr6QTeK", "Cr3igiuAIuu", "x89DN52UD2fFRZn9rQXfWzGYhaiJYHE1"};
    public static final Timeline A02 = new Timeline() {
        @Override
        public final int A06() {
            return 0;
        }

        @Override
        public final int A07() {
            return 0;
        }

        @Override
        public final int A0A(Object obj) {
            return -1;
        }

        @Override
        public final C2283oN A0I(int i, C2283oN c2283oN, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public final C2281oL A0L(int i, C2281oL c2281oL, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override
        public final Object A0M(int i) {
            throw new IndexOutOfBoundsException();
        }
    };
    public static final String A05 = AbstractC06244a.A0h(0);
    public static final String A03 = AbstractC06244a.A0h(1);
    public static final String A04 = AbstractC06244a.A0h(2);
    public static final C1R<Timeline> A01 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return Timeline.A02(bundle);
        }
    };

    public abstract int A06();

    public abstract int A07();

    public abstract int A0A(Object obj);

    public abstract C2283oN A0I(int i, C2283oN c2283oN, boolean z);

    public abstract C2281oL A0L(int i, C2281oL c2281oL, long j);

    public abstract Object A0M(int i);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Period> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Window> */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.ads.redexgen.X.9m] */
    public static C07539m A02(Bundle bundle) {
        final AbstractC0779Am abstractC0779AmA04 = A04(C2281oL.A0J, C3R.A00(bundle, A05));
        final AbstractC0779Am abstractC0779AmA05 = A04(C2283oN.A08, C3R.A00(bundle, A03));
        final int[] intArray = bundle.getIntArray(A04);
        if (intArray == null) {
            intArray = A05(abstractC0779AmA04.size());
        }
        return new Timeline(abstractC0779AmA04, abstractC0779AmA05, intArray) {
            public static String[] A04 = {"nDkuZZEFG4iGMwbsGEvKBo4ueCI7wxif", "OM6NJOBBZMKrUazjZz4CdR8Ljfz9nzwy", "h9AdYD37MAF4FmuzDOyGIvEw", "VkmtOVI9Gbc78hEhNGIz4LiMtzYnUrU2", "bkWqGplua99PBwc9ED6yZtwvDtuw6KwN", "305DBImSoaz5MlD7g6qLfpiwFg5d3Fl", "QtOjLPNYFNek9UnmHWOFtbeX9w", "y2avdvKeY0dhYPEmFhuJXZmeyR2ks2D4"};
            public final AbstractC0779Am<C2283oN> A00;
            public final AbstractC0779Am<C2281oL> A01;
            public final int[] A02;
            public final int[] A03;

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Period> */
            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.Timeline$Window> */
            {
                C3M.A07(abstractC0779AmA04.size() == intArray.length);
                this.A01 = abstractC0779AmA04;
                this.A00 = abstractC0779AmA05;
                this.A02 = intArray;
                this.A03 = new int[intArray.length];
                for (int i = 0; i < i; i++) {
                    int[] iArr = this.A03;
                    int i2 = intArray[i];
                    iArr[i2] = i;
                }
            }

            @Override
            public final int A06() {
                return this.A00.size();
            }

            @Override
            public final int A07() {
                return this.A01.size();
            }

            @Override
            public final int A08(int i, int i2, boolean z) {
                if (i2 == 1) {
                    return i;
                }
                if (i == A0C(z)) {
                    if (i2 == 2) {
                        return A0B(z);
                    }
                    return -1;
                }
                if (z) {
                    return this.A02[this.A03[i] + 1];
                }
                return i + 1;
            }

            @Override
            public final int A0A(Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override
            public final int A0B(boolean z) {
                if (A0N()) {
                    return -1;
                }
                if (!z) {
                    return 0;
                }
                int[] iArr = this.A02;
                if (A04[1].charAt(22) == 'H') {
                    throw new RuntimeException();
                }
                A04[7] = "6ncpOYdEr0xsUZdZBYFnYejLEosAstPL";
                return iArr[0];
            }

            @Override
            public final int A0C(boolean z) {
                if (A0N()) {
                    return -1;
                }
                if (z) {
                    return this.A02[A07() - 1];
                }
                return A07() - 1;
            }

            @Override
            public final C2283oN A0I(int i, C2283oN p, boolean z) {
                C2283oN p2 = this.A00.get(i);
                p.A0G(p2.A03, p2.A04, p2.A00, p2.A01, p2.A02, p2.A06, p2.A05);
                return p;
            }

            @Override
            public final C2281oL A0L(int i, C2281oL c2281oL, long j) {
                C2281oL c2281oL2 = this.A01.get(i);
                c2281oL.A07(c2281oL2.A0C, c2281oL2.A09, c2281oL2.A0A, c2281oL2.A06, c2281oL2.A07, c2281oL2.A04, c2281oL2.A0G, c2281oL2.A0D, c2281oL2.A08, c2281oL2.A02, c2281oL2.A03, c2281oL2.A00, c2281oL2.A01, c2281oL2.A05);
                c2281oL.A0F = c2281oL2.A0F;
                return c2281oL;
            }

            @Override
            public final Object A0M(int i) {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1R != com.facebook.ads.androidx.media3.common.Bundleable$Creator<T extends com.facebook.ads.redexgen.X.1S> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<T extends com.facebook.ads.redexgen.X.1S> */
    public static <T extends C1S> AbstractC0779Am<T> A04(C1R<T> c1r, IBinder iBinder) {
        if (iBinder == null) {
            return AbstractC0779Am.A03();
        }
        C05551h c05551h = new C05551h();
        AbstractC0779Am<Bundle> abstractC0779AmA00 = C1Q.A00(iBinder);
        for (int i = 0; i < abstractC0779AmA00.size(); i++) {
            c05551h.A04(c1r.A6X(abstractC0779AmA00.get(i)));
        }
        return c05551h.A05();
    }

    public static int[] A05(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
            int i3 = A00[1].charAt(20);
            if (i3 == 50) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[2] = "bm1hpxiL8T70YPoy7qoC4X3DFFhRRvrI";
            strArr[4] = "ZU2doOYnXTdq2XyitRV5O0BVNSu1NLTL";
        }
        return iArr;
    }

    public int A08(int i, int i2, boolean z) {
        switch (i2) {
            case 0:
                if (i == A0C(z)) {
                    return -1;
                }
                return i + 1;
            case 1:
                return i;
            case 2:
                int iA0C = A0C(z);
                String[] strArr = A00;
                if (strArr[3].charAt(14) != strArr[5].charAt(14)) {
                    throw new RuntimeException();
                }
                A00[1] = "R0HEAX03GiDQUcMP0CiDD2yYG3qNGv8H";
                if (i == iA0C) {
                    return A0B(z);
                }
                return i + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A09(int i, C2283oN c2283oN, C2281oL c2281oL, int i2, boolean z) {
        int i3 = A0H(i, c2283oN).A00;
        int windowIndex = A0K(i3, c2281oL).A01;
        if (windowIndex == i) {
            int nextWindowIndex = A08(i3, i2, z);
            if (nextWindowIndex == -1) {
                return -1;
            }
            int windowIndex2 = A0K(nextWindowIndex, c2281oL).A00;
            return windowIndex2;
        }
        int windowIndex3 = i + 1;
        return windowIndex3;
    }

    public int A0B(boolean z) {
        return A0N() ? -1 : 0;
    }

    public int A0C(boolean z) {
        if (A0N()) {
            return -1;
        }
        return A07() - 1;
    }

    @Deprecated
    public final Pair<Object, Long> A0D(C2281oL c2281oL, C2283oN c2283oN, int i, long j) {
        return A0E(c2281oL, c2283oN, i, j);
    }

    public final Pair<Object, Long> A0E(C2281oL c2281oL, C2283oN c2283oN, int i, long j) {
        return (Pair) C3M.A01(A0G(c2281oL, c2283oN, i, j, 0L));
    }

    @Deprecated
    public final Pair<Object, Long> A0F(C2281oL c2281oL, C2283oN c2283oN, int i, long j, long j2) {
        return A0G(c2281oL, c2283oN, i, j, j2);
    }

    public final Pair<Object, Long> A0G(C2281oL c2281oL, C2283oN c2283oN, int i, long j, long j2) {
        C3M.A00(i, 0, A07());
        A0L(i, c2281oL, j2);
        if (j == C.TIME_UNSET) {
            j = c2281oL.A05();
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = c2281oL.A00;
        A0H(i2, c2283oN);
        while (i2 < c2281oL.A01 && c2283oN.A02 != j && A0H(i2 + 1, c2283oN).A02 <= j) {
            i2++;
        }
        A0I(i2, c2283oN, true);
        long jMin = j - c2283oN.A02;
        if (c2283oN.A01 != C.TIME_UNSET) {
            long j3 = c2283oN.A01;
            if (A00[1].charAt(20) == '2') {
                throw new RuntimeException();
            }
            A00[1] = "slEcDLMOMSnRw8lzrIQwxe9jf9tcgTic";
            jMin = Math.min(jMin, j3 - 1);
        }
        return Pair.create(C3M.A01(c2283oN.A04), Long.valueOf(Math.max(0L, jMin)));
    }

    public final C2283oN A0H(int i, C2283oN c2283oN) {
        return A0I(i, c2283oN, false);
    }

    public C2283oN A0J(Object obj, C2283oN c2283oN) {
        return A0I(A0A(obj), c2283oN, true);
    }

    public final C2281oL A0K(int i, C2281oL c2281oL) {
        return A0L(i, c2281oL, 0L);
    }

    public final boolean A0N() {
        return A07() == 0;
    }

    public final boolean A0O(int i, C2283oN c2283oN, C2281oL c2281oL, int i2, boolean z) {
        return A09(i, c2283oN, c2281oL, i2, z) == -1;
    }

    public final boolean equals(Object obj) {
        int iA0C;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.A07() != A07() || timeline.A06() != A06()) {
            return false;
        }
        C2281oL c2281oL = new C2281oL();
        C2283oN c2283oN = new C2283oN();
        C2281oL window = new C2281oL();
        C2283oN otherPeriod = new C2283oN();
        for (int i = 0; i < A07(); i++) {
            if (!A0K(i, c2281oL).equals(timeline.A0K(i, window))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < A06(); i2++) {
            boolean zEquals = A0I(i2, c2283oN, true).equals(timeline.A0I(i2, otherPeriod, true));
            if (A00[6].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[7] = "LCXdoHEXleHtD1UyLVprjOGqC7qnADXU";
            strArr[0] = "np8LEsRhRemsbbWWIjAQc1GjKbBRdfRS";
            if (!zEquals) {
                return false;
            }
        }
        int iA0B = A0B(true);
        if (iA0B != timeline.A0B(true) || (iA0C = A0C(true)) != timeline.A0C(true)) {
            return false;
        }
        while (iA0B != iA0C) {
            int iA08 = A08(iA0B, 0, true);
            if (iA08 != timeline.A08(iA0B, 0, true)) {
                return false;
            }
            iA0B = iA08;
        }
        return true;
    }

    public final int hashCode() {
        C2281oL c2281oL = new C2281oL();
        C2283oN c2283oN = new C2283oN();
        int result = 7 * 31;
        int i = result + A07();
        for (int i2 = 0; i2 < A07(); i2++) {
            C2281oL window = A0K(i2, c2281oL);
            i = (i * 31) + window.hashCode();
        }
        int result2 = i * 31;
        int i3 = result2 + A06();
        for (int i4 = 0; i4 < A06(); i4++) {
            i3 = (i3 * 31) + A0I(i4, c2283oN, true).hashCode();
        }
        int iA0B = A0B(true);
        while (iA0B != -1) {
            int windowIndex = i3 * 31;
            i3 = windowIndex + iA0B;
            iA0B = A08(iA0B, 0, true);
        }
        return i3;
    }
}
