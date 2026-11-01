package com.snaptube.taskManager.task.video;

import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.taskManager.datasets.TaskInfo;
import java.io.File;
import o.b35;
import o.ca8;

public class e implements g.d {
    public final g a;
    public final File b;
    public TaskInfo c;
    public VideoInfo d;
    public Format e;

    public e(g gVar, TaskInfo taskInfo) {
        this.a = gVar;
        this.b = new File(taskInfo.i());
        this.c = taskInfo;
    }

    @Override
    public void a() {
        this.a.p1(ca8.e(this.c.i()), true);
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
        return g.r1(this.d, this.e, this.c.r0);
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
        this.d = videoInfo;
        this.e = format;
        b35.a();
    }

    @Override
    public void onDestroy() {
    }
}
