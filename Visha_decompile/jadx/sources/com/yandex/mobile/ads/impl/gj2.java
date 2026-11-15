package com.yandex.mobile.ads.impl;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class gj2 {

    public static final class a {
        public final String[] a;

        public a(String[] strArr) {
            this.a = strArr;
        }
    }

    public static final class b {
        public final boolean a;

        public b(boolean z) {
            this.a = z;
        }
    }

    public static final class c {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;

        public c(int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
            this.g = bArr;
        }
    }

    public static a a(ag1 ag1Var, boolean z, boolean z2) throws eg1 {
        if (z) {
            a(3, ag1Var, false);
        }
        ag1Var.a((int) ag1Var.n(), lo.c);
        long jN = ag1Var.n();
        String[] strArr = new String[(int) jN];
        for (int i = 0; i < jN; i++) {
            strArr[i] = ag1Var.a((int) ag1Var.n(), lo.c);
        }
        if (z2 && (ag1Var.t() & 1) == 0) {
            throw eg1.a("framing bit expected to be set", (Exception) null);
        }
        return new a(strArr);
    }

    public static c a(ag1 ag1Var) throws eg1 {
        a(1, ag1Var, false);
        int iK = ag1Var.k();
        if (iK >= 0) {
            int iT = ag1Var.t();
            int iK2 = ag1Var.k();
            if (iK2 >= 0) {
                int iK3 = ag1Var.k();
                int i = iK3 <= 0 ? -1 : iK3;
                int iK4 = ag1Var.k();
                int i2 = iK4 <= 0 ? -1 : iK4;
                ag1Var.k();
                int iT2 = ag1Var.t();
                int iPow = (int) Math.pow(2.0d, iT2 & 15);
                int iPow2 = (int) Math.pow(2.0d, (iT2 & 240) >> 4);
                ag1Var.t();
                return new c(iT, iK2, i, i2, iPow, iPow2, Arrays.copyOf(ag1Var.c(), ag1Var.e()));
            }
            throw new IllegalStateException(oe.a("Top bit not zero: ", iK2));
        }
        throw new IllegalStateException(oe.a("Top bit not zero: ", iK));
    }

    public static boolean a(int i, ag1 ag1Var, boolean z) throws eg1 {
        if (ag1Var.a() < 7) {
            if (z) {
                return false;
            }
            throw eg1.a("too short header: " + ag1Var.a(), (Exception) null);
        }
        if (ag1Var.t() != i) {
            if (z) {
                return false;
            }
            throw eg1.a("expected header type " + Integer.toHexString(i), (Exception) null);
        }
        if (ag1Var.t() == 118 && ag1Var.t() == 111 && ag1Var.t() == 114 && ag1Var.t() == 98 && ag1Var.t() == 105 && ag1Var.t() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw eg1.a("expected characters 'vorbis'", (Exception) null);
    }

    @Nullable
    public static k01 a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            int i2 = f92.a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                et0.d("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    ag1 ag1Var = new ag1(Base64.decode(strArrSplit[1], 0));
                    int iH = ag1Var.h();
                    String strA = ag1Var.a(ag1Var.h(), lo.a);
                    String strA2 = ag1Var.a(ag1Var.h(), lo.c);
                    int iH2 = ag1Var.h();
                    int iH3 = ag1Var.h();
                    int iH4 = ag1Var.h();
                    int iH5 = ag1Var.h();
                    int iH6 = ag1Var.h();
                    byte[] bArr = new byte[iH6];
                    ag1Var.a(bArr, 0, iH6);
                    arrayList.add(new jh1(iH, strA, strA2, iH2, iH3, iH4, iH5, bArr));
                } catch (RuntimeException e) {
                    et0.b("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new ej2(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new k01(arrayList);
    }
}
