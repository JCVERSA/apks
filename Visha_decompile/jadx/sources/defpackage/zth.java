package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.Random;

public final class zth {
    public final long a;
    public final long b;
    public long e;
    public long d = 5;
    public final Random f = new Random();
    public long c = 0;

    public zth(long j, double d, long j2, double d2) {
        this.a = j;
        this.b = j2;
        c();
    }

    public final long a() {
        double d = this.e;
        double d2 = 0.2d * d;
        long j = (long) (d + d2);
        long j2 = (long) (d - d2);
        return j2 + ((long) (this.f.nextDouble() * ((j - j2) + 1)));
    }

    public final void b() {
        double d = this.e;
        this.e = Math.min((long) (d + d), this.b);
        this.c++;
    }

    public final void c() {
        this.e = this.a;
        this.c = 0L;
    }

    public final synchronized void d(int i) {
        wd8.a(i > 0);
        this.d = i;
    }

    public final boolean e() {
        return this.c > Math.max(this.d, (long) ((Integer) zzbd.zzc().b(cye.C)).intValue()) && this.e >= this.b;
    }
}
