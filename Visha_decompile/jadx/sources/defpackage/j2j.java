package defpackage;

import com.google.android.gms.internal.ads.zzii;

public final class j2j implements b8j {
    public final naj a;
    public final h2j b;
    public x9j c;
    public b8j d;
    public boolean e = true;
    public boolean f;

    public j2j(h2j h2jVar, tbg tbgVar) {
        this.b = h2jVar;
        this.a = new naj(tbgVar);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0060  */
    public final long a(boolean z) {
        naj najVar;
        vwe vweVarZzc;
        x9j x9jVar = this.c;
        if (x9jVar == null || x9jVar.f() || ((z && this.c.l() != 2) || (!this.c.zzX() && (z || this.c.zzQ())))) {
            this.e = true;
            if (this.f) {
                this.a.b();
            }
        } else {
            b8j b8jVar = this.d;
            b8jVar.getClass();
            long jZza = b8jVar.zza();
            if (this.e) {
                naj najVar2 = this.a;
                if (jZza < najVar2.zza()) {
                    najVar2.c();
                } else {
                    this.e = false;
                    if (this.f) {
                        najVar2.b();
                    }
                    najVar = this.a;
                    najVar.a(jZza);
                    vweVarZzc = b8jVar.zzc();
                    if (!vweVarZzc.equals(najVar.zzc())) {
                        najVar.h(vweVarZzc);
                        this.b.b(vweVarZzc);
                    }
                }
            } else {
                najVar = this.a;
                najVar.a(jZza);
                vweVarZzc = b8jVar.zzc();
                if (!vweVarZzc.equals(najVar.zzc())) {
                    najVar.h(vweVarZzc);
                    this.b.b(vweVarZzc);
                }
            }
        }
        return zza();
    }

    public final void b(x9j x9jVar) {
        if (x9jVar == this.c) {
            this.d = null;
            this.c = null;
            this.e = true;
        }
    }

    public final void c(x9j x9jVar) throws zzii {
        b8j b8jVar;
        b8j b8jVarZzl = x9jVar.zzl();
        if (b8jVarZzl == null || b8jVarZzl == (b8jVar = this.d)) {
            return;
        }
        if (b8jVar != null) {
            throw zzii.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.d = b8jVarZzl;
        this.c = x9jVar;
        b8jVarZzl.h(this.a.zzc());
    }

    public final void d(long j) {
        this.a.a(j);
    }

    public final void e() {
        this.f = true;
        this.a.b();
    }

    public final void f() {
        this.f = false;
        this.a.c();
    }

    @Override
    public final void h(vwe vweVar) {
        b8j b8jVar = this.d;
        if (b8jVar != null) {
            b8jVar.h(vweVar);
            vweVar = this.d.zzc();
        }
        this.a.h(vweVar);
    }

    @Override
    public final long zza() {
        if (this.e) {
            return this.a.zza();
        }
        b8j b8jVar = this.d;
        b8jVar.getClass();
        return b8jVar.zza();
    }

    @Override
    public final vwe zzc() {
        b8j b8jVar = this.d;
        return b8jVar != null ? b8jVar.zzc() : this.a.zzc();
    }

    @Override
    public final boolean zzj() {
        if (this.e) {
            return false;
        }
        b8j b8jVar = this.d;
        b8jVar.getClass();
        return b8jVar.zzj();
    }
}
