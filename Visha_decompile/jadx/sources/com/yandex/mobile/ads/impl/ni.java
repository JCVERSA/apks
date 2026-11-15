package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public final class ni {
    public final List<byte[]> a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    @Nullable
    public final String f;

    private ni(ArrayList arrayList, int i, int i2, int i3, float f, @Nullable String str) {
        this.a = arrayList;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
        this.f = str;
    }

    public static ni a(ag1 ag1Var) throws eg1 {
        int i;
        int i2;
        float f;
        String str;
        try {
            ag1Var.f(4);
            int iT = (ag1Var.t() & 3) + 1;
            if (iT == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iT2 = ag1Var.t() & 31;
            for (int i3 = 0; i3 < iT2; i3++) {
                int iZ = ag1Var.z();
                int iD = ag1Var.d();
                ag1Var.f(iZ);
                arrayList.add(oq.a(ag1Var.c(), iD, iZ));
            }
            int iT3 = ag1Var.t();
            for (int i4 = 0; i4 < iT3; i4++) {
                int iZ2 = ag1Var.z();
                int iD2 = ag1Var.d();
                ag1Var.f(iZ2);
                arrayList.add(oq.a(ag1Var.c(), iD2, iZ2));
            }
            if (iT2 > 0) {
                e41.c cVarB = e41.b((byte[]) arrayList.get(0), iT, ((byte[]) arrayList.get(0)).length);
                int i5 = cVarB.e;
                int i6 = cVarB.f;
                float f2 = cVarB.g;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(cVarB.a), Integer.valueOf(cVarB.b), Integer.valueOf(cVarB.c));
                i = i5;
                i2 = i6;
                f = f2;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
                str = null;
            }
            return new ni(arrayList, iT, i, i2, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw eg1.a("Error parsing AVC config", e);
        }
    }
}
