package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.alibaba.android.arouter.utils.Consts;
import java.util.UUID;

public final class zm1 {

    public static class a {
        private final UUID a;
        private final int b;
        private final byte[] c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.a = uuid;
            this.b = i;
            this.c = bArr;
        }
    }

    public static boolean a(byte[] bArr) {
        return b(bArr) != null;
    }

    @Nullable
    private static a b(byte[] bArr) {
        ag1 ag1Var = new ag1(bArr);
        if (ag1Var.e() < 32) {
            return null;
        }
        ag1Var.e(0);
        if (ag1Var.h() != ag1Var.a() + 4 || ag1Var.h() != 1886614376) {
            return null;
        }
        int iH = (ag1Var.h() >> 24) & 255;
        if (iH > 1) {
            xr0.a("Unsupported pssh version: ", iH, "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(ag1Var.p(), ag1Var.p());
        if (iH == 1) {
            ag1Var.f(ag1Var.x() * 16);
        }
        int iX = ag1Var.x();
        if (iX != ag1Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[iX];
        ag1Var.a(bArr2, 0, iX);
        return new a(uuid, iH, bArr2);
    }

    @Nullable
    public static UUID c(byte[] bArr) {
        a aVarB = b(bArr);
        if (aVarB == null) {
            return null;
        }
        return aVarB.a;
    }

    public static int d(byte[] bArr) {
        a aVarB = b(bArr);
        if (aVarB == null) {
            return -1;
        }
        return aVarB.b;
    }

    @Nullable
    public static byte[] a(UUID uuid, byte[] bArr) {
        a aVarB = b(bArr);
        if (aVarB == null) {
            return null;
        }
        if (uuid.equals(aVarB.a)) {
            return aVarB.c;
        }
        et0.d("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarB.a + Consts.DOT);
        return null;
    }
}
