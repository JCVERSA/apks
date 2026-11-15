package com.transsion.ugcvideodetail.hepler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f54221a;

    private final String f54222b;

    private final String f54223c;

    private com.transsion.player.orplayer.f f54224d;

    private UGCVideo f54225e;

    private long f54226f;

    private long f54227g;

    private long f54228h;

    private long f54229i;

    private long f54230j;

    private int f54231k;

    private long f54232l;

    private long f54233m;

    private long f54234n;

    private int f54235o;

    private long f54236p;

    private long f54237q;

    private long f54238r;

    private Integer f54239s;

    private boolean f54240t;

    private boolean f54241u;

    private String f54242v;

    private int f54243w;

    private gj.c f54244x;

    private String f54245y;

    private int f54246z;

    public a(String pageName, String str) {
        Intrinsics.h(pageName, "pageName");
        this.f54221a = pageName;
        this.f54222b = str;
        this.f54223c = a.class.getSimpleName();
        this.f54241u = true;
        this.f54242v = "";
        this.f54243w = -1;
        this.f54245y = "";
    }

    public static void d(a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        aVar.b(z10);
    }

    private final gj.c e() {
        if (this.f54244x == null) {
            this.f54244x = (gj.c) gj.a.f61068a.a(gj.c.class);
        }
        return this.f54244x;
    }

    private final void q(boolean z10) {
        this.f54226f = 0L;
        this.f54227g = 0L;
        this.f54228h = 0L;
        this.f54229i = 0L;
        this.f54230j = 0L;
        this.f54231k = 0;
        this.f54232l = 0L;
        this.f54233m = 0L;
        this.f54234n = 0L;
        this.f54235o = 0;
        this.f54236p = 0L;
        this.f54237q = 0L;
        this.f54238r = 0L;
        if (z10) {
            return;
        }
        this.f54243w = -1;
        this.f54240t = false;
    }

    public final void a() {
        this.f54227g = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f6  */
    public final void b(boolean z10) {
        String ops;
        String strValueOf;
        String strValueOf2;
        if (this.f54226f == 0 && !this.f54240t) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f54223c;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f54240t) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f54223c;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.v(c0922a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f54240t = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ep", this.f54245y);
        String strH = this.f54222b;
        if (strH == null) {
            strH = qi.h.f69682a.h();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strH);
        UGCVideo uGCVideo = this.f54225e;
        if (uGCVideo == null || (ops = uGCVideo.getOps()) == null) {
            ops = "";
        }
        linkedHashMap.put("ops", ops);
        int i10 = this.f54246z;
        if (i10 > 0) {
            linkedHashMap.put("subject_type", String.valueOf(i10));
        }
        if (this.f54228h > 0 || (this.f54240t && this.f54234n > 0)) {
            linkedHashMap.put("is_start", "1");
            long j10 = this.f54226f;
            if (j10 > 0) {
                long j11 = this.f54228h;
                if (j11 > 0) {
                    strValueOf = String.valueOf(j11 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j12 = this.f54227g;
            if (j12 > 0) {
                long j13 = this.f54228h;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f54229i));
            linkedHashMap.put("buffer_count", String.valueOf(this.f54231k));
            linkedHashMap.put("play_complete", String.valueOf(((this.f54232l / this.f54238r) * 100.0f) + (this.f54235o * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f54234n));
            linkedHashMap.put("pause_duration", String.valueOf(this.f54237q));
            linkedHashMap.put("completeCount", String.valueOf(this.f54235o));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f54226f > 0 ? String.valueOf(System.currentTimeMillis() - this.f54226f) : "0");
            linkedHashMap.put("delay", this.f54227g > 0 ? String.valueOf(System.currentTimeMillis() - this.f54227g) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("is_preloaded", ORPlayerPreloadManager.f46433i.a().e(this.f54242v) ? "1" : "0");
        linkedHashMap.put("url", this.f54242v);
        long j14 = this.f54238r;
        if (j14 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j14));
        }
        int i11 = this.f54243w;
        if (i11 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        }
        Integer num = this.f54239s;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (!this.f54240t || this.f54234n > 0 || this.f54241u) {
            if (z10) {
                this.f54241u = false;
            }
            gj.c cVarE = e();
            if (cVarE != null) {
                cVarE.b(this.f54234n);
            }
            qi.h.f69682a.C(this.f54221a, "video_play", this.f54234n, linkedHashMap);
            q(z10);
        }
    }

    public final void c(boolean z10, boolean z11) {
        if (z10) {
            b(z11);
        } else {
            q(z11);
        }
    }

    public final void f() {
        this.f54226f = System.currentTimeMillis();
        this.f54241u = true;
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    public final void g() {
        l(this.f54238r);
    }

    public final void h() {
        this.f54230j = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f54230j > 0) {
            this.f54229i += System.currentTimeMillis() - this.f54230j;
            this.f54231k++;
            this.f54230j = 0L;
        }
    }

    public final void j() {
        this.f54235o++;
        this.f54232l = 0L;
    }

    public final void k(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f54239s = errorInfo.getErrorCode();
    }

    public final void l(long j10) {
        if (this.f54238r <= 0) {
            com.transsion.player.orplayer.f fVar = this.f54224d;
            this.f54238r = fVar != null ? fVar.getDuration() : 0L;
        }
        long j11 = this.f54233m;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f54234n += j10 - j11;
        }
        this.f54233m = j10;
        if (j10 > this.f54232l) {
            this.f54232l = j10;
        }
        gj.c cVarE = e();
        if (cVarE != null) {
            cVarE.a(this.f54234n);
        }
    }

    public final void m() {
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f54228h = System.currentTimeMillis();
    }

    public final void n() {
        this.f54236p = System.currentTimeMillis();
    }

    public final void o() {
        if (this.f54236p != 0) {
            this.f54237q += System.currentTimeMillis() - this.f54236p;
            this.f54236p = 0L;
        }
    }

    public final void p() {
        d(this, false, 1, null);
    }

    public final void r(Integer num) {
        this.f54243w = num != null ? num.intValue() : -1;
    }

    public final void s(UGCVideo uGCVideo) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f54223c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setData----->", false, 4, null);
        this.f54225e = uGCVideo;
    }

    public final void t(com.transsion.player.orplayer.f fVar) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f54223c;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setPlayer----->", false, 4, null);
        this.f54224d = fVar;
    }

    public final void u(String url) {
        Intrinsics.h(url, "url");
        this.f54242v = url;
    }
}
