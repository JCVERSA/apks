package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.R;
import com.snaptube.taskManager.CombinTask;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import o.b88;
import o.c18;
import o.cu1;
import o.k08;
import o.ks2;
import o.sf9;
import o.wd9;
import o.y48;
import o.yj2;

public class k implements g.d {
    public Context a;
    public final k08 b;
    public final TaskInfo c;
    public VideoInfo d;
    public File f;
    public final Format[] e = new Format[2];
    public long g = -1;
    public Handler h = new Handler(c18.d());

    public class a implements FfmpegTaskScheduler.f {

        public class RunnableC0478a implements Runnable {
            public final FfmpegTaskScheduler.Status a;
            public final String b;

            public RunnableC0478a(FfmpegTaskScheduler.Status status, String str) {
                this.a = status;
                this.b = str;
            }

            @Override
            public void run() {
                switch (b.a[this.a.ordinal()]) {
                    case 1:
                        k.k(k.this).m0(k.i(k.this).getResources().getString(R.string.wait_muxing), true);
                        break;
                    case 2:
                        k.k(k.this).m0(k.i(k.this).getResources().getString(R.string.downloading_codec_plugin), true);
                        break;
                    case 3:
                        k.k(k.this).m0(k.i(k.this).getResources().getString(R.string.converting), true);
                        break;
                    case 4:
                        TaskInfoDBUtils.v(k.l(k.this).a, TaskInfo.TaskStatus.PAUSED);
                        break;
                    case 5:
                        k.k(k.this).B();
                        b88.m(k.i(k.this), k.i(k.this).getResources().getString(R.string.convert_media_file_warning));
                        break;
                    case 6:
                        k.k(k.this).A();
                        break;
                    case 7:
                        k.k(k.this).x(TaskError.HD_FAILED_TO_MUX, this.b);
                        break;
                    case 8:
                        if (!TextUtils.isEmpty(this.b)) {
                            try {
                                k.k(k.this).h0(Integer.parseInt(this.b));
                            } catch (Exception unused) {
                                return;
                            }
                            break;
                        }
                        break;
                }
            }
        }

        public class b implements Runnable {
            public final String a;

            public b(String str) {
                this.a = str;
            }

            @Override
            public void run() {
                k.k(k.this).m0(this.a, true);
            }
        }

        public a() {
        }

        @Override
        public void a(int i) {
            k.j(k.this).post(new b(k.i(k.this).getResources().getString(R.string.converting)));
        }

        @Override
        public TaskInfo b() {
            return k.l(k.this);
        }

        @Override
        public void c(FfmpegTaskScheduler.Status status, String str) {
            k.j(k.this).post(new RunnableC0478a(status, str));
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[FfmpegTaskScheduler.Status.values().length];
            a = iArr;
            try {
                iArr[FfmpegTaskScheduler.Status.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[FfmpegTaskScheduler.Status.WAITING_FOR_CODEC_PLUGIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[FfmpegTaskScheduler.Status.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[FfmpegTaskScheduler.Status.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[FfmpegTaskScheduler.Status.WARNING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[FfmpegTaskScheduler.Status.SUCCESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[FfmpegTaskScheduler.Status.FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[FfmpegTaskScheduler.Status.CANCELED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public k(Context context, k08 k08Var, TaskInfo taskInfo) {
        this.a = context;
        this.b = k08Var;
        this.c = taskInfo;
    }

    public static void h(k kVar) {
        kVar.o();
    }

    public static Context i(k kVar) {
        return kVar.a;
    }

    public static Handler j(k kVar) {
        return kVar.h;
    }

    public static k08 k(k kVar) {
        return kVar.b;
    }

    public static TaskInfo l(k kVar) {
        return kVar.c;
    }

    private void m() {
        if (this.g > 0) {
            FfmpegTaskScheduler.y().n(this.g);
            this.g = -1L;
        }
    }

    private File n() {
        if (this.f == null) {
            this.f = new File(cu1.a(this.c.i()), g.z1(this.c));
        }
        return this.f;
    }

    private void o() {
        yj2.q(n());
    }

    @Override
    public void a() {
        m();
        this.g = FfmpegTaskScheduler.y().s(c(0).getPath(), c(1).getPath(), this.c.i(), new a());
    }

    @Override
    public void b() {
        y48.l(new sf9(this));
    }

    @Override
    public File c(int i) {
        return new File(n(), i == 1 ? "audio.tmp" : "video.tmp");
    }

    @Override
    public DownloadRequest d(int i) {
        return g.s1(this.d, this.e[i], this.c.r0, i == 1);
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
            this.b.x(TaskError.HD_COMBINE_NOT_SUPPORTED, null);
            return;
        }
        this.d = videoInfo;
        try {
            Format[] formatArrL = ks2.l(true, videoInfo.getFormats(), format);
            Format[] formatArr = this.e;
            formatArr[1] = formatArrL[1];
            formatArr[0] = formatArrL[0];
            wd9.h(n());
            FfmpegTaskScheduler.y().E();
        } catch (Exception e) {
            ProductionEnv.throwExceptForDebugging(e);
            StringBuilder sb = new StringBuilder();
            sb.append("resolveWebM: ");
            Format[] formatArr2 = this.e;
            sb.append(ks2.h(format, formatArr2[0], formatArr2[1], videoInfo.getFormats()));
            this.b.y(TaskError.RESOLVE_FORMAT_ERROR, "resolveWebM failed", sb.toString());
        }
    }

    @Override
    public void onDestroy() {
        m();
    }
}
