package com.hunantv.media.player.subtitle;

import android.os.Handler;
import android.util.Pair;
import androidx.collection.LongSparseArray;
import com.transsion.push.PushConstants;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Vector;

public abstract class d implements com.hunantv.media.player.b.a.InterfaceC0134a {
    protected boolean e;
    protected com.hunantv.media.player.b.a g;
    private long h;
    private long i;
    private Runnable j;
    private MediaFormat k;
    protected final LongSparseArray<C0138d> a = new LongSparseArray<>();
    protected final LongSparseArray<C0138d> b = new LongSparseArray<>();
    protected final Vector<a> d = new Vector<>();
    protected Handler f = new Handler();
    private long l = -1;
    protected b c = new b();

    public static class a {
        public long a;
        public long b;
        public long[] c;
        public long d;
        public a e;

        public void a(long j) {
        }
    }

    public static class b {
        private SortedMap<Long, Vector<a>> a = new TreeMap();

        public class a implements Iterator<Pair<Long, a>> {
            private long b;
            private Iterator<a> c;
            private boolean d;
            private SortedMap<Long, Vector<a>> e;
            private Iterator<a> f;
            private Pair<Long, a> g;

            public a(SortedMap<Long, Vector<a>> sortedMap) {
                com.hunantv.media.player.subtitle.c.c("CueList", sortedMap + "");
                this.e = sortedMap;
                this.f = null;
                b();
            }

            private void b() {
                do {
                    try {
                        SortedMap<Long, Vector<a>> sortedMap = this.e;
                        if (sortedMap == null) {
                            throw new NoSuchElementException("");
                        }
                        long jLongValue = sortedMap.firstKey().longValue();
                        this.b = jLongValue;
                        this.c = this.e.get(Long.valueOf(jLongValue)).iterator();
                        try {
                            this.e = this.e.tailMap(Long.valueOf(this.b + 1));
                        } catch (IllegalArgumentException unused) {
                            this.e = null;
                        }
                        this.d = false;
                    } catch (NoSuchElementException unused2) {
                        this.d = true;
                        this.e = null;
                        this.c = null;
                        return;
                    }
                    this.d = true;
                    this.e = null;
                    this.c = null;
                    return;
                } while (!this.c.hasNext());
            }

            @Override
            public Pair<Long, a> next() {
                if (this.d) {
                    throw new NoSuchElementException("");
                }
                this.g = new Pair<>(Long.valueOf(this.b), this.c.next());
                Iterator<a> it = this.c;
                this.f = it;
                if (!it.hasNext()) {
                    b();
                }
                return this.g;
            }

            @Override
            public boolean hasNext() {
                return !this.d;
            }

