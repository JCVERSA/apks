package org.bouncycastle.pqc.crypto.rainbow;

import defpackage.ci;
import defpackage.f;
import defpackage.on8;
import defpackage.sb2;
import defpackage.sf5;
import java.security.SecureRandom;

class RainbowDRBG extends SecureRandom {
    private sb2 hashAlgo;
    private byte[] key;
    private byte[] seed;
    private byte[] v;

    public RainbowDRBG(byte[] bArr, sb2 sb2Var) {
        this.seed = bArr;
        this.hashAlgo = sb2Var;
        c(256);
    }

    public final void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        for (int i = 0; i < 3; i++) {
            for (int i2 = 15; i2 >= 0; i2--) {
                byte b = bArr3[i2];
                if ((b & 255) != 255) {
                    bArr3[i2] = (byte) (b + 1);
                    break;
                }
                bArr3[i2] = 0;
            }
            b(bArr2, bArr3, bArr4, i * 16);
        }
        if (bArr != null) {
            for (int i3 = 0; i3 < 48; i3++) {
                bArr4[i3] = (byte) (bArr4[i3] ^ bArr[i3]);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
        System.arraycopy(bArr4, 32, bArr3, 0, bArr3.length);
    }

    public final void b(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        try {
            f fVar = new f();
            fVar.i(true, new sf5(bArr));
            for (int i2 = 0; i2 != bArr2.length; i2 += 16) {
                fVar.l(bArr2, i2, bArr3, i + i2);
            }
        } catch (Throwable th) {
            throw new IllegalStateException("drbg failure: " + th.getMessage(), th);
        }
    }

    public final void c(int i) {
        byte[] bArr = this.seed;
        if (bArr.length >= 48) {
            d(bArr, i);
        } else {
            d(ci.k(this.seed, on8.g(this.hashAlgo, bArr, 48 - bArr.length)), i);
        }
    }

    public final void d(byte[] bArr, int i) {
        byte[] bArr2 = new byte[48];
        System.arraycopy(bArr, 0, bArr2, 0, 48);
        byte[] bArr3 = new byte[32];
        this.key = bArr3;
        byte[] bArr4 = new byte[16];
        this.v = bArr4;
        a(bArr2, bArr3, bArr4);
    }

    @Override
    public void nextBytes(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            for (int i2 = 15; i2 >= 0; i2--) {
                byte[] bArr3 = this.v;
                byte b = bArr3[i2];
                if ((b & 255) != 255) {
                    bArr3[i2] = (byte) (b + 1);
                    break;
                }
                bArr3[i2] = 0;
            }
            b(this.key, this.v, bArr2, 0);
            if (length > 15) {
                System.arraycopy(bArr2, 0, bArr, i, 16);
                i += 16;
                length -= 16;
            } else {
                System.arraycopy(bArr2, 0, bArr, i, length);
                length = 0;
            }
        }
        a(null, this.key, this.v);
    }
}
