package com.facebook.ads.redexgen.core;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Comparator;

public class K6 {
    public static String[] A02 = {"qTeBguUhuyM1MFes5Wth7HwI8JVW0esL", "wy2OEDVCsbs7Li1HpnMScgVTk8nNd5Di", "4", "CU9fduzhq9VQNbJmZcJcyCUxTgO6nbWs", "5", "s", "JcGduWYdz", "iAKvMVZDfF33p8y0i7fbnjg8iQoR6jrx"};
    public static final Comparator<K6> A03 = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((K6) obj).A01.A00, ((K6) obj2).A01.A00);
        }
    };
    public final int A00;
    public final K7 A01;

    public K6(K7 k7, int i) {
        this.A01 = k7;
        this.A00 = i;
    }

    public static Comparator A03() {
        Comparator<K6> comparator = A03;
        if (A02[1].charAt(25) != '8') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[4] = CmcdData.STREAMING_FORMAT_HLS;
        strArr[5] = "u";
        return comparator;
    }
}
