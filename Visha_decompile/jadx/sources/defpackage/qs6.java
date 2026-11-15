package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import com.transsion.videodownloader.model.MultiRangeInfo;
import com.transsion.videodownloader.model.VideoRange;
import com.transsion.videodownloader.model.VideoTaskItem;
import com.transsion.videodownloader.task.SingleVideoCacheThread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class qs6 extends erb {
    public HandlerThread q;
    public Handler r;
    public List s;
    public final long t;
    public final int u;

    public class a implements cx4 {
        public final List a;
        public final Map b;
        public final Map c;

        public a(List list, Map map, Map map2) {
            this.a = list;
            this.b = map;
            this.c = map2;
        }

        @Override
        public void a(VideoRange videoRange, int i, Exception exc) {
            qs6.this.j(exc);
        }

        @Override
        public void b(VideoRange videoRange, int i, long j) {
            long jLongValue = ((Long) this.a.get(i)).longValue() + j;
            eq5.c("MultiSegVideoDownloadTask", "onProgress ID=" + i + ", size=" + jLongValue);
            this.b.put(Integer.valueOf(i), Long.valueOf(jLongValue));
            qs6.this.l(this.b);
        }

        @Override
        public void c(VideoRange videoRange, int i) {
            eq5.c("MultiSegVideoDownloadTask", "onRangeCompleted Range=" + videoRange + ", completeMap size=" + this.c.size());
            this.c.put(Integer.valueOf(i), Boolean.TRUE);
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                boolean zBooleanValue = ((Boolean) it.next()).booleanValue();
                eq5.c("MultiSegVideoDownloadTask", "onRangeCompleted tag = " + zBooleanValue);
                if (!zBooleanValue) {
                    return;
                }
            }
            eq5.c("MultiSegVideoDownloadTask", "TotalSize=" + qs6.this.t);
            qs6.this.k();
        }
    }

    public qs6(VideoTaskItem videoTaskItem, Map map) {
        super(videoTaskItem, map);
        if (this.c == null) {
            this.c = new HashMap();
        }
        this.t = videoTaskItem.getTotalSize();
        this.u = frb.d().b();
        this.s = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("Multi-thread download");
        this.q = handlerThread;
        handlerThread.start();
        this.r = new Handler(this.q.getLooper());
    }

    public void j(Exception exc) {
        a(exc);
    }

    public void k() {
        synchronized (this.i) {
            try {
                if (!this.h) {
                    this.g.a(this.t);
                    this.h = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void c() {
        ThreadPoolExecutor threadPoolExecutor = this.f;
        if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        this.f.shutdownNow();
        b();
    }

    @Override
    public void e() throws Throwable {
        this.g.c(this.a.getUrl());
        n();
    }

    public final void l(Map map) {
        Iterator it = map.values().iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue += ((Long) it.next()).longValue();
        }
        this.k = jLongValue;
        long j = this.t;
        if (jLongValue >= j) {
            this.g.d(100.0f, j, j, this.m);
            this.n = 100.0f;
            k();
            return;
        }
        float f = ((jLongValue * 1.0f) * 100.0f) / j;
        if (frb.h(f, this.n)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.k;
        long j3 = this.j;
        if (j2 > j3) {
            long j4 = this.l;
            if (jCurrentTimeMillis > j4) {
                this.m = (((j2 - j3) * 1000) * 1.0f) / (jCurrentTimeMillis - j4);
            }
        }
        this.g.d(f, j2, this.t, this.m);
        this.n = f;
        this.l = jCurrentTimeMillis;
        this.j = this.k;
        m(map);
    }

    public final void m(Map map) {
        int size = map.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (VideoRange videoRange : this.s) {
            arrayList2.add(Long.valueOf(videoRange.getStart()));
            arrayList3.add(Long.valueOf(videoRange.getEnd()));
        }
        ArrayList arrayList4 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            Long l = (Long) entry.getValue();
            long jLongValue = l.longValue();
            arrayList4.add(iIntValue, l);
            eq5.c("MultiSegVideoDownloadTask", "saveCacheInfo id=" + iIntValue + ", cachedSize=" + jLongValue);
        }
        MultiRangeInfo multiRangeInfo = new MultiRangeInfo();
        multiRangeInfo.setIds(arrayList);
        multiRangeInfo.setStarts(arrayList2);
        multiRangeInfo.setEnds(arrayList3);
        multiRangeInfo.setSizes(arrayList4);
        frb.l(multiRangeInfo, this.d);
    }

    public final void n() throws Throwable {
        long size;
        if (this.a.isCompleted()) {
            eq5.c("MultiSegVideoDownloadTask", "BaseVideoDownloadTask local file.");
            k();
            return;
        }
        int i = this.u;
        this.f = new ThreadPoolExecutor(i + 1, i + 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
        this.s.clear();
        ArrayList arrayList = new ArrayList();
        MultiRangeInfo multiRangeInfoK = frb.k(this.d);
        if (multiRangeInfoK == null) {
            size = this.u;
            long j = this.t / size;
            int i2 = 0;
            while (true) {
                long j2 = i2;
                if (j2 >= size) {
                    break;
                }
                long j3 = j * j2;
                i2++;
                long j4 = (((long) i2) * j) - 1;
                if (j2 == size - 1) {
                    j4 = this.t;
                }
                this.s.add(new VideoRange(j3, j4));
                arrayList.add(0L);
            }
        } else {
            size = multiRangeInfoK.getIds().size();
            List<Long> ends = multiRangeInfoK.getEnds();
            List<Long> sizes = multiRangeInfoK.getSizes();
            for (int i3 = 0; i3 < size; i3++) {
                if (i3 == 0) {
                    this.s.add(new VideoRange(sizes.get(i3).longValue(), ends.get(i3).longValue()));
                } else {
                    this.s.add(new VideoRange(ends.get(i3 - 1).longValue() + sizes.get(i3).longValue(), ends.get(i3).longValue()));
                }
            }
            arrayList.addAll(sizes);
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (int i4 = 0; i4 < size; i4++) {
            map.put(Integer.valueOf(i4), 0L);
            map2.put(Integer.valueOf(i4), Boolean.FALSE);
            SingleVideoCacheThread singleVideoCacheThread = new SingleVideoCacheThread(this.b, this.c, (VideoRange) this.s.get(i4), this.t, this.d.getAbsolutePath());
            singleVideoCacheThread.setHandler(this.r);
            singleVideoCacheThread.setId(i4);
            singleVideoCacheThread.setCacheListener(new a(arrayList, map, map2));
            this.f.execute(singleVideoCacheThread);
        }
    }
}
