package com.bytedance.sdk.component.sP.Sj.sP;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

public final class Sj implements TKC, sP, Cloneable, ByteChannel {
    private static final byte[] TKC = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    HiB Sj;
    long sP;

    public Sj clone() {
        Sj sj2 = new Sj();
        if (this.sP == 0) {
            return sj2;
        }
        HiB hiBSj = this.Sj.Sj();
        sj2.Sj = hiBSj;
        hiBSj.Jcg = hiBSj;
        hiBSj.vS = hiBSj;
        HiB hiB = this.Sj;
        while (true) {
            hiB = hiB.vS;
            if (hiB == this.Sj) {
                sj2.sP = this.sP;
                return sj2;
            }
            sj2.Sj.Jcg.Sj(hiB.Sj());
        }
    }

    public final EjP HiB() {
        long j10 = this.sP;
        if (j10 <= 2147483647L) {
            return EjP((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.sP);
    }

    public boolean Sj() {
        return this.sP == 0;
    }

    public String TKC() {
        try {
            return Sj(this.sP, uA.Sj);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sj)) {
            return false;
        }
        Sj sj2 = (Sj) obj;
        long j10 = this.sP;
        if (j10 != sj2.sP) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        HiB hiB = this.Sj;
        HiB hiB2 = sj2.Sj;
        int i10 = hiB.sP;
        int i11 = hiB2.sP;
        while (j11 < this.sP) {
            long jMin = Math.min(hiB.TKC - i10, hiB2.TKC - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (hiB.Sj[i10] != hiB2.Sj[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == hiB.TKC) {
                hiB = hiB.vS;
                i10 = hiB.sP;
            }
            if (i11 == hiB2.TKC) {
                hiB2 = hiB2.vS;
                i11 = hiB2.sP;
            }
            j11 += jMin;
        }
        return true;
    }

    public int hashCode() {
        HiB hiB = this.Sj;
        if (hiB == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = hiB.TKC;
            for (int i12 = hiB.sP; i12 < i11; i12++) {
                i10 = (i10 * 31) + hiB.Sj[i12];
            }
            hiB = hiB.vS;
        } while (hiB != this.Sj);
        return i10;
    }

    @Override
    public boolean isOpen() {
        return true;
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        HiB hiB = this.Sj;
        if (hiB == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), hiB.TKC - hiB.sP);
        byteBuffer.put(hiB.Sj, hiB.sP, iMin);
        int i10 = hiB.sP + iMin;
        hiB.sP = i10;
        this.sP -= (long) iMin;
        if (i10 == hiB.TKC) {
            this.Sj = hiB.sP();
            vS.Sj(hiB);
        }
        return iMin;
    }

    public byte sP() {
        long j10 = this.sP;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        HiB hiB = this.Sj;
        int i10 = hiB.sP;
        int i11 = hiB.TKC;
        int i12 = i10 + 1;
        byte b10 = hiB.Sj[i10];
        this.sP = j10 - 1;
        if (i12 == i11) {
            this.Sj = hiB.sP();
            vS.Sj(hiB);
        } else {
            hiB.sP = i12;
        }
        return b10;
    }

    public String toString() {
        return HiB().toString();
    }

    @Override
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            HiB hiBTKC = TKC(1);
            int iMin = Math.min(i10, 8192 - hiBTKC.TKC);
            byteBuffer.get(hiBTKC.Sj, hiBTKC.TKC, iMin);
            i10 -= iMin;
            hiBTKC.TKC += iMin;
        }
        this.sP += (long) iRemaining;
        return iRemaining;
    }

    public String Sj(long j10, Charset charset) throws EOFException {
        uA.Sj(this.sP, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
        }
        if (j10 == 0) {
            return "";
        }
        HiB hiB = this.Sj;
        int i10 = hiB.sP;
        if (((long) i10) + j10 > hiB.TKC) {
            return new String(Sj(j10), charset);
        }
        String str = new String(hiB.Sj, i10, (int) j10, charset);
        int i11 = (int) (((long) hiB.sP) + j10);
        hiB.sP = i11;
        this.sP -= j10;
        if (i11 == hiB.TKC) {
            this.Sj = hiB.sP();
            vS.Sj(hiB);
        }
        return str;
    }

    HiB TKC(int i10) {
        if (i10 > 0 && i10 <= 8192) {
            HiB hiB = this.Sj;
            if (hiB == null) {
                HiB hiBSj = vS.Sj();
                this.Sj = hiBSj;
                hiBSj.Jcg = hiBSj;
                hiBSj.vS = hiBSj;
                return hiBSj;
            }
            HiB hiB2 = hiB.Jcg;
            return (hiB2.TKC + i10 > 8192 || !hiB2.HiB) ? hiB2.Sj(vS.Sj()) : hiB2;
        }
        throw new IllegalArgumentException();
    }

