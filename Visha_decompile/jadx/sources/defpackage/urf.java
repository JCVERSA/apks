package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class urf implements vqf {
    public cpf b;
    public cpf c;
    public cpf d;
    public cpf e;
    public ByteBuffer f;
    public ByteBuffer g;
    public boolean h;

    public urf() {
        ByteBuffer byteBuffer = vqf.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        cpf cpfVar = cpf.e;
        this.d = cpfVar;
        this.e = cpfVar;
        this.b = cpfVar;
        this.c = cpfVar;
    }

    @Override
    public final cpf b(cpf cpfVar) {
        this.d = cpfVar;
        this.e = c(cpfVar);
        return zzg() ? this.e : cpf.e;
    }

    public abstract cpf c(cpf cpfVar);

    public final ByteBuffer d(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public final boolean h() {
        return this.g.hasRemaining();
    }

    @Override
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.g;
        this.g = vqf.a;
        return byteBuffer;
    }

    @Override
    public final void zzc() {
        this.g = vqf.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        e();
    }

    @Override
    public final void zzd() {
        this.h = true;
        f();
    }

    @Override
    public final void zzf() {
        zzc();
        this.f = vqf.a;
        cpf cpfVar = cpf.e;
        this.d = cpfVar;
        this.e = cpfVar;
        this.b = cpfVar;
        this.c = cpfVar;
        g();
    }

    @Override
    public boolean zzg() {
        return this.e != cpf.e;
    }

    @Override
    public boolean zzh() {
        return this.h && this.g == vqf.a;
    }
}