            @Override
            public void remove() {
                if (this.f != null) {
                    Pair<Long, a> pair = this.g;
                    if (((a) pair.second).b == ((Long) pair.first).longValue()) {
                        this.f.remove();
                        this.f = null;
                        if (((Vector) b.this.a.get(this.g.first)).size() == 0) {
                            b.this.a.remove(this.g.first);
                        }
                        a aVar = (a) this.g.second;
                        b.this.b(aVar, aVar.a);
                        long[] jArr = aVar.c;
                        if (jArr != null) {
                            for (long j : jArr) {
                                b.this.b(aVar, j);
                            }
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException("");
            }
        }

        public long a(long j) {
            try {
                SortedMap<Long, Vector<a>> sortedMapTailMap = this.a.tailMap(Long.valueOf(j + 1));
                if (sortedMapTailMap != null) {
                    return sortedMapTailMap.firstKey().longValue();
                }
            } catch (IllegalArgumentException | NoSuchElementException unused) {
            }
            return -1L;
        }

        public void b(a aVar) {
            b(aVar, aVar.a);
            long[] jArr = aVar.c;
            if (jArr != null) {
                for (long j : jArr) {
                    b(aVar, j);
                }
            }
            b(aVar, aVar.b);
        }

        public void b(a aVar, long j) {
            com.hunantv.media.player.subtitle.c.a("CueList", "removeEvent in cues size:" + this.a.size() + "detail:" + aVar.toString());
            Vector<a> vector = this.a.get(Long.valueOf(j));
            if (vector != null) {
                vector.remove(aVar);
                if (vector.size() == 0) {
                    this.a.remove(Long.valueOf(j));
                }
            }
            com.hunantv.media.player.subtitle.c.a("CueList", "removeEvent out cues size:" + this.a.size());
        }

        public Iterable<Pair<Long, a>> a(final long j, final long j2) {
            return new Iterable<Pair<Long, a>>() {
                @Override
                public Iterator<Pair<Long, a>> iterator() {
                    com.hunantv.media.player.subtitle.c.a("CueList", "entriesBetween slice (" + j + ", " + j2 + "]=");
                    try {
                        SortedMap sortedMapSubMap = b.this.a.subMap(Long.valueOf(j + 1), Long.valueOf(j2 + 1));
                        com.hunantv.media.player.subtitle.c.a("CueList", "entriesBetween size:" + sortedMapSubMap.size());
                        return b.this.new a(sortedMapSubMap);
                    } catch (IllegalArgumentException unused) {
                        return b.this.new a(null);
                    }
                }
            };
        }

        public void a(a aVar) {
            long j = aVar.a;
            if (j < aVar.b && a(aVar, j)) {
                long j2 = aVar.a;
                long[] jArr = aVar.c;
                if (jArr != null) {
                    for (long j3 : jArr) {
                        if (j3 > j2 && j3 < aVar.b) {
                            a(aVar, j3);
                            j2 = j3;
                        }
                    }
                }
                a(aVar, aVar.b);
            }
        }

        private boolean a(a aVar, long j) {
            Vector<a> vector = this.a.get(Long.valueOf(j));
            if (vector == null) {
                vector = new Vector<>(2);
                this.a.put(Long.valueOf(j), vector);
            } else if (vector.contains(aVar)) {
                return false;
            }
            vector.add(aVar);
            return true;
        }
    }

    public interface c {

        public interface a {
        }

        void setActiveCues(Vector<a> vector);

        void setVisible(boolean z);
    }

    public static class C0138d {
        static final boolean f = true;
        public a a;
        public C0138d b;
        public C0138d c;
        public long d;
        public long e;
        private long g;

        private C0138d() {
            this.d = -1L;
            this.e = 0L;
            this.g = -1L;
        }

        public void a() {
            C0138d c0138d = this.c;
            if (c0138d != null) {
                c0138d.b = this.b;
                this.c = null;
            }
            C0138d c0138d2 = this.b;
            if (c0138d2 != null) {
                c0138d2.c = c0138d;
                this.b = null;
            }
        }

        public void a(LongSparseArray<C0138d> longSparseArray) {
            int iIndexOfKey = longSparseArray.indexOfKey(this.g);
            if (iIndexOfKey >= 0) {
                if (this.c == null) {
                    if (!f && this != longSparseArray.valueAt(iIndexOfKey)) {
                        throw new AssertionError();
                    }
                    C0138d c0138d = this.b;
                    if (c0138d == null) {
                        longSparseArray.removeAt(iIndexOfKey);
                    } else {
                        longSparseArray.setValueAt(iIndexOfKey, c0138d);
                    }
                }
                a();
            }
            long j = this.d;
            if (j >= 0) {
                this.c = null;
                C0138d c0138d2 = longSparseArray.get(j);
                this.b = c0138d2;
                if (c0138d2 != null) {
                    c0138d2.c = this;
                }
                longSparseArray.put(this.d, this);
                this.g = this.d;
            }
        }
    }

    public d(MediaFormat mediaFormat) {
        this.k = mediaFormat;
        d();
        this.i = -1L;
    }

    public abstract void a(Vector<a> vector);

    public abstract void a(byte[] bArr, boolean z, long j, String str);

    public final MediaFormat b() {
        return this.k;
    }

    public abstract c c();

    public void c(long j) {
        C0138d c0138d;
        if (j == 0 || j == -1 || (c0138d = this.b.get(j)) == null) {
            return;
        }
        c0138d.a(this.a);
    }

    public synchronized void d() {
        com.hunantv.media.player.subtitle.c.c("SubtitleTrack", "Clearing " + this.d.size() + " active cues");
        this.d.clear();
        this.h = -1L;
    }

    public void e() {
        if (this.g != null) {
            this.l = this.c.a(this.i);
            com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "sched @" + this.l + " after " + this.i);
            com.hunantv.media.player.b.a aVar = this.g;
            long j = this.l;
            aVar.a(j >= 0 ? j * 1000 : -1L, this);
        }
    }

    public void f() {
        if (this.e) {
            return;
        }
        com.hunantv.media.player.subtitle.c.a("SubtitleTrack", PushConstants.PUSH_SERVICE_TYPE_SHOW);
        this.e = true;
        c cVarC = c();
        if (cVarC != null) {
            cVarC.setVisible(true);
        }
        com.hunantv.media.player.b.a aVar = this.g;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void finalize() throws Throwable {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            a(size);
        }
        super.finalize();
    }

    public void g() {
        if (this.e) {
            com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "hide");
            com.hunantv.media.player.b.a aVar = this.g;
            if (aVar != null) {
                aVar.b(this);
            }
            c cVarC = c();
            if (cVarC != null) {
                cVarC.setVisible(false);
            }
            this.e = false;
        }
    }

    public int h() {
        return c() == null ? 3 : 4;
    }

    private synchronized void d(long j) {
        this.i = j;
    }

