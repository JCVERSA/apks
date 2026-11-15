package defpackage;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k;
import java.nio.ByteBuffer;

public final class so0 {
    public long a;
    public long b;
    public boolean c;

    public final long a(long j) {
        return this.a + Math.max(0L, ((this.b - 529) * 1000000) / j);
    }

    public long b(k kVar) {
        return a(kVar.A);
    }

    public void c() {
        this.a = 0L;
        this.b = 0L;
        this.c = false;
    }

    public long d(k kVar, DecoderInputBuffer decoderInputBuffer) {
        if (this.b == 0) {
            this.a = decoderInputBuffer.f;
        }
        if (this.c) {
            return decoderInputBuffer.f;
        }
        ByteBuffer byteBuffer = (ByteBuffer) zi.e(decoderInputBuffer.d);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int iM = ur6.m(i);
        if (iM != -1) {
            long jA = a(kVar.A);
            this.b += (long) iM;
            return jA;
        }
        this.c = true;
        this.b = 0L;
        this.a = decoderInputBuffer.f;
        op5.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return decoderInputBuffer.f;
    }
}
