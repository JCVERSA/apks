package defpackage;

import android.content.Context;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class o6e implements m7e {
    public zzfww a;
    public erj b;
    public long c;
    public final t6e d;

    public o6e(t6e t6eVar, Context context, int i) {
        this.d = t6eVar;
        kfh.l(context);
        this.a = zzfww.zzn();
        this.c = C.TIME_UNSET;
    }

    public static final void h(erj erjVar) {
        gpj gpjVarB = erjVar.b();
        gpjVarB.d(t6e.u(erjVar.C));
        gpjVarB.K();
        throw null;
    }

    @Override
    public final void a(boolean z) {
        this.d.g.a(z);
    }

    @Override
    public final void b(float f) {
        throw null;
    }

    @Override
    public final void c(long j, long j2) {
        throw null;
    }

    @Override
    public final void d(List list) {
        if (this.a.equals(list)) {
            return;
        }
        g(list);
        erj erjVar = this.b;
        if (erjVar != null) {
            h(erjVar);
        }
    }

    @Override
    public final void e(int i, erj erjVar, long j, int i2, List list) {
        n7g.f(false);
        g(list);
        this.b = erjVar;
        t6e t6eVar = this.d;
        t6eVar.q = C.TIME_UNSET;
        h(erjVar);
        dbh dbhVar = t6eVar.b;
        long j2 = this.c;
        dbhVar.d(j2 == C.TIME_UNSET ? 0L : 1 + j2, Long.valueOf(j));
    }

    @Override
    public final void f(u6e u6eVar) {
        throw null;
    }

    public final void g(List list) {
        l4i l4iVar = new l4i();
        l4iVar.i(list);
        l4iVar.i(this.d.e);
        this.a = l4iVar.j();
    }

    @Override
    public final void zzc(boolean z) {
        this.c = C.TIME_UNSET;
        t6e.j(this.d, z);
    }

    @Override
    public final void zzf() {
        throw null;
    }

    @Override
    public final void zzg() {
        throw null;
    }

    @Override
    public final void zzi(int i) {
        this.d.g.zzi(i);
    }

    @Override
    public final void zzm() {
        this.d.q = this.c;
    }

    @Override
    public final boolean zzn(boolean z) {
        throw null;
    }
}
