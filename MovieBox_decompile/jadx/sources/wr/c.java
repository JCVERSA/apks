package wr;

import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import qn.d;

public final class c implements e {
    private int A;
    private Subject B;
    private String C;
    private String D;
    private int E;
    private int F;
    private boolean G;
    private String H;

    private final Fragment f74734a;

    private final ShortTvViewModel f74735b;

    private final String f74736c;

    private f f74737d;

    private long f74738e;

    private long f74739f;

    private long f74740g;

    private long f74741h;

    private long f74742i;

    private int f74743j;

    private long f74744k;

    private long f74745l;

    private long f74746m;

    private int f74747n;

    private long f74748o;

    private long f74749p;

    private long f74750q;

    private Integer f74751r;

    private String f74752s;

    private String f74753t;

    private boolean f74754u;

    private boolean f74755v;

    private String f74756w;

    private String f74757x;

    private int f74758y;

    private int f74759z;

    public c(Fragment fragment, ShortTvViewModel shortTvViewModel) {
        Intrinsics.h(fragment, "fragment");
        this.f74734a = fragment;
        this.f74735b = shortTvViewModel;
        this.f74736c = c.class.getSimpleName();
        this.f74755v = true;
        this.f74756w = "";
        this.f74757x = "";
        this.f74758y = -1;
        this.C = "";
        this.D = "";
        this.H = "postdetail";
    }

    public static void f(c cVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        cVar.d(z10);
    }

    private final void i(boolean z10) {
        this.f74738e = 0L;
        this.f74739f = 0L;
        this.f74740g = 0L;
        this.f74741h = 0L;
        this.f74742i = 0L;
        this.f74743j = 0;
        this.f74744k = 0L;
        this.f74745l = 0L;
        this.f74746m = 0L;
        this.f74747n = 0;
        this.f74748o = 0L;
        this.f74749p = 0L;
        this.f74750q = 0L;
        this.f74751r = null;
        this.G = false;
        if (z10) {
            return;
        }
        this.f74758y = -1;
        this.f74754u = false;
    }

    public final void a(int i10, int i11) {
        this.f74739f = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f74736c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        linkedHashMap.put("content_type", "ugc_video");
        h.f69682a.o(this.H, linkedHashMap);
    }

    public final void c() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f74736c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        linkedHashMap.put("content_type", "ugc_video");
        h.f69682a.o(this.H, linkedHashMap);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x013a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0150  */
    /* JADX WARN: Code duplicated, block: B:92:0x0203  */
    /* JADX WARN: Code duplicated, block: B:94:0x0209  */
    /* JADX WARN: Code duplicated, block: B:95:0x0215  */
    public final void d(boolean z10) {
        String subjectId;
        String strValueOf;
        String strValueOf2;
        ur.a aVarD0;
        String strValueOf3;
        String ops;
        if (this.f74738e == 0 && !this.f74754u) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f74736c;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f74754u) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f74736c;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.v(c0922a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f74754u = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("opt_type", this.C);
        Subject subject = this.B;
        String str = "";
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String str2 = this.f74752s;
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("base_post_id", str2);
        linkedHashMap.put("item_type", "7");
        linkedHashMap.put("ep", this.D);
        String str3 = this.f74753t;
        if (str3 == null) {
            str3 = "";
        }
        linkedHashMap.put("base_item_type", str3);
        Subject subject2 = this.B;
        linkedHashMap.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
        String strH = this.f74756w;
        if (strH.length() == 0) {
            strH = h.f69682a.h();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strH);
        Subject subject3 = this.B;
        if (!TextUtils.isEmpty(subject3 != null ? subject3.getOps() : null)) {
            Subject subject4 = this.B;
            if (subject4 != null && (ops = subject4.getOps()) != null) {
                str = ops;
            }
            linkedHashMap.put("ops", str);
        }
        int i10 = this.E;
        if (i10 > 0) {
            linkedHashMap.put("subject_type", String.valueOf(i10));
        }
        if (this.f74740g > 0 || (this.f74754u && this.f74746m > 0)) {
            linkedHashMap.put("is_start", "1");
            long j10 = this.f74738e;
            if (j10 > 0) {
                long j11 = this.f74740g;
                if (j11 > 0) {
                    strValueOf = String.valueOf(j11 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j12 = this.f74739f;
            if (j12 > 0) {
                long j13 = this.f74740g;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f74741h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f74743j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f74744k / this.f74750q) * 100.0f) + (this.f74747n * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f74746m));
            linkedHashMap.put("pause_duration", String.valueOf(this.f74749p));
            linkedHashMap.put("completeCount", String.valueOf(this.f74747n));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f74738e > 0 ? String.valueOf(System.currentTimeMillis() - this.f74738e) : "0");
            linkedHashMap.put("delay", this.f74739f > 0 ? String.valueOf(System.currentTimeMillis() - this.f74739f) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("url", this.f74757x);
        linkedHashMap.put(OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS, String.valueOf(this.F));
        long j14 = this.f74750q;
        if (j14 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j14));
        }
        int i11 = this.f74758y;
        if (i11 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        }
        linkedHashMap.put("player_type", "1");
        Integer num = this.f74751r;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (this.F == 0) {
            long j15 = this.f74740g;
            if (j15 > 0) {
                long j16 = this.f74738e;
                if (j16 > 0) {
                    strValueOf3 = String.valueOf(j15 - j16);
                } else if (this.f74738e > 0) {
                    strValueOf3 = String.valueOf(System.currentTimeMillis() - this.f74738e);
                } else {
                    strValueOf3 = "0";
                }
            } else if (this.f74738e > 0) {
                strValueOf3 = String.valueOf(System.currentTimeMillis() - this.f74738e);
            } else {
                strValueOf3 = "0";
            }
            linkedHashMap.put("delay_net_source", strValueOf3);
        }
        linkedHashMap.put("is_first_play", this.G ? "1" : "0");
        if (!this.f74754u || this.f74746m > 0 || this.f74755v) {
            if (z10) {
                this.f74755v = false;
            }
            ShortTvViewModel shortTvViewModel = this.f74735b;
            if (shortTvViewModel != null && (aVarD0 = shortTvViewModel.D0()) != null) {
                aVarD0.b(this.f74746m);
            }
            linkedHashMap.put("video_bitrate", String.valueOf(this.f74759z));
            linkedHashMap.put("audio_bitrate", String.valueOf(this.A));
            h.f69682a.C(this.H, "video_play", this.f74746m, linkedHashMap);
            i(z10);
        }
    }

