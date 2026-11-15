package defpackage;

import com.google.android.gms.internal.ads.zzcm;
import com.google.android.gms.internal.ads.zzfww;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public final class aof {
    public final zzfww a;
    public final List b = new ArrayList();
    public ByteBuffer[] c = new ByteBuffer[0];
    public boolean d;

    public aof(zzfww zzfwwVar) {
        this.a = zzfwwVar;
        cpf cpfVar = cpf.e;
        this.d = false;
    }

    public final cpf a(cpf cpfVar) {
        cpf cpfVar2 = cpf.e;
        if (cpfVar.equals(cpfVar2)) {
            throw new zzcm("Unhandled input format:", cpfVar);
        }
        int i = 0;
        while (true) {
            zzfww zzfwwVar = this.a;
            if (i >= zzfwwVar.size()) {
                return cpfVar;
            }
            vqf vqfVar = (vqf) zzfwwVar.get(i);
            cpf cpfVarB = vqfVar.b(cpfVar);
            if (vqfVar.zzg()) {
                n7g.f(!cpfVarB.equals(cpfVar2));
                cpfVar = cpfVarB;
            }
            i++;
        }
    }

    public final ByteBuffer b() {
        if (!h()) {
            return vqf.a;
        }
        ByteBuffer byteBuffer = this.c[i()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        j(vqf.a);
        return this.c[i()];
    }

    public final void c() {
        List list = this.b;
        list.clear();
        this.d = false;
        int i = 0;
        while (true) {
            zzfww zzfwwVar = this.a;
            if (i >= zzfwwVar.size()) {
                break;
            }
            vqf vqfVar = (vqf) zzfwwVar.get(i);
            vqfVar.zzc();
            if (vqfVar.zzg()) {
                list.add(vqfVar);
            }
            i++;
        }
        this.c = new ByteBuffer[list.size()];
        for (int i2 = 0; i2 <= i(); i2++) {
            this.c[i2] = ((vqf) list.get(i2)).zzb();
        }
    }

    public final void d() {
        if (!h() || this.d) {
            return;
        }
        this.d = true;
        ((vqf) this.b.get(0)).zzd();
    }

    public final void e(ByteBuffer byteBuffer) {
        if (!h() || this.d) {
            return;
        }
        j(byteBuffer);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aof)) {
            return false;
        }
        zzfww zzfwwVar = this.a;
        int size = zzfwwVar.size();
        zzfww zzfwwVar2 = ((aof) obj).a;
        if (size != zzfwwVar2.size()) {
            return false;
        }
        for (int i = 0; i < zzfwwVar.size(); i++) {
            if (zzfwwVar.get(i) != zzfwwVar2.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final void f() {
        int i = 0;
        while (true) {
            zzfww zzfwwVar = this.a;
            if (i >= zzfwwVar.size()) {
                this.c = new ByteBuffer[0];
                cpf cpfVar = cpf.e;
                this.d = false;
                return;
            } else {
                vqf vqfVar = (vqf) zzfwwVar.get(i);
                vqfVar.zzc();
                vqfVar.zzf();
                i++;
            }
        }
    }

    public final boolean g() {
        return this.d && ((vqf) this.b.get(i())).zzh() && !this.c[i()].hasRemaining();
    }

    public final boolean h() {
        return !this.b.isEmpty();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final int i() {
        return this.c.length - 1;
    }

    public final void j(ByteBuffer byteBuffer) {
        boolean z;
        do {
            z = false;
            for (int i = 0; i <= i(); i++) {
                if (!this.c[i].hasRemaining()) {
                    List list = this.b;
                    vqf vqfVar = (vqf) list.get(i);
                    if (!vqfVar.zzh()) {
                        ByteBuffer byteBuffer2 = i > 0 ? this.c[i - 1] : byteBuffer.hasRemaining() ? byteBuffer : vqf.a;
                        long jRemaining = byteBuffer2.remaining();
                        vqfVar.a(byteBuffer2);
                        this.c[i] = vqfVar.zzb();
                        boolean z2 = true;
                        if (jRemaining - ((long) byteBuffer2.remaining()) <= 0 && !this.c[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    } else if (!this.c[i].hasRemaining() && i < i()) {
                        ((vqf) list.get(i + 1)).zzd();
                    }
                }
            }
        } while (z);
    }
}
