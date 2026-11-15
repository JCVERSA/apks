package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;

public final class d1 extends androidx.media3.common.audio.b {

    private final float f10836i;

    private final short f10837j;

    private final int f10838k;

    private final long f10839l;

    private final long f10840m;

    private int f10841n;

    private boolean f10842o;

    private int f10843p;

    private long f10844q;

    private int f10845r;

    private byte[] f10846s;

    private int f10847t;

    private int f10848u;

    private byte[] f10849v;

    public d1() {
        this(100000L, 0.2f, 2000000L, 10, (short) 1024);
    }

    private static int A(byte b10, byte b11) {
        return (b10 << 8) | (b11 & 255);
    }

    private int h(float f10) {
        return i((int) f10);
    }

    private int i(int i10) {
        int i11 = this.f10841n;
        return (i10 / i11) * i11;
    }

    private int j(int i10, int i11) {
        int i12 = this.f10838k;
        return i12 + ((((100 - i12) * (i10 * 1000)) / i11) / 1000);
    }

    private int k(int i10, int i11) {
        return (((this.f10838k - 100) * ((i10 * 1000) / i11)) / 1000) + 100;
    }

    private int l(int i10) {
        int iM = ((m(this.f10840m) - this.f10845r) * this.f10841n) - (this.f10846s.length / 2);
        androidx.media3.common.util.a.g(iM >= 0);
        return h(Math.min((i10 * this.f10836i) + 0.5f, iM));
    }

    private int m(long j10) {
        return (int) ((j10 * ((long) this.f9515b.f9505a)) / 1000000);
    }

    private int n(ByteBuffer byteBuffer) {
        for (int iLimit = byteBuffer.limit() - 1; iLimit >= byteBuffer.position(); iLimit -= 2) {
            if (q(byteBuffer.get(iLimit), byteBuffer.get(iLimit - 1))) {
                int i10 = this.f10841n;
                return ((iLimit / i10) * i10) + i10;
            }
        }
        return byteBuffer.position();
    }

