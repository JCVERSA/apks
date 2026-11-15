package defpackage;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

public final class md0 extends DecoderInputBuffer {
    public long j;
    public int k;
    public int l;

    public md0() {
        super(2);
        this.l = 32;
    }

    @Override
    public void b() {
        super.b();
        this.k = 0;
    }

    public boolean r(DecoderInputBuffer decoderInputBuffer) {
        zi.a(!decoderInputBuffer.o());
        zi.a(!decoderInputBuffer.f());
        zi.a(!decoderInputBuffer.h());
        if (!s(decoderInputBuffer)) {
            return false;
        }
        int i = this.k;
        this.k = i + 1;
        if (i == 0) {
            this.f = decoderInputBuffer.f;
            if (decoderInputBuffer.j()) {
                k(1);
            }
        }
        if (decoderInputBuffer.g()) {
            k(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.d;
        if (byteBuffer != null) {
            m(byteBuffer.remaining());
            this.d.put(byteBuffer);
        }
        this.j = decoderInputBuffer.f;
        return true;
    }

    public final boolean s(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!w()) {
            return true;
        }
        if (this.k >= this.l || decoderInputBuffer.g() != g()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.d;
        return byteBuffer2 == null || (byteBuffer = this.d) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    public long t() {
        return this.f;
    }

    public long u() {
        return this.j;
    }

    public int v() {
        return this.k;
    }

    public boolean w() {
        return this.k > 0;
    }

    public void x(int i) {
        zi.a(i > 0);
        this.l = i;
    }
}
