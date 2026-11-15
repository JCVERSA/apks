package com.google.android.exoplayer2.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;

public final class q implements b {

    private final long f26611a;

    private final TreeSet f26612b = new TreeSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return q.g((h) obj, (h) obj2);
        }
    });

    private long f26613c;

    public q(long j10) {
        this.f26611a = j10;
    }

    public static int g(h hVar, h hVar2) {
        long j10 = hVar.f26570f;
        long j11 = hVar2.f26570f;
        if (j10 - j11 == 0) {
            return hVar.compareTo(hVar2);
        }
        return j10 < j11 ? -1 : 1;
    }

    private void h(Cache cache, long j10) {
        while (this.f26613c + j10 > this.f26611a && !this.f26612b.isEmpty()) {
            cache.h((h) this.f26612b.first());
        }
    }

    @Override
    public boolean a() {
        return true;
    }

    @Override
    public void b(Cache cache, h hVar) {
        this.f26612b.add(hVar);
        this.f26613c += hVar.f26567c;
        h(cache, 0L);
    }

    @Override
    public void c(Cache cache, String str, long j10, long j11) {
        if (j11 != -1) {
            h(cache, j11);
        }
    }

    @Override
    public void d(Cache cache, h hVar) {
        this.f26612b.remove(hVar);
        this.f26613c -= hVar.f26567c;
    }

    @Override
    public void e(Cache cache, h hVar, h hVar2) {
        d(cache, hVar);
        b(cache, hVar2);
    }

    @Override
    public void onCacheInitialized() {
    }
}
