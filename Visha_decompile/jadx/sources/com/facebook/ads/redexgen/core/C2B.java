package com.facebook.ads.redexgen.core;

import android.util.SparseBooleanArray;

public final class C2B {
    public static String[] A01 = {"ZtAeFZn0B1qTMkAv4TimNf", "onjqbWPlpraCurTtWuR0R", "izLFZdnLPv7lUm1GFercP1dDHTQqqlbm", "06udDjCQiMTHlo", "ThrPk51efRSGKxf", "UllMG4WENFsjBGTIREywCD", "xUDuL0NOtKss50bSSzha3FmKwjhZHM", "2ZQ9"};
    public final SparseBooleanArray A00;

    public C2B(SparseBooleanArray sparseBooleanArray) {
        this.A00 = sparseBooleanArray;
    }

    public final int A00() {
        return this.A00.size();
    }

    public final int A01(int i) {
        C3M.A00(i, 0, A00());
        return this.A00.keyAt(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r4 != r3) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r4 != r3) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r5 >= A00()) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
    
        r4 = A01(r5);
        r3 = r9.A01(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006c, code lost:
    
        if (com.facebook.ads.redexgen.core.C2B.A01[5].length() == 1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006e, code lost:
    
        r2 = com.facebook.ads.redexgen.core.C2B.A01;
        r2[4] = "0EnUC3S7s3BqIyD";
        r2[7] = "m0OD";
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007a, code lost:
    
        if (r4 == r3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0086, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2B)) {
            return false;
        }
        C2B c2b = (C2B) obj;
        int i = AbstractC06244a.A02;
        if (A01[6].length() != 30) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "V79UaeNQVFwVWh";
        strArr[1] = "sTKtjiNlOf72YkaUZZtiJ";
        if (i < 24) {
            int iA00 = A00();
            int iA01 = c2b.A00();
            if (A01[6].length() == 30) {
                A01[2] = "gWINzXnVkNSV1XpcBprNZ7cfktAxvgY6";
            }
        } else {
            return this.A00.equals(c2b.A00);
        }
    }

    public final int hashCode() {
        if (AbstractC06244a.A02 < 24) {
            int iA00 = A00();
            for (int i = 0; i < hashCode; i++) {
                int hashCode = A01(i);
                iA00 = (iA00 * 31) + hashCode;
                int i2 = A01[0].length();
                if (i2 == 12) {
                    throw new RuntimeException();
                }
                A01[2] = "oTlXYQnTcFkgjJigc1HTEJLN2hql86lz";
            }
            return iA00;
        }
        return this.A00.hashCode();
    }
}
