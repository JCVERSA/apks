package xs;

import androidx.fragment.app.Fragment;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import qn.d;

public final class c implements e {
    private ShorttvModel.UGCVideo A;
    private String B;
    private String C;
    private String D;
    private String E;

    private final Fragment f75396a;

    private final ShortTvViewModel f75397b;

    private final String f75398c;

    private f f75399d;

    private long f75400e;

    private long f75401f;

    private long f75402g;

    private long f75403h;

    private long f75404i;

    private int f75405j;

    private long f75406k;

    private long f75407l;

    private long f75408m;

    private int f75409n;

    private long f75410o;

    private long f75411p;

    private long f75412q;

    private PlayError f75413r;

    private int f75414s;

    private int f75415t;

    private String f75416u;

    private String f75417v;

    private boolean f75418w;

    private boolean f75419x;

    private String f75420y;

    private int f75421z;

    public c(Fragment fragment, ShortTvViewModel shortTvViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f75396a = fragment;
        this.f75397b = shortTvViewModel;
        this.f75398c = c.class.getSimpleName();
        this.f75419x = true;
        this.f75420y = "";
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "postdetail";
    }

    public static void f(c cVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        cVar.d(z10);
    }

    private final void j(boolean z10) {
        this.f75400e = 0L;
        this.f75401f = 0L;
        this.f75402g = 0L;
        this.f75403h = 0L;
        this.f75404i = 0L;
        this.f75405j = 0;
        this.f75406k = 0L;
        this.f75407l = 0L;
        this.f75408m = 0L;
        this.f75409n = 0;
        this.f75410o = 0L;
        this.f75411p = 0L;
        this.f75412q = 0L;
        this.f75421z = 0;
        if (z10) {
            return;
        }
        this.f75418w = false;
    }

    public final void a() {
        this.f75401f = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f75398c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        h.f69682a.o(this.E, linkedHashMap);
    }

