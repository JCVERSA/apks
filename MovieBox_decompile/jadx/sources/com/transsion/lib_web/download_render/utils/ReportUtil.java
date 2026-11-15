package com.transsion.lib_web.download_render.utils;

import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

public final class ReportUtil {

    public static final ReportUtil f44816a = new ReportUtil();

    private static final n0 f44817b;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        f44817b = o0.a(m1.c(executorServiceNewSingleThreadExecutor));
    }

    private ReportUtil() {
    }

    public final void a(Map datas) {
        Intrinsics.h(datas, "datas");
        k.d(f44817b, null, null, new ReportUtil$reportManifestDownload$1(datas, null), 3, null);
    }

    public final void b(String url, String versionCode, int i10, int i11, int i12, int i13, int i14, long j10, boolean z10, long j11, long j12) {
        Intrinsics.h(url, "url");
        Intrinsics.h(versionCode, "versionCode");
        k.d(f44817b, null, null, new ReportUtil$reportPageDownload$1(url, versionCode, i10, i11, i12, i13, j10, z10, i14, j11, j12, null), 3, null);
    }

    public final void c(RenderStage renderStage) {
        k.d(f44817b, null, null, new ReportUtil$reportRender$1(renderStage, null), 3, null);
    }
}
