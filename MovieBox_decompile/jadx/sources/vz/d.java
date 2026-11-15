package vz;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import okhttp3.internal.http2.Settings;

public class d {

    byte[] f73878a;

    int f73879b;

    public d() {
        this.f73878a = new byte[64];
    }

    private void b(int i10) {
        byte[] bArr = this.f73878a;
        int length = bArr.length * 2;
        int i11 = this.f73879b;
        int i12 = i10 + i11;
        if (length <= i12) {
            length = i12;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        this.f73878a = bArr2;
    }

    final d a(String str, int i10, int i11) {
        int length = str.length();
        int i12 = i10;
        int i13 = i12;
        while (i12 < length) {
            char cCharAt = str.charAt(i12);
            if (cCharAt < 1 || cCharAt > 127) {
                i13 = cCharAt <= 2047 ? i13 + 2 : i13 + 3;
            } else {
                i13++;
            }
            i12++;
        }
        if (i13 > i11) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i14 = this.f73879b;
        int i15 = i14 - i10;
        int i16 = i15 - 2;
        if (i16 >= 0) {
            byte[] bArr = this.f73878a;
            bArr[i16] = (byte) (i13 >>> 8);
            bArr[i15 - 1] = (byte) i13;
        }
        if ((i14 + i13) - i10 > this.f73878a.length) {
            b(i13 - i10);
        }
        int i17 = this.f73879b;
        while (i10 < length) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 >= 1 && cCharAt2 <= 127) {
                this.f73878a[i17] = (byte) cCharAt2;
                i17++;
            } else if (cCharAt2 <= 2047) {
                byte[] bArr2 = this.f73878a;
                int i18 = i17 + 1;
                bArr2[i17] = (byte) (((cCharAt2 >> 6) & 31) | PsExtractor.AUDIO_STREAM);
                i17 += 2;
                bArr2[i18] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                byte[] bArr3 = this.f73878a;
                bArr3[i17] = (byte) (((cCharAt2 >> '\f') & 15) | 224);
                int i19 = i17 + 2;
                bArr3[i17 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                i17 += 3;
                bArr3[i19] = (byte) ((cCharAt2 & '?') | 128);
            }
            i10++;
        }
        this.f73879b = i17;
        return this;
    }

    final d c(int i10, int i11) {
        int i12 = this.f73879b;
        if (i12 + 2 > this.f73878a.length) {
            b(2);
        }
        byte[] bArr = this.f73878a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) i11;
        this.f73879b = i12 + 2;
        return this;
    }

    final d d(int i10, int i11, int i12) {
        int i13 = this.f73879b;
        if (i13 + 4 > this.f73878a.length) {
            b(4);
        }
        byte[] bArr = this.f73878a;
        bArr[i13] = (byte) i10;
        bArr[i13 + 1] = (byte) i11;
        bArr[i13 + 2] = (byte) (i12 >>> 8);
        bArr[i13 + 3] = (byte) i12;
        this.f73879b = i13 + 4;
        return this;
    }

    final d e(int i10, int i11) {
        int i12 = this.f73879b;
        if (i12 + 3 > this.f73878a.length) {
            b(3);
        }
        byte[] bArr = this.f73878a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) (i11 >>> 8);
        bArr[i12 + 2] = (byte) i11;
        this.f73879b = i12 + 3;
        return this;
    }

    final d f(int i10, int i11, int i12) {
        int i13 = this.f73879b;
        if (i13 + 5 > this.f73878a.length) {
            b(5);
        }
        byte[] bArr = this.f73878a;
        bArr[i13] = (byte) i10;
        bArr[i13 + 1] = (byte) (i11 >>> 8);
        bArr[i13 + 2] = (byte) i11;
        bArr[i13 + 3] = (byte) (i12 >>> 8);
        bArr[i13 + 4] = (byte) i12;
        this.f73879b = i13 + 5;
        return this;
    }

    public d g(int i10) {
        int i11 = this.f73879b;
        int i12 = i11 + 1;
        if (i12 > this.f73878a.length) {
            b(1);
        }
        this.f73878a[i11] = (byte) i10;
        this.f73879b = i12;
        return this;
    }

    public d h(byte[] bArr, int i10, int i11) {
        if (this.f73879b + i11 > this.f73878a.length) {
            b(i11);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i10, this.f73878a, this.f73879b, i11);
        }
        this.f73879b += i11;
        return this;
    }

    public d i(int i10) {
        int i11 = this.f73879b;
        if (i11 + 4 > this.f73878a.length) {
            b(4);
        }
        byte[] bArr = this.f73878a;
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
        this.f73879b = i11 + 4;
        return this;
    }

    public d j(long j10) {
        int i10 = this.f73879b;
        if (i10 + 8 > this.f73878a.length) {
            b(8);
        }
        byte[] bArr = this.f73878a;
        int i11 = (int) (j10 >>> 32);
        bArr[i10] = (byte) (i11 >>> 24);
        bArr[i10 + 1] = (byte) (i11 >>> 16);
        bArr[i10 + 2] = (byte) (i11 >>> 8);
        bArr[i10 + 3] = (byte) i11;
        int i12 = (int) j10;
        bArr[i10 + 4] = (byte) (i12 >>> 24);
        bArr[i10 + 5] = (byte) (i12 >>> 16);
        bArr[i10 + 6] = (byte) (i12 >>> 8);
        bArr[i10 + 7] = (byte) i12;
        this.f73879b = i10 + 8;
        return this;
    }

    public d k(int i10) {
        int i11 = this.f73879b;
        if (i11 + 2 > this.f73878a.length) {
            b(2);
        }
        byte[] bArr = this.f73878a;
        bArr[i11] = (byte) (i10 >>> 8);
        bArr[i11 + 1] = (byte) i10;
        this.f73879b = i11 + 2;
        return this;
    }

    public d l(String str) {
        int length = str.length();
        if (length > 65535) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i10 = this.f73879b;
        if (i10 + 2 + length > this.f73878a.length) {
            b(length + 2);
        }
        byte[] bArr = this.f73878a;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (length >>> 8);
        int i12 = i10 + 2;
        bArr[i11] = (byte) length;
        int i13 = 0;
        while (i13 < length) {
            char cCharAt = str.charAt(i13);
            if (cCharAt < 1 || cCharAt > 127) {
                this.f73879b = i12;
                return a(str, i13, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
            bArr[i12] = (byte) cCharAt;
            i13++;
            i12++;
        }
        this.f73879b = i12;
        return this;
    }

    public d(int i10) {
        this.f73878a = new byte[i10];
    }

    d(byte[] bArr) {
        this.f73878a = bArr;
        this.f73879b = bArr.length;
    }
}
