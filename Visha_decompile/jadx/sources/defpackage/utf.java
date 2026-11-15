package defpackage;

import com.google.android.gms.internal.ads.zzcm;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

public final class utf implements vqf {
    public int b;
    public float c = 1.0f;
    public float d = 1.0f;
    public cpf e;
    public cpf f;
    public cpf g;
    public cpf h;
    public boolean i;
    public wsf j;
    public ByteBuffer k;
    public ShortBuffer l;
    public ByteBuffer m;
    public long n;
    public long o;
    public boolean p;

    public utf() {
        cpf cpfVar = cpf.e;
        this.e = cpfVar;
        this.f = cpfVar;
        this.g = cpfVar;
        this.h = cpfVar;
        ByteBuffer byteBuffer = vqf.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
    }

    @Override
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            wsf wsfVar = this.j;
            wsfVar.getClass();
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.n += (long) iRemaining;
            wsfVar.f(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override
    public final cpf b(cpf cpfVar) throws zzcm {
        if (cpfVar.c != 2) {
            throw new zzcm("Unhandled input format:", cpfVar);
        }
        int i = this.b;
        if (i == -1) {
            i = cpfVar.a;
        }
        this.e = cpfVar;
        cpf cpfVar2 = new cpf(i, cpfVar.b, 2);
        this.f = cpfVar2;
        this.i = true;
        return cpfVar2;
    }

    public final long c(long j) {
        long j2 = this.o;
        if (j2 < 1024) {
            return (long) (((double) this.c) * j);
        }
        long j3 = this.n;
        wsf wsfVar = this.j;
        wsfVar.getClass();
        long jB = j3 - ((long) wsfVar.b());
        int i = this.h.a;
        int i2 = this.g.a;
        return i == i2 ? kfh.P(j, jB, j2, RoundingMode.DOWN) : kfh.P(j, jB * ((long) i), j2 * ((long) i2), RoundingMode.DOWN);
    }

    public final void d(float f) {
        n7g.d(f > 0.0f);
        if (this.d != f) {
            this.d = f;
            this.i = true;
        }
    }

    public final void e(float f) {
        n7g.d(f > 0.0f);
        if (this.c != f) {
            this.c = f;
            this.i = true;
        }
    }

    @Override
    public final ByteBuffer zzb() {
        int iA;
        wsf wsfVar = this.j;
        if (wsfVar != null && (iA = wsfVar.a()) > 0) {
            if (this.k.capacity() < iA) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iA).order(ByteOrder.nativeOrder());
                this.k = byteBufferOrder;
                this.l = byteBufferOrder.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            wsfVar.d(this.l);
            this.o += (long) iA;
            this.k.limit(iA);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = vqf.a;
        return byteBuffer;
    }

    @Override
    public final void zzc() {
        if (zzg()) {
            cpf cpfVar = this.e;
            this.g = cpfVar;
            cpf cpfVar2 = this.f;
            this.h = cpfVar2;
            if (this.i) {
                this.j = new wsf(cpfVar.a, cpfVar.b, this.c, this.d, cpfVar2.a);
            } else {
                wsf wsfVar = this.j;
                if (wsfVar != null) {
                    wsfVar.c();
                }
            }
        }
        this.m = vqf.a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override
    public final void zzd() {
        wsf wsfVar = this.j;
        if (wsfVar != null) {
            wsfVar.e();
        }
        this.p = true;
    }

    @Override
    public final void zzf() {
        this.c = 1.0f;
        this.d = 1.0f;
        cpf cpfVar = cpf.e;
        this.e = cpfVar;
        this.f = cpfVar;
        this.g = cpfVar;
        this.h = cpfVar;
        ByteBuffer byteBuffer = vqf.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override
    public final boolean zzg() {
        if (this.f.a != -1) {
            return Math.abs(this.c + (-1.0f)) >= 1.0E-4f || Math.abs(this.d + (-1.0f)) >= 1.0E-4f || this.f.a != this.e.a;
        }
        return false;
    }

    @Override
    public final boolean zzh() {
        if (!this.p) {
            return false;
        }
        wsf wsfVar = this.j;
        return wsfVar == null || wsfVar.a() == 0;
    }
}
