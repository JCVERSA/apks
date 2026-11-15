package defpackage;

import android.media.MediaFormat;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzabu;
import com.google.android.gms.internal.ads.zzii;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;

public final class e6e implements m7e {
    public final e7e a;
    public final j7e b;
    public final Queue c;
    public erj d;
    public long e;
    public u6e f;

    public e6e(e7e e7eVar, tbg tbgVar) {
        this.a = e7eVar;
        e7eVar.i(tbgVar);
        this.b = new j7e(new c6e(this, null), e7eVar);
        this.c = new ArrayDeque();
        this.d = new gpj().K();
        this.e = C.TIME_UNSET;
        this.f = new u6e() {
            @Override
            public final void a(long j, long j2, erj erjVar, MediaFormat mediaFormat) {
            }
        };
    }

    @Override
    public final void a(boolean z) {
        this.a.c(z);
    }

    @Override
    public final void b(float f) {
        this.a.l(f);
    }

    @Override
    public final void c(long j, long j2) throws zzabu {
        try {
            this.b.d(j, j2);
        } catch (zzii e) {
            throw new zzabu(e, this.d);
        }
    }

    @Override
    public final void d(List list) {
        throw null;
    }

    @Override
    public final void e(int i, erj erjVar, long j, int i2, List list) {
        n7g.f(list.isEmpty());
        erj erjVar2 = this.d;
        int i3 = erjVar2.v;
        int i4 = erjVar.v;
        if (i4 != i3 || erjVar.w != erjVar2.w) {
            this.b.c(i4, erjVar.w);
        }
        float f = erjVar.x;
        if (f != this.d.x) {
            this.a.j(f);
        }
        this.d = erjVar;
        if (j != this.e) {
            this.b.b(i2, j);
            this.e = j;
        }
    }

    @Override
    public final void f(u6e u6eVar) {
        this.f = u6eVar;
    }

    @Override
    public final void zzc(boolean z) {
        if (z) {
            this.a.g();
        }
        this.b.a();
        this.c.clear();
    }

    @Override
    public final void zzf() {
        this.a.d();
    }

    @Override
    public final void zzg() {
        this.a.e();
    }

    @Override
    public final void zzi(int i) {
        this.a.h(i);
    }

    @Override
    public final void zzm() {
    }

    @Override
    public final boolean zzn(boolean z) {
        return this.a.m(false);
    }
}
