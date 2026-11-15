package com.facebook.ads.redexgen.core;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2277oG<K0, V0> {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{97, 116, 108, 97, 95, 112, 97, 96, 71, 97, 117, 111};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oG != com.google.common.collect.MultimapBuilder<K0, V0> */
    public AbstractC2277oG() {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oG != com.google.common.collect.MultimapBuilder<K0, V0> */
    public AbstractC2277oG(C0768Ab c0768Ab) {
        this();
    }

    public static AbstractC2276oF<Object> A00(int expectedKeys) {
        AbstractC2124ll.A00(expectedKeys, A03(0, 12, 125));
        return new C0768Ab(expectedKeys);
    }

    public static <K0> AbstractC2276oF<K0> A01(Comparator<K0> comparator) {
        AbstractC1977jA.A04(comparator);
        return new AZ(comparator);
    }

    public static AbstractC2276oF<Comparable> A02() {
        return A01(AbstractC2291oV.A03());
    }
}
