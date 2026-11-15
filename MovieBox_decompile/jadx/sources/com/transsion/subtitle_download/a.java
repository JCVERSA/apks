package com.transsion.subtitle_download;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

public interface a {

    public static final class C0644a {
        public static void a(a aVar, SubtitleDownloadTable bean) {
            Intrinsics.h(bean, "bean");
        }

        public static void b(a aVar, SubtitleDownloadTable stDownloadTable) {
            Intrinsics.h(stDownloadTable, "stDownloadTable");
        }
    }

    void onComplete(SubtitleDownloadTable subtitleDownloadTable);

    void onDownloading(int i10, SubtitleDownloadTable subtitleDownloadTable);

    void onFail(Exception exc, SubtitleDownloadTable subtitleDownloadTable);

    void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable);

    void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable);
}
