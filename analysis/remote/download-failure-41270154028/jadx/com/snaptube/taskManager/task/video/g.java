package com.snaptube.taskManager.task.video;

import android.content.ContentValues;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.dayuwuxian.em.api.proto.PluginInfo;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.phoenix.download.DownloadInfo;
import com.phoenix.download.DownloadRequest;
import com.snaptube.ads.mraid.SnapAdConstants;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.plugin.PluginId;
import com.snaptube.plugin.extension.chooseformat.subtitles.SubtitleManager;
import com.snaptube.premium.LoginState;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.extractor.ExtractorDiskCache;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.lyric.LyricManager;
import com.snaptube.premium.lyric.SongEntity;
import com.snaptube.premium.vault.LockManager;
import com.snaptube.premium.youtube.YtbLoginStatusHelper;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.taskManager.task.TaskException;
import com.snaptube.taskManager.task.TaskTrace;
import com.snaptube.util.ProductionEnv;
import com.snaptube.video.videoextractor.impl.facebook.FacebookCodec;
import com.snaptube.video.videoextractor.impl.tiktok.TikTokCodec;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import java.io.File;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.inject.Inject;
import net.pubnative.library.request.PubnativeRequest;
import o.a18;
import o.a58;
import o.ah3;
import o.bf2;
import o.bs8;
import o.c16;
import o.c18;
import o.ca8;
import o.d58;
import o.du1;
import o.dv8;
import o.eq8;
import o.fc1;
import o.fk3;
import o.fq8;
import o.fv7;
import o.g58;
import o.gq8;
import o.hq8;
import o.if9;
import o.ig4;
import o.iq8;
import o.ix6;
import o.jq8;
import o.jy2;
import o.kq8;
import o.lg4;
import o.lq8;
import o.mg8;
import o.mq8;
import o.nq8;
import o.oq8;
import o.pq8;
import o.qq8;
import o.rq8;
import o.sq8;
import o.tq8;
import o.tu7;
import o.uq8;
import o.vq8;
import o.wd9;
import o.wu7;
import o.xw2;
import o.y48;
import o.yj2;
import o.z08;
import o.zc2;

public class g extends du1 {
    public VideoInfo n;

    public Format f482o;
    public d p;
    public wu7 q;
    public wu7 r;
    public com.snaptube.taskManager.task.video.a s;

    @Inject
    dv8 t;
    public rx.c u;
    public boolean v;

    public class a extends tu7 {
        public a() {
        }

        public void c(Format format) {
        }

        @Override
        public void onCompleted() {
            ProductionEnv.d("VideoDownloadTask", "download wait end ");
            if (g.g1(g.this) == null || g.f1(g.this) == null) {
                g.h1(g.this, null);
                return;
            }
            g.i1(g.this);
            g.e1(g.this).f0();
            g.l1(g.this);
            g.j1(g.this);
        }

        @Override
        public void onError(Throwable th) {
            if (g.g1(g.this) != null && g.f1(g.this) == null && VideoInfo.ExtractFrom.CACHE == g.g1(g.this).getExtractFrom()) {
                g.k1(g.this, true);
            } else if (th instanceof TimeoutException) {
                g.h1(g.this, new TaskException(TaskError.EXTRACT_VIDEO_INFO_TIME_OUT));
            } else {
                g.h1(g.this, th);
            }
        }

        @Override
        public void onNext(Object obj) {
            c((Format) obj);
        }
    }

    public class b implements xw2 {
        public b() {
        }

        public rx.c a(VideoInfo videoInfo) {
            return videoInfo.getVideoType() == 2 ? rx.c.D(new RuntimeException("STATUS_LIVE_UNAVAILABLE")) : rx.c.Q(videoInfo);
        }

        @Override
        public Object call(Object obj) {
            return a((VideoInfo) obj);
        }
    }

    public class c implements Runnable {
        public final File a;
        public final File b;
        public final String c;
        public final TaskError d;

        public class a implements du1.g {

            public class RunnableC0476a implements Runnable {
                public final String a;

                public RunnableC0476a(String str) {
                    this.a = str;
                }

                @Override
                public void run() {
                    g.this.p1(this.a, true);
                }
            }

            public a() {
            }

            @Override
            public void onSuccess(String str) {
                y48.n(new RunnableC0476a(str));
            }
        }

        public c(File file, File file2, String str, TaskError taskError) {
            this.a = file;
            this.b = file2;
            this.c = str;
            this.d = taskError;
        }

        @Override
        public void run() {
            g.this.D0(this.a, this.b, this.c, this.d, new a());
        }
    }

    public interface d {
        void a();

        void b();

        File c(int i);

        DownloadRequest d(int i);

        void e();

        int f();

