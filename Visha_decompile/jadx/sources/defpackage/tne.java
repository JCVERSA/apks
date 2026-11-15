package defpackage;

import java.nio.ByteBuffer;
import java.util.Date;

public final class tne extends oxi {
    public Date k;
    public Date l;
    public long m;
    public long n;
    public double o;
    public float p;
    public yxi q;
    public long r;

    public tne() {
        super("mvhd");
        this.o = 1.0d;
        this.p = 1.0f;
        this.q = yxi.j;
    }

    @Override
    public final void c(ByteBuffer byteBuffer) {
        f(byteBuffer);
        if (e() == 1) {
            this.k = txi.a(pne.f(byteBuffer));
            this.l = txi.a(pne.f(byteBuffer));
            this.m = pne.e(byteBuffer);
            this.n = pne.f(byteBuffer);
        } else {
            this.k = txi.a(pne.e(byteBuffer));
            this.l = txi.a(pne.e(byteBuffer));
            this.m = pne.e(byteBuffer);
            this.n = pne.e(byteBuffer);
        }
        this.o = pne.b(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.p = ((short) ((bArr[1] & 255) | ((short) (65280 & (bArr[0] << 8))))) / 256.0f;
        pne.d(byteBuffer);
        pne.e(byteBuffer);
        pne.e(byteBuffer);
        this.q = new yxi(pne.b(byteBuffer), pne.b(byteBuffer), pne.b(byteBuffer), pne.b(byteBuffer), pne.a(byteBuffer), pne.a(byteBuffer), pne.a(byteBuffer), pne.b(byteBuffer), pne.b(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.r = pne.e(byteBuffer);
    }

    public final long g() {
        return this.n;
    }

    public final long h() {
        return this.m;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.k + ";modificationTime=" + this.l + ";timescale=" + this.m + ";duration=" + this.n + ";rate=" + this.o + ";volume=" + this.p + ";matrix=" + this.q + ";nextTrackId=" + this.r + "]";
    }
}