    public final void c() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f75398c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        h.f69682a.o(this.E, linkedHashMap);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x0104  */
    public final void d(boolean z10) {
        String subjectId;
        String strValueOf;
        String strValueOf2;
        String playUrl;
        String ugcVideoId;
        String collectionId;
        List<ShorttvModel.StreamInfo> streams;
        ShorttvModel.StreamInfo streamInfo;
        String resolutions;
        ShorttvModel.UGCVideoCollection belongToCollection;
        if (this.f75400e == 0 && !this.f75418w) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f75398c;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f75418w) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f75398c;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.v(c0922a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f75418w = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("opt_type", this.C);
        ShorttvModel.UGCVideo uGCVideo = this.A;
        String str = "";
        if (uGCVideo == null || (subjectId = uGCVideo.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("refer_subject_id", subjectId);
        linkedHashMap.put("item_type", "7");
        linkedHashMap.put("episode", this.D);
        String strH = this.f75420y;
        if (strH.length() == 0) {
            strH = h.f69682a.h();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strH);
        ShorttvModel.UGCVideo uGCVideo2 = this.A;
        if (uGCVideo2 != null) {
            uGCVideo2.getOps();
        }
        if (this.f75402g > 0 || (this.f75418w && this.f75408m > 0)) {
            linkedHashMap.put("is_start", "1");
            long j10 = this.f75400e;
            if (j10 > 0) {
                long j11 = this.f75402g;
                if (j11 > 0) {
                    strValueOf = String.valueOf(j11 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j12 = this.f75401f;
            if (j12 > 0) {
                long j13 = this.f75402g;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f75403h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f75405j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f75406k / this.f75412q) * 100.0f) + (this.f75409n * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f75408m));
            linkedHashMap.put("pause_duration", String.valueOf(this.f75411p));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f75400e > 0 ? String.valueOf(System.currentTimeMillis() - this.f75400e) : "0");
            linkedHashMap.put("delay", this.f75401f > 0 ? String.valueOf(System.currentTimeMillis() - this.f75401f) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        ShorttvModel.UGCVideo uGCVideo3 = this.A;
        if (uGCVideo3 == null || (playUrl = uGCVideo3.getPlayUrl()) == null) {
            playUrl = "";
        }
        linkedHashMap.put("url", playUrl);
        linkedHashMap.put("seek_count", String.valueOf(this.f75421z));
        PlayError playError = this.f75413r;
        if (playError != null) {
            linkedHashMap.put("player_error_code", String.valueOf(playError.getErrorCode()));
            linkedHashMap.put("player_error_msg", String.valueOf(playError.getErrorMessage()));
        }
        if (!this.f75418w || this.f75408m > 0 || this.f75419x) {
            if (z10) {
                this.f75419x = false;
            }
            ShorttvModel.UGCVideo uGCVideo4 = this.A;
            if (uGCVideo4 == null || (ugcVideoId = uGCVideo4.getUgcVideoId()) == null) {
                ugcVideoId = "";
            }
            linkedHashMap.put("content_id", ugcVideoId);
            ShorttvModel.UGCVideo uGCVideo5 = this.A;
            if (uGCVideo5 == null || (belongToCollection = uGCVideo5.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            linkedHashMap.put("belong_to_collection_id", collectionId);
            linkedHashMap.put("ops", this.B);
            linkedHashMap.put("content_type", "ugc_video");
            linkedHashMap.put("video_bitrate", String.valueOf(this.f75414s));
            linkedHashMap.put("audio_bitrate", String.valueOf(this.f75415t));
            ShorttvModel.UGCVideo uGCVideo6 = this.A;
            if (uGCVideo6 != null && (streams = uGCVideo6.getStreams()) != null && (streamInfo = (ShorttvModel.StreamInfo) CollectionsKt.k0(streams)) != null && (resolutions = streamInfo.getResolutions()) != null) {
                str = resolutions;
            }
            linkedHashMap.put("resolutions", str);
            h.f69682a.C(this.E, "video_play", this.f75408m, linkedHashMap);
            j(z10);
        }
    }

    public final void e(boolean z10, boolean z11) {
        if (z10) {
            d(z11);
        } else {
            j(z11);
        }
    }

    public final void g() {
        this.f75400e = System.currentTimeMillis();
        this.f75419x = true;
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        this.f75421z++;
    }

    public final void i() {
        f(this, false, 1, null);
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    public final void k(String str) {
        this.f75417v = str;
    }

    public final void l(String str) {
        this.f75416u = str;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final void n(String str) {
        Intrinsics.h(str, "<set-?>");
        this.B = str;
    }

    public final void o(String str) {
        Intrinsics.h(str, "<set-?>");
        this.C = str;
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        e.a.e(this, eVar);
        e.a.z(this, this.f75412q, null, 2, null);
    }

    @Override
    public void onFocusChange(boolean z10) {
        e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        this.f75404i = System.currentTimeMillis();
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        if (this.f75404i > 0) {
            this.f75403h += System.currentTimeMillis() - this.f75404i;
            this.f75405j++;
            this.f75404i = 0L;
        }
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        this.f75409n++;
        this.f75406k = 0L;
    }

    @Override
    public void onMediaItemTransition(String str) {
        e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f75413r = errorInfo;
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e eVar) {
        e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        vs.a aVarQ;
        if (0 == this.f75412q) {
            f fVar = this.f75399d;
            this.f75412q = fVar != null ? fVar.getDuration() : 0L;
        }
        long j11 = this.f75407l;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f75408m += j10 - j11;
        }
        this.f75407l = j10;
        if (j10 > this.f75406k) {
            this.f75406k = j10;
        }
        ShortTvViewModel shortTvViewModel = this.f75397b;
        if (shortTvViewModel == null || (aVarQ = shortTvViewModel.Q()) == null) {
            return;
        }
        aVarQ.a(this.f75408m);
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f75402g = System.currentTimeMillis();
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        this.f75415t = i10;
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        this.f75414s = i10;
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        this.f75410o = System.currentTimeMillis();
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        if (this.f75410o != 0) {
            this.f75411p += System.currentTimeMillis() - this.f75410o;
            this.f75410o = 0L;
        }
    }

    public final void p(f fVar) {
        this.f75399d = fVar;
    }

    public final void q(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f75420y = pageFrom;
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.E = str;
    }

    public final void s(ShorttvModel.UGCVideo uGCVideo) {
        this.A = uGCVideo;
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }
}
