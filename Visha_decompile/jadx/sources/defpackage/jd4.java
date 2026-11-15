package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import org.bouncycastle.crypto.CryptoServicePurpose;

public abstract class jd4 implements zj3, en6 {
    public final CryptoServicePurpose a;
    public final byte[] b;
    public int c;
    public long d;

    public jd4(jd4 jd4Var) {
        this.b = new byte[4];
        this.a = jd4Var.a;
        i(jd4Var);
    }

    @Override
    public void b(byte b) {
        byte[] bArr = this.b;
        int i = this.c;
        int i2 = i + 1;
        this.c = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            m(bArr, 0);
            this.c = 0;
        }
        this.d++;
    }

    @Override
    public int h() {
        return 64;
    }

    public void i(jd4 jd4Var) {
        byte[] bArr = jd4Var.b;
        System.arraycopy(bArr, 0, this.b, 0, bArr.length);
        this.c = jd4Var.c;
        this.d = jd4Var.d;
    }

    public void j() {
        long j = this.d << 3;
        byte b = SocketData.CLAZZ_TYPE_END_SOCKET;
        while (true) {
            b(b);
            if (this.c == 0) {
                l(j);
                k();
                return;
            }
            b = 0;
        }
    }

    public abstract void k();

    public abstract void l(long j);

    public abstract void m(byte[] bArr, int i);

    @Override
    public void reset() {
        this.d = 0L;
        this.c = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int iMax = Math.max(0, i2);
        if (this.c != 0) {
            int i4 = 0;
            while (true) {
                if (i4 >= iMax) {
                    i3 = i4;
                    break;
                }
                byte[] bArr2 = this.b;
                int i5 = this.c;
                int i6 = i5 + 1;
                this.c = i6;
                int i7 = i4 + 1;
                bArr2[i5] = bArr[i4 + i];
                if (i6 == 4) {
                    m(bArr2, 0);
                    this.c = 0;
                    i3 = i7;
                    break;
                }
                i4 = i7;
            }
        }
        int i8 = iMax - 3;
        while (i3 < i8) {
            m(bArr, i + i3);
            i3 += 4;
        }
        while (i3 < iMax) {
            byte[] bArr3 = this.b;
            int i9 = this.c;
            this.c = i9 + 1;
            bArr3[i9] = bArr[i3 + i];
            i3++;
        }
        this.d += (long) iMax;
    }

    public jd4(CryptoServicePurpose cryptoServicePurpose) {
        this.b = new byte[4];
        this.a = cryptoServicePurpose;
        this.c = 0;
    }
}
