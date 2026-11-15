package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

public final class c implements e, d, Cloneable, ByteChannel {

    private static final byte[] f37598c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    @Nullable
    o f37599a;

    long f37600b;

    class a extends InputStream {
        a() {
        }

        @Override
        public int available() {
            return (int) Math.min(c.this.f37600b, 2147483647L);
        }

        @Override
        public void close() {
        }

        @Override
        public int read() {
            c cVar = c.this;
            if (cVar.f37600b > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return c.this + ".inputStream()";
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            return c.this.read(bArr, i10, i11);
        }
    }

    @Override
    public c a() {
        return this;
    }

    @Override
    public f b(long j10) throws EOFException {
        return new f(c(j10));
    }

    @Override
    public String c() throws EOFException {
        return d(Long.MAX_VALUE);
    }

    @Override
    public void close() {
    }

    @Override
    public String d(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jA = a((byte) 10, 0L, j11);
        if (jA != -1) {
            return h(jA);
        }
        if (j11 < size() && f(j11 - 1) == 13 && f(j11) == 10) {
            return h(j11);
        }
        c cVar = new c();
        a(cVar, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + cVar.o().b() + (char) 8230);
    }

    @Override
    public void e(long j10) throws EOFException {
        if (this.f37600b < j10) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j10 = this.f37600b;
        if (j10 != cVar.f37600b) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        o oVar = this.f37599a;
        o oVar2 = cVar.f37599a;
        int i10 = oVar.f37633b;
        int i11 = oVar2.f37633b;
        while (j11 < this.f37600b) {
            long jMin = Math.min(oVar.f37634c - i10, oVar2.f37634c - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (oVar.f37632a[i10] != oVar2.f37632a[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == oVar.f37634c) {
                oVar = oVar.f37637f;
                i10 = oVar.f37633b;
            }
            if (i11 == oVar2.f37634c) {
                oVar2 = oVar2.f37637f;
                i11 = oVar2.f37633b;
            }
            j11 += jMin;
        }
        return true;
    }

    @Override
    public boolean f() {
        return this.f37600b == 0;
    }

    @Override
    public void flush() {
    }

    @Override
    public short g() {
        return u.a(readShort());
    }

    String h(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (f(j11) == 13) {
                String strG = g(j11);
                skip(2L);
                return strG;
            }
        }
        String strG2 = g(j10);
        skip(1L);
        return strG2;
    }

    public int hashCode() {
        o oVar = this.f37599a;
        if (oVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = oVar.f37634c;
            for (int i12 = oVar.f37633b; i12 < i11; i12++) {
                i10 = (i10 * 31) + oVar.f37632a[i12];
            }
            oVar = oVar.f37637f;
        } while (oVar != this.f37599a);
        return i10;
    }

    @Override
    public long i() {
        int i10;
        if (this.f37600b == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i11 = 0;
        boolean z10 = false;
        long j10 = 0;
        do {
            o oVar = this.f37599a;
            byte[] bArr = oVar.f37632a;
            int i12 = oVar.f37633b;
            int i13 = oVar.f37634c;
            while (i12 < i13) {
                byte b10 = bArr[i12];
                if (b10 >= 48 && b10 <= 57) {
                    i10 = b10 - 48;
                } else if (b10 >= 97 && b10 <= 102) {
                    i10 = b10 - 87;
                } else {
                    if (b10 < 65 || b10 > 70) {
                        if (i11 != 0) {
                            z10 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b10));
                    }
                    i10 = b10 - 55;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    throw new NumberFormatException("Number too large: " + new c().a(j10).writeByte((int) b10).p());
                }
                j10 = (j10 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                this.f37599a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f37633b = i12;
            }
            if (z10) {
                break;
            }
        } while (this.f37599a != null);
        this.f37600b -= (long) i11;
        return j10;
    }

    @Override
    public boolean isOpen() {
        return true;
    }

    @Override
    public InputStream j() {
        return new a();
    }

    public final void k() {
        try {
            skip(this.f37600b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public c clone() {
        c cVar = new c();
        if (this.f37600b == 0) {
            return cVar;
        }
        o oVarC = this.f37599a.c();
        cVar.f37599a = oVarC;
        oVarC.f37638g = oVarC;
        oVarC.f37637f = oVarC;
        for (o oVar = this.f37599a.f37637f; oVar != this.f37599a; oVar = oVar.f37637f) {
            cVar.f37599a.f37638g.a(oVar.c());
        }
        cVar.f37600b = this.f37600b;
        return cVar;
    }

    public final long m() {
        long j10 = this.f37600b;
        if (j10 == 0) {
            return 0L;
        }
        o oVar = this.f37599a.f37638g;
        int i10 = oVar.f37634c;
        return (i10 >= 8192 || !oVar.f37636e) ? j10 : j10 - ((long) (i10 - oVar.f37633b));
    }

    public byte[] n() {
        try {
            return c(this.f37600b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public f o() {
        return new f(n());
    }

    public String p() {
        try {
            return a(this.f37600b, u.f37647a);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public final f q() {
        long j10 = this.f37600b;
        if (j10 <= 2147483647L) {
            return a((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f37600b);
    }

    public int read(byte[] bArr, int i10, int i11) {
        u.a(bArr.length, i10, i11);
        o oVar = this.f37599a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, oVar.f37634c - oVar.f37633b);
        System.arraycopy(oVar.f37632a, oVar.f37633b, bArr, i10, iMin);
        int i12 = oVar.f37633b + iMin;
        oVar.f37633b = i12;
        this.f37600b -= (long) iMin;
        if (i12 == oVar.f37634c) {
            this.f37599a = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    @Override
    public byte readByte() {
        long j10 = this.f37600b;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        o oVar = this.f37599a;
        int i10 = oVar.f37633b;
        int i11 = oVar.f37634c;
        int i12 = i10 + 1;
        byte b10 = oVar.f37632a[i10];
        this.f37600b = j10 - 1;
        if (i12 == i11) {
            this.f37599a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f37633b = i12;
        }
        return b10;
    }

    @Override
    public void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = read(bArr, i10, bArr.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override
    public int readInt() {
        long j10 = this.f37600b;
        if (j10 < 4) {
            throw new IllegalStateException("size < 4: " + this.f37600b);
        }
        o oVar = this.f37599a;
        int i10 = oVar.f37633b;
        int i11 = oVar.f37634c;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = oVar.f37632a;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        this.f37600b = j10 - 4;
        if (i14 == i11) {
            this.f37599a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f37633b = i14;
        }
        return i15;
    }

    @Override
    public short readShort() {
        long j10 = this.f37600b;
        if (j10 < 2) {
            throw new IllegalStateException("size < 2: " + this.f37600b);
        }
        o oVar = this.f37599a;
        int i10 = oVar.f37633b;
        int i11 = oVar.f37634c;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = oVar.f37632a;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        this.f37600b = j10 - 2;
        if (i14 == i11) {
            this.f37599a = oVar.b();
            p.a(oVar);
        } else {
            oVar.f37633b = i14;
        }
        return (short) i15;
    }

    public final long size() {
        return this.f37600b;
    }

    @Override
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            o oVar = this.f37599a;
            if (oVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, oVar.f37634c - oVar.f37633b);
            long j11 = iMin;
            this.f37600b -= j11;
            j10 -= j11;
            o oVar2 = this.f37599a;
            int i10 = oVar2.f37633b + iMin;
            oVar2.f37633b = i10;
            if (i10 == oVar2.f37634c) {
                this.f37599a = oVar2.b();
                p.a(oVar2);
            }
        }
    }

    public String toString() {
        return q().toString();
    }

    @Override
    public c a(String str) {
        return a(str, 0, str.length());
    }

    @Override
    public byte[] c(long j10) throws EOFException {
        u.a(this.f37600b, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    @Override
    public int e() {
        return u.a(readInt());
    }

    public final byte f(long j10) {
        u.a(this.f37600b, j10, 1L);
        long j11 = this.f37600b;
        if (j11 - j10 > j10) {
            o oVar = this.f37599a;
            while (true) {
                int i10 = oVar.f37634c;
                int i11 = oVar.f37633b;
                long j12 = i10 - i11;
                if (j10 < j12) {
                    return oVar.f37632a[i11 + ((int) j10)];
                }
                j10 -= j12;
                oVar = oVar.f37637f;
            }
        } else {
            long j13 = j10 - j11;
            o oVar2 = this.f37599a.f37638g;
            while (true) {
                int i12 = oVar2.f37634c;
                int i13 = oVar2.f37633b;
                j13 += (long) (i12 - i13);
                if (j13 >= 0) {
                    return oVar2.f37632a[i13 + ((int) j13)];
                }
                oVar2 = oVar2.f37638g;
            }
        }
    }

    public String g(long j10) throws EOFException {
        return a(j10, u.f37647a);
    }

    o b(int i10) {
        if (i10 >= 1 && i10 <= 8192) {
            o oVar = this.f37599a;
            if (oVar == null) {
                o oVarA = p.a();
                this.f37599a = oVarA;
                oVarA.f37638g = oVarA;
                oVarA.f37637f = oVarA;
                return oVarA;
            }
            o oVar2 = oVar.f37638g;
            return (oVar2.f37634c + i10 > 8192 || !oVar2.f37636e) ? oVar2.a(p.a()) : oVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override
    public c writeShort(int i10) {
        o oVarB = b(2);
        byte[] bArr = oVarB.f37632a;
        int i11 = oVarB.f37634c;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        oVarB.f37634c = i11 + 2;
        this.f37600b += 2;
        return this;
    }

    @Override
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int iRemaining = byteBuffer.remaining();
            int i10 = iRemaining;
            while (i10 > 0) {
                o oVarB = b(1);
                int iMin = Math.min(i10, 8192 - oVarB.f37634c);
                byteBuffer.get(oVarB.f37632a, oVarB.f37634c, iMin);
                i10 -= iMin;
                oVarB.f37634c += iMin;
            }
            this.f37600b += (long) iRemaining;
            return iRemaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final c a(c cVar, long j10, long j11) {
        if (cVar != null) {
            u.a(this.f37600b, j10, j11);
            if (j11 == 0) {
                return this;
            }
            cVar.f37600b += j11;
            o oVar = this.f37599a;
            while (true) {
                long j12 = oVar.f37634c - oVar.f37633b;
                if (j10 < j12) {
                    break;
                }
                j10 -= j12;
                oVar = oVar.f37637f;
            }
            while (j11 > 0) {
                o oVarC = oVar.c();
                int i10 = (int) (((long) oVarC.f37633b) + j10);
                oVarC.f37633b = i10;
                oVarC.f37634c = Math.min(i10 + ((int) j11), oVarC.f37634c);
                o oVar2 = cVar.f37599a;
                if (oVar2 == null) {
                    oVarC.f37638g = oVarC;
                    oVarC.f37637f = oVarC;
                    cVar.f37599a = oVarC;
                } else {
                    oVar2.f37638g.a(oVarC);
                }
                j11 -= (long) (oVarC.f37634c - oVarC.f37633b);
                oVar = oVar.f37637f;
                j10 = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override
    public c writeByte(int i10) {
        o oVarB = b(1);
        byte[] bArr = oVarB.f37632a;
        int i11 = oVarB.f37634c;
        oVarB.f37634c = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f37600b++;
        return this;
    }

    @Override
    public long b(c cVar, long j10) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 >= 0) {
            long j11 = this.f37600b;
            if (j11 == 0) {
                return -1L;
            }
            if (j10 > j11) {
                j10 = j11;
            }
            cVar.a(this, j10);
            return j10;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f37599a;
        if (oVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), oVar.f37634c - oVar.f37633b);
        byteBuffer.put(oVar.f37632a, oVar.f37633b, iMin);
        int i10 = oVar.f37633b + iMin;
        oVar.f37633b = i10;
        this.f37600b -= (long) iMin;
        if (i10 == oVar.f37634c) {
            this.f37599a = oVar.b();
            p.a(oVar);
        }
        return iMin;
    }

    @Override
    public c writeInt(int i10) {
        o oVarB = b(4);
        byte[] bArr = oVarB.f37632a;
        int i11 = oVarB.f37634c;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        oVarB.f37634c = i11 + 4;
        this.f37600b += 4;
        return this;
    }

    public c f(int i10) {
        if (i10 < 128) {
            writeByte(i10);
        } else if (i10 < 2048) {
            writeByte((i10 >> 6) | PsExtractor.AUDIO_STREAM);
            writeByte((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                writeByte(63);
            } else {
                writeByte((i10 >> 12) | 224);
                writeByte(((i10 >> 6) & 63) | 128);
                writeByte((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            writeByte((i10 >> 18) | 240);
            writeByte(((i10 >> 12) & 63) | 128);
            writeByte(((i10 >> 6) & 63) | 128);
            writeByte((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    @Override
    public t b() {
        return t.f37643d;
    }

    public String a(long j10, Charset charset) throws EOFException {
        u.a(this.f37600b, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
        }
        if (j10 == 0) {
            return "";
        }
        o oVar = this.f37599a;
        int i10 = oVar.f37633b;
        if (((long) i10) + j10 > oVar.f37634c) {
            return new String(c(j10), charset);
        }
        String str = new String(oVar.f37632a, i10, (int) j10, charset);
        int i11 = (int) (((long) oVar.f37633b) + j10);
        oVar.f37633b = i11;
        this.f37600b -= j10;
        if (i11 == oVar.f37634c) {
            this.f37599a = oVar.b();
            p.a(oVar);
        }
        return str;
    }

    @Override
    public c a(long j10) {
        if (j10 == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        o oVarB = b(iNumberOfTrailingZeros);
        byte[] bArr = oVarB.f37632a;
        int i10 = oVarB.f37634c;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = f37598c[(int) (15 & j10)];
            j10 >>>= 4;
        }
        oVarB.f37634c += iNumberOfTrailingZeros;
        this.f37600b += (long) iNumberOfTrailingZeros;
        return this;
    }

    public c a(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public c a(String str, int i10, int i11) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i10);
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            while (i10 < i11) {
                char cCharAt2 = str.charAt(i10);
                if (cCharAt2 < 128) {
                    o oVarB = b(1);
                    byte[] bArr = oVarB.f37632a;
                    int i12 = oVarB.f37634c - i10;
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
                    int i14 = oVarB.f37634c;
                    int i15 = (i12 + i10) - i14;
                    oVarB.f37634c = i14 + i15;
                    this.f37600b += (long) i15;
                } else {
                    if (cCharAt2 < 2048) {
                        writeByte((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                        writeByte((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i16 = i10 + 1;
                        char cCharAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i17 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            writeByte((i17 >> 18) | 240);
                            writeByte(((i17 >> 12) & 63) | 128);
                            writeByte(((i17 >> 6) & 63) | 128);
                            writeByte((i17 & 63) | 128);
                            i10 += 2;
                        } else {
                            writeByte(63);
                            i10 = i16;
                        }
                    } else {
                        writeByte((cCharAt2 >> '\f') | 224);
                        writeByte(((cCharAt2 >> 6) & 63) | 128);
                        writeByte((cCharAt2 & '?') | 128);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    public c a(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i10);
        }
        if (i11 >= i10) {
            if (i11 <= str.length()) {
                if (charset != null) {
                    if (charset.equals(u.f37647a)) {
                        return a(str, i10, i11);
                    }
                    byte[] bytes = str.substring(i10, i11).getBytes(charset);
                    return write(bytes, 0, bytes.length);
                }
                throw new IllegalArgumentException("charset == null");
            }
            throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    @Override
    public c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override
    public c write(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            u.a(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                o oVarB = b(1);
                int iMin = Math.min(i12 - i10, 8192 - oVarB.f37634c);
                System.arraycopy(bArr, i10, oVarB.f37632a, oVarB.f37634c, iMin);
                i10 += iMin;
                oVarB.f37634c += iMin;
            }
            this.f37600b += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long jB = sVar.b(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jB == -1) {
                return j10;
            }
            j10 += jB;
        }
    }

    @Override
    public void a(c cVar, long j10) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            u.a(cVar.f37600b, 0L, j10);
            while (j10 > 0) {
                o oVar = cVar.f37599a;
                if (j10 < oVar.f37634c - oVar.f37633b) {
                    o oVar2 = this.f37599a;
                    o oVar3 = oVar2 != null ? oVar2.f37638g : null;
                    if (oVar3 != null && oVar3.f37636e) {
                        if ((((long) oVar3.f37634c) + j10) - ((long) (oVar3.f37635d ? 0 : oVar3.f37633b)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            oVar.a(oVar3, (int) j10);
                            cVar.f37600b -= j10;
                            this.f37600b += j10;
                            return;
                        }
                    }
                    cVar.f37599a = oVar.a((int) j10);
                }
                o oVar4 = cVar.f37599a;
                long j11 = oVar4.f37634c - oVar4.f37633b;
                cVar.f37599a = oVar4.b();
                o oVar5 = this.f37599a;
                if (oVar5 == null) {
                    this.f37599a = oVar4;
                    oVar4.f37638g = oVar4;
                    oVar4.f37637f = oVar4;
                } else {
                    oVar5.f37638g.a(oVar4).a();
                }
                cVar.f37600b -= j11;
                this.f37600b += j11;
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override
    public long a(byte b10) {
        return a(b10, 0L, Long.MAX_VALUE);
    }

    public long a(byte b10, long j10, long j11) {
        o oVar;
        long j12 = 0;
        if (j10 >= 0 && j11 >= j10) {
            long j13 = this.f37600b;
            long j14 = j11 > j13 ? j13 : j11;
            if (j10 == j14 || (oVar = this.f37599a) == null) {
                return -1L;
            }
            if (j13 - j10 < j10) {
                while (j13 > j10) {
                    oVar = oVar.f37638g;
                    j13 -= (long) (oVar.f37634c - oVar.f37633b);
                }
            } else {
                while (true) {
                    long j15 = ((long) (oVar.f37634c - oVar.f37633b)) + j12;
                    if (j15 >= j10) {
                        break;
                    }
                    oVar = oVar.f37637f;
                    j12 = j15;
                }
                j13 = j12;
            }
            long j16 = j10;
            while (j13 < j14) {
                byte[] bArr = oVar.f37632a;
                int iMin = (int) Math.min(oVar.f37634c, (((long) oVar.f37633b) + j14) - j13);
                for (int i10 = (int) ((((long) oVar.f37633b) + j16) - j13); i10 < iMin; i10++) {
                    if (bArr[i10] == b10) {
                        return ((long) (i10 - oVar.f37633b)) + j13;
                    }
                }
                j13 += (long) (oVar.f37634c - oVar.f37633b);
                oVar = oVar.f37637f;
                j16 = j13;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f37600b), Long.valueOf(j10), Long.valueOf(j11)));
    }

    public final f a(int i10) {
        if (i10 == 0) {
            return f.f37603e;
        }
        return new q(this, i10);
    }
}
