package defpackage;

import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.b;
import java.util.Comparator;
import java.util.TreeSet;

public final class uj5 implements b {
    public final long a;
    public final TreeSet b = new TreeSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return uj5.f((yp0) obj, (yp0) obj2);
        }
    });
    public long c;

    public uj5(long j) {
        this.a = j;
    }

    public static int f(yp0 yp0Var, yp0 yp0Var2) {
        long j = yp0Var.g;
        long j2 = yp0Var2.g;
        if (j - j2 == 0) {
            return yp0Var.compareTo(yp0Var2);
        }
        return j < j2 ? -1 : 1;
    }

    @Override
    public void a(Cache cache, yp0 yp0Var, yp0 yp0Var2) {
        d(cache, yp0Var);
        c(cache, yp0Var2);
    }

    @Override
    public void b(Cache cache, String str, long j, long j2) {
        if (j2 != -1) {
            g(cache, j2);
        }
    }

    @Override
    public void c(Cache cache, yp0 yp0Var) {
        this.b.add(yp0Var);
        this.c += yp0Var.d;
        g(cache, 0L);
    }

    @Override
    public void d(Cache cache, yp0 yp0Var) {
        this.b.remove(yp0Var);
        this.c -= yp0Var.d;
    }

    public final void g(Cache cache, long j) {
        while (this.c + j > this.a && !this.b.isEmpty()) {
            cache.a((yp0) this.b.first());
        }
    }

    @Override
    public void onCacheInitialized() {
    }

    @Override
    public boolean requiresCacheSpanTouches() {
        return true;
    }
}