    private int o(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position() + 1; iPosition < byteBuffer.limit(); iPosition += 2) {
            if (q(byteBuffer.get(iPosition), byteBuffer.get(iPosition - 1))) {
                int i10 = this.f10841n;
                return i10 * (iPosition / i10);
            }
        }
        return byteBuffer.limit();
    }

    private boolean q(byte b10, byte b11) {
        return Math.abs(A(b10, b11)) > this.f10837j;
    }

    private void r(byte[] bArr, int i10, int i11) {
        if (i11 == 3) {
            return;
        }
        for (int i12 = 0; i12 < i10; i12 += 2) {
            x(bArr, i12, (A(bArr[i12 + 1], bArr[i12]) * (i11 == 0 ? k(i12, i10 - 1) : i11 == 2 ? j(i12, i10 - 1) : this.f10838k)) / 100);
        }
    }

    private void s(ByteBuffer byteBuffer) {
        g(byteBuffer.remaining()).put(byteBuffer).flip();
    }

    private void t(byte[] bArr, int i10, int i11) {
        androidx.media3.common.util.a.b(i10 % this.f10841n == 0, "byteOutput size is not aligned to frame size " + i10);
        r(bArr, i10, i11);
        g(i10).put(bArr, 0, i10).flip();
    }

    private void u(boolean z10) {
        int length;
        int iL;
        int i10 = this.f10848u;
        byte[] bArr = this.f10846s;
        if (i10 == bArr.length || z10) {
            if (this.f10845r == 0) {
                if (z10) {
                    v(i10, 3);
                    length = i10;
                } else {
                    androidx.media3.common.util.a.g(i10 >= bArr.length / 2);
                    length = this.f10846s.length / 2;
                    v(length, 0);
                }
                iL = length;
            } else if (z10) {
                int length2 = i10 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iL2 = l(length2) + (this.f10846s.length / 2);
                v(iL2, 2);
                iL = iL2;
                length = length3;
            } else {
                length = i10 - (bArr.length / 2);
                iL = l(length);
                v(iL, 1);
            }
            androidx.media3.common.util.a.h(length % this.f10841n == 0, "bytesConsumed is not aligned to frame size: %s" + length);
            androidx.media3.common.util.a.g(i10 >= iL);
            this.f10848u -= length;
            int i11 = this.f10847t + length;
            this.f10847t = i11;
            this.f10847t = i11 % this.f10846s.length;
            int i12 = this.f10845r;
            int i13 = this.f10841n;
            this.f10845r = i12 + (iL / i13);
            this.f10844q += (long) ((length - iL) / i13);
        }
    }

    private void v(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        androidx.media3.common.util.a.a(this.f10848u >= i10);
        if (i11 == 2) {
            int i12 = this.f10847t;
            int i13 = this.f10848u;
            int i14 = i12 + i13;
            byte[] bArr = this.f10846s;
            if (i14 <= bArr.length) {
                System.arraycopy(bArr, (i12 + i13) - i10, this.f10849v, 0, i10);
            } else {
                int length = i13 - (bArr.length - i12);
                if (length >= i10) {
                    System.arraycopy(bArr, length - i10, this.f10849v, 0, i10);
                } else {
                    int i15 = i10 - length;
                    System.arraycopy(bArr, bArr.length - i15, this.f10849v, 0, i15);
                    System.arraycopy(this.f10846s, 0, this.f10849v, i15, length);
                }
            }
        } else {
            int i16 = this.f10847t;
            int i17 = i16 + i10;
            byte[] bArr2 = this.f10846s;
            if (i17 <= bArr2.length) {
                System.arraycopy(bArr2, i16, this.f10849v, 0, i10);
            } else {
                int length2 = bArr2.length - i16;
                System.arraycopy(bArr2, i16, this.f10849v, 0, length2);
                System.arraycopy(this.f10846s, 0, this.f10849v, length2, i10 - length2);
            }
        }
        androidx.media3.common.util.a.b(i10 % this.f10841n == 0, "sizeToOutput is not aligned to frame size: " + i10);
        androidx.media3.common.util.a.g(this.f10847t < this.f10846s.length);
        t(this.f10849v, i10, i11);
    }

    private void w(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f10846s.length));
        int iN = n(byteBuffer);
        if (iN == byteBuffer.position()) {
            this.f10843p = 1;
        } else {
            byteBuffer.limit(Math.min(iN, byteBuffer.capacity()));
            s(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private static void x(byte[] bArr, int i10, int i11) {
        if (i11 >= 32767) {
            bArr[i10] = -1;
            bArr[i10 + 1] = 127;
        } else if (i11 <= -32768) {
            bArr[i10] = 0;
            bArr[i10 + 1] = -128;
        } else {
            bArr[i10] = (byte) (i11 & 255);
            bArr[i10 + 1] = (byte) (i11 >> 8);
        }
    }

    private void z(ByteBuffer byteBuffer) {
        int length;
        int i10;
        androidx.media3.common.util.a.g(this.f10847t < this.f10846s.length);
        int iLimit = byteBuffer.limit();
        int iO = o(byteBuffer);
        int iPosition = iO - byteBuffer.position();
        int i11 = this.f10847t;
        int i12 = this.f10848u;
        int i13 = i11 + i12;
        byte[] bArr = this.f10846s;
        if (i13 < bArr.length) {
            length = bArr.length - (i12 + i11);
            i10 = i11 + i12;
        } else {
            int length2 = i12 - (bArr.length - i11);
            length = i11 - length2;
            i10 = length2;
        }
        boolean z10 = iO < iLimit;
        int iMin = Math.min(iPosition, length);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.f10846s, i10, iMin);
        int i14 = this.f10848u + iMin;
        this.f10848u = i14;
        androidx.media3.common.util.a.g(i14 <= this.f10846s.length);
        boolean z11 = z10 && iPosition < length;
        u(z11);
        if (z11) {
            this.f10843p = 0;
            this.f10845r = 0;
        }
        byteBuffer.limit(iLimit);
    }

    @Override
    protected AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9507c == 2) {
            return aVar.f9505a == -1 ? AudioProcessor.a.f9504e : aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override
    public void d() {
        if (isActive()) {
            this.f10841n = this.f9515b.f9506b * 2;
            int i10 = i(m(this.f10839l) / 2) * 2;
            if (this.f10846s.length != i10) {
                this.f10846s = new byte[i10];
                this.f10849v = new byte[i10];
            }
        }
        this.f10843p = 0;
        this.f10844q = 0L;
        this.f10845r = 0;
        this.f10847t = 0;
        this.f10848u = 0;
    }

    @Override
    public void e() {
        if (this.f10848u > 0) {
            u(true);
            this.f10845r = 0;
        }
    }

    @Override
    public void f() {
        this.f10842o = false;
        byte[] bArr = androidx.media3.common.util.a1.f10043f;
        this.f10846s = bArr;
        this.f10849v = bArr;
    }

    @Override
    public boolean isActive() {
        return super.isActive() && this.f10842o;
    }

    public long p() {
        return this.f10844q;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i10 = this.f10843p;
            if (i10 == 0) {
                w(byteBuffer);
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException();
                }
                z(byteBuffer);
            }
        }
    }

    public void y(boolean z10) {
        this.f10842o = z10;
    }

    public d1(long j10, float f10, long j11, int i10, short s10) {
        boolean z10 = false;
        this.f10845r = 0;
        this.f10847t = 0;
        this.f10848u = 0;
        if (f10 >= 0.0f && f10 <= 1.0f) {
            z10 = true;
        }
        androidx.media3.common.util.a.a(z10);
        this.f10839l = j10;
        this.f10836i = f10;
        this.f10840m = j11;
        this.f10838k = i10;
        this.f10837j = s10;
        byte[] bArr = androidx.media3.common.util.a1.f10043f;
        this.f10846s = bArr;
        this.f10849v = bArr;
    }
}
