package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public final class se extends sy1 {
    @Override
    @Nullable
    public final k01 a(n01 n01Var, ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 116) {
            return null;
        }
        zf1 zf1Var = new zf1(byteBuffer.limit(), byteBuffer.array());
        zf1Var.d(12);
        int iD = (zf1Var.d() + zf1Var.b(12)) - 4;
        zf1Var.d(44);
        zf1Var.e(zf1Var.b(12));
        zf1Var.d(16);
        ArrayList arrayList = new ArrayList();
        while (zf1Var.d() < iD) {
            zf1Var.d(48);
            int iB = zf1Var.b(8);
            zf1Var.d(4);
            int iD2 = zf1Var.d() + zf1Var.b(12);
            String strA = null;
            String strA2 = null;
            while (zf1Var.d() < iD2) {
                int iB2 = zf1Var.b(8);
                int iB3 = zf1Var.b(8);
                int iD3 = zf1Var.d() + iB3;
                if (iB2 == 2) {
                    int iB4 = zf1Var.b(16);
                    zf1Var.d(8);
                    if (iB4 == 3) {
                        while (zf1Var.d() < iD3) {
                            strA = zf1Var.a(zf1Var.b(8), lo.a);
                            int iB5 = zf1Var.b(8);
                            for (int i = 0; i < iB5; i++) {
                                zf1Var.e(zf1Var.b(8));
                            }
                        }
                    }
                } else if (iB2 == 21) {
                    strA2 = zf1Var.a(iB3, lo.a);
                }
                zf1Var.c(iD3 * 8);
            }
            zf1Var.c(iD2 * 8);
            if (strA != null && strA2 != null) {
                arrayList.add(new re(iB, strA.concat(strA2)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new k01(arrayList);
    }
}
