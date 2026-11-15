package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

public final class C2321p1 implements C1S {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final boolean A04;
    public final int[] A05;
    public final long[] A06;
    public final Uri[] A07;
    public static String[] A08 = {"OkxecgD0Gv2GK", "dTJXSSjTvXtvCpVWxsqZ6", "wYzs5zgiK5G18", "klAEANkVopL6T8N0G4GCOYVrDlyPlXqI", "4WcRthq3aJhjltodanyM1lxGrZBe12qe", "Nzs6zPyAK9Q7ZYWQPcJbQV1Iqfi6la98", "CqWpbShPfJkKIhE6JIbgz0xValvGrdcB", "ap1AkjUIhWjw5r6nQb"};
    public static final String A0G = AbstractC06244a.A0h(0);
    public static final String A0B = AbstractC06244a.A0h(1);
    public static final String A0H = AbstractC06244a.A0h(2);
    public static final String A0F = AbstractC06244a.A0h(3);
    public static final String A0C = AbstractC06244a.A0h(4);
    public static final String A0A = AbstractC06244a.A0h(5);
    public static final String A0D = AbstractC06244a.A0h(6);
    public static final String A0E = AbstractC06244a.A0h(7);
    public static final C1R<C2321p1> A09 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2321p1.A00(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 16 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C2321p1 A00(Bundle bundle) {
        long j = bundle.getLong(A0G);
        int i = bundle.getInt(A0B);
        int i2 = bundle.getInt(A0E);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A0H);
        int[] intArray = bundle.getIntArray(A0F);
        long[] longArray = bundle.getLongArray(A0C);
        long j2 = bundle.getLong(A0A);
        boolean z = bundle.getBoolean(A0D);
        if (intArray == null) {
            intArray = new int[0];
        }
        Uri[] uriArr = new Uri[0];
        String[] strArr = A08;
        if (strArr[2].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[2] = "h5Cz72DlneqkJ";
        strArr2[0] = "HzHttfqxNoxwC";
        if (parcelableArrayList != null) {
            uriArr = (Uri[]) parcelableArrayList.toArray(uriArr);
        }
        if (longArray == null) {
            longArray = new long[0];
        }
        return new C2321p1(j, i, i2, intArray, uriArr, longArray, j2, z);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final C2321p1 A06(int i) {
        int[] iArrA02 = A02(this.A05, i);
        long[] jArrA03 = A03(this.A06, i);
        return new C2321p1(this.A03, i, this.A01, iArrA02, (Uri[]) Arrays.copyOf(this.A07, i), jArrA03, this.A02, this.A04);
    }

    public C2321p1(long j) {
        this(j, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    public C2321p1(long j, int i, int i2, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        C3M.A07(iArr.length == uriArr.length);
        this.A03 = j;
        this.A00 = i;
        this.A01 = i2;
        this.A05 = iArr;
        this.A07 = uriArr;
        this.A06 = jArr;
        this.A02 = j2;
        this.A04 = z;
    }

    public static int[] A02(int[] iArr, int i) {
        int length = iArr.length;
        int iMax = Math.max(i, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        return iArrCopyOf;
    }

    public static long[] A03(long[] jArr, int i) {
        int length = jArr.length;
        int iMax = Math.max(i, length);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
        Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
        return jArrCopyOf;
    }

    public final int A04() {
        return A05(-1);
    }

    public final int A05(int i) {
        int i2 = i + 1;
        while (true) {
            int[] iArr = this.A05;
            String[] strArr = A08;
            String str = strArr[3];
            String str2 = strArr[4];
            int iCharAt = str.charAt(30);
            int nextAdIndexToPlay = str2.charAt(30);
            if (iCharAt != nextAdIndexToPlay) {
                throw new RuntimeException();
            }
            A08[6] = "Wtq62hhDQ1jo9VyQ6cIhlPoFSuywDvdH";
            int nextAdIndexToPlay2 = iArr.length;
            if (i2 < nextAdIndexToPlay2 && !this.A04) {
                int nextAdIndexToPlay3 = this.A05[i2];
                if (nextAdIndexToPlay3 != 0 && this.A05[i2] != 1) {
                    i2++;
                }
            }
            return i2;
        }
    }

    public final boolean A07() {
        if (this.A00 == -1) {
            return true;
        }
        for (int i = 0; i < i; i++) {
            int i2 = this.A05[i];
            if (i2 != 0) {
                int i3 = this.A05[i];
                if (i3 != 1) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean A08() {
        return this.A00 == -1 || A04() < this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2321p1 c2321p1 = (C2321p1) obj;
        if (this.A03 == c2321p1.A03 && this.A00 == c2321p1.A00 && this.A01 == c2321p1.A01 && Arrays.equals(this.A07, c2321p1.A07) && Arrays.equals(this.A05, c2321p1.A05) && Arrays.equals(this.A06, c2321p1.A06)) {
            long j = this.A02;
            if (A08[5].charAt(25) != 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[3] = "oTIVhrwO4wW48XZtZFkmZHaHYFeLbVqJ";
            strArr[4] = "xLWtDigMD9KXXhkKgPNBVDDiVfKu3Nqc";
            if (j == c2321p1.A02 && this.A04 == c2321p1.A04) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((this.A00 * 31) + this.A01) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + Arrays.hashCode(this.A07)) * 31) + Arrays.hashCode(this.A05)) * 31) + Arrays.hashCode(this.A06)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A04 ? 1 : 0);
    }
}
