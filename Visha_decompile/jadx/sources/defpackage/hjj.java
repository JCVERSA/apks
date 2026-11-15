package defpackage;

import com.google.android.gms.internal.ads.zzcm;
import java.nio.ByteBuffer;

public final class hjj extends urf {
    public int i;
    public int j;
    public boolean k;
    public int l;
    public byte[] m = kfh.c;
    public int n;
    public long o;

    @Override
    public final void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (i == 0) {
            return;
        }
        int iMin = Math.min(i, this.l);
        this.o += (long) (iMin / this.b.d);
        this.l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.l <= 0) {
            int i2 = i - iMin;
            int length = (this.n + i2) - this.m.length;
            ByteBuffer byteBufferD = d(length);
            int i3 = this.n;
            int i4 = kfh.a;
            int iMax = Math.max(0, Math.min(length, i3));
            byteBufferD.put(this.m, 0, iMax);
            int iMax2 = Math.max(0, Math.min(length - iMax, i2));
            byteBuffer.limit(byteBuffer.position() + iMax2);
            byteBufferD.put(byteBuffer);
            byteBuffer.limit(iLimit);
            int i5 = i2 - iMax2;
            int i6 = this.n - iMax;
            this.n = i6;
            byte[] bArr = this.m;
            System.arraycopy(bArr, iMax, bArr, 0, i6);
            byteBuffer.get(this.m, this.n, i5);
            this.n += i5;
            byteBufferD.flip();
        }
    }

    @Override
    public final cpf c(cpf cpfVar) throws zzcm {
        int i = cpfVar.c;
        if (i != 2 && i != 4) {
            throw new zzcm("Unhandled input format:", cpfVar);
        }
        this.k = true;
        return (this.i == 0 && this.j == 0) ? cpf.e : cpfVar;
    }

    @Override
    public final void e() {
        if (this.k) {
            this.k = false;
            int i = this.j;
            int i2 = this.b.d;
            this.m = new byte[i * i2];
            this.l = this.i * i2;
        }
        this.n = 0;
    }

    @Override
    public final void f() {
        if (this.k) {
            int i = this.n;
            if (i > 0) {
                this.o += (long) (i / this.b.d);
            }
            this.n = 0;
        }
    }

    @Override
    public final void g() {
        this.m = kfh.c;
    }

    public final long i() {
        return this.o;
    }

    public final void j() {
        this.o = 0L;
    }

    public final void k(int i, int i2) {
        this.i = i;
        this.j = i2;
    }

    @Override
    public final ByteBuffer zzb() {
        int i;
        if (super.zzh() && (i = this.n) > 0) {
            d(i).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        return super.zzb();
    }

    @Override
    public final boolean zzh() {
        return super.zzh() && this.n == 0;
    }
}