    @Override
    public void a() {
        synchronized (this) {
            com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "onStop");
            d();
            this.i = -1L;
        }
        a(this.d);
        this.l = -1L;
        this.g.a(-1L, this);
    }

    @Override
    public void b(long j) {
        com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "onSeek " + j);
        synchronized (this) {
            long j2 = j / 1000;
            a(true, j2);
            d(j2);
        }
        a(this.d);
        e();
    }

    private void a(int i) {
        C0138d c0138dValueAt = this.a.valueAt(i);
        while (c0138dValueAt != null) {
            a aVar = c0138dValueAt.a;
            while (aVar != null) {
                this.c.b(aVar);
                a aVar2 = aVar.e;
                aVar.e = null;
                aVar = aVar2;
            }
            this.b.remove(c0138dValueAt.e);
            C0138d c0138d = c0138dValueAt.b;
            c0138dValueAt.c = null;
            c0138dValueAt.b = null;
            c0138dValueAt = c0138d;
        }
        this.a.removeAt(i);
    }

    @Override
    public void a(long j) {
        com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "refresh onTimedEvent " + j);
        synchronized (this) {
            long j2 = j / 1000;
            a(false, j2);
            d(j2);
        }
        a(this.d);
        e();
    }

    public synchronized void a(com.hunantv.media.player.b.a aVar) {
        try {
            com.hunantv.media.player.b.a aVar2 = this.g;
            if (aVar2 == aVar) {
                return;
            }
            if (aVar2 != null) {
                aVar2.b(this);
            }
            this.g = aVar;
            if (aVar != null) {
                aVar.a(this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(boolean z, long j) {
        try {
            com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "updateActiveCues rebuild:" + z + ",timeMs:" + j + ",mLastUpdateTimeMs:" + this.h);
            if (z || this.h > j) {
                d();
            }
            Iterator<Pair<Long, a>> it = this.c.a(this.h, j).iterator();
            while (it.hasNext()) {
                com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "updateActiveCues next");
                Pair<Long, a> next = it.next();
                a aVar = (a) next.second;
                if (aVar.b == ((Long) next.first).longValue()) {
                    com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "Removing " + aVar);
                    this.d.remove(aVar);
                    if (aVar.d == 0) {
                        it.remove();
                    }
                } else if (aVar.a == ((Long) next.first).longValue()) {
                    com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "Adding " + aVar);
                    if (aVar.c != null) {
                        aVar.a(j);
                    }
                    this.d.add(aVar);
                } else if (aVar.c != null) {
                    aVar.a(j);
                }
            }
            while (this.a.size() > 0 && this.a.keyAt(0) <= j) {
                a(0);
            }
            this.h = j;
            com.hunantv.media.player.subtitle.c.a("SubtitleTrack", "updateActiveCues out");
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean a(a aVar) {
        final long jA;
        try {
            this.c.a(aVar);
            long j = aVar.d;
            if (j != 0) {
                C0138d c0138d = this.b.get(j);
                if (c0138d == null) {
                    c0138d = new C0138d();
                    this.b.put(aVar.d, c0138d);
                    c0138d.d = aVar.b;
                } else {
                    long j2 = c0138d.d;
                    long j3 = aVar.b;
                    if (j2 < j3) {
                        c0138d.d = j3;
                    }
                }
                aVar.e = c0138d.a;
                c0138d.a = aVar;
            }
            com.hunantv.media.player.b.a aVar2 = this.g;
            if (aVar2 != null) {
                try {
                    jA = aVar2.a(false, true) / 1000;
                } catch (IllegalStateException unused) {
                    jA = -1;
                }
            } else {
                jA = -1;
            }
            com.hunantv.media.player.subtitle.c.c("SubtitleTrack", "mVisible=" + this.e + ", " + aVar.a + " <= " + jA + ", " + aVar.b + " >= " + this.i);
            boolean z = this.e;
            if (!z || aVar.a > jA || aVar.b < this.i) {
                if (z && aVar.b >= this.i) {
                    long j4 = aVar.a;
                    long j5 = this.l;
                    if (j4 < j5 || j5 < 0) {
                        e();
                    }
                }
                return false;
            }
            Runnable runnable = this.j;
            if (runnable != null) {
                this.f.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() {
                @Override
                public void run() {
                    synchronized (this) {
                        d.this.j = null;
                        d.this.a(true, jA);
                        d dVar = d.this;
                        dVar.a(dVar.d);
                    }
                }
            };
            this.j = runnable2;
            if (this.f.postDelayed(runnable2, 10L)) {
                com.hunantv.media.player.subtitle.c.c("SubtitleTrack", "scheduling update");
            } else {
                com.hunantv.media.player.subtitle.c.d("SubtitleTrack", "failed to schedule subtitle view update");
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }
}
