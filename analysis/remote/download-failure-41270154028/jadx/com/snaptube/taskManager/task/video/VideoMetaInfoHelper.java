package com.snaptube.taskManager.task.video;

import android.content.SharedPreferences;
import android.os.Environment;
import android.support.v4.media.MediaMetadataCompat;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.helper.DownloadRestoreHelper;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.regex.Pattern;
import kotlin.Metadata;
import o.cu7;
import o.dp1;
import o.fs2;
import o.ig4;
import o.j23;
import o.k54;
import o.mf9;
import o.or3;
import o.pg1;
import o.sq5;
import o.t14;
import o.w61;
import o.wd0;
import o.yj2;
import o.yn4;
import o.zz4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class VideoMetaInfoHelper extends MetaInfoHelper {
    public static final Companion i = new Companion(null);
    public static volatile boolean j;
    public final Format f;
    public final t14 g;
    public final t14 h;

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public static final void a(Companion companion) {
            companion.g();
        }

        public static final void b(Companion companion) {
            companion.h();
        }

        public static final boolean c(Companion companion) {
            return companion.i();
        }

        public static final boolean d(Companion companion) {
            return companion.j();
        }

        public static final void e(Companion companion, boolean z) {
            companion.n(z);
        }

        public static final void f(Companion companion, boolean z) {
            companion.o(z);
        }

        public final void g() {
            String[] list;
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (String str : DownloadRestoreHelper.a.f()) {
                linkedHashSet.add(absolutePath + File.separator + str);
            }
            linkedHashSet.add(Config.K() + File.separator + GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.IMAGE.ordinal()]);
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                File file = new File((String) it2.next());
                if (file.exists() && (list = file.list()) != null) {
                    or3.c(list);
                    for (String str2 : list) {
                        or3.c(str2);
                        if (cu7.x(str2, ".meta", false, 2, null)) {
                            yj2.r(new File(file, str2));
                        }
                    }
                }
            }
        }

        public final void h() {
            String[] list;
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (String str : DownloadRestoreHelper.a.h()) {
                linkedHashSet.add(absolutePath + File.separator + str);
            }
            linkedHashSet.add(Config.K() + File.separator + GlobalConfig.CONTENT_DIRS[GlobalConfig.ContentDir.VIDEO.ordinal()]);
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                File file = new File((String) it2.next());
                if (file.exists() && (list = file.list()) != null) {
                    or3.c(list);
                    for (String str2 : list) {
                        or3.c(str2);
                        if (cu7.x(str2, ".jpg", false, 2, null) || cu7.x(str2, ".meta", false, 2, null)) {
                            yj2.r(new File(file, str2));
                        }
                    }
                }
            }
        }

        public final boolean i() {
            return GlobalConfig.getGenericSharedPrefs().getBoolean("key_has_delete_meta_file", false);
        }

        public final boolean j() {
            return GlobalConfig.getGenericSharedPrefs().getBoolean("key_has_delete_meta_file_in_image_folder", false);
        }

        public final boolean k(long j) {
            return 1 <= j && j < 601;
        }

        public final boolean l(VideoInfo videoInfo, Format format) {
            or3.f(videoInfo, "videoInfo");
            or3.f(format, SnaptubeAdModel.KEY_FORMAT);
            return format.isVideo() && fs2.v(format) && k(videoInfo.getDurationInSecond());
        }

        public final void m(MediaMetadataCompat mediaMetadataCompat, String str) throws IOException {
            or3.f(mediaMetadataCompat, "mediaMetaData");
            or3.f(str, "filePath");
            if (mediaMetadataCompat.size() > 0) {
                yn4.C(mediaMetadataCompat, str);
                ProductionEnv.d("VideoMetaInfoHelper", "saveMetaDataToM4a >> filePath = " + str);
            }
        }

        public final void n(boolean z) {
            SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
            or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
            SharedPreferences.Editor editorEdit = genericSharedPrefs.edit();
            or3.c(editorEdit);
            editorEdit.putBoolean("key_has_delete_meta_file", z);
            editorEdit.apply();
        }

        public final void o(boolean z) {
            SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
            or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
            SharedPreferences.Editor editorEdit = genericSharedPrefs.edit();
            or3.c(editorEdit);
            editorEdit.putBoolean("key_has_delete_meta_file_in_image_folder", z);
            editorEdit.apply();
        }

        public final void p(w61 w61Var) {
            or3.f(w61Var, "scope");
            if (!sq5.c() || VideoMetaInfoHelper.j0()) {
                return;
            }
            if (i() && j()) {
                return;
            }
            VideoMetaInfoHelper.l0(true);
            wd0.d(w61Var, dp1.b(), null, new VideoMetaInfoHelper$Companion$tryDeleteOldVersionMetaFile$1(null), 2, null);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\"\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0001(B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000eJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J:\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0011J\u0010\u0010\u0015\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000eJ\u001a\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0019\u001a\u0004\b\u001a\u0010\f\"\u0004\b\u001b\u0010\u001cR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001d\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010 R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010 R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010#\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;", "", "", "enable", "", "minDurationSecond", "maxDurationSecond", "", "matchRegex", "<init>", "(ZIILjava/lang/String;)V", "component1", "()Z", "component2", "()I", "component3", "component4", "()Ljava/lang/String;", "copy", "(ZIILjava/lang/String;)Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getEnable", "setEnable", "(Z)V", "I", "getMinDurationSecond", "setMinDurationSecond", "(I)V", "getMaxDurationSecond", "setMaxDurationSecond", "Ljava/lang/String;", "getMatchRegex", "setMatchRegex", "(Ljava/lang/String;)V", "Companion", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class MvConfigure {

        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        @NotNull
        private static final String MV_MATCH_REGEX = "^(?=.*(?:Official|Oficial|Officiel|Lyrics|Lyric|[_ ]MV[_ ]|[_]DVD[_]|Music Video|FUNK|[_ ]DJ[_ ]|feat\\.|feat_|ft\\.|Remix|Live|AO VIVO|En vivo|Visualizer|prod\\.|cover|Acústica|music|song|[_ ]mix[_ ]|[_ ]MC[_ ]|[_ ]ost[_ ]|album|letra|أغنية|اغنية|cancion|canción|música|álbum|forro|forró|gospel|pagode|piseiro|sertanejo|reggae|salsa|vallenato|bachata|corrido|trap|hiphop|cumbia|huapango|baladas|guaracha|boleros|acústico|playlist))(?!.*trailer)(?!.*teaser)(?!.*movie)(?!.*series)(?!.*tráiler)(?!.*vagina)(?!.*infanti)(?!.*parod)(?!.*prank)(?!.*anim)(?!.*desenho)(?!.*episod)(?!.*sex)(?!.*xvideo)(?!.*\\.com)(?!.*porn)(?!.*folla)(?!.*fuck)(?!.*commercial)(?!.*blog)(?!.*tutorial)(?!.*alarm)(?!.*wallpaper)(?!.*facebook[_ ]).*";
        private boolean enable;

        @SerializedName("match_regex")
        @Nullable
        private String matchRegex;

        @SerializedName("max_duration_second")
        private int maxDurationSecond;

        @SerializedName("min_duration_second")
        private int minDurationSecond;

        public static final class Companion {
            public Companion() {
            }

            public Companion(pg1 pg1Var) {
                this();
            }

            public final MvConfigure a() {
                return new MvConfigure(true, 60, 420, MvConfigure.MV_MATCH_REGEX);
            }
        }

        public MvConfigure() {
            this(false, 0, 0, null, 15, null);
        }

        public MvConfigure(boolean z, int i, int i2, @Nullable String str) {
            this.enable = z;
            this.minDurationSecond = i;
            this.maxDurationSecond = i2;
            this.matchRegex = str;
        }

        public MvConfigure(boolean z, int i, int i2, String str, int i3, pg1 pg1Var) {
            this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str);
        }

        public static MvConfigure copy$default(MvConfigure mvConfigure, boolean z, int i, int i2, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                z = mvConfigure.enable;
            }
            if ((i3 & 2) != 0) {
                i = mvConfigure.minDurationSecond;
            }
            if ((i3 & 4) != 0) {
                i2 = mvConfigure.maxDurationSecond;
            }
            if ((i3 & 8) != 0) {
                str = mvConfigure.matchRegex;
            }
            return mvConfigure.copy(z, i, i2, str);
        }

        public final boolean getEnable() {
            return this.enable;
        }

        public final int getMinDurationSecond() {
            return this.minDurationSecond;
        }

        public final int getMaxDurationSecond() {
            return this.maxDurationSecond;
        }

        @Nullable
        public final String getMatchRegex() {
            return this.matchRegex;
        }

        @NotNull
        public final MvConfigure copy(boolean enable, int minDurationSecond, int maxDurationSecond, @Nullable String matchRegex) {
            return new MvConfigure(enable, minDurationSecond, maxDurationSecond, matchRegex);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MvConfigure)) {
                return false;
            }
            MvConfigure mvConfigure = (MvConfigure) other;
            return this.enable == mvConfigure.enable && this.minDurationSecond == mvConfigure.minDurationSecond && this.maxDurationSecond == mvConfigure.maxDurationSecond && or3.a(this.matchRegex, mvConfigure.matchRegex);
        }

        public final boolean getEnable() {
            return this.enable;
        }

        @Nullable
        public final String getMatchRegex() {
            return this.matchRegex;
        }

        public final int getMaxDurationSecond() {
            return this.maxDurationSecond;
        }

        public final int getMinDurationSecond() {
            return this.minDurationSecond;
        }

        public int hashCode() {
            int iA = ((((k54.a(this.enable) * 31) + this.minDurationSecond) * 31) + this.maxDurationSecond) * 31;
            String str = this.matchRegex;
            return iA + (str == null ? 0 : str.hashCode());
        }

        public final void setEnable(boolean z) {
            this.enable = z;
        }

        public final void setMatchRegex(@Nullable String str) {
            this.matchRegex = str;
        }

        public final void setMaxDurationSecond(int i) {
            this.maxDurationSecond = i;
        }

        public final void setMinDurationSecond(int i) {
            this.minDurationSecond = i;
        }

        @NotNull
        public String toString() {
            return "MvConfigure(enable=" + this.enable + ", minDurationSecond=" + this.minDurationSecond + ", maxDurationSecond=" + this.maxDurationSecond + ", matchRegex=" + this.matchRegex + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoMetaInfoHelper(TaskInfo taskInfo, VideoInfo videoInfo, Format format) {
        super(taskInfo, videoInfo);
        or3.f(taskInfo, "taskInfo");
        or3.f(videoInfo, "videoInfo");
        this.f = format;
        this.g = kotlin.b.b(VideoMetaInfoHelper$onlineConfig$2.INSTANCE);
        this.h = kotlin.b.b(new VideoMetaInfoHelper$mvConfigure$2(this));
    }

    public static final boolean j0() {
        return j;
    }

    public static final MvConfigure k0(VideoMetaInfoHelper videoMetaInfoHelper) {
        return videoMetaInfoHelper.m0();
    }

    public static final void l0(boolean z) {
        j = z;
    }

    @Override
    public boolean H() {
        if (Config.C4() && p0()) {
            Format format = this.f;
            if (!ig4.l(format != null ? format.getDownloadUrl() : null) && (mf9.g(S().getSource()) || zz4.c(S().getSource()) || zz4.e(S().getSource()) || zz4.h(S().getSource()))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void U(MediaMetadataCompat mediaMetadataCompat, String str) throws IOException {
        or3.f(mediaMetadataCompat, TtmlNode.TAG_METADATA);
        or3.f(str, "filePath");
        i.m(mediaMetadataCompat, str);
    }

    public final MvConfigure m0() {
        String string = o0().getString("key.video_meta_info_mv_config", null);
        if (string == null) {
            return MvConfigure.INSTANCE.a();
        }
        try {
            Object objK = j23.g().k(string, MvConfigure.class);
            or3.e(objK, "fromJson(...)");
            return (MvConfigure) objK;
        } catch (Exception e) {
            ProductionEnv.errorLog("VideoMetaInfoHelper", e);
            return MvConfigure.INSTANCE.a();
        }
    }

    public final MvConfigure n0() {
        return (MvConfigure) this.h.getValue();
    }

    public final SharedPreferences o0() {
        Object value = this.g.getValue();
        or3.e(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    public final boolean p0() {
        Format format = this.f;
        if (format != null) {
            return fs2.v(format);
        }
        return false;
    }

    public final boolean q0() {
        return P() != null || s0();
    }

    public final boolean r0() {
        return S().isYoutube() && S().getDurationInSecond() > 0 && S().getDurationInSecond() <= 600;
    }

    public final boolean s0() {
        if (S().getDurationInSecond() < n0().getMinDurationSecond() || S().getDurationInSecond() > n0().getMaxDurationSecond() || n0().getMatchRegex() == null || S().getTitle() == null) {
            return false;
        }
        String matchRegex = n0().getMatchRegex();
        or3.c(matchRegex);
        Pattern patternCompile = Pattern.compile(matchRegex);
        String title = S().getTitle();
        or3.c(title);
        return patternCompile.matcher(title).find();
    }

    @Override
    public MetaInfoHelper.MetaExtraInfo v() {
        return new MetaInfoHelper.MetaExtraInfo("mv");
    }

    @Override
    public boolean w() {
        return r0();
    }

    @Override
    public boolean x() {
        return q0() && p0();
    }
}
