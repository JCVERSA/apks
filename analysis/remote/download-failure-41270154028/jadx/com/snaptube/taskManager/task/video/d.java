package com.snaptube.taskManager.task.video;

import android.content.Context;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.task.TaskError;
import java.io.File;
import o.ce3;
import o.cu1;
import o.mg4;
import o.ng4;
import o.wd9;
import o.y48;
import o.yj2;

public class d implements g.d {
    public final Context a;
    public final g b;
    public final TaskInfo c;
    public VideoInfo d;
    public Format e;
    public File f;
    public mg4 g;
    public int h = 128;

    public class a implements ce3.a {
        public final File a;

        public a(File file) {
            this.a = file;
        }

        @Override
        public void a(boolean z, String str) {
            if (z) {
                d.i(d.this).c2(this.a, new File(d.j(d.this).i()), "M4aToMp3Task", TaskError.MP3_RENAME_FILE_FAILED);
                return;
            }
            boolean z2 = false;
            long length = d.this.c(0).length();
            if (length > 0 && length == d.j(d.this).d) {
                z2 = true;
            }
            d.i(d.this).x(TaskError.MP3_CONVERT_M4A_FAILED, str + " equal:" + z2 + " dsize:" + length + " dtsize:" + d.j(d.this).d);
        }
    }

    public d(Context context, g gVar, TaskInfo taskInfo) {
        this.a = context;
        this.b = gVar;
        this.c = taskInfo;
    }

    public static void h(d dVar) {
        dVar.n();
    }

    public static g i(d dVar) {
        return dVar.b;
    }

    public static TaskInfo j(d dVar) {
        return dVar.c;
    }

    private void k() {
        mg4 mg4Var = this.g;
        if (mg4Var != null) {
            mg4Var.a();
            this.g = null;
        }
    }

    private File l() {
        if (this.f == null) {
            this.f = new File(cu1.a(this.c.i()), g.z1(this.c));
        }
        return this.f;
    }

    private File m() {
        return new File(l(), "result.tmp");
    }

    private void n() {
        yj2.q(l());
    }

    @Override
    public void a() {
        k();
        this.g = new mg4();
        File fileM = m();
        this.g.b(this.b, c(0).getPath(), fileM.getPath(), this.h, new a(fileM));
    }

    @Override
    public void b() {
        y48.l(new ng4(this));
    }

    @Override
    public File c(int i) {
        return new File(l(), "audio.tmp");
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
        this.h = YoutubeCodec.getMp3Bitrate(format.getAlias());
        wd9.h(l());
        FfmpegTaskScheduler.y().E();
    }

    @Override
    public void onDestroy() {
        k();
    }
}
