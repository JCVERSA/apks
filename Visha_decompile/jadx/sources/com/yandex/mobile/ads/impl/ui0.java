package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;

public final class ui0 {
    private final ag1 a = new ag1(10);

    @Nullable
    public final k01 a(wz wzVar, @Nullable si0.a aVar) throws IOException {
        k01 k01VarA = null;
        int i = 0;
        while (true) {
            try {
                wzVar.b(this.a.c(), 0, 10, false);
                this.a.e(0);
                if (this.a.w() != 4801587) {
                    break;
                }
                this.a.f(3);
                int iS = this.a.s();
                int i2 = iS + 10;
                if (k01VarA == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.a.c(), 0, bArr, 0, 10);
                    wzVar.b(bArr, 10, iS, false);
                    k01VarA = new si0(aVar).a(i2, bArr);
                } else {
                    wzVar.a(false, iS);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        wzVar.c();
        wzVar.a(false, i);
        return k01VarA;
    }
}