    public final void e(boolean z10, boolean z11) {
        if (z10) {
            d(z11);
        } else {
            i(z11);
        }
    }

    public final void g(View rootView, boolean z10) {
        Intrinsics.h(rootView, "rootView");
        this.f74738e = System.currentTimeMillis();
        this.f74755v = true;
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        f(this, false, 1, null);
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    public final void j(String str) {
        this.f74753t = str;
    }

    public final void k(String str) {
        this.f74752s = str;
    }

    public final void l(int i10) {
        this.F = i10;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final void n(boolean z10) {
        this.G = z10;
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
        e.a.z(this, this.f74750q, null, 2, null);
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
        this.f74742i = System.currentTimeMillis();
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        if (this.f74742i > 0) {
            this.f74741h += System.currentTimeMillis() - this.f74742i;
            this.f74743j++;
            this.f74742i = 0L;
        }
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        this.f74747n++;
        this.f74744k = 0L;
    }

    @Override
    public void onMediaItemTransition(String str) {
        e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f74751r = errorInfo.getErrorCode();
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
        ur.a aVarD0;
        if (0 == this.f74750q) {
            f fVar = this.f74737d;
            this.f74750q = fVar != null ? fVar.getDuration() : 0L;
        }
        long j11 = this.f74745l;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f74746m += j10 - j11;
        }
        this.f74745l = j10;
        if (j10 > this.f74744k) {
            this.f74744k = j10;
        }
        ShortTvViewModel shortTvViewModel = this.f74735b;
        if (shortTvViewModel == null || (aVarD0 = shortTvViewModel.D0()) == null) {
            return;
        }
        aVarD0.a(this.f74746m);
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f74740g = System.currentTimeMillis();
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        this.A = i10;
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        this.f74759z = i10;
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        this.f74748o = System.currentTimeMillis();
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        if (this.f74748o != 0) {
            this.f74749p += System.currentTimeMillis() - this.f74748o;
            this.f74748o = 0L;
        }
    }

    public final void p(f fVar) {
        this.f74737d = fVar;
    }

    public final void q(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f74756w = pageFrom;
    }

    public final void r(String str) {
        Intrinsics.h(str, "<set-?>");
        this.H = str;
    }

    public final void s(Integer num) {
        this.f74758y = num != null ? num.intValue() : -1;
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }

    public final void t(Subject subject) {
        this.B = subject;
    }

    public final void u(int i10) {
        this.E = i10;
    }

    public final void v(String url) {
        Intrinsics.h(url, "url");
        this.f74757x = url;
    }
}
