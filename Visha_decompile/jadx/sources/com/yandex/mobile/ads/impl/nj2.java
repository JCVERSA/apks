package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import java.io.IOException;

final class nj2 {

    public static final class a {
        public final int a;
        public final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static a a(wz wzVar, ag1 ag1Var) throws IOException {
            wzVar.b(ag1Var.c(), 0, 8, false);
            ag1Var.e(0);
            return new a(ag1Var.h(), ag1Var.n());
        }
    }

    public static boolean a(wz wzVar) throws IOException {
        ag1 ag1Var = new ag1(8);
        int i = a.a(wzVar, ag1Var).a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        wzVar.b(ag1Var.c(), 0, 4, false);
        ag1Var.e(0);
        int iH = ag1Var.h();
        if (iH == 1463899717) {
            return true;
        }
        et0.b("WavHeaderReader", "Unsupported form type: " + iH);
        return false;
    }

    public static mj2 b(wz wzVar) throws IOException {
        byte[] bArr;
        ag1 ag1Var = new ag1(16);
        a aVarA = a(WavUtil.FMT_FOURCC, wzVar, ag1Var);
        if (aVarA.b < 16) {
            throw new IllegalStateException();
        }
        wzVar.b(ag1Var.c(), 0, 16, false);
        ag1Var.e(0);
        int iO = ag1Var.o();
        int iO2 = ag1Var.o();
        int iK = ag1Var.k();
        if (iK < 0) {
            throw new IllegalStateException(oe.a("Top bit not zero: ", iK));
        }
        int iK2 = ag1Var.k();
        if (iK2 < 0) {
            throw new IllegalStateException(oe.a("Top bit not zero: ", iK2));
        }
        int iO3 = ag1Var.o();
        int iO4 = ag1Var.o();
        int i = ((int) aVarA.b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            wzVar.b(bArr2, 0, i, false);
            bArr = bArr2;
        } else {
            bArr = f92.f;
        }
        wzVar.a((int) (wzVar.d() - wzVar.a()));
        return new mj2(iO, iO2, iK, iO3, iO4, bArr);
    }

    public static Pair c(wz wzVar) throws IOException {
        wzVar.c();
        a aVarA = a(1684108385, wzVar, new ag1(8));
        wzVar.a(8);
        return Pair.create(Long.valueOf(wzVar.a()), Long.valueOf(aVarA.b));
    }

    private static a a(int i, wz wzVar, ag1 ag1Var) throws IOException {
        a aVarA = a.a(wzVar, ag1Var);
        while (aVarA.a != i) {
            et0.d("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.a);
            long j = aVarA.b + 8;
            if (j <= 2147483647L) {
                wzVar.a((int) j);
                aVarA = a.a(wzVar, ag1Var);
            } else {
                throw eg1.a("Chunk is too large (~2GB+) to skip; id: " + aVarA.a);
            }
        }
        return aVarA;
    }
}
