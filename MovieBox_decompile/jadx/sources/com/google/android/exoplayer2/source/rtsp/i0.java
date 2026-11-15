package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class i0 extends com.google.android.exoplayer2.upstream.f implements c, u.b {

    private final LinkedBlockingQueue f25767e;

    private final long f25768f;

    private byte[] f25769g;

    private int f25770h;

    public i0(long j10) {
        super(true);
        this.f25768f = j10;
        this.f25767e = new LinkedBlockingQueue();
        this.f25769g = new byte[0];
        this.f25770h = -1;
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        this.f25770h = nVar.f26665a.getPort();
        return -1L;
    }

    @Override
    public String c() {
        com.google.android.exoplayer2.util.a.g(this.f25770h != -1);
        return p0.C("RTP/AVP/TCP;unicast;interleaved=%d-%d", Integer.valueOf(this.f25770h), Integer.valueOf(this.f25770h + 1));
    }

    @Override
    public int d() {
        return this.f25770h;
    }

    @Override
    public void f(byte[] bArr) {
        this.f25767e.add(bArr);
    }

    @Override
    public Uri getUri() {
        return null;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int iMin = Math.min(i11, this.f25769g.length);
        System.arraycopy(this.f25769g, 0, bArr, i10, iMin);
        byte[] bArr2 = this.f25769g;
        this.f25769g = Arrays.copyOfRange(bArr2, iMin, bArr2.length);
        if (iMin == i11) {
            return iMin;
        }
        try {
            byte[] bArr3 = (byte[]) this.f25767e.poll(this.f25768f, TimeUnit.MILLISECONDS);
            if (bArr3 == null) {
                return -1;
            }
            int iMin2 = Math.min(i11 - iMin, bArr3.length);
            System.arraycopy(bArr3, 0, bArr, i10 + iMin, iMin2);
            if (iMin2 < bArr3.length) {
                this.f25769g = Arrays.copyOfRange(bArr3, iMin2, bArr3.length);
            }
            return iMin + iMin2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }

    @Override
    public void close() {
    }

    @Override
    public u.b g() {
        return this;
    }
}
