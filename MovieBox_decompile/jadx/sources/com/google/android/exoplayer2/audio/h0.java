package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;

final class h0 extends v {

    private int f24013i;

    private int f24014j;

    private boolean f24015k;

    private int f24016l;

    private byte[] f24017m = p0.f26859f;

    private int f24018n;

    private long f24019o;

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f23841c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        this.f24015k = true;
        return (this.f24013i == 0 && this.f24014j == 0) ? AudioProcessor.a.f23838e : aVar;
    }

    @Override
    protected void d() {
        if (this.f24015k) {
            this.f24015k = false;
            int i10 = this.f24014j;
            int i11 = this.f24084b.f23842d;
            this.f24017m = new byte[i10 * i11];
            this.f24016l = this.f24013i * i11;
        }
        this.f24018n = 0;
    }

    @Override
    protected void e() {
        if (this.f24015k) {
            int i10 = this.f24018n;
            if (i10 > 0) {
                this.f24019o += (long) (i10 / this.f24084b.f23842d);
            }
            this.f24018n = 0;
        }
    }

    @Override
    protected void f() {
        this.f24017m = p0.f26859f;
    }

    @Override
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.f24018n) > 0) {
            g(i10).put(this.f24017m, 0, this.f24018n).flip();
            this.f24018n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f24019o;
    }

    public void i() {
        this.f24019o = 0L;
    }

    @Override
    public boolean isEnded() {
        return super.isEnded() && this.f24018n == 0;
    }

    public void j(int i10, int i11) {
        this.f24013i = i10;
        this.f24014j = i11;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.f24016l);
        this.f24019o += (long) (iMin / this.f24084b.f23842d);
        this.f24016l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f24016l > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.f24018n + i11) - this.f24017m.length;
        ByteBuffer byteBufferG = g(length);
        int iQ = p0.q(length, 0, this.f24018n);
        byteBufferG.put(this.f24017m, 0, iQ);
        int iQ2 = p0.q(length - iQ, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iQ2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iQ2;
        int i13 = this.f24018n - iQ;
        this.f24018n = i13;
        byte[] bArr = this.f24017m;
        System.arraycopy(bArr, iQ, bArr, 0, i13);
        byteBuffer.get(this.f24017m, this.f24018n, i12);
        this.f24018n += i12;
        byteBufferG.flip();
    }
}
