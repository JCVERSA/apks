package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;

public abstract class i8e {
    public final c8e a;
    public final h8e b;
    public e8e c;
    public final int d;

    public i8e(f8e f8eVar, h8e h8eVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.b = h8eVar;
        this.d = i;
        this.a = new c8e(f8eVar, j, 0L, j3, j4, j5, j6);
    }

    public static final int f(d9e d9eVar, long j, y9e y9eVar) {
        if (j == d9eVar.zzf()) {
            return 0;
        }
        y9eVar.a = j;
        return 1;
    }

    public static final boolean g(d9e d9eVar, long j) {
        long jZzf = j - d9eVar.zzf();
        if (jZzf < 0 || jZzf > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        d9eVar.f((int) jZzf);
        return true;
    }

    public final int a(d9e d9eVar, y9e y9eVar) {
        while (true) {
            e8e e8eVar = this.c;
            n7g.b(e8eVar);
            long j = e8eVar.f;
            long j2 = e8eVar.g;
            long j3 = e8eVar.h;
            if (j2 - j <= this.d) {
                c(false, j);
                return f(d9eVar, j, y9eVar);
            }
            if (!g(d9eVar, j3)) {
                return f(d9eVar, j3, y9eVar);
            }
            d9eVar.zzj();
            g8e g8eVarA = this.b.a(d9eVar, e8eVar.b);
            int i = g8eVarA.a;
            if (i == -3) {
                c(false, j3);
                return f(d9eVar, j3, y9eVar);
            }
            if (i == -2) {
                e8e.h(e8eVar, g8eVarA.b, g8eVarA.c);
            } else {
                if (i != -1) {
                    g(d9eVar, g8eVarA.c);
                    c(true, g8eVarA.c);
                    return f(d9eVar, g8eVarA.c, y9eVar);
                }
                e8e.g(e8eVar, g8eVarA.b, g8eVarA.c);
            }
        }
    }

    public final kae b() {
        return this.a;
    }

    public final void c(boolean z, long j) {
        this.c = null;
        this.b.zzb();
    }

    public final void d(long j) {
        e8e e8eVar = this.c;
        if (e8eVar == null || e8eVar.a != j) {
            c8e c8eVar = this.a;
            this.c = new e8e(j, c8eVar.g(j), 0L, c8eVar.c, c8eVar.d, c8eVar.e, c8eVar.f);
        }
    }

    public final boolean e() {
        return this.c != null;
    }
}
