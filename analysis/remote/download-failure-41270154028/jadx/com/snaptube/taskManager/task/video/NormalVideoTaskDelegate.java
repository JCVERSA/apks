package com.snaptube.taskManager.task.video;

import android.content.Context;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.taskManager.datasets.TaskInfo;
import java.io.File;
import o.or3;
import o.pg1;

public final class NormalVideoTaskDelegate implements g.d {
    public static final a g = new a(null);
    public final g a;
    public final File b;
    public VideoInfo c;
    public Format d;
    public VideoMetaInfoHelper e;
    public final Context f;

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }
    }

    public NormalVideoTaskDelegate(g gVar, File file) {
        or3.f(gVar, "task");
        or3.f(file, "destFilePath");
        this.a = gVar;
        this.b = file;
        this.f = PhoenixApplication.z();
    }

    public static final void h(NormalVideoTaskDelegate normalVideoTaskDelegate) {
        normalVideoTaskDelegate.k();
    }

    public static final Context i(NormalVideoTaskDelegate normalVideoTaskDelegate) {
        return normalVideoTaskDelegate.f;
    }

    public static final g j(NormalVideoTaskDelegate normalVideoTaskDelegate) {
        return normalVideoTaskDelegate.a;
    }

    @Override
    public void a() {
        VideoMetaInfoHelper videoMetaInfoHelper = this.e;
        if (videoMetaInfoHelper == null) {
            k();
        } else if (videoMetaInfoHelper != null) {
            videoMetaInfoHelper.a0(new NormalVideoTaskDelegate$onPostDownload$1(this), new NormalVideoTaskDelegate$onPostDownload$2(this));
        }
    }

    @Override
    public void b() {
    }

    @Override
    public File c(int i) {
        return this.b;
    }

    @Override
    public DownloadRequest d(int i) {
        DownloadRequest downloadRequestR1 = g.r1(this.c, this.d, this.a.I().r0);
        or3.e(downloadRequestR1, "createDownloadRequest(...)");
        return downloadRequestR1;
    }

    @Override
    public void e() {
    }

    @Override
    public int f() {
        return 1;
    }

    @Override
    public void g(VideoInfo videoInfo, Format format) {
        this.c = videoInfo;
        this.d = format;
        if (videoInfo == null || format == null || !format.isVideo()) {
            return;
        }
        TaskInfo taskInfoI = this.a.I();
        or3.e(taskInfoI, "getTaskInfo(...)");
        VideoMetaInfoHelper videoMetaInfoHelper = new VideoMetaInfoHelper(taskInfoI, videoInfo, format);
        this.e = videoMetaInfoHelper;
        videoMetaInfoHelper.f0();
    }

    public final void k() {
        this.a.L0();
    }

    @Override
    public void onDestroy() {
    }
}
