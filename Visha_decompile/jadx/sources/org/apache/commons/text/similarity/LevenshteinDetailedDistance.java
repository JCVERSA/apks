package org.apache.commons.text.similarity;

import java.lang.reflect.Array;
import java.util.Arrays;

public class LevenshteinDetailedDistance implements EditDistance<LevenshteinResults> {
    private static final LevenshteinDetailedDistance DEFAULT_INSTANCE = new LevenshteinDetailedDistance();
    private final Integer threshold;

    public LevenshteinDetailedDistance() {
        this(null);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006d A[PHI: r0 r1
      0x006d: PHI (r0v9 int) = (r0v6 int), (r0v1 int) binds: [B:43:0x0082, B:34:0x006b] A[DONT_GENERATE, DONT_INLINE]
      0x006d: PHI (r1v10 int) = (r1v1 int), (r1v11 int) binds: [B:43:0x0082, B:34:0x006b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0071 A[PHI: r0 r1
      0x0071: PHI (r0v7 int) = (r0v6 int), (r0v1 int) binds: [B:43:0x0082, B:34:0x006b] A[DONT_GENERATE, DONT_INLINE]
      0x0071: PHI (r1v8 int) = (r1v1 int), (r1v11 int) binds: [B:43:0x0082, B:34:0x006b] A[DONT_GENERATE, DONT_INLINE]] */
    private static LevenshteinResults findDetailedResults(CharSequence charSequence, CharSequence charSequence2, int[][] iArr, boolean z) {
        boolean z2;
        int length = charSequence2.length();
        int length2 = charSequence.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (length >= 0 && length2 >= 0) {
            int i4 = length2 == 0 ? -1 : iArr[length][length2 - 1];
            int i5 = length == 0 ? -1 : iArr[length - 1][length2];
            int i6 = (length <= 0 || length2 <= 0) ? -1 : iArr[length - 1][length2 - 1];
            if (i4 == -1 && i5 == -1 && i6 == -1) {
                break;
            }
            int i7 = iArr[length][length2];
            if (length2 > 0 && length > 0) {
                if (charSequence.charAt(length2 - 1) == charSequence2.charAt(length - 1)) {
                }
                length2--;
                length--;
            }
            int i8 = i7 - 1;
            boolean z3 = true;
            if ((i8 == i4 && i7 <= i6 && i7 <= i5) || (i6 == -1 && i5 == -1)) {
                length2--;
                if (z) {
                    i2++;
                    z2 = false;
                } else {
                    i++;
                    z2 = true;
                    z3 = false;
                }
            } else if ((i8 != i5 || i7 > i6 || i7 > i4) && !(i6 == -1 && i4 == -1)) {
                z2 = false;
                z3 = false;
            } else {
                length--;
                if (z) {
                    i++;
                    z2 = true;
                    z3 = false;
                } else {
                    i2++;
                    z2 = false;
                }
            }
            if (!z3 && !z2) {
                i3++;
                length2--;
                length--;
            }
        }
        return new LevenshteinResults(Integer.valueOf(i2 + i + i3), Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(i3));
    }

    public static LevenshteinDetailedDistance getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private static LevenshteinResults limitedCompare(CharSequence charSequence, CharSequence charSequence2, int i) {
        int i2;
        int length;
        boolean z;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("CharSequences must not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        int i3 = -1;
        int i4 = 0;
        if (length2 == 0) {
            return length3 <= i ? new LevenshteinResults(Integer.valueOf(length3), Integer.valueOf(length3), 0, 0) : new LevenshteinResults(-1, 0, 0, 0);
        }
        if (length3 == 0) {
            return length2 <= i ? new LevenshteinResults(Integer.valueOf(length2), 0, Integer.valueOf(length2), 0) : new LevenshteinResults(-1, 0, 0, 0);
        }
        int i5 = 1;
        if (length2 > length3) {
            length = charSequence.length();
            i2 = length3;
            z = true;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i2 = length2;
            length = length3;
            z = false;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i6 = i2 + 1;
        int[] iArr = new int[i6];
        int[] iArr2 = new int[i6];
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length + 1, i6);
        for (int i7 = 0; i7 <= i2; i7++) {
            iArr3[0][i7] = i7;
        }
        for (int i8 = 0; i8 <= length; i8++) {
            iArr3[i8][0] = i8;
        }
        int iMin = Math.min(i2, i) + 1;
        for (int i9 = 0; i9 < iMin; i9++) {
            iArr[i9] = i9;
        }
        int i10 = Integer.MAX_VALUE;
        Arrays.fill(iArr, iMin, i6, Integer.MAX_VALUE);
        Arrays.fill(iArr2, Integer.MAX_VALUE);
        int i11 = 1;
        while (i11 <= length) {
            char cCharAt = charSequence4.charAt(i11 - 1);
            iArr2[i4] = i11;
            int iMax = Math.max(i5, i11 - i);
            int iMin2 = i11 > i10 - i ? i2 : Math.min(i2, i11 + i);
            if (iMax > iMin2) {
                return new LevenshteinResults(Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i4), Integer.valueOf(i4));
            }
            if (iMax > 1) {
                iArr2[iMax - 1] = i10;
            }
            while (iMax <= iMin2) {
                int i12 = iMax - 1;
                if (charSequence3.charAt(i12) == cCharAt) {
                    iArr2[iMax] = iArr[i12];
                } else {
                    iArr2[iMax] = Math.min(Math.min(iArr2[i12], iArr[iMax]), iArr[i12]) + 1;
                }
                iArr3[i11][iMax] = iArr2[iMax];
                iMax++;
            }
            i11++;
            i5 = 1;
            i3 = -1;
            i4 = 0;
            i10 = Integer.MAX_VALUE;
            int[] iArr4 = iArr2;
            iArr2 = iArr;
            iArr = iArr4;
        }
        return iArr[i2] <= i ? findDetailedResults(charSequence3, charSequence4, iArr3, z) : new LevenshteinResults(-1, 0, 0, 0);
    }

    private static LevenshteinResults unlimitedCompare(CharSequence charSequence, CharSequence charSequence2) {
        int i;
        int length;
        boolean z;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("CharSequences must not be null");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        int i2 = 0;
        if (length2 == 0) {
            return new LevenshteinResults(Integer.valueOf(length3), Integer.valueOf(length3), 0, 0);
        }
        if (length3 == 0) {
            return new LevenshteinResults(Integer.valueOf(length2), 0, Integer.valueOf(length2), 0);
        }
        if (length2 > length3) {
            length = charSequence.length();
            i = length3;
            z = true;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i = length2;
            length = length3;
            z = false;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i3 = i + 1;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length + 1, i3);
        for (int i4 = 0; i4 <= i; i4++) {
            iArr3[0][i4] = i4;
        }
        for (int i5 = 0; i5 <= length; i5++) {
            iArr3[i5][0] = i5;
        }
        for (int i6 = 0; i6 <= i; i6++) {
            iArr[i6] = i6;
        }
        int i7 = 1;
        while (true) {
            int[] iArr4 = iArr2;
            iArr2 = iArr;
            iArr = iArr4;
            if (i7 > length) {
                return findDetailedResults(charSequence3, charSequence4, iArr3, z);
            }
            char cCharAt = charSequence4.charAt(i7 - 1);
            iArr[i2] = i7;
            int i8 = 1;
            while (i8 <= i) {
                int i9 = i8 - 1;
                int iMin = Math.min(Math.min(iArr[i9] + 1, iArr2[i8] + 1), iArr2[i9] + (charSequence3.charAt(i9) == cCharAt ? i2 : 1));
                iArr[i8] = iMin;
                iArr3[i7][i8] = iMin;
                i8++;
                i2 = 0;
            }
            i7++;
            i2 = 0;
        }
    }

    public Integer getThreshold() {
        return this.threshold;
    }

    public LevenshteinDetailedDistance(Integer num) {
        if (num != null && num.intValue() < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        this.threshold = num;
    }

    @Override
    public LevenshteinResults apply(CharSequence charSequence, CharSequence charSequence2) {
        Integer num = this.threshold;
        return num != null ? limitedCompare(charSequence, charSequence2, num.intValue()) : unlimitedCompare(charSequence, charSequence2);
    }
}
