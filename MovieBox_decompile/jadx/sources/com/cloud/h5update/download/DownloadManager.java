package com.cloud.h5update.download;

import android.content.Context;
import com.cloud.h5update.bean.DownloadEntity;
import com.cloud.h5update.utils.l;
import java.io.File;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;

public final class DownloadManager {

    public static final a f20652g = new a(null);

    private static final Lazy f20653h = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<DownloadManager>() {
        @Override
        public final DownloadManager invoke() {
            return new DownloadManager(null);
        }
    });

    private int f20654a;

    private LinkedBlockingDeque f20655b;

    private ThreadPoolExecutor f20656c;

    private Map f20657d;

    private OkHttpClient f20658e;

    private Context f20659f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadManager a() {
            return (DownloadManager) DownloadManager.f20653h.getValue();
        }

        private a() {
        }
    }

    public DownloadManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void c(DownloadManager downloadManager, DownloadTask downloadTask, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        downloadManager.b(downloadTask, z10);
    }

    private final int e() {
        return (Runtime.getRuntime().availableProcessors() * 2) + 1;
    }

    private final OkHttpClient g() {
        OkHttpClient okHttpClientBuild = new OkHttpClient.Builder().connectTimeout(15L, TimeUnit.SECONDS).build();
        Intrinsics.g(okHttpClientBuild, "Builder().connectTimeout…TimeUnit.SECONDS).build()");
        return okHttpClientBuild;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0005 A[PHI: r8
      0x0005: PHI (r8v8 int) = (r8v1 int), (r8v2 int) binds: [B:3:0x0003, B:6:0x0009] A[DONT_GENERATE, DONT_INLINE]] */
    private final void j(Context context, int i10, OkHttpClient okHttpClient) {
        this.f20659f = context;
        int i11 = 1;
        if (i10 < 1) {
            i10 = i11;
        } else {
            i11 = 15;
            if (i10 > 15) {
                i10 = i11;
            }
        }
        this.f20654a = i10;
        int i12 = this.f20654a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i12, i12, 20L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque());
        this.f20656c = threadPoolExecutor;
        Intrinsics.e(threadPoolExecutor);
        BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
        if (queue == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.util.concurrent.LinkedBlockingDeque<java.lang.Runnable>");
        }
        this.f20655b = (LinkedBlockingDeque) queue;
        this.f20657d = new ConcurrentHashMap();
        this.f20658e = okHttpClient;
    }

    public static void k(DownloadManager downloadManager, Context context, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = downloadManager.e();
        }
        downloadManager.i(context, i10);
    }

    public final void b(DownloadTask task, boolean z10) {
        String taskId;
        Map map;
        Intrinsics.h(task, "task");
        if (!z10 && (map = this.f20657d) != null) {
            DownloadEntity downloadEntity = task.getDownloadEntity();
            if (map.containsKey(downloadEntity != null ? downloadEntity.getTaskId() : null)) {
                return;
            }
        }
        DownloadEntity downloadEntity2 = task.getDownloadEntity();
        if (downloadEntity2 == null || (taskId = downloadEntity2.getTaskId()) == null || !(!StringsKt.q0(taskId))) {
            return;
        }
        task.setClient(this.f20658e);
        Map map2 = this.f20657d;
        Intrinsics.e(map2);
        String taskId2 = downloadEntity2.getTaskId();
        Intrinsics.e(taskId2);
        map2.put(taskId2, task);
        LinkedBlockingDeque linkedBlockingDeque = this.f20655b;
        Intrinsics.e(linkedBlockingDeque);
        if (linkedBlockingDeque.contains(task)) {
            return;
        }
        ThreadPoolExecutor threadPoolExecutor = this.f20656c;
        Intrinsics.e(threadPoolExecutor);
        threadPoolExecutor.execute(task);
    }

    public final void d(String str) {
        Map map;
        if (str == null || StringsKt.q0(str) || (map = this.f20657d) == null || map == null) {
            return;
        }
    }

    public final ThreadPoolExecutor f() {
        return this.f20656c;
    }

    public final DownloadTask h(String str) {
        Map map;
        DownloadEntity downloadEntityH;
        if (str == null || StringsKt.q0(str) || (map = this.f20657d) == null) {
            return null;
        }
        Intrinsics.e(map);
        DownloadTask downloadTask = (DownloadTask) map.get(str);
        return (downloadTask != null || (downloadEntityH = l.f20693a.h(str)) == null) ? downloadTask : new DownloadTask(downloadEntityH);
    }

    public final void i(Context context, int i10) {
        Intrinsics.h(context, "context");
        j(context, i10, g());
    }

    public final boolean l(String str) {
        DownloadEntity downloadEntityH = l.f20693a.h(str);
        if (downloadEntityH == null) {
            return false;
        }
        String filePath = downloadEntityH.getFilePath();
        String fileName = downloadEntityH.getFileName();
        if (fileName == null) {
            fileName = "";
        }
        File file = new File(filePath, fileName);
        return file.exists() && file.length() == downloadEntityH.getTotalSize();
    }

    public final void m(DownloadTask task) {
        Intrinsics.h(task, "task");
        c(this, task, false, 2, null);
    }

    private DownloadManager() {
        this.f20654a = 1;
    }
}
