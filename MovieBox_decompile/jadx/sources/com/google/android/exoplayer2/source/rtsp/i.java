package com.google.android.exoplayer2.source.rtsp;

import java.util.Comparator;
import java.util.TreeSet;
import okhttp3.internal.http2.Settings;

final class i {

    private final TreeSet f25761a = new TreeSet(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return i.d((i.a) obj, (i.a) obj2);
        }
    });

    private int f25762b;

    private int f25763c;

    private boolean f25764d;

    static final class a {

        public final g f25765a;

        public final long f25766b;

        public a(g gVar, long j10) {
            this.f25765a = gVar;
            this.f25766b = j10;
        }
    }

    public i() {
        g();
    }

    private synchronized void b(a aVar) {
        this.f25762b = aVar.f25765a.f25721g;
        this.f25761a.add(aVar);
    }

    private static int c(int i10, int i11) {
        int iMin;
        int i12 = i10 - i11;
        if (Math.abs(i12) <= 1000 || (iMin = (Math.min(i10, i11) - Math.max(i10, i11)) + Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 1000) {
            return i12;
        }
        return i10 < i11 ? iMin : -iMin;
    }

    public static int d(a aVar, a aVar2) {
        return c(aVar.f25765a.f25721g, aVar2.f25765a.f25721g);
    }

    public synchronized boolean e(g gVar, long j10) {
        if (this.f25761a.size() >= 5000) {
            throw new IllegalStateException("Queue size limit of 5000 reached.");
        }
        int i10 = gVar.f25721g;
        if (!this.f25764d) {
            g();
            this.f25763c = g.c(i10);
            this.f25764d = true;
            b(new a(gVar, j10));
            return true;
        }
        if (Math.abs(c(i10, g.b(this.f25762b))) < 1000) {
            if (c(i10, this.f25763c) <= 0) {
                return false;
            }
            b(new a(gVar, j10));
            return true;
        }
        this.f25763c = g.c(i10);
        this.f25761a.clear();
        b(new a(gVar, j10));
        return true;
    }

    public synchronized g f(long j10) {
        if (this.f25761a.isEmpty()) {
            return null;
        }
        a aVar = (a) this.f25761a.first();
        int i10 = aVar.f25765a.f25721g;
        if (i10 != g.b(this.f25763c) && j10 < aVar.f25766b) {
            return null;
        }
        this.f25761a.pollFirst();
        this.f25763c = i10;
        return aVar.f25765a;
    }

    public synchronized void g() {
        this.f25761a.clear();
        this.f25764d = false;
        this.f25763c = -1;
        this.f25762b = -1;
    }
}
