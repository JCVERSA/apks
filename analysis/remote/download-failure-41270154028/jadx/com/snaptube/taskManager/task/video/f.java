package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.text.TextUtils;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.taskManager.CombinTask;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.util.ArrayList;
import o.cu1;
import o.dv8;
import o.hp8;
import o.k08;
import o.ks2;
import o.tn5;
import o.uj8;
import o.wd9;
import o.x33;
import o.zu;

public class f implements g.d {
    public final Context a;
    public final TaskInfo b;
    public final k08 c;
    public Format[] d;
    public VideoInfo e;
    public File f;
    public x33 g;
    public uj8.b h;
    public dv8 i;

    public class a extends zu.c {
        public a() {
        }

        @Override
        public void b(Object obj) {
            c((tn5) obj);
        }

        public void c(tn5 tn5Var) {
            Object obj;
            if (tn5Var == null || (obj = tn5Var.b) == null || ((Long) obj).longValue() <= 0) {
                return;
            }
            f.i(f.this, (String) tn5Var.a, (Long) tn5Var.b);
        }
    }

    public f(Context context, k08 k08Var, TaskInfo taskInfo, dv8 dv8Var) {
        this.a = context;
        this.b = taskInfo;
        this.c = k08Var;
        this.i = dv8Var;
    }

    public static void h(f fVar, boolean z, String str) {
        fVar.k(z, str);
    }

    public static void i(f fVar, String str, Long l) {
        fVar.m(str, l);
    }

    private void l() {
        uj8.b bVar = this.h;
        if (bVar != null) {
            bVar.c();
        }
        ArrayList arrayList = new ArrayList();
        for (Format format : this.d) {
            if (format.getSize() <= 0) {
                arrayList.add(format.getDownloadUrl());
            }
        }
        if (arrayList.size() <= 0) {
            return;
        }
        this.h = new uj8.b(arrayList, this.d[0].getHeaders(), new a());
        PhoenixApplication.C().N().b(this.h);
    }

    @Override
    public void a() {
        x33 x33Var = this.g;
        if (x33Var != null) {
            x33Var.a();
        } else {
            this.g = new x33();
        }
        this.g.b(this.c, c(1).getPath(), c(0).getPath(), this.b.i(), new hp8(this));
    }

    @Override
    public void b() {
    }

    @Override
    public File c(int i) {
        return new File(j(), i == 1 ? "audio.tmp" : "video.tmp");
    }

    @Override
    public DownloadRequest d(int i) {
        return g.s1(this.e, this.d[i], this.b.r0, i == 1);
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
            this.c.x(TaskError.HD_COMBINE_NOT_SUPPORTED, null);
            return;
        }
        this.e = videoInfo;
        try {
            this.d = this.i.E(format, videoInfo.getFormats());
            wd9.h(j());
            FfmpegTaskScheduler.y().E();
            l();
        } catch (Exception e) {
            ProductionEnv.throwExceptForDebugging(e);
            this.c.x(TaskError.RESOLVE_FORMAT_ERROR, "resolveCB: " + ks2.h(format, null, null, videoInfo.getFormats()));
        }
    }

    public File j() {
        if (this.f == null) {
            this.f = new File(cu1.a(this.b.i()), g.z1(this.b));
        }
        return this.f;
    }

    public final void k(boolean z, String str) {
        if (!z) {
            this.c.x(TaskError.HD_FAILED_TO_MUX, str);
        } else {
            this.c.n0(100, GlobalConfig.getAppContext().getResources().getString(R.string.converting), true);
            this.c.A();
        }
    }

    public final void m(String str, Long l) {
        boolean z;
        Format[] formatArr = this.d;
        int length = formatArr.length;
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i < length) {
                Format format = formatArr[i];
                if (!TextUtils.equals(format.getDownloadUrl(), str)) {
                    i++;
                } else if (format.getSize() <= 0) {
                    format.setSize(l.longValue());
                    z = true;
                    break;
                }
            }
            z = false;
            break;
        }
        Format[] formatArr2 = this.d;
        int length2 = formatArr2.length;
        long size = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length2) {
                z2 = z;
                break;
            }
            Format format2 = formatArr2[i2];
            if (format2 == null || format2.getSize() <= 0) {
                break;
            }
            size += format2.getSize();
            i2++;
        }
        if (!z2 || this.b.d >= size) {
            return;
        }
        this.c.e0(size);
        k08 k08Var = this.c;
        TaskInfo taskInfo = this.b;
        long j = taskInfo.c;
        long j2 = taskInfo.e;
        if (j2 <= 0) {
            j2 = 1;
        }
        k08Var.l0(j, j2, size, true);
    }

    @Override
    public void onDestroy() {
        x33 x33Var = this.g;
        if (x33Var != null) {
            x33Var.a();
        }
        uj8.b bVar = this.h;
        if (bVar != null) {
            bVar.c();
        }
    }
}
