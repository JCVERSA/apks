package com.snaptube.taskManager.task.video;

import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.R;
import com.snaptube.taskManager.CombinTask;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import o.ce9;
import o.cu1;
import o.de9;
import o.ee9;
import o.fe9;
import o.k08;
import o.ks2;
import o.mg8;
import o.tj8;
import o.wc1;
import o.wd9;
import o.x33;
import o.y48;
import o.yj2;

public class i implements g.d {
    public final k08 a;
    public final TaskInfo b;
    public VideoInfo c;
    public final Format[] d = new Format[2];
    public File e;
    public x33 f;
    public VideoMetaInfoHelper g;

    public i(k08 k08Var, TaskInfo taskInfo) {
        this.a = k08Var;
        this.b = taskInfo;
    }

    public static void h(i iVar) {
        iVar.m();
    }

    public static mg8 i() {
        return o();
    }

    public static void j(i iVar, boolean z, String str) {
        iVar.n(z, str);
    }

    public static mg8 k(i iVar, String str, Boolean bool, Throwable th) {
        return iVar.p(str, bool, th);
    }

    private File l() {
        if (this.e == null) {
            this.e = new File(cu1.a(this.b.i()), g.z1(this.b));
        }
        return this.e;
    }

    private void n(boolean z, String str) {
        if (z) {
            q(str);
        } else {
            this.a.x(TaskError.HD_FAILED_TO_MUX, str);
        }
    }

    public static mg8 o() {
        return null;
    }

    @Override
    public void a() {
        x33 x33Var = this.f;
        if (x33Var != null) {
            x33Var.a();
        } else {
            this.f = new x33();
        }
        this.f.b(this.a, c(1).getPath(), c(0).getPath(), this.b.i(), new de9(this));
    }

    @Override
    public void b() {
        y48.l(new ce9(this));
    }

    @Override
    public File c(int i) {
        return new File(l(), i == 1 ? "audio.tmp" : "video.tmp");
    }

    @Override
    public DownloadRequest d(int i) {
        r(i);
        return g.s1(this.c, this.d[i], this.b.r0, i == 1);
    }

    @Override
    public void e() {
    }

    @Override
    public int f() {
        return 2;
    }

    @Override
    public void g(VideoInfo videoInfo, Format format) {
        if (!CombinTask.isSupported()) {
            this.a.x(TaskError.HD_COMBINE_NOT_SUPPORTED, null);
            return;
        }
        this.c = videoInfo;
        try {
            Format[] formatArrK = ks2.k(true, videoInfo.getFormats(), format);
            Format[] formatArr = this.d;
            formatArr[1] = formatArrK[1];
            formatArr[0] = formatArrK[0];
            wd9.h(l());
            FfmpegTaskScheduler.y().E();
            VideoMetaInfoHelper videoMetaInfoHelper = new VideoMetaInfoHelper(this.b, videoInfo, this.d[0]);
            this.g = videoMetaInfoHelper;
            videoMetaInfoHelper.f0();
        } catch (Exception e) {
            ProductionEnv.throwExceptForDebugging(e);
            StringBuilder sb = new StringBuilder();
            sb.append("resolveHD: ");
            Format[] formatArr2 = this.d;
            sb.append(ks2.h(format, formatArr2[0], formatArr2[1], videoInfo.getFormats()));
            this.a.y(TaskError.RESOLVE_FORMAT_ERROR, "resolveHD failed!", sb.toString());
        }
    }

    public final void m() {
        yj2.q(l());
    }

    @Override
    public void onDestroy() {
        x33 x33Var = this.f;
        if (x33Var != null) {
            x33Var.a();
        }
    }

    public final mg8 p(String str, Boolean bool, Throwable th) {
        if (!bool.booleanValue()) {
            this.a.x(TaskError.HD_FAILED_TO_MUX, str);
            return null;
        }
        this.a.n0(100, GlobalConfig.getAppContext().getResources().getString(R.string.converting), true);
        this.a.A();
        return null;
    }

    public final void q(String str) {
        this.g.a0(new ee9(), new fe9(this, str));
    }

    public final void r(int i) {
        Format format = this.d[i];
        if (!wc1.d(format.getDownloadUrl()) || format.getSize() > 0) {
            return;
        }
        format.setSize(new tj8.c().a(format.getDownloadUrl()));
    }
}
