package defpackage;

import android.os.SystemClock;

public final class naj implements b8j {
    public boolean a;
    public long b;
    public long c;
    public vwe d = vwe.d;

    public naj(tbg tbgVar) {
    }

    public final void a(long j) {
        this.b = j;
        if (this.a) {
            this.c = SystemClock.elapsedRealtime();
        }
    }

    public final void b() {
        if (this.a) {
            return;
        }
        this.c = SystemClock.elapsedRealtime();
        this.a = true;
    }

    public final void c() {
        if (this.a) {
            a(zza());
            this.a = false;
        }
    }

    @Override
    public final void h(vwe vweVar) {
        if (this.a) {
            a(zza());
        }
        this.d = vweVar;
    }

    @Override
    public final long zza() {
        long j = this.b;
        if (!this.a) {
            return j;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.c;
        vwe vweVar = this.d;
        return j + (vweVar.a == 1.0f ? kfh.N(jElapsedRealtime) : vweVar.a(jElapsedRealtime));
    }

    @Override
    public final vwe zzc() {
        return this.d;
    }

    @Override
    public final boolean zzj() {
        return false;
    }
}
