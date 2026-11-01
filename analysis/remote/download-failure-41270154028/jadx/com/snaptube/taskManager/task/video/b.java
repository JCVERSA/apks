package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.premium.R;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import java.util.concurrent.Callable;
import o.b88;
import o.c18;
import o.cu1;
import o.du1;
import o.ix6;
import o.l3;
import o.sh;
import o.wd9;
import o.y48;
import o.yb2;
import o.yj2;
import o.yn4;
import o.zp6;

public class b implements g.d {
    public final Context a;
    public final du1 b;
    public final TaskInfo c;
    public File d;
    public long e = -1;
    public Handler f = new Handler(c18.d());

    public class a implements FfmpegTaskScheduler.f {
        public final File a;

        public class RunnableC0472a implements Runnable {
            public final FfmpegTaskScheduler.Status a;
            public final String b;

            public class C0473a implements du1.g {
                public C0473a() {
                }

                @Override
                public void onSuccess(String str) {
                    b.m(b.this, str);
                }
            }

            public RunnableC0472a(FfmpegTaskScheduler.Status status, String str) {
                this.a = status;
                this.b = str;
            }

            @Override
            public void run() {
                switch (e.a[this.a.ordinal()]) {
                    case 1:
                        b.k(b.this).n0(0, b.i(b.this).getResources().getString(R.string.converting), true);
                        break;
                    case 2:
                        b.k(b.this).m0(b.i(b.this).getResources().getString(R.string.downloading_codec_plugin), true);
                        break;
                    case 3:
                        b.k(b.this).m0(b.i(b.this).getResources().getString(R.string.converting), true);
                        break;
                    case 4:
                        TaskInfoDBUtils.v(b.l(b.this).a, TaskInfo.TaskStatus.PAUSED);
                        break;
                    case 5:
                        b.k(b.this).B();
                        b88.m(b.i(b.this), b.i(b.this).getResources().getString(R.string.convert_media_file_warning));
                        break;
                    case 6:
                        b.k(b.this).D0(a.this.a, new File(b.l(b.this).i()), "extract audio", TaskError.MP3_RENAME_FILE_FAILED, new C0473a());
                        break;
                    case 7:
                        b.k(b.this).m0(b.i(b.this).getResources().getString(R.string.failed), false);
                        b.k(b.this).x(TaskError.MP3_extract_FAILED, this.b);
                        break;
                    case 8:
                        if (!TextUtils.isEmpty(this.b)) {
                            try {
                                b.k(b.this).h0(Integer.parseInt(this.b));
                            } catch (Exception unused) {
                                return;
                            }
                            break;
                        }
                        break;
                }
            }
        }

        public class RunnableC0474b implements Runnable {
            public final int a;
            public final String b;

            public RunnableC0474b(int i, String str) {
                this.a = i;
                this.b = str;
            }

            @Override
            public void run() {
                b.k(b.this).n0(this.a, this.b, true);
            }
        }

        public a(File file) {
            this.a = file;
        }

        @Override
        public void a(int i) {
            b.j(b.this).post(new RunnableC0474b(i, b.i(b.this).getResources().getString(R.string.converting)));
        }

        @Override
        public TaskInfo b() {
            return b.l(b.this);
        }

        @Override
        public void c(FfmpegTaskScheduler.Status status, String str) {
            b.j(b.this).post(new RunnableC0472a(status, str));
        }
    }

    public class C0475b implements l3 {
        public final String a;

        public C0475b(String str) {
            this.a = str;
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
            TaskInfoDBUtils.w(b.l(b.this).a, b.l(b.this).l);
            b.k(b.this).M0(this.a);
        }

        @Override
        public void call(Object obj) {
            a((MediaMetadataCompat) obj);
        }
    }

    public class c implements l3 {
        public final String a;

        public c(String str) {
            this.a = str;
        }

        public void a(Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
            TaskInfoDBUtils.w(b.l(b.this).a, b.l(b.this).l);
            b.k(b.this).M0(this.a + "|error:" + th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class d implements Callable {
        public d() {
        }

        public MediaMetadataCompat a() {
            zp6.g("task_1");
            MediaMetadataCompat mediaMetadataCompatO = yn4.o(b.l(b.this).f479o, -1, -1);
            if (mediaMetadataCompatO == null) {
                mediaMetadataCompatO = new MediaMetadataCompat.Builder().build();
            }
            MediaMetadataCompat mediaMetadataCompat = mediaMetadataCompatO;
            if (MediaUtil.n(yj2.C(b.l(b.this).l))) {
                b.l(b.this).l = b.l(b.this).i();
            }
            MediaMetadataCompat mediaMetadataCompatO2 = wd9.o(mediaMetadataCompat, b.l(b.this).g(), b.l(b.this).l, b.l(b.this).s, b.l(b.this).f479o, b.l(b.this).p());
            yn4.y(mediaMetadataCompatO2, b.l(b.this).i());
            return mediaMetadataCompatO2;
        }

        @Override
        public Object call() {
            return a();
        }
    }

    public static class e {
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

    public b(Context context, du1 du1Var, TaskInfo taskInfo) {
        this.a = context;
        this.b = du1Var;
        this.c = taskInfo;
    }

    public static void h(b bVar) {
        bVar.s();
    }

    public static Context i(b bVar) {
        return bVar.a;
    }

    public static Handler j(b bVar) {
        return bVar.f;
    }

    public static du1 k(b bVar) {
        return bVar.b;
    }

    public static TaskInfo l(b bVar) {
        return bVar.c;
    }

    public static void m(b bVar, String str) {
        bVar.o(str);
    }

    private File q() {
        if (this.d == null) {
            this.d = new File(cu1.a(this.c.i()), g.z1(this.c));
        }
        return this.d;
    }

    @Override
    public void a() {
        n();
        File fileR = r();
        this.e = FfmpegTaskScheduler.y().r(p(), fileR.getPath(), new a(fileR));
    }

    @Override
    public void b() {
        y48.l(new yb2(this));
    }

    @Override
    public File c(int i) {
        return new File(q(), "audio.tmp");
    }

    @Override
    public DownloadRequest d(int i) {
        return null;
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
        File fileQ = q();
        if (!fileQ.exists()) {
            fileQ.mkdirs();
        }
        FfmpegTaskScheduler.y().E();
    }

    public final void n() {
        if (this.e > 0) {
            FfmpegTaskScheduler.y().n(this.e);
            this.e = -1L;
        }
    }

    public final synchronized void o(String str) {
        this.b.m0(this.a.getResources().getString(R.string.processing_mp3_meta), true);
        rx.c.M(new d()).z0(ix6.d()).Y(sh.c()).u0(new C0475b(str), new c(str));
    }

    @Override
    public void onDestroy() {
        n();
    }

    public String p() {
        return this.c.f479o;
    }

    public final File r() {
        return new File(q(), "result.tmp");
    }

    public final void s() {
        yj2.q(q());
    }
}
