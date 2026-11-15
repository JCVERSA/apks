package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

public final class tf0 {
    public final List<byte[]> a;
    public final int b;
    public final float c;

    @Nullable
    public final String d;

    private tf0(List list, int i, float f, @Nullable String str) {
        this.a = list;
        this.b = i;
        this.c = f;
        this.d = str;
    }

    public static tf0 a(ag1 ag1Var) throws eg1 {
        try {
            ag1Var.f(21);
            int iT = ag1Var.t() & 3;
            int iT2 = ag1Var.t();
            int iD = ag1Var.d();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < iT2; i3++) {
                ag1Var.f(1);
                int iZ = ag1Var.z();
                for (int i4 = 0; i4 < iZ; i4++) {
                    int iZ2 = ag1Var.z();
                    i2 += iZ2 + 4;
                    ag1Var.f(iZ2);
                }
            }
            ag1Var.e(iD);
            byte[] bArr = new byte[i2];
            float f = 1.0f;
            String strA = null;
            int i5 = 0;
            int i6 = 0;
            while (i5 < iT2) {
                int iT3 = ag1Var.t() & 127;
                int iZ3 = ag1Var.z();
                int i7 = i;
                while (i7 < iZ3) {
                    int iZ4 = ag1Var.z();
                    System.arraycopy(e41.a, i, bArr, i6, 4);
                    int i8 = i6 + 4;
                    System.arraycopy(ag1Var.c(), ag1Var.d(), bArr, i8, iZ4);
                    if (iT3 == 33 && i7 == 0) {
                        e41.a aVarA = e41.a(bArr, i8, i8 + iZ4);
                        float f2 = aVarA.g;
                        strA = oq.a(aVarA.a, aVarA.b, aVarA.c, aVarA.d, aVarA.e, aVarA.f);
                        f = f2;
                    }
                    i6 = i8 + iZ4;
                    ag1Var.f(iZ4);
                    i7++;
                    iT2 = iT2;
                    i = 0;
                }
                i5++;
                i = 0;
            }
            return new tf0(i2 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iT + 1, f, strA);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw eg1.a("Error parsing HEVC config", e);
        }
    }
}
