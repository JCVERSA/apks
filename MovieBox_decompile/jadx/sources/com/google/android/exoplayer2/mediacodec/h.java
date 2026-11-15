package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

final class h extends DecoderInputBuffer {

    private long f24740i;

    private int f24741j;

    private int f24742k;

    public h() {
        super(2);
        this.f24742k = 32;
    }

    private boolean s(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!w()) {
            return true;
        }
        if (this.f24741j >= this.f24742k || decoderInputBuffer.g() != g()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f24202c;
        return byteBuffer2 == null || (byteBuffer = this.f24202c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    @Override
    public void b() {
        super.b();
        this.f24741j = 0;
    }

    public boolean r(DecoderInputBuffer decoderInputBuffer) {
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.o());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.f());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.h());
        if (!s(decoderInputBuffer)) {
            return false;
        }
        int i10 = this.f24741j;
        this.f24741j = i10 + 1;
        if (i10 == 0) {
            this.f24204e = decoderInputBuffer.f24204e;
            if (decoderInputBuffer.j()) {
                k(1);
            }
        }
        if (decoderInputBuffer.g()) {
            k(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f24202c;
        if (byteBuffer != null) {
            m(byteBuffer.remaining());
            this.f24202c.put(byteBuffer);
        }
        this.f24740i = decoderInputBuffer.f24204e;
        return true;
    }

    public long t() {
        return this.f24204e;
    }

    public long u() {
        return this.f24740i;
    }

    public int v() {
        return this.f24741j;
    }

    public boolean w() {
        return this.f24741j > 0;
    }

    public void x(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        this.f24742k = i10;
    }
}
