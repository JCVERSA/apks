package defpackage;

public final class t0j implements u1j {
    public final g0j a;
    public final g3j b;
    public final boolean c = false;
    public final s8i d;

    public t0j(g3j g3jVar, s8i s8iVar, g0j g0jVar) {
        this.b = g3jVar;
        this.d = s8iVar;
        this.a = g0jVar;
    }

    public static t0j g(g3j g3jVar, s8i s8iVar, g0j g0jVar) {
        return new t0j(g3jVar, s8iVar, g0jVar);
    }

    @Override
    public final void a(Object obj) {
        ((kli) obj).zzc.h();
        ubc.a(obj);
        throw null;
    }

    @Override
    public final void b(Object obj, Object obj2) {
        y1j.u(this.b, obj, obj2);
        if (this.c) {
            y1j.t(this.d, obj, obj2);
        }
    }

    @Override
    public final void c(Object obj, byte[] bArr, int i, int i2, qoh qohVar) {
        kli kliVar = (kli) obj;
        if (kliVar.zzc == i3j.c()) {
            kliVar.zzc = i3j.f();
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final boolean d(Object obj, Object obj2) {
        if (!((kli) obj).zzc.equals(((kli) obj2).zzc)) {
            return false;
        }
        if (!this.c) {
            return true;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final void e(Object obj, a5j a5jVar) {
        ubc.a(obj);
        throw null;
    }

    @Override
    public final boolean f(Object obj) {
        ubc.a(obj);
        throw null;
    }

    @Override
    public final int zza(Object obj) {
        int iB = ((kli) obj).zzc.b();
        if (!this.c) {
            return iB;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final int zzb(Object obj) {
        int iHashCode = ((kli) obj).zzc.hashCode();
        if (!this.c) {
            return iHashCode;
        }
        ubc.a(obj);
        throw null;
    }

    @Override
    public final Object zze() {
        g0j g0jVar = this.a;
        return g0jVar instanceof kli ? ((kli) g0jVar).r() : g0jVar.zzw().zzk();
    }
}
