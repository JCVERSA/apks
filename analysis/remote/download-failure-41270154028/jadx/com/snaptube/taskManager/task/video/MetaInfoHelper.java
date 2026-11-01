package com.snaptube.taskManager.task.video;

import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.extractor.pluginlib.youtube.subtitle.Subtitle;
import com.snaptube.plugin.extension.chooseformat.subtitles.SubtitleManager;
import com.snaptube.premium.api_service.response.Album;
import com.snaptube.premium.api_service.response.Artists;
import com.snaptube.premium.api_service.response.BatchInfoReq;
import com.snaptube.premium.api_service.response.MatchResponse;
import com.snaptube.premium.api_service.response.MediaInfo;
import com.snaptube.premium.history.DownloadHistoryHelper;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.lyric.LyricManager;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import o.a58;
import o.ag4;
import o.ah3;
import o.bg4;
import o.bx2;
import o.cu7;
import o.dx2;
import o.gs4;
import o.hs4;
import o.if9;
import o.is4;
import o.ix6;
import o.j23;
import o.js4;
import o.ks4;
import o.ls4;
import o.mg8;
import o.ms4;
import o.ns4;
import o.or3;
import o.os4;
import o.pg1;
import o.ps4;
import o.qs4;
import o.rs4;
import o.rx2;
import o.ss4;
import o.t14;
import o.tf4;
import o.ts4;
import o.us4;
import o.vs4;
import o.wd9;
import o.ws4;
import o.wu0;
import o.xu0;
import o.yj2;
import o.yj8;
import o.yk;
import o.yn4;
import o.yu0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class MetaInfoHelper {
    public static final a e = new a(null);
    public final TaskInfo a;
    public final VideoInfo b;
    public final t14 c;
    public MatchResponse d;

    @Keep
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;", "", "mediaType", "", "(Ljava/lang/String;)V", "getMediaType", "()Ljava/lang/String;", "setMediaType", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class MetaExtraInfo {

        @Nullable
        private String mediaType;

        public MetaExtraInfo() {
            this(null, 1, null);
        }

        public MetaExtraInfo(@Nullable String str) {
            this.mediaType = str;
        }

        public MetaExtraInfo(String str, int i, pg1 pg1Var) {
            this((i & 1) != 0 ? null : str);
        }

        public static MetaExtraInfo copy$default(MetaExtraInfo metaExtraInfo, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = metaExtraInfo.mediaType;
            }
            return metaExtraInfo.copy(str);
        }

        @Nullable
        public final String getMediaType() {
            return this.mediaType;
        }

        @NotNull
        public final MetaExtraInfo copy(@Nullable String mediaType) {
            return new MetaExtraInfo(mediaType);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof MetaExtraInfo) && or3.a(this.mediaType, ((MetaExtraInfo) other).mediaType);
        }

        @Nullable
        public final String getMediaType() {
            return this.mediaType;
        }

        public int hashCode() {
            String str = this.mediaType;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final void setMediaType(@Nullable String str) {
            this.mediaType = str;
        }

        @NotNull
        public String toString() {
            return "MetaExtraInfo(mediaType=" + this.mediaType + ")";
        }
    }

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public static final boolean c(MediaMetadataCompat mediaMetadataCompat, String str) {
            String string = mediaMetadataCompat.getString(str);
            return !(string == null || string.length() == 0);
        }

        public static final String d(boolean z) {
            return z ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }

        public final int a(String str, String str2) {
            if (str == null || cu7.B(str)) {
                return 0;
            }
            String strM = if9.m(str2);
            if (strM == null || cu7.B(strM)) {
                return 5;
            }
            bg4 bg4Var = bg4.a;
            or3.c(strM);
            ag4 ag4VarA = bg4Var.a(strM);
            if (ag4VarA != null) {
                return ag4VarA.b();
            }
            return 5;
        }

        public final String b(TaskInfo taskInfo) {
            or3.f(taskInfo, "taskInfo");
            String strI = taskInfo.i();
            boolean zIsLyricMetaEnable = GlobalConfig.isLyricMetaEnable();
            MediaMetadataCompat mediaMetadataCompatN = yn4.n(strI, false, zIsLyricMetaEnable);
            if (mediaMetadataCompatN == null) {
                return "000000";
            }
            List listK = xu0.k(MediaMetadataCompat.METADATA_KEY_TITLE, MediaMetadataCompat.METADATA_KEY_ARTIST, MediaMetadataCompat.METADATA_KEY_ALBUM);
            boolean zB = taskInfo.B();
            String strP = taskInfo.p();
            String string = mediaMetadataCompatN.getString("common.media.metadata.lyrics");
            if (zIsLyricMetaEnable) {
                e(taskInfo, string);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(d(zB));
            Iterator it2 = listK.iterator();
            while (it2.hasNext()) {
                sb.append(d(c(mediaMetadataCompatN, (String) it2.next())));
            }
            sb.append(d(mediaMetadataCompatN.getBitmap(MediaMetadataCompat.METADATA_KEY_ALBUM_ART) != null));
            if (zIsLyricMetaEnable) {
                sb.append(MetaInfoHelper.e.a(string, strP));
            }
            String string2 = sb.toString();
            or3.e(string2, "toString(...)");
            return string2;
        }

        public final void e(TaskInfo taskInfo, String str) {
            if (!f(taskInfo)) {
                ProductionEnv.d("LyricMeta", "onUpdateTaskLyricStatus shouldUpdateLyricStatus is false");
                return;
            }
            boolean z = false;
            if (str != null && str.length() > 0) {
                z = true;
            }
            taskInfo.s0 = z;
            TaskInfoDBUtils.r(taskInfo);
            DownloadHistoryHelper.o(taskInfo);
        }

        public final boolean f(TaskInfo taskInfo) {
            String strM = if9.m(taskInfo.p());
            if (strM == null || cu7.B(strM)) {
                return false;
            }
            String strC = yj2.C(taskInfo.i());
            TaskInfo.TaskType taskType = taskInfo.b;
            if (taskType == TaskInfo.TaskType.TASK_M4A || taskType == TaskInfo.TaskType.TASK_MP3 || MediaUtil.h(strC)) {
                return true;
            }
            if (MediaUtil.j(strC)) {
                return VideoMetaInfoHelper.i.k(taskInfo.s);
            }
            return false;
        }
    }

    public MetaInfoHelper(TaskInfo taskInfo, VideoInfo videoInfo) {
        or3.f(taskInfo, "taskInfo");
        or3.f(videoInfo, "videoInfo");
        this.a = taskInfo;
        this.b = videoInfo;
        this.c = kotlin.b.b(MetaInfoHelper$apiService$2.INSTANCE);
    }

    public static final String C(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (String) dx2Var.invoke(obj);
    }

    public static final void D(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void E(String str, TaskInfo taskInfo, VideoInfo videoInfo, String str2, dx2 dx2Var, Throwable th) {
        or3.f(videoInfo, "$videoInfo");
        or3.f(dx2Var, "$onError");
        tf4.a.b(str, taskInfo, videoInfo, "subtitle", th.getMessage(), str2);
        or3.c(th);
        dx2Var.invoke(th);
        ProductionEnv.d("LyricMeta", "downloadSrtLyricMeta exception: " + th.getMessage());
    }

    public static final mg8 G(MetaInfoHelper metaInfoHelper, MediaMetadataCompat mediaMetadataCompat) throws IOException {
        or3.f(metaInfoHelper, "this$0");
        or3.f(mediaMetadataCompat, "$meta");
        String strI = metaInfoHelper.a.i();
        or3.e(strI, "getFilePath(...)");
        metaInfoHelper.U(mediaMetadataCompat, strI);
        return mg8.a;
    }

    public static final MediaMetadataCompat J(MetaInfoHelper metaInfoHelper) {
        String str;
        or3.f(metaInfoHelper, "this$0");
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        if (!or3.a(metaInfoHelper.b.getThumbnailUrl(), metaInfoHelper.a.l) && (str = metaInfoHelper.a.l) != null && str.length() != 0) {
            metaInfoHelper.b.setThumbnailUrl(metaInfoHelper.a.l);
        }
        wd9.c(builder, metaInfoHelper.b);
        return builder.build();
    }

    public static final rx.c K(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (rx.c) dx2Var.invoke(obj);
    }

    public static final void L(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void M(MetaInfoHelper metaInfoHelper, rx2 rx2Var, Throwable th) {
        or3.f(metaInfoHelper, "this$0");
        or3.f(rx2Var, "$onFinish");
        or3.c(th);
        metaInfoHelper.T(th, rx2Var);
    }

    public static final String Q(TaskInfo taskInfo) {
        return e.b(taskInfo);
    }

    public static final rx.c X(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (rx.c) dx2Var.invoke(obj);
    }

    public static final void Y(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void Z(Ref$ObjectRef ref$ObjectRef, TaskInfo taskInfo, VideoInfo videoInfo, String str, Throwable th) {
        or3.f(ref$ObjectRef, "$lyricUrl");
        or3.f(videoInfo, "$videoInfo");
        or3.f(str, "$pos");
        tf4.c(tf4.a, (String) ref$ObjectRef.element, taskInfo, videoInfo, str, th.getMessage(), null, 32, null);
        ProductionEnv.d("LyricMeta", "lyrics download exception: " + th.getMessage() + ", pos:" + str);
    }

    public static rx.c a(dx2 dx2Var, Object obj) {
        return b0(dx2Var, obj);
    }

    public static void b(dx2 dx2Var, Object obj) {
        D(dx2Var, obj);
    }

    public static final rx.c b0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (rx.c) dx2Var.invoke(obj);
    }

    public static void c(dx2 dx2Var, Object obj) {
        Y(dx2Var, obj);
    }

    public static final void c0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static rx.c d(dx2 dx2Var, Object obj) {
        return X(dx2Var, obj);
    }

    public static final void d0(MetaInfoHelper metaInfoHelper, rx2 rx2Var, Throwable th) {
        or3.f(metaInfoHelper, "this$0");
        or3.f(rx2Var, "$onFinish");
        or3.c(th);
        metaInfoHelper.T(th, rx2Var);
    }

    public static void e(Throwable th) {
        i0(th);
    }

    public static String f(dx2 dx2Var, Object obj) {
        return z(dx2Var, obj);
    }

    public static void g(MetaInfoHelper metaInfoHelper, rx2 rx2Var, Throwable th) {
        M(metaInfoHelper, rx2Var, th);
    }

    public static void h(Ref$ObjectRef ref$ObjectRef, TaskInfo taskInfo, VideoInfo videoInfo, String str, Throwable th) {
        Z(ref$ObjectRef, taskInfo, videoInfo, str, th);
    }

    public static final void h0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static void i(dx2 dx2Var, Object obj) {
        c0(dx2Var, obj);
    }

    public static final void i0(Throwable th) {
        ProductionEnv.d("MetaInfoHelper", th.toString());
    }

    public static void j(dx2 dx2Var, Object obj) {
        L(dx2Var, obj);
    }

    public static void k(MetaInfoHelper metaInfoHelper, rx2 rx2Var, Throwable th) {
        d0(metaInfoHelper, rx2Var, th);
    }

    public static void l(String str, TaskInfo taskInfo, VideoInfo videoInfo, String str2, dx2 dx2Var, Throwable th) {
        E(str, taskInfo, videoInfo, str2, dx2Var, th);
    }

    public static void m(dx2 dx2Var, Object obj) {
        h0(dx2Var, obj);
    }

    public static mg8 n(MetaInfoHelper metaInfoHelper, MediaMetadataCompat mediaMetadataCompat) {
        return G(metaInfoHelper, mediaMetadataCompat);
    }

    public static String o(dx2 dx2Var, Object obj) {
        return C(dx2Var, obj);
    }

    public static rx.c p(dx2 dx2Var, Object obj) {
        return K(dx2Var, obj);
    }

    public static MediaMetadataCompat q(MetaInfoHelper metaInfoHelper) {
        return J(metaInfoHelper);
    }

    public static final rx.c r(MetaInfoHelper metaInfoHelper, String str) {
        return metaInfoHelper.y(str);
    }

    public static final rx.c s(MetaInfoHelper metaInfoHelper, MediaMetadataCompat mediaMetadataCompat) {
        return metaInfoHelper.F(mediaMetadataCompat);
    }

    public static final int t(MetaInfoHelper metaInfoHelper, Subtitle subtitle) {
        return metaInfoHelper.O(subtitle);
    }

    public static final String z(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (String) dx2Var.invoke(obj);
    }

    public final void A(TaskInfo taskInfo) {
        rx.c cVarZ0 = LyricManager.T(taskInfo, false).z0(ix6.d());
        or3.e(cVarZ0, "subscribeOn(...)");
        ObservableKt.h(cVarZ0);
    }

    public final void B(TaskInfo taskInfo, VideoInfo videoInfo, String str, Subtitle subtitle, dx2 dx2Var) {
        or3.f(videoInfo, "videoInfo");
        or3.f(str, IntentUtil.KEY_SNAPTUBE_VIDEO_ID);
        or3.f(subtitle, "subtitle");
        or3.f(dx2Var, "onError");
        String strP = SubtitleManager.a.p(subtitle);
        String strE = subtitle.e();
        if (strP == null || cu7.B(strP)) {
            tf4.a.j(taskInfo, videoInfo, "lyric_meta_empty_url", strE);
            ProductionEnv.d("LyricMeta", "downloadSrtLyricMeta lyricUrl is null");
        } else {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            tf4.a.f(taskInfo, videoInfo, "subtitle", strE);
            N().d(strP).U(new ls4(new MetaInfoHelper$downloadSrtLyricMeta$1(subtitle, videoInfo))).u0(new ms4(new MetaInfoHelper$downloadSrtLyricMeta$2(str, this, subtitle, strP, strE, taskInfo, videoInfo, jElapsedRealtime)), new ns4(strP, taskInfo, videoInfo, strE, dx2Var));
        }
    }

    public final rx.c F(MediaMetadataCompat mediaMetadataCompat) {
        return rx.c.M(new gs4(this, mediaMetadataCompat)).K0(5L, TimeUnit.SECONDS).z0(a58.b);
    }

    public boolean H() {
        return false;
    }

    public final void I(bx2 bx2Var, rx2 rx2Var) {
        bx2Var.invoke();
        rx.c.M(new hs4(this)).H(new is4(new MetaInfoHelper$forceWriteMetaCover$2(this))).u0(new js4(new MetaInfoHelper$forceWriteMetaCover$3(rx2Var)), new ks4(this, rx2Var));
    }

    public final yk N() {
        return (yk) this.c.getValue();
    }

    public final int O(Subtitle subtitle) {
        if (subtitle.g() != 0) {
            return 3;
        }
        Boolean boolJ = subtitle.j();
        or3.e(boolJ, "isAuto(...)");
        return boolJ.booleanValue() ? 2 : 1;
    }

    public final MatchResponse P() {
        return this.d;
    }

    public final TaskInfo R() {
        return this.a;
    }

    public final VideoInfo S() {
        return this.b;
    }

    public final void T(Throwable th, rx2 rx2Var) {
        V(th);
        if (th instanceof TimeoutException) {
            rx2Var.invoke(Boolean.TRUE, null);
        } else {
            rx2Var.invoke(Boolean.FALSE, th);
        }
    }

    public void U(MediaMetadataCompat mediaMetadataCompat, String str) throws IOException {
        or3.f(mediaMetadataCompat, TtmlNode.TAG_METADATA);
        or3.f(str, "filePath");
        yn4.B(mediaMetadataCompat, str);
    }

    public final void V(Throwable th) {
        ah3 property = new ReportPropertyBuilder().setEventName("Task").setAction("fill_meta_fail").setProperty("content_url", this.b.getSource()).setProperty(SiteExtractLog.INFO_HOST, yj8.j(this.b.getSource()));
        TaskInfo.ContentType contentType = this.a.B;
        property.setProperty("file_type", contentType != null ? contentType.name() : null).setProperty("file_extension", yj2.C(this.a.i())).setProperty("error_type", th.getClass().getName()).setProperty("error", th.getMessage()).setProperty(SiteExtractLog.INFO_EXCEPTION_STACK, Log.getStackTraceString(th)).reportEvent();
    }

    public final void W(TaskInfo taskInfo, VideoInfo videoInfo, String str, String str2) {
        or3.f(videoInfo, "videoInfo");
        or3.f(str, IntentUtil.KEY_SNAPTUBE_VIDEO_ID);
        or3.f(str2, IntentUtil.POS);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        tf4.g(tf4.a, taskInfo, videoInfo, str2, null, 8, null);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        LyricManager.W(wu0.b(str), false, str2).H(new ps4(new MetaInfoHelper$requestLibraryLyricMeta$1(ref$ObjectRef, this))).u0(new qs4(new MetaInfoHelper$requestLibraryLyricMeta$2(str, ref$ObjectRef, str2, taskInfo, videoInfo, jElapsedRealtime)), new rs4(ref$ObjectRef, taskInfo, videoInfo, str2));
    }

    public final void a0(bx2 bx2Var, rx2 rx2Var) {
        VideoInfo videoInfoFromJson;
        String str;
        MediaInfo data;
        or3.f(bx2Var, "onStart");
        or3.f(rx2Var, "onFinish");
        if (!x()) {
            if (H()) {
                I(bx2Var, rx2Var);
                return;
            } else {
                rx2Var.invoke(Boolean.TRUE, null);
                return;
            }
        }
        bx2Var.invoke();
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        MatchResponse matchResponse = this.d;
        if (matchResponse != null && (data = matchResponse.getData()) != null) {
            List<Artists> artists = data.getArtists();
            if (artists != null) {
                ArrayList arrayList = new ArrayList(yu0.r(artists, 10));
                Iterator<T> it2 = artists.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((Artists) it2.next()).getArtistName());
                }
                builder.putString(MediaMetadataCompat.METADATA_KEY_ARTIST, TextUtils.join(", ", arrayList));
            }
            String songName = data.getSongName();
            if (songName != null) {
                builder.putString(MediaMetadataCompat.METADATA_KEY_TITLE, songName);
                this.a.K = TaskInfo.MetaSource.SONG_LIBRARY;
            }
            Album album = data.getAlbum();
            builder.putString(MediaMetadataCompat.METADATA_KEY_ALBUM, album != null ? album.getAlbumName() : null);
        }
        MetaExtraInfo metaExtraInfoV = v();
        if (metaExtraInfoV != null) {
            builder.putString("com.snaptube.metadata.EXTRA_INFO", j23.g().x(metaExtraInfoV));
        }
        if (or3.a(this.b.getThumbnailUrl(), this.a.l) || (str = this.a.l) == null || str.length() == 0) {
            videoInfoFromJson = this.b;
        } else {
            videoInfoFromJson = VideoInfo.fromJson(this.b.toJson());
            videoInfoFromJson.setThumbnailUrl(this.a.l);
        }
        u(builder);
        wd9.p(builder.build(), videoInfoFromJson, this.a.p()).H(new ss4(new MetaInfoHelper$saveMetaInfo$2(this))).u0(new ts4(new MetaInfoHelper$saveMetaInfo$3(rx2Var)), new us4(this, rx2Var));
    }

    public final void e0(MatchResponse matchResponse) {
        this.d = matchResponse;
    }

    public final void f0() {
        if (w()) {
            g0();
        }
    }

    public final void g0() {
        ArrayList arrayList = new ArrayList();
        int i = (int) this.a.a;
        String source = this.b.getSource();
        or3.e(source, "getSource(...)");
        arrayList.add(new BatchInfoReq(null, i, null, source, null, 21, null));
        N().c(arrayList).z0(ix6.d()).u0(new vs4(new MetaInfoHelper$updateMetaInfoFromNetwork$1(this)), new ws4());
    }

    public final void u(MediaMetadataCompat.Builder builder) {
        if (GlobalConfig.isLyricMetaEnable()) {
            String strM = if9.m(this.b.getSource());
            if (strM == null || cu7.B(strM)) {
                tf4.i(tf4.a, this.a, this.b, null, null, "ytbVideoId isNullOrBlank", null, 32, null);
                return;
            }
            bg4 bg4Var = bg4.a;
            or3.c(strM);
            ag4 ag4VarA = bg4Var.a(strM);
            if (ag4VarA == null) {
                A(this.a);
                tf4.i(tf4.a, this.a, this.b, null, null, "cache lyricsMetaBean is null", null, 32, null);
            } else {
                builder.putString("common.media.metadata.lyrics", ag4VarA.c());
                tf4.i(tf4.a, this.a, this.b, ag4VarA.a(), ag4VarA.d(), null, ag4VarA.e(), 16, null);
            }
        }
    }

    public MetaExtraInfo v() {
        return null;
    }

    public abstract boolean w();

    public abstract boolean x();

    public final rx.c y(String str) {
        rx.c cVarU = N().d(str).U(new os4(MetaInfoHelper$downloadLibraryLyric$1.INSTANCE));
        or3.e(cVarU, "map(...)");
        return cVarU;
    }
}
