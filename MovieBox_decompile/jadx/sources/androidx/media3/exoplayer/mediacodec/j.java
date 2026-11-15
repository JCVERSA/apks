package androidx.media3.exoplayer.mediacodec;

import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

final class j extends DecoderInputBuffer {

    private long f11916i;

    private int f11917j;

    private int f11918k;

    public j() {
        super(2);
        this.f11918k = 32;
    }

    private boolean i(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!m()) {
            return true;
        }
        if (this.f11917j >= this.f11918k) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f10606c;
        return byteBuffer2 == null || (byteBuffer = this.f10606c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    @Override
    public void clear() {
        super.clear();
        this.f11917j = 0;
    }

    public boolean h(DecoderInputBuffer decoderInputBuffer) {
        androidx.media3.common.util.a.a(!decoderInputBuffer.e());
        androidx.media3.common.util.a.a(!decoderInputBuffer.hasSupplementalData());
        androidx.media3.common.util.a.a(!decoderInputBuffer.isEndOfStream());
        if (!i(decoderInputBuffer)) {
            return false;
        }
        int i10 = this.f11917j;
        this.f11917j = i10 + 1;
        if (i10 == 0) {
            this.f10608e = decoderInputBuffer.f10608e;
            if (decoderInputBuffer.isKeyFrame()) {
                setFlags(1);
            }
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f10606c;
        if (byteBuffer != null) {
            b(byteBuffer.remaining());
            this.f10606c.put(byteBuffer);
        }
        this.f11916i = decoderInputBuffer.f10608e;
        return true;
    }

    public long j() {
        return this.f10608e;
    }

    public long k() {
        return this.f11916i;
    }

    public int l() {
        return this.f11917j;
    }

    public boolean m() {
        return this.f11917j > 0;
    }

    public void n(int i10) {
        androidx.media3.common.util.a.a(i10 > 0);
        this.f11918k = i10;
    }
}
