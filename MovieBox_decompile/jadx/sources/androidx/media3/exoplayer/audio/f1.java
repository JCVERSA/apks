package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;

final class f1 extends androidx.media3.common.audio.b {

    private int f10862i;

    private int f10863j;

    private boolean f10864k;

    private int f10865l;

    private byte[] f10866m = androidx.media3.common.util.a1.f10043f;

    private int f10867n;

    private long f10868o;

    @Override
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f9507c;
        if (i10 != 2 && i10 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        this.f10864k = true;
        return (this.f10862i == 0 && this.f10863j == 0) ? AudioProcessor.a.f9504e : aVar;
    }

    @Override
    protected void d() {
        if (this.f10864k) {
            this.f10864k = false;
            int i10 = this.f10863j;
            int i11 = this.f9515b.f9508d;
            this.f10866m = new byte[i10 * i11];
            this.f10865l = this.f10862i * i11;
        }
        this.f10867n = 0;
    }

    @Override
    protected void e() {
        if (this.f10864k) {
            int i10 = this.f10867n;
            if (i10 > 0) {
                this.f10868o += (long) (i10 / this.f9515b.f9508d);
            }
            this.f10867n = 0;
        }
    }

    @Override
    protected void f() {
        this.f10866m = androidx.media3.common.util.a1.f10043f;
    }

    @Override
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.f10867n) > 0) {
            g(i10).put(this.f10866m, 0, this.f10867n).flip();
            this.f10867n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f10868o;
    }

    public void i() {
        this.f10868o = 0L;
    }

    @Override
    public boolean isEnded() {
        return super.isEnded() && this.f10867n == 0;
    }

    public void j(int i10, int i11) {
        this.f10862i = i10;
        this.f10863j = i11;
    }

    @Override
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.f10865l);
        this.f10868o += (long) (iMin / this.f9515b.f9508d);
        this.f10865l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f10865l > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.f10867n + i11) - this.f10866m.length;
        ByteBuffer byteBufferG = g(length);
        int iP = androidx.media3.common.util.a1.p(length, 0, this.f10867n);
        byteBufferG.put(this.f10866m, 0, iP);
        int iP2 = androidx.media3.common.util.a1.p(length - iP, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iP2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iP2;
        int i13 = this.f10867n - iP;
        this.f10867n = i13;
        byte[] bArr = this.f10866m;
        System.arraycopy(bArr, iP, bArr, 0, i13);
        byteBuffer.get(this.f10866m, this.f10867n, i12);
        this.f10867n += i12;
        byteBufferG.flip();
    }
}
