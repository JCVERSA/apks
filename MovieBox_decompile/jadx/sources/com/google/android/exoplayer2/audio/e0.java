package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.nio.ByteBuffer;

public final class e0 extends v {

    private final long f23956i;

    private final long f23957j;

    private final short f23958k;

    private int f23959l;

    private boolean f23960m;

    private byte[] f23961n;

    private byte[] f23962o;

    private int f23963p;

    private int f23964q;

    private int f23965r;

    private boolean f23966s;

    private long f23967t;

    public e0() {
        this(150000L, DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT, (short) 1024);
    }

    private int h(long j10) {
        return (int) ((j10 * ((long) this.f24084b.f23839a)) / 1000000);
    }

    private int i(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        do {
            iLimit -= 2;
            if (iLimit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (Math.abs((int) byteBuffer.getShort(iLimit)) <= this.f23958k);
        int i10 = this.f23959l;
        return ((iLimit / i10) * i10) + i10;
    }

    private int j(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > this.f23958k) {
                int i10 = this.f23959l;
                return i10 * (iPosition / i10);
            }
        }
        return byteBuffer.limit();
    }

    private void l(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        g(iRemaining).put(byteBuffer).flip();
        if (iRemaining > 0) {
            this.f23966s = true;
        }
    }

    private void m(byte[] bArr, int i10) {
        g(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.f23966s = true;
        }
    }

    private void n(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        int iPosition = iJ - byteBuffer.position();
        byte[] bArr = this.f23961n;
        int length = bArr.length;
        int i10 = this.f23964q;
        int i11 = length - i10;
        if (iJ < iLimit && iPosition < i11) {
            m(bArr, i10);
            this.f23964q = 0;
            this.f23963p = 0;
            return;
        }
        int iMin = Math.min(iPosition, i11);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.f23961n, this.f23964q, iMin);
        int i12 = this.f23964q + iMin;
        this.f23964q = i12;
        byte[] bArr2 = this.f23961n;
        if (i12 == bArr2.length) {
            if (this.f23966s) {
                m(bArr2, this.f23965r);
                this.f23967t += (long) ((this.f23964q - (this.f23965r * 2)) / this.f23959l);
            } else {
                this.f23967t += (long) ((i12 - this.f23965r) / this.f23959l);
            }
            r(byteBuffer, this.f23961n, this.f23964q);
            this.f23964q = 0;
            this.f23963p = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void o(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.f23961n.length));
        int i10 = i(byteBuffer);
        if (i10 == byteBuffer.position()) {
            this.f23963p = 1;
        } else {
            byteBuffer.limit(i10);
            l(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private void p(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        byteBuffer.limit(iJ);
        this.f23967t += (long) (byteBuffer.remaining() / this.f23959l);
        r(byteBuffer, this.f23962o, this.f23965r);
        if (iJ < iLimit) {
            m(this.f23962o, this.f23965r);
            this.f23963p = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void r(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int iMin = Math.min(byteBuffer.remaining(), this.f23965r);
        int i11 = this.f23965r - iMin;
        System.arraycopy(bArr, i10 - i11, this.f23962o, 0, i11);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.f23962o, i11, iMin);
    }

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f23841c == 2) {
            return this.f23960m ? aVar : AudioProcessor.a.f23838e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override
    protected void d() {
        if (this.f23960m) {
            this.f23959l = this.f24084b.f23842d;
            int iH = h(this.f23956i) * this.f23959l;
            if (this.f23961n.length != iH) {
                this.f23961n = new byte[iH];
            }
            int iH2 = h(this.f23957j) * this.f23959l;
            this.f23965r = iH2;
            if (this.f23962o.length != iH2) {
                this.f23962o = new byte[iH2];
            }
        }
        this.f23963p = 0;
        this.f23967t = 0L;
        this.f23964q = 0;
        this.f23966s = false;
    }

    @Override
    protected void e() {
        int i10 = this.f23964q;
        if (i10 > 0) {
            m(this.f23961n, i10);
        }
        if (this.f23966s) {
            return;
        }
        this.f23967t += (long) (this.f23965r / this.f23959l);
    }

    @Override
    protected void f() {
        this.f23960m = false;
        this.f23965r = 0;
        byte[] bArr = p0.f26859f;
        this.f23961n = bArr;
        this.f23962o = bArr;
    }

    @Override
    public boolean isActive() {
        return this.f23960m;
    }

    public long k() {
        return this.f23967t;
    }

    public void q(boolean z10) {
        this.f23960m = z10;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i10 = this.f23963p;
            if (i10 == 0) {
                o(byteBuffer);
            } else if (i10 == 1) {
                n(byteBuffer);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                p(byteBuffer);
            }
        }
    }

    public e0(long j10, long j11, short s10) {
        com.google.android.exoplayer2.util.a.a(j11 <= j10);
        this.f23956i = j10;
        this.f23957j = j11;
        this.f23958k = s10;
        byte[] bArr = p0.f26859f;
        this.f23961n = bArr;
        this.f23962o = bArr;
    }
}
