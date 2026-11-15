package com.transsnet.downloader.core.thread;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import kotlin.jvm.internal.Intrinsics;

public final class e extends b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(DownloadRange downloadRange, com.transsnet.downloader.proxy.b proxyHelper, int i10, com.transsnet.downloader.core.c downloadResponse, ax.b config, DownloadBean downloadInfo, d downloadProgressListener) {
        super(downloadRange, proxyHelper, i10, downloadResponse, config, downloadInfo, downloadProgressListener);
        Intrinsics.h(downloadRange, "downloadRange");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(config, "config");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(downloadProgressListener, "downloadProgressListener");
    }
}