        void g(VideoInfo videoInfo, Format format);

        void onDestroy();
    }

    public interface e {
        void b(g gVar);
    }

    public g(Context context, TaskInfo taskInfo) {
        super(context, taskInfo);
        this.u = null;
        this.v = false;
        ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).b(this);
    }

    public static mg8 G1() {
        return null;
    }

    public static Format K1(Format format, Throwable th) {
        return format;
    }

    public static void N0(g gVar, boolean z, String str) {
        gVar.I1(z, str);
    }

    public static Format O0(g gVar, VideoInfo videoInfo) {
        return gVar.R1(videoInfo);
    }

    public static void P0(SongEntity songEntity) {
        V1(songEntity);
    }

    public static void Q0(g gVar, Throwable th, Throwable th2) {
        gVar.M1(th, th2);
    }

    public static rx.c R0(g gVar, Format format) {
        return gVar.N1(format);
    }

    public static Format S0(g gVar, Format format, int i, VideoInfo videoInfo) {
        return gVar.J1(format, i, videoInfo);
    }

    public static VideoInfo S1(Throwable th) {
        return null;
    }

    public static mg8 T0(g gVar, String str, boolean z, Boolean bool, Throwable th) {
        return gVar.H1(str, z, bool, th);
    }

    public static rx.c U0(g gVar, Throwable th) {
        return gVar.P1(th);
    }

    public static rx.c U1(Format format) {
        long availableAt = format.getAvailableAt() - SystemClock.elapsedRealtime();
        rx.c cVarQ = rx.c.Q(format);
        ProductionEnv.d("VideoDownloadTask", "download wait start " + availableAt);
        return availableAt <= 0 ? cVarQ : cVarQ.q(availableAt, TimeUnit.MILLISECONDS);
    }

    public static VideoInfo V0(Throwable th) {
        return S1(th);
    }

    public static void V1(SongEntity songEntity) {
    }

    public static mg8 W0() {
        return G1();
    }

    public static void W1(Throwable th) {
        ProductionEnv.errorLog("download lyric fail", th);
    }

    public static rx.c X0(Format format) {
        return U1(format);
    }

    public static void X1(String str, String str2) {
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        reportPropertyBuilder.setEventName("Task").setAction("download_format").setProperty("format_tag", jy2.l(str)).setProperty("download_tag", jy2.l(str2));
        reportPropertyBuilder.reportEvent();
    }

    public static void Y0(Throwable th) {
        W1(th);
    }

    public static void Z0(g gVar, Format format) {
        gVar.T1(format);
    }

    public static void a1(g gVar, Format format) {
        gVar.O1(format);
    }

    public static void b1(g gVar, VideoInfo videoInfo) {
        gVar.Q1(videoInfo);
    }

    public static void c1(g gVar, Throwable th, RxBus.d dVar) {
        gVar.L1(th, dVar);
    }

    public static Format d1(Format format, Throwable th) {
        return K1(format, th);
    }

    public static com.snaptube.taskManager.task.video.a e1(g gVar) {
        return gVar.s;
    }

    public static Format f1(g gVar) {
        return gVar.f482o;
    }

    public static Format f2(VideoInfo videoInfo, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            for (Format format : videoInfo.getFormats()) {
                if (TextUtils.equals(format.getTag(), str2)) {
                    return format;
                }
            }
        }
        Format closestFormat = videoInfo.getClosestFormat(str);
        if (closestFormat == null) {
            return null;
        }
        X1(str2, closestFormat.getTag());
        return closestFormat;
    }

    public static VideoInfo g1(g gVar) {
        return gVar.n;
    }

    public static boolean g2(TaskInfo taskInfo) {
        String strC = yj2.C(taskInfo.i());
        TaskInfo.TaskType taskType = taskInfo.b;
        return taskType == TaskInfo.TaskType.TASK_M4A || taskType == TaskInfo.TaskType.TASK_MP3 || MediaUtil.h(strC);
    }

    public static void h1(g gVar, Throwable th) {
        gVar.C1(th);
    }

    public static void i1(g gVar) {
        gVar.E1();
    }

    public static void j1(g gVar) {
        gVar.a2();
    }

    public static void k1(g gVar, boolean z) {
        gVar.h2(z);
    }

    public static void l1(g gVar) {
        gVar.l2();
    }

    public static DownloadRequest r1(VideoInfo videoInfo, Format format, boolean z) {
        return s1(videoInfo, format, z, false);
    }

    public static DownloadRequest s1(VideoInfo videoInfo, Format format, boolean z, boolean z2) {
        if (videoInfo == null) {
            return null;
        }
        return DownloadRequest.a().B(videoInfo.getTitle()).D(format.getDownloadUrl()).y(videoInfo.getThumbnailUrl()).w(wd9.S(format.getExt())).z(wd9.s(videoInfo, format, z, z2)).C(format.getSize() > 0 ? format.getSize() : -1L).v(IntentUtil.DURATION, String.valueOf(videoInfo.getDurationInSecond())).v(Format.Fields.THUMBNAIL, videoInfo.getThumbnailUrl()).A(videoInfo.getSource()).x(format.getHeaders()).v(SnaptubeAdModel.KEY_FORMAT, format.getTag()).v("video_playback_config", videoInfo.getYtServerAbrStream() != null ? videoInfo.getYtServerAbrStream().a : null).v(Format.Fields.LAST_MODIFIED, format.getLastModified()).v("itag", String.valueOf(format.getOriginTag())).u();
    }

    public static String z1(TaskInfo taskInfo) {
        return wd9.i(wd9.O("." + taskInfo.a + "-" + taskInfo.w), org.mozilla.javascript.Context.VERSION_1_7);
    }

    @Override
    public File A0(int i) {
        d dVar = this.p;
        return dVar != null ? dVar.c(i) : new File(this.d.i());
    }

    public final String A1() {
        LoginState loginStateB = YtbLoginStatusHelper.a.b();
        if (loginStateB == LoginState.LOGIN_INVALID) {
            return this.b.getString(R.string.sign_in_expired_tip);
        }
        return loginStateB == LoginState.NOT_LOGIN ? this.b.getString(R.string.sign_in_required_tip) : this.b.getString(R.string.the_video_may_be_unplayable);
    }

    @Override
    public int B0() {
        d dVar = this.p;
        if (dVar != null) {
            return dVar.f();
        }
        return 1;
    }

    public final rx.c B1(boolean z) {
        com.snaptube.premium.extractor.a.C0416a c0416aC = new com.snaptube.premium.extractor.a.C0416a(this.d.p(), NativeAdPresenter.DOWNLOAD).c(z);
        c0416aC.e("download_format_tag", this.d.p);
        return PhoenixApplication.O().x(c0416aC.a(), 1).H(new b());
    }

    @Override
    public void C0() {
        E0();
        if (this.p != null) {
            this.h = SystemClock.uptimeMillis();
            TaskInfoDBUtils.i1(this.d);
            this.p.a();
        }
    }

    public final void C1(Throwable th) {
        PluginInfo pluginInfoV = PhoenixApplication.I().v(PluginId.SITE_EXTRACTOR);
        if (pluginInfoV == null) {
            b2(th);
            return;
        }
        TaskInfo taskInfoR0 = TaskInfoDBUtils.R0(c16.h(pluginInfoV.name, pluginInfoV.version));
        if (taskInfoR0 == null || !TaskInfoDBUtils.U(taskInfoR0)) {
            b2(th);
        } else {
            D1(th);
        }
    }

    public final void D1(Throwable th) {
        k2();
        rx.c cVarK0 = RxBus.d().c(1167).K0(10L, TimeUnit.SECONDS);
        rx.d dVar = a58.c;
        this.q = cVarK0.z0(dVar).Y(dVar).u0(new gq8(this, th), new hq8(this, th));
    }

    public final synchronized void E1() {
        if (this.s == null && this.n != null) {
            this.s = new com.snaptube.taskManager.task.video.a(this.d, this.n, this.f482o);
        }
    }

    public final boolean F1(Throwable th) {
        return zc2.c(th) || ((th instanceof TaskException) && ((TaskException) th).getError() == TaskError.EXTRACT_VIDEO_INFO_TIME_OUT);
    }

    public final mg8 H1(String str, boolean z, Boolean bool, Throwable th) {
        String str2;
        if (bool.booleanValue()) {
            str2 = str + "|success:true";
        } else {
            str2 = str + "|error:" + th;
        }
        if (!z) {
            return null;
        }
        M0(str2);
        return null;
    }

    public final void I1(boolean z, String str) {
        com.snaptube.taskManager.task.video.a aVar = this.s;
        if (aVar != null || !z) {
            aVar.a0(new iq8(), new jq8(this, str, z));
            return;
        }
        M0(str + "|error:audioMetaInfoHelper = null");
    }

    public final Format J1(Format format, int i, VideoInfo videoInfo) {
        if (!VideoInfo.isVideoInfoValid(videoInfo)) {
            return format;
        }
        TaskInfo taskInfo = this.d;
        Format formatF2 = f2(videoInfo, taskInfo.p, taskInfo.q);
        return (formatF2 == null || formatF2.getOriginTag() != i) ? format : formatF2;
    }

    public final void L1(Throwable th, RxBus.d dVar) {
        k2();
        int i = dVar.b;
        if (i == 1) {
            e2();
            h2(true);
        } else {
            if (i != 2) {
                return;
            }
            b2(th);
        }
    }

    public final void M1(Throwable th, Throwable th2) {
        if (!(th2 instanceof TimeoutException)) {
            ProductionEnv.logException("RxjavaExecuteException", th2);
        } else {
            ProductionEnv.d(PluginId.SITE_EXTRACTOR.getName(), "time out");
            b2(th);
        }
    }

    public final rx.c N1(Format format) {
        Set setJ1 = Config.j1();
        if (setJ1 == null || setJ1.isEmpty()) {
            return rx.c.Q(format);
        }
        boolean z = !setJ1.contains(this.d.p);
        int originTag = YoutubeCodec.getOriginTag(this.d.p);
        return (z || originTag <= 0 || originTag == format.getOriginTag()) ? rx.c.Q(format) : u1(this.n, format, originTag);
    }

    @Override
    public void O(ah3 ah3Var) {
        super.O(ah3Var);
        String str = "extractorType:" + y1() + "; extractFrom:" + x1() + "; ";
        if (TextUtils.equals(ah3Var.getAction(), "fail")) {
            ah3Var.setProperty("error", str + ((String) ah3Var.getPropertyMap().get("error")));
        } else {
            ah3Var.setProperty("error", str);
        }
        VideoInfo videoInfo = this.n;
        if (videoInfo != null) {
            ah3Var.setProperty("creator_id", videoInfo.getArtist());
        }
        o1(ah3Var);
        m1(ah3Var);
        n1(ah3Var);
    }

    public final void O1(Format format) {
        if (format == null) {
            TaskError taskError = TaskError.FORMAT_NOT_FOUND;
            VideoInfo videoInfo = this.n;
            TaskInfo taskInfo = this.d;
            throw new TaskException(taskError, ca8.g(videoInfo, taskInfo.p, taskInfo.q));
        }
        ProductionEnv.d(PubnativeRequest.Parameters.TEST, "finalFormat = " + format.getTag());
        this.f482o = format;
        this.d.W = o2(this.n);
        p2();
        w1();
        if (format.isAudio()) {
            fk3.l(this.b, wd9.F(this.n));
        }
        if (FacebookCodec.d(this.d.q)) {
            TaskInfo taskInfo2 = this.d;
            taskInfo2.R(FacebookCodec.a(taskInfo2.i()));
            TaskInfo taskInfo3 = this.d;
            if (taskInfo3.G && !TextUtils.isEmpty(taskInfo3.M)) {
                TaskInfo taskInfo4 = this.d;
                taskInfo4.M = FacebookCodec.a(taskInfo4.M);
            }
            TaskInfo taskInfo5 = this.d;
            TaskInfoDBUtils.a1(taskInfo5.a, taskInfo5.p, taskInfo5.q, taskInfo5.i(), this.d.M);
        } else if (!TextUtils.equals(this.d.q, format.getTag())) {
            this.d.q = format.getTag();
            YoutubeCodec youtubeCodecQueryCodec = YoutubeCodec.queryCodec(this.d.p);
            YoutubeCodec youtubeCodecQueryCodec2 = YoutubeCodec.queryCodec(format.getTag());
            if (youtubeCodecQueryCodec == null || youtubeCodecQueryCodec2 == null || youtubeCodecQueryCodec.getOriginTag() == youtubeCodecQueryCodec2.getOriginTag()) {
                TaskInfo taskInfo6 = this.d;
                TaskInfoDBUtils.Y0(taskInfo6.a, taskInfo6.q);
            } else {
                String strB = wd9.B(new Format.Builder(youtubeCodecQueryCodec).a());
                String strI = this.d.i();
                if (strI.contains(strB)) {
                    this.d.R(strI.replace(strB, wd9.B(format)));
                    this.d.p = format.getTag();
                }
                TaskInfo taskInfo7 = this.d;
                TaskInfoDBUtils.a1(taskInfo7.a, taskInfo7.p, taskInfo7.q, taskInfo7.i(), null);
            }
        }
        this.d.N(Format.Fields.ORIGIN_TAG, format.getOriginTag() + "");
    }

    @Override
    public void P() {
        j2();
        super.P();
    }

    public final rx.c P1(Throwable th) {
        if (zc2.g(th.getMessage())) {
            return rx.c.D(th);
        }
        if (Config.h3() && !TextUtils.isEmpty(this.d.p())) {
            ExtractResult extractResultA = ExtractorDiskCache.a.a(this.d.p(), false);
            if (ExtractResult.m(extractResultA)) {
                extractResultA.j().setExtractFrom(VideoInfo.ExtractFrom.DISK_CACHE);
                return rx.c.Q(extractResultA.j());
            }
        }
        if (!Config.f4()) {
            return rx.c.D(th);
        }
        if (if9.D(this.d.p())) {
            YoutubeCodec youtubeCodecQueryCodec = YoutubeCodec.queryCodec(!TextUtils.isEmpty(this.d.q) ? this.d.q : this.d.p);
            if (youtubeCodecQueryCodec != null && youtubeCodecQueryCodec.isNeedNativeMux()) {
                return rx.c.D(th);
            }
        }
        VideoInfo videoInfoA = z08.a(this.d);
        return (videoInfoA == null || !videoInfoA.isValid()) ? rx.c.D(th) : rx.c.Q(videoInfoA);
    }

    @Override
    public void Q() {
        super.Q();
        d dVar = this.p;
        if (dVar != null) {
            dVar.e();
        }
    }

    public final void Q1(VideoInfo videoInfo) {
        if (videoInfo == null) {
            throw new TaskException(TaskError.EXTRACT_VIDEO_INFO_FAILED);
        }
        if (TextUtils.isEmpty(videoInfo.getTitle())) {
            videoInfo.setTitle(this.d.k);
        }
        if (TextUtils.isEmpty(videoInfo.getThumbnailUrl())) {
            videoInfo.setThumbnailUrl(this.d.l);
        }
        this.n = videoInfo;
    }

    @Override
    public void R() {
        super.R();
        d dVar = this.p;
        if (dVar != null) {
            dVar.b();
        }
        if (ig4.k(this.d.i())) {
            ig4.d(this.d.i());
        }
    }

    public final Format R1(VideoInfo videoInfo) {
        if (this.d.r != DownloadInfo.ContentType.AUDIO || videoInfo.getDurationInSecond() <= 900 || YoutubeCodec.isM4aTag(this.d.p) || !GlobalConfig.isNeedFilterM4AInLargeAudio()) {
            TaskInfo taskInfo = this.d;
            return f2(videoInfo, taskInfo.p, taskInfo.q);
        }
        String str = this.d.p;
        YoutubeCodec youtubeCodec = YoutubeCodec.M4A_128K;
        if (!TextUtils.equals(str, youtubeCodec.getTag())) {
            this.d.W = true;
        }
        return f2(videoInfo, this.d.p, youtubeCodec.getTag());
    }

    @Override
    public void T() {
        j2();
        super.T();
        d dVar = this.p;
        if (dVar != null) {
            dVar.onDestroy();
        }
        k2();
    }

    public final void T1(Format format) {
        d dVarQ1 = q1();
        this.p = dVarQ1;
        dVarQ1.g(this.n, format);
    }

    @Override
    public void U() {
        rx.c cVar = this.u;
        if (cVar != null) {
            VideoInfo videoInfo = (VideoInfo) cVar.g0(new eq8()).O0().b();
            this.u = null;
            if (videoInfo != null) {
                String strI = this.d.i();
                this.d.W = o2(videoInfo);
                p2();
                AdditionExtractManager.a.f(this, strI, this.d);
            }
        }
        d2();
    }

    @Override
    public void W(DownloadInfo downloadInfo) {
        VideoInfo videoInfo;
        super.W(downloadInfo);
        if (downloadInfo.getStatus() == DownloadInfo.Status.SUCCESS) {
            if (YoutubeCodec.isWebM2Mp3Tag(this.d.q) || YoutubeCodec.isYoutubeWebMTag(this.d.q)) {
                c0();
            }
        } else if (downloadInfo.getStatus() == DownloadInfo.Status.DOWNLOADING && downloadInfo.d() != null && !TextUtils.isEmpty(downloadInfo.d().N) && (videoInfo = this.n) != null && !TextUtils.equals(videoInfo.getExtractorType(), downloadInfo.d().N)) {
            String str = downloadInfo.d().N;
            ProductionEnv.d("VideoDownloadTask", "update extractorType: " + this.n.getExtractorType() + " => " + str);
            this.d.X = str;
            this.n.setExtractorType(str);
        }
        if (downloadInfo.d() == null || downloadInfo.d().d() != 3001) {
            return;
        }
        this.d.p0 = TaskInfo.FailReason.DOWNLOAD_TIMEOUT;
        g0();
    }

    @Override
    public void X() {
        j2();
        super.X();
    }

    @Override
    public boolean Y() {
        super.Y();
        h2(true);
        return true;
    }

    public final boolean Y1() {
        VideoInfo videoInfo;
        if (this.f482o == null || (videoInfo = this.n) == null || videoInfo.getFormats() == null || !this.t.C(this.f482o)) {
            return false;
        }
        for (Format format : this.t.E(this.f482o, this.n.getFormats())) {
            if (format == null) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void Z() {
        this.v = this.d.g0 == 0;
        super.Z();
        this.d.Q++;
        h2(false);
        i2();
    }

    public final rx.c Z1(boolean z) {
        return B1(z).e0(new sq8(this)).S().y(new tq8(this)).U(new uq8(this)).H(new vq8(this)).y(new fq8(this));
    }

    public final void a2() {
        TaskInfo taskInfo = this.d;
        taskInfo.f = 0L;
        taskInfo.R = this.n.getExtractFrom() != null ? this.n.getExtractFrom().name() : "";
        TaskTrace.begin(this.f482o.getDownloadUrl());
        TaskTrace.log(this.f482o.getDownloadUrl(), "source url:", this.d.p(), "\ndownload url:", this.f482o.getDownloadUrl());
        TaskTrace.mapUrl(String.valueOf(this.d.a), this.f482o.getDownloadUrl());
        if ((this.n.isTitleOrThumbnailInValid() || zc2.p(this.n.getTitle())) && GlobalConfig.enabledSecondaryExtractDetail()) {
            rx.c cVarZ0 = AdditionExtractManager.a.d(this.d).K0(5L, TimeUnit.SECONDS).e0(new mq8()).z0(ix6.d());
            this.u = cVarZ0;
            ObservableKt.h(cVarZ0);
        }
        t1();
        F0();
    }

    public final void b2(Throwable th) {
        l2();
        m2(th);
        if (th == null) {
            x(TaskError.EXTRACT_VIDEO_INFO_FAILED, null);
            return;
        }
        if (th instanceof TaskException) {
            y(((TaskException) th).getError(), th.getMessage(), d58.c(th));
            return;
        }
        y(TaskError.EXTRACT_VIDEO_INFO_FAILED, "unknown:" + th.getMessage(), d58.c(th));
    }

    public void c2(File file, File file2, String str, TaskError taskError) {
        y48.l(new c(file, file2, str, taskError));
    }

    public final void d2() {
        String strE = a18.e(this.d.k);
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        TaskInfoDBUtils.n1(this.d.a, strE);
    }

    public final void e2() {
        this.d.N = 0L;
    }

    public final void h2(boolean z) {
        j2();
        this.r = Z1(z).y(new nq8(this)).K0(Config.I(), TimeUnit.SECONDS).H(new oq8()).Y(c18.e()).x0(new a());
    }

    public final void i2() {
        if (!GlobalConfig.isLyricMetaEnable() && if9.D(this.d.p())) {
            LyricManager.T(this.d, false).z0(ix6.d()).u0(new pq8(), new qq8());
        }
    }

    public final void j2() {
        fv7.a(this.r);
    }

    public final void k2() {
        wu7 wu7Var = this.q;
        if (wu7Var == null || wu7Var.isUnsubscribed()) {
            return;
        }
        this.q.unsubscribe();
    }

    public final void l2() {
        TaskInfo taskInfo = this.d;
        long j = taskInfo.N;
        if (j > 0) {
            return;
        }
        taskInfo.N = j + (SystemClock.uptimeMillis() - this.g);
    }

    public final void m1(ah3 ah3Var) {
        if (this.d == null || !TextUtils.equals(ah3Var.getAction(), "ok")) {
            return;
        }
        ah3Var.setProperty("meta_details", MetaInfoHelper.Q(this.d));
    }

    public final void m2(Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        String string = this.b.getString(R.string.the_video_may_be_unplayable);
        if (zc2.i(message)) {
            TaskInfo taskInfo = this.d;
            taskInfo.p0 = TaskInfo.FailReason.EXTRACT_LOGIN_REQUIRED;
            taskInfo.q0 = g58.h(th, string);
        } else if (zc2.m(message)) {
            TaskInfo taskInfo2 = this.d;
            taskInfo2.p0 = TaskInfo.FailReason.EXTRACT_STATUS_ERROR;
            taskInfo2.q0 = g58.h(th, string);
        } else if (zc2.o(message)) {
            TaskInfo taskInfo3 = this.d;
            taskInfo3.p0 = TaskInfo.FailReason.EXTRACT_UNPLAYABLE;
            taskInfo3.q0 = g58.h(th, string);
        } else if (zc2.n(message)) {
            TaskInfo taskInfo4 = this.d;
            taskInfo4.p0 = TaskInfo.FailReason.EXTRACT_LIVE_STREAM_OFFLINE;
            taskInfo4.q0 = g58.h(th, string);
        } else if (zc2.g(message)) {
            TaskInfo taskInfo5 = this.d;
            taskInfo5.p0 = TaskInfo.FailReason.EXTRACT_LIVE_UNAVAILABLE;
            taskInfo5.q0 = this.b.getString(R.string.live_download_fail_reason);
        } else if (zc2.q(th)) {
            TaskInfo taskInfo6 = this.d;
            taskInfo6.p0 = TaskInfo.FailReason.EXTRACT_HTTP_UNAUTHORIZED;
            taskInfo6.q0 = A1();
        } else if (F1(th)) {
            this.d.p0 = TaskInfo.FailReason.EXTRACT_TIMEOUT;
        } else if (zc2.k(d58.b(th))) {
            TaskInfo taskInfo7 = this.d;
            taskInfo7.p0 = TaskInfo.FailReason.EXTRACT_MEDIA_UNAVAILABLE;
            taskInfo7.q0 = this.b.getString(R.string.the_content_might_be_unavailable);
        } else {
            this.d.p0 = TaskInfo.FailReason.UNDEFINED;
        }
        g0();
    }

    public final void n1(ah3 ah3Var) {
        Format format;
        if (this.d == null || (format = this.f482o) == null || !format.isVideo()) {
            return;
        }
        ah3Var.setProperty(CampaignEx.JSON_KEY_VIDEO_RESOLUTION, this.f482o.getWidth() + SnapAdConstants.KEY_X + this.f482o.getHeight());
    }

    public synchronized void n2() {
        if (this.n != null) {
            this.s = new com.snaptube.taskManager.task.video.a(this.d, this.n, this.f482o);
        }
    }

    public final void o1(ah3 ah3Var) {
        Pair pairH;
        Format[] formatArrE;
        Format format;
        VideoInfo videoInfo = this.n;
        if (videoInfo == null || this.f482o == null || !if9.D(videoInfo.getSource())) {
            return;
        }
        if (this.f482o.isAudio()) {
            pairH = if9.H(this.f482o.getDownloadUrl());
        } else {
            pairH = (!this.t.C(this.f482o) || (formatArrE = this.t.E(this.f482o, this.n.getFormats())) == null || formatArrE.length <= 1 || (format = formatArrE[1]) == null) ? null : if9.H(format.getDownloadUrl());
        }
        if (pairH == null) {
            return;
        }
        String str = (String) pairH.first;
        String str2 = (String) pairH.second;
        if (!TextUtils.isEmpty(str)) {
            ah3Var.setProperty("xtags_acont", str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        ah3Var.setProperty("xtags_lang", str2);
    }

    public final boolean o2(VideoInfo videoInfo) {
        boolean z = false;
        if (this.f482o == null) {
            return false;
        }
        if (!TextUtils.isEmpty(videoInfo.getTitle()) && zc2.p(this.d.k) && !zc2.p(videoInfo.getTitle())) {
            String strB = wd9.B(this.f482o);
            if (videoInfo.getTitle().contains(strB)) {
                this.d.k = videoInfo.getTitle();
            } else {
                this.d.k = videoInfo.getTitle() + strB;
            }
            z = true;
        }
        if (!TextUtils.isEmpty(this.d.l)) {
            return z;
        }
        this.d.l = videoInfo.getThumbnailUrl();
        return true;
    }

    public void p1(String str, boolean z) {
        if (!g2(this.d) && z) {
            M0(str);
        } else {
            E1();
            y48.l(new rq8(this, z, str));
        }
    }

    public final void p2() {
        TaskInfo taskInfo = this.d;
        if (taskInfo.W) {
            String strV = taskInfo.k;
            if (wd9.J(strV) || this.d.f0) {
                strV = wd9.v(this.n.getTitle(), this.f482o);
            }
            TaskInfo taskInfoA = new TaskInfo.b().c(this.d.e()).o(this.n.getSource()).i(this.f482o).t(strV).s(TaskInfo.j(this.f482o, this.n)).m(this.n.getDurationInSecond()).n(this.n.getMetaKey()).u(this.f482o.getSize()).g(this.n.getExtractorType()).a();
            if (TextUtils.isEmpty(strV)) {
                strV = wd9.C();
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", strV);
            contentValues.put("thumbnailUrl", taskInfoA.l);
            contentValues.put("media_duration", Long.valueOf(taskInfoA.s));
            contentValues.put("meta_key", taskInfoA.y);
            contentValues.put("referer", taskInfoA.p());
            contentValues.put("requestUrl", taskInfoA.f479o);
            contentValues.put("formatTag", taskInfoA.p);
            contentValues.put("finalFormatTag", taskInfoA.q);
            contentValues.put("contentType", taskInfoA.r.name());
            contentValues.put("content_type2", taskInfoA.B.name());
            contentValues.put("content_type2", taskInfoA.B.name());
            contentValues.put("visible", Integer.valueOf(this.d.x ? 1 : -1));
            long j = taskInfoA.d;
            if (j > 0) {
                contentValues.put(DownloadModel.TOTAL_BYTES, Long.valueOf(j));
            }
            try {
                TaskInfo taskInfo2 = this.d;
                taskInfo2.W = false;
                taskInfo2.O(this.n.getReportData());
                contentValues.put("extra", this.d.h());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            synchronized (g.class) {
                try {
                    String strV1 = v1(strV);
                    if (TextUtils.isEmpty(strV1)) {
                        throw new TaskException(TaskError.FILE_PATH_EMPTY);
                    }
                    if (this.d.G) {
                        taskInfoA.M = strV1;
                        taskInfoA.R(LockManager.a.C(strV1));
                    } else {
                        taskInfoA.R(strV1);
                    }
                    contentValues.put("filePath", taskInfoA.i());
                    TaskInfoDBUtils.e1(this.d.a, contentValues, true);
                } catch (Throwable th) {
                    throw th;
                }
            }
            TaskInfo taskInfoQ0 = TaskInfoDBUtils.Q0(this.d.a);
            if (taskInfoQ0 == null) {
                throw new TaskException(TaskError.TASK_DELETE);
            }
            this.d = taskInfoQ0;
        }
    }

    public final d q1() {
        String strC = yj2.C(this.d.i());
        if (YoutubeCodec.isMp3Tag(this.d.q) || bf2.j(this.d.q)) {
            return new com.snaptube.taskManager.task.video.d(this.b, this, this.d);
        }
        if (YoutubeCodec.isWebM2Mp3Tag(this.d.q)) {
            return new j(this.b, this, this.d);
        }
        if (YoutubeCodec.isYoutubeWebMTag(this.d.q)) {
            return new k(this.b, this, this.d);
        }
        if (YoutubeCodec.isYoutubeHDTag(this.d.q)) {
            return new i(this, this.d);
        }
        if (TikTokCodec.PHOTO_VIDEO.getTag().equals(this.d.q)) {
            return new TTImageAudioCombineTaskDelegate(this.b, this, this.d);
        }
        if (MediaUtil.p(this.d.q)) {
            return new bs8(this.b, this, this.d);
        }
        if (MediaUtil.g(strC)) {
            return new com.snaptube.taskManager.task.video.e(this, this.d);
        }
        if (MediaUtil.f(strC) || MediaUtil.o(this.d.q)) {
            return new lg4(this, this.d);
        }
        return Y1() ? new f(this.b, this, this.d, this.t) : new NormalVideoTaskDelegate(this, new File(this.d.i()));
    }

    public final void t1() {
        if (this.v) {
            SubtitleManager.C(this.n, this.f482o, this.d);
            SubtitleManager.x(this.n, this.f482o, this.d, this.s);
        }
    }

    public final rx.c u1(VideoInfo videoInfo, Format format, int i) {
        com.snaptube.premium.extractor.a.C0416a c0416aC = new com.snaptube.premium.extractor.a.C0416a(this.d.p(), "partial_info").f(true).c(true);
        c0416aC.e("video_info", videoInfo.toJson());
        c0416aC.e("field_format_tag", this.d.p);
        c0416aC.e("download_format_tag", this.d.p);
        return PhoenixApplication.O().x(c0416aC.a(), 0).U(new kq8(this, format, i)).K0(20L, TimeUnit.SECONDS).g0(new lq8(format));
    }

    public final String v1(String str) {
        String strV = wd9.v(str, this.f482o);
        String strM = yj2.M(this.d.i());
        for (int i = 0; i < 9999; i++) {
            File fileU = wd9.U(strM, strV, i > 0 ? "_" + i : "", this.f482o);
            if (fileU.getPath().equals(this.d.i())) {
                return this.d.i();
            }
            if (!fileU.exists() && TaskInfoDBUtils.y0(fileU.getPath()) == null) {
                return fileU.getPath();
            }
        }
        return null;
    }

    public final void w1() {
        if (!TextUtils.isEmpty(this.d.l) || TextUtils.isEmpty(this.n.getThumbnailUrl())) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("thumbnailUrl", this.n.getThumbnailUrl());
        contentValues.put("visible", Integer.valueOf(this.d.x ? 1 : -1));
        TaskInfoDBUtils.e1(this.d.a, contentValues, true);
    }

    public final String x1() {
        VideoInfo videoInfo = this.n;
        return videoInfo != null ? videoInfo.getExtractFrom().name() : this.d.R;
    }

    public final String y1() {
        VideoInfo videoInfo = this.n;
        return (videoInfo == null || TextUtils.isEmpty(videoInfo.getExtractorType())) ? this.d.X : this.n.getExtractorType();
    }

    @Override
    public DownloadRequest z0(int i) {
        d dVar = this.p;
        return dVar != null ? dVar.d(i) : r1(this.n, this.f482o, this.d.r0);
    }
}
