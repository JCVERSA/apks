package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.g;
import com.google.android.exoplayer2.upstream.cache.i;
import com.google.android.exoplayer2.upstream.cache.l;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.n;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public abstract class SegmentDownloader implements com.google.android.exoplayer2.offline.b {

    private final n f24859a;

    private final b0.a f24860b;

    private final ArrayList f24861c;

    private final com.google.android.exoplayer2.upstream.cache.a.c f24862d;

    private final Cache f24863e;

    private final g f24864f;

    private final PriorityTaskManager f24865g;

    private final Executor f24866h;

    private final ArrayList f24867i;

    private volatile boolean f24868j;

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final i cacheWriter;
        public final com.google.android.exoplayer2.upstream.cache.a dataSource;

        @Nullable
        private final a progressNotifier;
        public final b segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(b bVar, com.google.android.exoplayer2.upstream.cache.a aVar, @Nullable a aVar2, byte[] bArr) {
            this.segment = bVar;
            this.dataSource = aVar;
            this.progressNotifier = aVar2;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new i(aVar, bVar.f24875b, bArr, aVar2);
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

    private static final class a implements i.a {

        private final com.google.android.exoplayer2.offline.b.a f24869a;

        private final long f24870b;

        private final int f24871c;

        private long f24872d;

        private int f24873e;

        public a(com.google.android.exoplayer2.offline.b.a aVar, long j10, int i10, long j11, int i11) {
            this.f24869a = aVar;
            this.f24870b = j10;
            this.f24871c = i10;
            this.f24872d = j11;
            this.f24873e = i11;
        }

        private float b() {
            long j10 = this.f24870b;
            if (j10 != -1 && j10 != 0) {
                return (this.f24872d * 100.0f) / j10;
            }
            int i10 = this.f24871c;
            if (i10 != 0) {
                return (this.f24873e * 100.0f) / i10;
            }
            return -1.0f;
        }

        @Override
        public void a(long j10, long j11, long j12) {
            long j13 = this.f24872d + j12;
            this.f24872d = j13;
            this.f24869a.onProgress(this.f24870b, j13, b());
        }

        public void c() {
            this.f24873e++;
            this.f24869a.onProgress(this.f24870b, this.f24872d, b());
        }
    }

    protected static class b implements Comparable {

        public final long f24874a;

        public final n f24875b;

        public b(long j10, n nVar) {
            this.f24874a = j10;
            this.f24875b = nVar;
        }

        @Override
        public int compareTo(b bVar) {
            return p0.o(this.f24874a, bVar.f24874a);
        }
    }

    public SegmentDownloader(w1 w1Var, b0.a aVar, com.google.android.exoplayer2.upstream.cache.a.c cVar, Executor executor) {
        com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        this.f24859a = f(w1Var.f27149b.f27212a);
        this.f24860b = aVar;
        this.f24861c = new ArrayList(w1Var.f27149b.f27215d);
        this.f24862d = cVar;
        this.f24866h = executor;
        this.f24863e = (Cache) com.google.android.exoplayer2.util.a.e(cVar.e());
        this.f24864f = cVar.f();
        this.f24865g = cVar.g();
        this.f24867i = new ArrayList();
    }

    private void c(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f24867i) {
            try {
                if (this.f24868j) {
                    throw new InterruptedException();
                }
                this.f24867i.add(runnableFutureTask);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static boolean d(n nVar, n nVar2) {
        if (nVar.f26665a.equals(nVar2.f26665a)) {
            long j10 = nVar.f26672h;
            if (j10 != -1 && nVar.f26671g + j10 == nVar2.f26671g && p0.c(nVar.f26673i, nVar2.f26673i) && nVar.f26674j == nVar2.f26674j && nVar.f26667c == nVar2.f26667c && nVar.f26669e.equals(nVar2.f26669e)) {
                return true;
            }
        }
        return false;
    }

    protected static n f(Uri uri) {
        return new n.b().i(uri).b(1).a();
    }

    private static void i(List list, g gVar) {
        HashMap map = new HashMap();
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            b bVar = (b) list.get(i11);
            String strA = gVar.a(bVar.f24875b);
            Integer num = (Integer) map.get(strA);
            b bVar2 = num == null ? null : (b) list.get(num.intValue());
            if (bVar2 == null || bVar.f24874a > bVar2.f24874a + 20000000 || !d(bVar2.f24875b, bVar.f24875b)) {
                map.put(strA, Integer.valueOf(i10));
                list.set(i10, bVar);
                i10++;
            } else {
                long j10 = bVar.f24875b.f26672h;
                list.set(((Integer) com.google.android.exoplayer2.util.a.e(num)).intValue(), new b(bVar2.f24874a, bVar2.f24875b.f(0L, j10 != -1 ? bVar2.f24875b.f26672h + j10 : -1L)));
            }
        }
        p0.M0(list, i10, list.size());
    }

    private void j(int i10) {
        synchronized (this.f24867i) {
            this.f24867i.remove(i10);
        }
    }

    private void k(RunnableFutureTask runnableFutureTask) {
        synchronized (this.f24867i) {
            this.f24867i.remove(runnableFutureTask);
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x01ad A[LOOP:1: B:85:0x01a5->B:87:0x01ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x01c6 A[LOOP:2: B:89:0x01c4->B:90:0x01c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x01db  */
    @Override
    public final void a(com.google.android.exoplayer2.offline.b.a aVar) throws Throwable {
        SegmentDownloader segmentDownloader;
        int i10;
        int size;
        PriorityTaskManager priorityTaskManager;
        com.google.android.exoplayer2.upstream.cache.a aVarB;
        byte[] bArr;
        SegmentDownloader segmentDownloader2 = this;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager2 = segmentDownloader2.f24865g;
        if (priorityTaskManager2 != null) {
            priorityTaskManager2.a(-1000);
        }
        try {
            com.google.android.exoplayer2.upstream.cache.a aVarB2 = segmentDownloader2.f24862d.b();
            c cVarG = segmentDownloader2.g(aVarB2, segmentDownloader2.f24859a, false);
            if (!segmentDownloader2.f24861c.isEmpty()) {
                cVarG = (c) cVarG.copy(segmentDownloader2.f24861c);
            }
            List listH = segmentDownloader2.h(aVarB2, cVarG, false);
            Collections.sort(listH);
            i(listH, segmentDownloader2.f24864f);
            int size2 = listH.size();
            int size3 = listH.size() - 1;
            int i11 = 0;
            long j10 = 0;
            long j11 = 0;
            while (size3 >= 0) {
                try {
                    n nVar = ((b) listH.get(size3)).f24875b;
                    String strA = segmentDownloader2.f24864f.a(nVar);
                    long j12 = nVar.f26672h;
                    if (j12 == -1) {
                        long jA = l.a(segmentDownloader2.f24863e.getContentMetadata(strA));
                        if (jA != -1) {
                            j12 = jA - nVar.f26671g;
                        }
                    }
                    ArrayDeque arrayDeque3 = arrayDeque;
                    long jA2 = segmentDownloader2.f24863e.a(strA, nVar.f26671g, j12);
                    j11 += jA2;
                    if (j12 != -1) {
                        if (j12 == jA2) {
                            i11++;
                            listH.remove(size3);
                        }
                        if (j10 != -1) {
                            j10 += j12;
                        }
                    } else {
                        j10 = -1;
                    }
                    size3--;
                    segmentDownloader2 = this;
                    arrayDeque = arrayDeque3;
                } catch (Throwable th2) {
                    th = th2;
                    segmentDownloader = this;
                    for (i10 = 0; i10 < segmentDownloader.f24867i.size(); i10++) {
                        ((RunnableFutureTask) segmentDownloader.f24867i.get(i10)).cancel(true);
                    }
                    for (size = segmentDownloader.f24867i.size() - 1; size >= 0; size--) {
                        ((RunnableFutureTask) segmentDownloader.f24867i.get(size)).blockUntilFinished();
                        segmentDownloader.j(size);
                    }
                    priorityTaskManager = segmentDownloader.f24865g;
                    if (priorityTaskManager != null) {
                        priorityTaskManager.d(-1000);
                    }
                    throw th;
                }
            }
            ArrayDeque arrayDeque4 = arrayDeque;
            a aVar2 = aVar != null ? new a(aVar, j10, size2, j11, i11) : null;
            arrayDeque4.addAll(listH);
            segmentDownloader = this;
            while (!segmentDownloader.f24868j && !arrayDeque4.isEmpty()) {
                try {
                    PriorityTaskManager priorityTaskManager3 = segmentDownloader.f24865g;
                    if (priorityTaskManager3 != null) {
                        priorityTaskManager3.b(-1000);
                    }
                    if (arrayDeque2.isEmpty()) {
                        aVarB = segmentDownloader.f24862d.b();
                        bArr = new byte[131072];
                    } else {
                        SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                        aVarB = segmentDownloadRunnable.dataSource;
                        bArr = segmentDownloadRunnable.temporaryBuffer;
                    }
                    SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((b) arrayDeque4.removeFirst(), aVarB, aVar2, bArr);
                    segmentDownloader.c(segmentDownloadRunnable2);
                    segmentDownloader.f24866h.execute(segmentDownloadRunnable2);
                    for (int size4 = segmentDownloader.f24867i.size() - 1; size4 >= 0; size4--) {
                        SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) segmentDownloader.f24867i.get(size4);
                        if (arrayDeque4.isEmpty() || segmentDownloadRunnable3.isDone()) {
                            try {
                                segmentDownloadRunnable3.get();
                                segmentDownloader.j(size4);
                                arrayDeque2.addLast(segmentDownloadRunnable3);
                            } catch (ExecutionException e10) {
                                Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(e10.getCause());
                                if (th3 instanceof PriorityTaskManager.PriorityTooLowException) {
                                    arrayDeque4.addFirst(segmentDownloadRunnable3.segment);
                                    segmentDownloader.j(size4);
                                    arrayDeque2.addLast(segmentDownloadRunnable3);
                                } else {
                                    if (th3 instanceof IOException) {
                                        throw ((IOException) th3);
                                    }
                                    p0.Q0(th3);
                                }
                            }
                        }
                    }
                    segmentDownloadRunnable2.blockUntilStarted();
                } catch (Throwable th4) {
                    th = th4;
                    while (i10 < segmentDownloader.f24867i.size()) {
                        ((RunnableFutureTask) segmentDownloader.f24867i.get(i10)).cancel(true);
                    }
                    while (size >= 0) {
                        ((RunnableFutureTask) segmentDownloader.f24867i.get(size)).blockUntilFinished();
                        segmentDownloader.j(size);
                    }
                    priorityTaskManager = segmentDownloader.f24865g;
                    if (priorityTaskManager != null) {
                        priorityTaskManager.d(-1000);
                    }
                    throw th;
                }
            }
            for (int i12 = 0; i12 < segmentDownloader.f24867i.size(); i12++) {
                ((RunnableFutureTask) segmentDownloader.f24867i.get(i12)).cancel(true);
            }
            for (int size5 = segmentDownloader.f24867i.size() - 1; size5 >= 0; size5--) {
                ((RunnableFutureTask) segmentDownloader.f24867i.get(size5)).blockUntilFinished();
                segmentDownloader.j(size5);
            }
            PriorityTaskManager priorityTaskManager4 = segmentDownloader.f24865g;
            if (priorityTaskManager4 != null) {
                priorityTaskManager4.d(-1000);
            }
        } catch (Throwable th5) {
            th = th5;
            segmentDownloader = segmentDownloader2;
        }
    }

    @Override
    public void cancel() {
        synchronized (this.f24867i) {
            try {
                this.f24868j = true;
                for (int i10 = 0; i10 < this.f24867i.size(); i10++) {
                    ((RunnableFutureTask) this.f24867i.get(i10)).cancel(true);
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
                Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(e10.getCause());
                if (th2 instanceof IOException) {
                    throw ((IOException) th2);
                }
                p0.Q0(e10);
            }
        }
        while (!this.f24868j) {
            PriorityTaskManager priorityTaskManager = this.f24865g;
            if (priorityTaskManager != null) {
                priorityTaskManager.b(-1000);
            }
            c(runnableFutureTask);
            this.f24866h.execute(runnableFutureTask);
            try {
                Object obj = runnableFutureTask.get();
                runnableFutureTask.blockUntilFinished();
                k(runnableFutureTask);
                return obj;
            } catch (ExecutionException e11) {
                try {
                    Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(e11.getCause());
                    if (!(th3 instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th3 instanceof IOException) {
                            throw ((IOException) th3);
                        }
                        p0.Q0(e11);
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

    protected final c g(final k kVar, final n nVar, boolean z10) {
        return (c) e(new RunnableFutureTask<c, IOException>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public c doWork() throws IOException {
                return (c) b0.e(kVar, SegmentDownloader.this.f24860b, nVar, 4);
            }
        }, z10);
    }

    protected abstract List h(k kVar, c cVar, boolean z10);

    @Override
    public final void remove() {
        com.google.android.exoplayer2.upstream.cache.a aVarC = this.f24862d.c();
        try {
            List listH = h(aVarC, g(aVarC, this.f24859a, true), true);
            for (int i10 = 0; i10 < listH.size(); i10++) {
                this.f24863e.e(this.f24864f.a(((b) listH.get(i10)).f24875b));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            this.f24863e.e(this.f24864f.a(this.f24859a));
        }
    }
}
