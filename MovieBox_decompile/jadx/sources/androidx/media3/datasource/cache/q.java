package androidx.media3.datasource.cache;

import java.util.Comparator;
import java.util.TreeSet;

public final class q implements b {

    private final long f10552a;

    private final TreeSet f10553b = new TreeSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return q.g((h) obj, (h) obj2);
        }
    });

    private long f10554c;

    public q(long j10) {
        this.f10552a = j10;
    }

    public static int g(h hVar, h hVar2) {
        long j10 = hVar.f10511f;
        long j11 = hVar2.f10511f;
        if (j10 - j11 == 0) {
            return hVar.compareTo(hVar2);
        }
        return j10 < j11 ? -1 : 1;
    }

    private void h(Cache cache, long j10) {
        while (this.f10554c + j10 > this.f10552a && !this.f10553b.isEmpty()) {
            cache.f((h) this.f10553b.first());
        }
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public void b(Cache cache, h hVar, h hVar2) {
        e(cache, hVar);
        c(cache, hVar2);
    }

    @Override
    public void c(Cache cache, h hVar) {
        this.f10553b.add(hVar);
        this.f10554c += hVar.f10508c;
        h(cache, 0L);
    }

    @Override
    public void d(Cache cache, String str, long j10, long j11) {
        if (j11 != -1) {
            h(cache, j11);
        }
    }

    @Override
    public void e(Cache cache, h hVar) {
        this.f10553b.remove(hVar);
        this.f10554c -= hVar.f10508c;
    }

    @Override
    public void onCacheInitialized() {
    }
}
