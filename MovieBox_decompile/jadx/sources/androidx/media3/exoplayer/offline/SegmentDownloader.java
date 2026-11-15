package androidx.media3.exoplayer.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.cache.Cache;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public abstract class SegmentDownloader implements o {

    private final w1.h f12072a;

    private final androidx.media3.exoplayer.upstream.q.a f12073b;

    private final ArrayList f12074c;

    private final androidx.media3.datasource.cache.a.c f12075d;

    private final Cache f12076e;

    private final androidx.media3.datasource.cache.g f12077f;

    private final PriorityTaskManager f12078g;

    private final Executor f12079h;

    private final long f12080i;

    private final ArrayList f12081j;

    private volatile boolean f12082k;

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final androidx.media3.datasource.cache.i cacheWriter;
        public final androidx.media3.datasource.cache.a dataSource;

        @Nullable
        private final a progressNotifier;
        public final b segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(b bVar, androidx.media3.datasource.cache.a aVar, @Nullable a aVar2, byte[] bArr) {
            this.segment = bVar;
            this.dataSource = aVar;
            this.progressNotifier = aVar2;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new androidx.media3.datasource.cache.i(aVar, bVar.f12089b, bArr, aVar2);
        }

        @Override
        protected void cancelWork() {
            this.cacheWriter.b();
        }

        @Override
        public Void doWork() throws IOException {
            this.cacheWriter.a();
            a aVar = this.progressNotifier;
            if (aVar == null) {
                return null;
            }
            aVar.c();
            return null;
        }
    }

    private static final class a implements androidx.media3.datasource.cache.i.a {

        private final o.a f12083a;

        private final long f12084b;

        private final int f12085c;

        private long f12086d;

        private int f12087e;

        public a(o.a aVar, long j10, int i10, long j11, int i11) {
            this.f12083a = aVar;
            this.f12084b = j10;
            this.f12085c = i10;
            this.f12086d = j11;
            this.f12087e = i11;
        }

        private float b() {
            long j10 = this.f12084b;
            if (j10 != -1 && j10 != 0) {
                return (this.f12086d * 100.0f) / j10;
            }
            int i10 = this.f12085c;
            if (i10 != 0) {
                return (this.f12087e * 100.0f) / i10;
            }
            return -1.0f;
        }

        @Override
        public void a(long j10, long j11, long j12) {
            long j13 = this.f12086d + j12;
            this.f12086d = j13;
            this.f12083a.onProgress(this.f12084b, j13, b());
        }

        public void c() {
            this.f12087e++;
            this.f12083a.onProgress(this.f12084b, this.f12086d, b());
        }
    }

    protected static class b implements Comparable {

        public final long f12088a;

        public final w1.h f12089b;

        public b(long j10, w1.h hVar) {
            this.f12088a = j10;
            this.f12089b = hVar;
        }

        @Override
        public int compareTo(b bVar) {
            return a1.n(this.f12088a, bVar.f12088a);
        }
    }

    public SegmentDownloader(androidx.media3.common.t tVar, androidx.media3.exoplayer.upstream.q.a aVar, androidx.media3.datasource.cache.a.c cVar, Executor executor, long j10) {
        androidx.media3.common.util.a.e(tVar.f9899b);
        this.f12072a = f(tVar.f9899b.f9991a);
        this.f12073b = aVar;
        this.f12074c = new ArrayList(tVar.f9899b.f9994d);
        this.f12075d = cVar;
        this.f12079h = executor;
        this.f12076e = (Cache) androidx.media3.common.util.a.e(cVar.e());
        this.f12077f = cVar.f();
        this.f12078g = cVar.g();
        this.f12081j = new ArrayList();
        this.f12080i = a1.R0(j10);
    }

    private void c(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f12081j) {
            try {
                if (this.f12082k) {
                    throw new InterruptedException();
                }
                this.f12081j.add(runnableFutureTask);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean d(w1.h hVar, w1.h hVar2) {
        if (hVar.f74097a.equals(hVar2.f74097a)) {
            long j10 = hVar.f74104h;
            if (j10 != -1 && hVar.f74103g + j10 == hVar2.f74103g && Objects.equals(hVar.f74105i, hVar2.f74105i) && hVar.f74106j == hVar2.f74106j && hVar.f74099c == hVar2.f74099c && hVar.f74101e.equals(hVar2.f74101e)) {
                return true;
            }
        }
        return false;
    }

    protected static w1.h f(Uri uri) {
        return new w1.h.b().i(uri).b(1).a();
    }

    private static void i(List list, androidx.media3.datasource.cache.g gVar, long j10) {
        HashMap map = new HashMap();
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            b bVar = (b) list.get(i11);
            String strA = gVar.a(bVar.f12089b);
            Integer num = (Integer) map.get(strA);
            b bVar2 = num == null ? null : (b) list.get(num.intValue());
            if (bVar2 == null || bVar.f12088a > bVar2.f12088a + j10 || !d(bVar2.f12089b, bVar.f12089b)) {
                map.put(strA, Integer.valueOf(i10));
                list.set(i10, bVar);
                i10++;
            } else {
                long j11 = bVar.f12089b.f74104h;
                list.set(((Integer) androidx.media3.common.util.a.e(num)).intValue(), new b(bVar2.f12088a, bVar2.f12089b.f(0L, j11 != -1 ? bVar2.f12089b.f74104h + j11 : -1L)));
            }
        }
        a1.c1(list, i10, list.size());
    }

    private void j(int i10) {
        synchronized (this.f12081j) {
            this.f12081j.remove(i10);
        }
    }

    private void k(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f12081j) {
            this.f12081j.remove(runnableFutureTask);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0034 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(o.a aVar) {
        androidx.media3.datasource.cache.a aVarB;
        byte[] bArr;
        int i10;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager = this.f12078g;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-4000);
        }
        androidx.media3.datasource.cache.a aVarB2 = this.f12075d.b();
        q qVarG = g(aVarB2, this.f12072a, false);
        if (!this.f12074c.isEmpty()) {
            qVarG = (q) qVarG.copy(this.f12074c);
        }
        List listH = h(aVarB2, qVarG, false);
        Collections.sort(listH);
        i(listH, this.f12077f, this.f12080i);
        int size = listH.size();
        int i11 = 0;
        long j10 = 0;
        long j11 = 0;
        for (int size2 = listH.size() - 1; size2 >= 0; size2 = i10 - 1) {
            w1.h hVar = ((b) listH.get(size2)).f12089b;
            String strA = this.f12077f.a(hVar);
            long j12 = hVar.f74104h;
            if (j12 == -1) {
                long jA = androidx.media3.datasource.cache.l.a(this.f12076e.getContentMetadata(strA));
                if (jA != -1) {
                    j12 = jA - hVar.f74103g;
                }
            }
            int i12 = size2;
            long jA2 = this.f12076e.a(strA, hVar.f74103g, j12);
            j11 += jA2;
            if (j12 != -1) {
                if (j12 == jA2) {
                    i11++;
                    i10 = i12;
                    listH.remove(i10);
                } else {
                    i10 = i12;
                }
                if (j10 != -1) {
                    j10 += j12;
                }
            } else {
                i10 = i12;
                j10 = -1;
            }
        }
        a aVar2 = aVar != null ? new a(aVar, j10, size, j11, i11) : null;
        arrayDeque.addAll(listH);
        while (!this.f12082k && !arrayDeque.isEmpty()) {
            PriorityTaskManager priorityTaskManager2 = this.f12078g;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-4000);
            }
            if (arrayDeque2.isEmpty()) {
                aVarB = this.f12075d.b();
                bArr = new byte[131072];
            } else {
                SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                aVarB = segmentDownloadRunnable.dataSource;
                bArr = segmentDownloadRunnable.temporaryBuffer;
            }
            SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((b) arrayDeque.removeFirst(), aVarB, aVar2, bArr);
            c(segmentDownloadRunnable2);
            this.f12079h.execute(segmentDownloadRunnable2);
            for (int size3 = this.f12081j.size() - 1; size3 >= 0; size3--) {
                SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) this.f12081j.get(size3);
                if (arrayDeque.isEmpty() || segmentDownloadRunnable3.isDone()) {
                    try {
                        segmentDownloadRunnable3.get();
                        j(size3);
                        arrayDeque2.addLast(segmentDownloadRunnable3);
                    } catch (ExecutionException e10) {
                        Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e10.getCause());
                        if (th2 instanceof PriorityTaskManager.PriorityTooLowException) {
                            arrayDeque.addFirst(segmentDownloadRunnable3.segment);
                            j(size3);
                            arrayDeque2.addLast(segmentDownloadRunnable3);
                        } else {
                            if (th2 instanceof IOException) {
                                throw ((IOException) th2);
                            }
                            a1.m1(th2);
                        }
                    }
                }
            }
            segmentDownloadRunnable2.blockUntilStarted();
        }
        for (int i13 = 0; i13 < this.f12081j.size(); i13++) {
            ((RunnableFutureTask) this.f12081j.get(i13)).cancel(true);
        }
        for (int size4 = this.f12081j.size() - 1; size4 >= 0; size4--) {
            ((RunnableFutureTask) this.f12081j.get(size4)).blockUntilFinished();
            j(size4);
        }
        PriorityTaskManager priorityTaskManager3 = this.f12078g;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-4000);
        }
    }

    @Override
    public void cancel() {
        synchronized (this.f12081j) {
            try {
                this.f12082k = true;
                for (int i10 = 0; i10 < this.f12081j.size(); i10++) {
                    ((RunnableFutureTask) this.f12081j.get(i10)).cancel(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final Object e(RunnableFutureTask runnableFutureTask, boolean z10) throws Throwable {
        if (z10) {
            runnableFutureTask.run();
            try {
                return runnableFutureTask.get();
            } catch (ExecutionException e10) {
                Throwable th2 = (Throwable) androidx.media3.common.util.a.e(e10.getCause());
                if (th2 instanceof IOException) {
                    throw ((IOException) th2);
                }
                a1.m1(e10);
            }
        }
        while (!this.f12082k) {
            PriorityTaskManager priorityTaskManager = this.f12078g;
            if (priorityTaskManager != null) {
                priorityTaskManager.b(-4000);
            }
            c(runnableFutureTask);
            this.f12079h.execute(runnableFutureTask);
            try {
                Object obj = runnableFutureTask.get();
                runnableFutureTask.blockUntilFinished();
                k(runnableFutureTask);
                return obj;
            } catch (ExecutionException e11) {
                try {
                    Throwable th3 = (Throwable) androidx.media3.common.util.a.e(e11.getCause());
                    if (!(th3 instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th3 instanceof IOException) {
                            throw ((IOException) th3);
                        }
                        a1.m1(e11);
                    }
                    runnableFutureTask.blockUntilFinished();
                    k(runnableFutureTask);
                } catch (Throwable th4) {
                    runnableFutureTask.blockUntilFinished();
                    k(runnableFutureTask);
                    throw th4;
                }
            }
        }
        throw new InterruptedException();
    }

    protected final q g(final androidx.media3.datasource.a aVar, final w1.h hVar, boolean z10) {
        return (q) e(new RunnableFutureTask<q, IOException>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public q doWork() throws IOException {
                return (q) androidx.media3.exoplayer.upstream.q.e(aVar, SegmentDownloader.this.f12073b, hVar, 4);
            }
        }, z10);
    }

    protected abstract List h(androidx.media3.datasource.a aVar, q qVar, boolean z10);

    @Override
    public final void remove() {
        androidx.media3.datasource.cache.a aVarC = this.f12075d.c();
        try {
            List listH = h(aVarC, g(aVarC, this.f12072a, true), true);
            for (int i10 = 0; i10 < listH.size(); i10++) {
                this.f12076e.e(this.f12077f.a(((b) listH.get(i10)).f12089b));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            this.f12076e.e(this.f12077f.a(this.f12072a));
        }
    }
}
