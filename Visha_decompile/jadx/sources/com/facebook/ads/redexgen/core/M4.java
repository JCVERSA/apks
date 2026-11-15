package com.facebook.ads.redexgen.core;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeSet;

public final class M4 {
    public static byte[] A05;
    public static String[] A06 = {"nQDli3B322dNyuNUEmcA1lNjVYYmcThQ", "JG8wfEU3nZ2EADYXO0uZDMHFqmVSkpWr", "8K0NmfCVVugnhGVgpCD", "5JHmUKWu4ei3dzUY0lNr", "xKwnuhTKVDH3YhaAiUGpqwLltg47C3CG", "Jcwv8MY0", "vBOLiuiZ", "hny3hth3cGmNH4IG9ndqfAmzri4VXjHL"};
    public C1960is A00;
    public final int A01;
    public final String A02;
    public final ArrayList<M3> A03;
    public final TreeSet<C1958iq> A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{115, -57, -62, 115, -100, -70, -68, -63, -66, -67, -100, -56, -57, -51, -66, -57, -51, -57, -30, -22, -19, -26, -27, -95, -11, -16, -95, -13, -26, -17, -30, -18, -26, -95};
    }

    static {
        A01();
    }

    public M4(int i, String str) {
        this(i, str, C1960is.A03);
    }

    public M4(int i, String str, C1960is c1960is) {
        this.A01 = i;
        this.A02 = str;
        this.A00 = c1960is;
        this.A04 = new TreeSet<>();
        this.A03 = new ArrayList<>();
    }

    public final long A02(long j, long j2) {
        boolean z = true;
        C3M.A07(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        C3M.A07(z);
        C1958iq c1958iqA04 = A04(j, j2);
        if (c1958iqA04.A03()) {
            return -Math.min(c1958iqA04.A04() ? Long.MAX_VALUE : c1958iqA04.A01, j2);
        }
        long j3 = j + j2;
        if (j3 < 0) {
            j3 = Long.MAX_VALUE;
        }
        long currentEndPosition = c1958iqA04.A02 + c1958iqA04.A01;
        if (currentEndPosition < j3) {
            TreeSet<C1958iq> treeSet = this.A04;
            String[] strArr = A06;
            if (strArr[5].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[2] = "31viDRwdD8ErVcI5dXS";
            strArr2[3] = "q1k4diPGE3D0s4ujqDJA";
            for (C1958iq c1958iq : treeSet.tailSet(c1958iqA04, false)) {
                if (c1958iq.A02 > currentEndPosition) {
                    break;
                }
                long j4 = c1958iq.A02;
                long queryEndPosition = c1958iq.A01;
                currentEndPosition = Math.max(currentEndPosition, j4 + queryEndPosition);
                if (currentEndPosition >= j3) {
                    break;
                }
            }
        }
        return Math.min(currentEndPosition - j, j2);
    }

    public final C1960is A03() {
        return this.A00;
    }

    public final C1958iq A04(long j, long j2) {
        C1958iq c1958iqA03 = C1958iq.A03(this.A02, j);
        C1958iq c1958iqFloor = this.A04.floor(c1958iqA03);
        if (c1958iqFloor != null && c1958iqFloor.A02 + c1958iqFloor.A01 > j) {
            return c1958iqFloor;
        }
        C1958iq lookupSpan = this.A04.ceiling(c1958iqA03);
        if (lookupSpan != null) {
            long jMin = lookupSpan.A02 - j;
            if (j2 != -1) {
                jMin = Math.min(jMin, j2);
            }
            j2 = jMin;
        }
        return C1958iq.A04(this.A02, j, j2);
    }

    public final C1958iq A05(C1958iq c1958iq, long j, boolean z) {
        C3M.A08(this.A04.remove(c1958iq));
        File file = (File) C3M.A01(c1958iq.A03);
        if (z) {
            File file2 = file.getParentFile();
            File fileA05 = C1958iq.A05((File) C3M.A01(file2), this.A01, c1958iq.A02, j);
            if (file.renameTo(fileA05)) {
                file = fileA05;
            } else {
                AnonymousClass44.A07(A00(4, 13, 42), A00(17, 17, 82) + file + A00(0, 4, 36) + fileA05);
            }
        }
        C1958iq newCacheSpan = c1958iq.A09(file, j);
        this.A04.add(newCacheSpan);
        return newCacheSpan;
    }

    public final TreeSet<C1958iq> A06() {
        return this.A04;
    }

    public final void A07(long j) {
        for (int i = 0; i < i; i++) {
            if (this.A03.get(i).A01 == j) {
                this.A03.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public final void A08(C1958iq c1958iq) {
        this.A04.add(c1958iq);
    }

    public final boolean A09() {
        return this.A04.isEmpty();
    }

    public final boolean A0A() {
        return this.A03.isEmpty();
    }

    public final boolean A0B(long j, long j2) {
        for (int i = 0; i < i; i++) {
            if (this.A03.get(i).A00(j, j2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0C(long j, long j2) {
        for (int i = 0; i < i; i++) {
            if (this.A03.get(i).A01(j, j2)) {
                return false;
            }
        }
        this.A03.add(new M3(j, j2));
        return true;
    }

    public final boolean A0D(C1072Lx c1072Lx) {
        if (this.A04.remove(c1072Lx)) {
            if (c1072Lx.A03 != null) {
                c1072Lx.A03.delete();
                return true;
            }
            return true;
        }
        String[] strArr = A06;
        if (strArr[2].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[2] = "U4uu0ltzeeg5QMm1KwS";
        strArr2[3] = "VtFGErd1YdVsfyUNL3Po";
        return false;
    }

    public final boolean A0E(M9 m9) {
        C1960is c1960is = this.A00;
        C1960is oldMetadata = this.A00;
        this.A00 = oldMetadata.A05(m9);
        C1960is oldMetadata2 = this.A00;
        return !oldMetadata2.equals(c1960is);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        M4 m4 = (M4) obj;
        if (this.A01 == m4.A01 && this.A02.equals(m4.A02) && this.A04.equals(m4.A04) && this.A00.equals(m4.A00)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A01;
        int i = result * 31;
        int result2 = this.A02.hashCode();
        return ((i + result2) * 31) + this.A00.hashCode();
    }
}
