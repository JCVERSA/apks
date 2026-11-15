package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import java.nio.ByteBuffer;

final class i {

    private long f24743a;

    private long f24744b;

    private boolean f24745c;

    i() {
    }

    private long a(long j10) {
        return this.f24743a + Math.max(0L, ((this.f24744b - 529) * 1000000) / j10);
    }

    public long b(p1 p1Var) {
        return a(p1Var.f24915z);
    }

    public void c() {
        this.f24743a = 0L;
        this.f24744b = 0L;
        this.f24745c = false;
    }

    public long d(p1 p1Var, DecoderInputBuffer decoderInputBuffer) {
        if (this.f24744b == 0) {
            this.f24743a = decoderInputBuffer.f24204e;
        }
        if (this.f24745c) {
            return decoderInputBuffer.f24204e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f24202c);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & 255);
        }
        int iM = b0.m(i10);
        if (iM != -1) {
            long jA = a(p1Var.f24915z);
            this.f24744b += (long) iM;
            return jA;
        }
        this.f24745c = true;
        this.f24744b = 0L;
        this.f24743a = decoderInputBuffer.f24204e;
        com.google.android.exoplayer2.util.s.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return decoderInputBuffer.f24204e;
    }
}
