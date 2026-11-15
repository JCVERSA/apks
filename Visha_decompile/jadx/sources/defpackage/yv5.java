package defpackage;

import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.videodownloader.VideoDownloadManager;
import com.transsion.videodownloader.model.Video;
import com.transsion.videodownloader.model.VideoTaskItem;
import java.util.Map;

public class yv5 {
    public static volatile yv5 b;
    public boolean a = false;

    public static yv5 c() {
        if (b == null) {
            synchronized (yv5.class) {
                b = new yv5();
            }
        }
        return b;
    }

    public static boolean e(String str) {
        return !r0a.g(str) && (str.endsWith(Video.SUFFIX.SUFFIX_M3U8) || str.contains(Video.SUFFIX.SUFFIX_M3U8));
    }

    public void a(VideoTaskItem videoTaskItem, boolean z) {
        if (!this.a || videoTaskItem == null) {
            LogUtils.m("M3U8Downloader", "m3u8_download_failed");
        } else {
            VideoDownloadManager.E().z(videoTaskItem, z);
        }
    }

    public void b(wu4 wu4Var) {
        if (this.a) {
            VideoDownloadManager.E().C(wu4Var);
        } else {
            LogUtils.m("M3U8Downloader", "m3u8_downloader_have_not_init");
        }
    }

    public void d(Context context) {
        if (this.a) {
            return;
        }
        fc7.f(context, "context is null");
        String strJ = b23.j(context);
        VideoDownloadManager.E().O(new VideoDownloadManager.e(context).b(strJ).d(strJ).g(120000, 120000).c(3).e(false).f(true).a());
        this.a = true;
    }

    public void f(VideoTaskItem videoTaskItem) {
        if (!this.a || videoTaskItem == null) {
            LogUtils.m("M3U8Downloader", "m3u8_download_failed");
        } else {
            if (videoTaskItem.getTaskState() == 11) {
                return;
            }
            VideoDownloadManager.E().a0(videoTaskItem);
        }
    }

    public void g(tz2 tz2Var) {
        if (this.a) {
            VideoDownloadManager.E().c0(tz2Var);
        } else {
            LogUtils.m("M3U8Downloader", "m3u8_downloader_have_not_init");
        }
    }

    public void h(VideoTaskItem videoTaskItem) {
        i(videoTaskItem, null);
    }

    public void i(VideoTaskItem videoTaskItem, Map map) {
        if (!this.a || videoTaskItem == null) {
            LogUtils.m("M3U8Downloader", "m3u8_download_failed");
            return;
        }
        ls1.a = true;
        LogUtils.j("M3U8Downloader", "get_m3u8_file_and_download", videoTaskItem.getUrl());
        VideoDownloadManager.E().e0(videoTaskItem, map);
    }

    public synchronized void j(Context context) {
        if (this.a) {
            return;
        }
        fc7.f(context, "context is null");
        String strJ = b23.j(context);
        VideoDownloadManager.E().O(new VideoDownloadManager.e(context).b(strJ).d(strJ).g(120000, 120000).c(3).e(false).f(true).a());
        this.a = true;
    }
}