    public final EjP EjP(int i10) {
        if (i10 == 0) {
            return EjP.TKC;
        }
        return new Jcg(this, i10);
    }

    public Sj sP(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            uA.Sj(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                HiB hiBTKC = TKC(1);
                int iMin = Math.min(i12 - i10, 8192 - hiBTKC.TKC);
                System.arraycopy(bArr, i10, hiBTKC.Sj, hiBTKC.TKC, iMin);
                i10 += iMin;
                hiBTKC.TKC += iMin;
            }
            this.sP += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public byte[] Sj(long j10) throws EOFException {
        uA.Sj(this.sP, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            Sj(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
    }

    @Override
    public void close() {
    }

    @Override
    public void flush() {
    }

    public void Sj(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int iSj = Sj(bArr, i10, bArr.length - i10);
            if (iSj == -1) {
                throw new EOFException();
            }
            i10 += iSj;
        }
    }

    public Sj sP(int i10) {
        HiB hiBTKC = TKC(1);
        byte[] bArr = hiBTKC.Sj;
        int i11 = hiBTKC.TKC;
        hiBTKC.TKC = i11 + 1;
        bArr[i11] = (byte) i10;
        this.sP++;
        return this;
    }

    public int Sj(byte[] bArr, int i10, int i11) {
        uA.Sj(bArr.length, i10, i11);
        HiB hiB = this.Sj;
        if (hiB == null) {
            return -1;
        }
        int iMin = Math.min(i11, hiB.TKC - hiB.sP);
        System.arraycopy(hiB.Sj, hiB.sP, bArr, i10, iMin);
        int i12 = hiB.sP + iMin;
        hiB.sP = i12;
        this.sP -= (long) iMin;
        if (i12 == hiB.TKC) {
            this.Sj = hiB.sP();
            vS.Sj(hiB);
        }
        return iMin;
    }

    public Sj sP(long j10) {
        if (j10 == 0) {
            return sP(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        HiB hiBTKC = TKC(iNumberOfTrailingZeros);
        byte[] bArr = hiBTKC.Sj;
        int i10 = hiBTKC.TKC;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = TKC[(int) (15 & j10)];
            j10 >>>= 4;
        }
        hiBTKC.TKC += iNumberOfTrailingZeros;
        this.sP += (long) iNumberOfTrailingZeros;
        return this;
    }

    public Sj Sj(String str) {
        return Sj(str, 0, str.length());
    }

    public Sj Sj(String str, int i10, int i11) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            while (i10 < i11) {
                char cCharAt2 = str.charAt(i10);
                if (cCharAt2 < 128) {
                    HiB hiBTKC = TKC(1);
                    byte[] bArr = hiBTKC.Sj;
                    int i12 = hiBTKC.TKC - i10;
                    int iMin = Math.min(i11, 8192 - i12);
                    int i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt2;
                    while (true) {
                        i10 = i13;
                        if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                            break;
                        }
                        i13 = i10 + 1;
                        bArr[i10 + i12] = (byte) cCharAt;
                    }
                    int i14 = hiBTKC.TKC;
                    int i15 = (i12 + i10) - i14;
                    hiBTKC.TKC = i14 + i15;
                    this.sP += (long) i15;
                } else {
                    if (cCharAt2 < 2048) {
                        sP((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                        sP((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i16 = i10 + 1;
                        char cCharAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i17 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            sP((i17 >> 18) | 240);
                            sP(((i17 >> 12) & 63) | 128);
                            sP(((i17 >> 6) & 63) | 128);
                            sP((i17 & 63) | 128);
                            i10 += 2;
                        } else {
                            sP(63);
                            i10 = i16;
                        }
                    } else {
                        sP((cCharAt2 >> '\f') | 224);
                        sP(((cCharAt2 >> 6) & 63) | 128);
                        sP((cCharAt2 & '?') | 128);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    public Sj Sj(int i10) {
        if (i10 < 128) {
            sP(i10);
        } else if (i10 < 2048) {
            sP((i10 >> 6) | PsExtractor.AUDIO_STREAM);
            sP((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                sP(63);
            } else {
                sP((i10 >> 12) | 224);
                sP(((i10 >> 6) & 63) | 128);
                sP((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            sP((i10 >> 18) | 240);
            sP(((i10 >> 12) & 63) | 128);
            sP(((i10 >> 6) & 63) | 128);
            sP((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    public Sj Sj(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(uA.Sj)) {
                    return Sj(str, i10, i11);
                }
                byte[] bytes = str.substring(i10, i11).getBytes(charset);
                return sP(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }
}
