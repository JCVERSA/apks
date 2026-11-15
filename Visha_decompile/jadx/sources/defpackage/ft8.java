package defpackage;

import java.util.concurrent.TimeUnit;

public class ft8 {
    public static final long d = TimeUnit.HOURS.toMillis(24);
    public static final long e = TimeUnit.MINUTES.toMillis(30);
    public final vlb a = vlb.c();
    public long b;
    public int c;

    public static boolean c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    public static boolean d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    public final synchronized long a(int i) {
        if (c(i)) {
            return (long) Math.min(Math.pow(2.0d, this.c) + this.a.e(), e);
        }
        return d;
    }

    public synchronized boolean b() {
        return this.c == 0 || this.a.a() > this.b;
    }

    public final synchronized void e() {
        this.c = 0;
    }

    public synchronized void f(int i) {
        if (d(i)) {
            e();
            return;
        }
        this.c++;
        this.b = this.a.a() + a(i);
    }
}
