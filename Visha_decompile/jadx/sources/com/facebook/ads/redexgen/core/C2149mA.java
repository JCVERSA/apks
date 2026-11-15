package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

public final class C2149mA implements C1S {
    public static byte[] A03;
    public static String[] A04 = {"kjXOolT", "y1uosoppcQ2KAnagmdUHUDs2pqKkNOP", "9S5fCrLfVI6Z6wWSlA", "LW4KLvv", "ESAoxwChDjEBJ2YD38hEjiU5IsN", "MD8cz6uZEkXt7x64XO0blzPRBkN5Dhm8", "wv8vTraLOdvtLK52tGc0aCYgNtDO0cFF", "ftZS2reRIxcEfCn6parOlN78mV3R9Y2K"};
    public static final C1R<C2149mA> A05;
    public static final C2149mA A06;
    public static final String A07;
    public int A00;
    public final int A01;
    public final AbstractC0779Am<C2278oH> A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {119, 79, 86, 78, 83, 74, 86, 95, 26, 83, 94, 95, 84, 78, 83, 89, 91, 86, 26, 110, 72, 91, 89, 81, 125, 72, 85, 79, 74, 73, 26, 91, 94, 94, 95, 94, 26, 78, 85, 26, 85, 84, 95, 26, 110, 72, 91, 89, 81, 125, 72, 85, 79, 74, 123, 72, 72, 91, 67, 20, 81, 119, 100, 102, 110, 66, 119, 106, 112, 117, 68, 119, 119, 100, 124};
        if (A04[5].charAt(31) == 'Q') {
            throw new RuntimeException();
        }
        A04[4] = "LoVxB454";
        A03 = bArr;
    }

    static {
        A03();
        A06 = new C2149mA(new C2278oH[0]);
        A07 = AbstractC06244a.A0h(0);
        A05 = new C1R() {
            @Override
            public final C1S A6X(Bundle bundle) {
                return C2149mA.A00(bundle);
            }
        };
    }

    public C2149mA(C2278oH... c2278oHArr) {
        this.A02 = AbstractC0779Am.A07(c2278oHArr);
        this.A01 = c2278oHArr.length;
        A02();
    }

    public static C2149mA A00(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A07);
        if (parcelableArrayList == null) {
            return new C2149mA(new C2278oH[0]);
        }
        return new C2149mA((C2278oH[]) C3S.A01(C2278oH.A06, parcelableArrayList).toArray(new C2278oH[0]));
    }

    private void A02() {
        for (int i = 0; i < i; i++) {
            for (int i2 = i + 1; i2 < i; i2++) {
                if (this.A02.get(i).equals(this.A02.get(i2))) {
                    AnonymousClass44.A08(A01(60, 15, 90), A01(0, 0, 115), new IllegalArgumentException(A01(0, 60, 101)));
                }
            }
        }
    }

    public final int A04(C2278oH c2278oH) {
        int index = this.A02.indexOf(c2278oH);
        if (index >= 0) {
            return index;
        }
        return -1;
    }

    public final C2278oH A05(int i) {
        return this.A02.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2149mA c2149mA = (C2149mA) obj;
        return this.A01 == c2149mA.A01 && this.A02.equals(c2149mA.A02);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = this.A02.hashCode();
        }
        int i = this.A00;
        String[] strArr = A04;
        if (strArr[3].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A04[6] = "ifk0Ba0Zppjn7MlaJBrmzFqZbJ0HKklT";
        return i;
    }
}
