package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.premium.R;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.taskManager.task.TaskException;
import java.io.File;
import o.b88;
import o.c18;
import o.cu1;
import o.rf9;
import o.wd9;
import o.y48;
import o.yj2;

public class j implements g.d {
    public final Context a;
    public final g b;
    public final TaskInfo c;
    public VideoInfo d;
    public Format e;
    public File f;
    public long g = -1;
    public Handler h = new Handler(c18.d());

    public class a implements FfmpegTaskScheduler.f {
        public final File a;

        public class RunnableC0477a implements Runnable {
            public final FfmpegTaskScheduler.Status a;
            public final String b;

            public RunnableC0477a(FfmpegTaskScheduler.Status status, String str) {
                this.a = status;
                this.b = str;
            }

            @Override
            public void run() {
                switch (b.a[this.a.ordinal()]) {
                    case 1:
                        j.k(j.this).n0(0, j.i(j.this).getResources().getString(R.string.converting), true);
                        break;
                    case 2:
                        j.k(j.this).m0(j.i(j.this).getResources().getString(R.string.downloading_codec_plugin), true);
                        break;
                    case 3:
                        j.k(j.this).m0(j.i(j.this).getResources().getString(R.string.converting), true);
                        break;
                    case 4:
                        TaskInfoDBUtils.v(j.l(j.this).a, TaskInfo.TaskStatus.PAUSED);
                        break;
                    case 5:
                        j.k(j.this).B();
                        b88.m(j.i(j.this), j.i(j.this).getResources().getString(R.string.convert_media_file_warning));
                        break;
                    case 6:
                        j.k(j.this).c2(a.this.a, new File(j.l(j.this).i()), "webm2mp3task", TaskError.MP3_RENAME_FILE_FAILED);
                        break;
                    case 7:
                        j.k(j.this).x(TaskError.MP3_CONVERT_WEBM_FAILED, this.b);
                        break;
                    case 8:
                        if (!TextUtils.isEmpty(this.b)) {
                            try {
                                j.k(j.this).h0(Integer.parseInt(this.b));
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
            public final int a;
            public final String b;

            public b(int i, String str) {
                this.a = i;
                this.b = str;
            }

            @Override
            public void run() {
                j.k(j.this).n0(this.a, this.b, true);
            }
        }

        public a(File file) {
            this.a = file;
        }

        @Override
        public void a(int i) {
            j.j(j.this).post(new b(i, j.i(j.this).getResources().getString(R.string.converting)));
        }

        @Override
        public TaskInfo b() {
            return j.l(j.this);
        }

        @Override
        public void c(FfmpegTaskScheduler.Status status, String str) {
            j.j(j.this).post(new RunnableC0477a(status, str));
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

    public j(Context context, g gVar, TaskInfo taskInfo) {
        this.a = context;
        this.b = gVar;
        this.c = taskInfo;
    }

    public static void h(j jVar) {
        jVar.p();
    }

    public static Context i(j jVar) {
        return jVar.a;
    }

    public static Handler j(j jVar) {
        return jVar.h;
    }

    public static g k(j jVar) {
        return jVar.b;
    }

    public static TaskInfo l(j jVar) {
        return jVar.c;
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

    private File o() {
        return new File(n(), "result.tmp");
    }

    private void p() {
        yj2.q(n());
    }

    @Override
    public void a() {
        m();
        File fileO = o();
        this.g = FfmpegTaskScheduler.y().q(c(0).getPath(), fileO.getPath(), YoutubeCodec.getMp3Bitrate(this.e.getAlias(), 128) * 1000, new a(fileO));
    }

    @Override
    public void b() {
        y48.l(new rf9(this));
    }

    @Override
    public File c(int i) {
        return new File(n(), "audio.tmp");
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
        if (YoutubeCodec.isWebM2Mp3Tag(format.getTag())) {
            this.d = videoInfo;
            this.e = format;
            wd9.h(n());
            FfmpegTaskScheduler.y().E();
            return;
        }
        throw new TaskException(TaskError.UNKNOWN_FORMAT, "YoutubeWebM2Mp3Task: " + format.getTag());
    }

    @Override
    public void onDestroy() {
        m();
    }
}
