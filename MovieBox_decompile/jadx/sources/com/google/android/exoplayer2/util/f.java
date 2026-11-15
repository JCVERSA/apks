package com.google.android.exoplayer2.util;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class f {

    private static final byte[] f26800a = {0, 0, 0, 1};

    private static final String[] f26801b = {"", "A", "B", "C"};

    public static String a(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static List b(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        StringBuilder sb2 = new StringBuilder(p0.C("hvc1.%s%d.%X.%c%d", f26801b[i10], Integer.valueOf(i11), Integer.valueOf(i12), Character.valueOf(z10 ? 'H' : 'L'), Integer.valueOf(i13)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static byte[] d(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = f26800a;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, bArr2.length, i11);
        return bArr3;
    }

    private static int e(byte[] bArr, int i10) {
        int length = bArr.length - f26800a.length;
        while (i10 <= length) {
            if (g(bArr, i10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static Pair f(byte[] bArr) {
        boolean z10;
        d0 d0Var = new d0(bArr);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i11 + 3;
            if (i12 >= bArr.length) {
                z10 = false;
                break;
            }
            if (d0Var.G() == 1 && (bArr[i12] & 240) == 32) {
                z10 = true;
                break;
            }
            d0Var.P(d0Var.e() - 2);
            i11++;
        }
        a.b(z10, "Invalid input: VOL not found.");
        c0 c0Var = new c0(bArr);
        c0Var.r((i11 + 4) * 8);
        c0Var.r(1);
        c0Var.r(8);
        if (c0Var.g()) {
            c0Var.r(4);
            c0Var.r(3);
        }
        if (c0Var.h(4) == 15) {
            c0Var.r(8);
            c0Var.r(8);
        }
        if (c0Var.g()) {
            c0Var.r(2);
            c0Var.r(1);
            if (c0Var.g()) {
                c0Var.r(79);
            }
        }
        a.b(c0Var.h(2) == 0, "Only supports rectangular video object layer shape.");
        a.a(c0Var.g());
        int iH = c0Var.h(16);
        a.a(c0Var.g());
        if (c0Var.g()) {
            a.a(iH > 0);
            for (int i13 = iH - 1; i13 > 0; i13 >>= 1) {
                i10++;
            }
            c0Var.r(i10);
        }
        a.a(c0Var.g());
        int iH2 = c0Var.h(13);
        a.a(c0Var.g());
        int iH3 = c0Var.h(13);
        a.a(c0Var.g());
        c0Var.r(1);
        return Pair.create(Integer.valueOf(iH2), Integer.valueOf(iH3));
    }

    private static boolean g(byte[] bArr, int i10) {
        if (bArr.length - i10 <= f26800a.length) {
            return false;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = f26800a;
            if (i11 >= bArr2.length) {
                return true;
            }
            if (bArr[i10 + i11] != bArr2[i11]) {
                return false;
            }
            i11++;
        }
    }

    public static Pair h(byte[] bArr) {
        d0 d0Var = new d0(bArr);
        d0Var.P(9);
        int iD = d0Var.D();
        d0Var.P(20);
        return Pair.create(Integer.valueOf(d0Var.H()), Integer.valueOf(iD));
    }

    public static boolean i(List list) {
        return list.size() == 1 && ((byte[]) list.get(0)).length == 1 && ((byte[]) list.get(0))[0] == 1;
    }

    public static byte[][] j(byte[] bArr) {
        if (!g(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iE = 0;
        do {
            arrayList.add(Integer.valueOf(iE));
            iE = e(bArr, iE + f26800a.length);
        } while (iE != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i10 = 0;
        while (i10 < arrayList.size()) {
            int iIntValue = ((Integer) arrayList.get(i10)).intValue();
            int iIntValue2 = (i10 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i10 + 1)).intValue() : bArr.length) - iIntValue;
            byte[] bArr3 = new byte[iIntValue2];
            System.arraycopy(bArr, iIntValue, bArr3, 0, iIntValue2);
            bArr2[i10] = bArr3;
            i10++;
        }
        return bArr2;
    }
}
