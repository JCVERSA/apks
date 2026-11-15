package com.facebook.ads.redexgen.core;

public final class C05410t extends C07117j implements Comparable<C05410t> {
    public static String[] A01 = {"kvWdB3TE4F02CvBMsBFKzpbhVf73VbPo", "pIhQPOOT2xsrqrTjtTEUrnlklrU2j4Xx", "pdYckjhCIzgQgDgJpRux4fo9y3MK9tam", "XLFgtw4chSUawlDhyOF7PI6ZgPIPNXPT", "wXiI6RESjxFaJi9cRzlxvGX2h498oRyj", "Xh6QYYa7B1600WPBULoDPW4oSxfbsPz9", "bCs754CcQZSDfR1NSOnMEHTumHpSYrD0", "OFiOLoEO5ZOYdCRe7y5ePAMAMobk5MLR"};
    public long A00;

    public C05410t() {
    }

    @Override
    public final int compareTo(C05410t c05410t) {
        if (A05() != c05410t.A05()) {
            return A05() ? 1 : -1;
        }
        long j = this.A01 - c05410t.A01;
        if (j == 0) {
            long j2 = this.A00;
            long delta = c05410t.A00;
            j = j2 - delta;
            if (j == 0) {
                return 0;
            }
        }
        String[] strArr = A01;
        if (strArr[7].charAt(9) != strArr[6].charAt(9)) {
            throw new RuntimeException();
        }
        A01[5] = "UnaoajjPsJhIzAMYj8TXxoU3mdsqoDpP";
        return j > 0 ? 1 : -1;
    }
}
