package com.transsnet.downloader.core.thread;

import com.transsion.baselib.db.download.DownloadRange;
import kotlin.jvm.internal.Intrinsics;

public interface d {

    public static final class a {
        public static void a(d dVar, f runnable, int i10, DownloadRange curRange) {
            Intrinsics.h(runnable, "runnable");
            Intrinsics.h(curRange, "curRange");
        }
    }

    void a(f fVar, int i10, DownloadRange downloadRange);

    void c(f fVar, int i10, DownloadRange downloadRange);

    void d();

    void e();

    void f(f fVar, int i10, DownloadRange downloadRange);
}
