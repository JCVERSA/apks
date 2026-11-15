package com.transsion.postdetail.layer;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.web.api.WebConstants;
import gj.c;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class b {
    private c A;
    private int D;

    private f f46895b;

    private String f46896c;

    private PostSubjectItem f46897d;

    private long f46898e;

    private long f46899f;

    private long f46900g;

    private long f46901h;

    private long f46902i;

    private int f46903j;

    private long f46904k;

    private long f46905l;

    private long f46906m;

    private int f46907n;

    private long f46908o;

    private long f46909p;

    private long f46910q;

    private Integer f46911r;

    private String f46912s;

    private String f46913t;

    private String f46914u;

    private boolean f46915v;

    private final String f46894a = b.class.getSimpleName();

    private boolean f46916w = true;

    private String f46917x = "";

    private String f46918y = "";

    private int f46919z = -1;
    private String B = "";
    private String C = "";
    private String E = "postdetail";

    public static void e(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.d(z10);
    }

    private final c f() {
        if (this.A == null) {
            this.A = (c) gj.a.f61068a.a(c.class);
        }
        return this.A;
    }

    private final void q(boolean z10) {
        this.f46898e = 0L;
        this.f46899f = 0L;
        this.f46900g = 0L;
        this.f46901h = 0L;
        this.f46902i = 0L;
        this.f46903j = 0;
        this.f46904k = 0L;
        this.f46905l = 0L;
        this.f46906m = 0L;
        this.f46907n = 0;
        this.f46908o = 0L;
        this.f46909p = 0L;
        this.f46910q = 0L;
        if (z10) {
            return;
        }
        this.f46919z = -1;
        this.f46915v = false;
    }

    public final void A(String url) {
        Intrinsics.h(url, "url");
        this.f46918y = url;
    }

    public final void a(int i10, int i11) {
        this.f46899f = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "addSurface", false, 4, null);
    }

    public final void b() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46894a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPause", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "pause");
        h.f69682a.q(this.E, "module_name", linkedHashMap);
    }

    public final void c() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46894a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "clickPlay", false, 4, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        h.f69682a.q(this.E, "module_name", linkedHashMap);
    }

    /* JADX WARN: Code duplicated, block: B:88:0x0174  */
    /* JADX WARN: Code duplicated, block: B:94:0x018a  */
    public final void d(boolean z10) {
        String postId;
        String subjectId;
        String itemType;
        String strValueOf;
        String strValueOf2;
        String rec_ops;
        Subject subject;
        Subject subject2;
        if (this.f46898e == 0 && !this.f46915v) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f46894a;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f46915v) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.f46894a;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.v(c0922a2, TAG2, "curVideoIsApp2Background = " + z10, false, 4, null);
            this.f46915v = z10;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PostSubjectItem postSubjectItem = this.f46897d;
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap.put("post_id", postId);
        linkedHashMap.put("opt_type", this.B);
        PostSubjectItem postSubjectItem2 = this.f46897d;
        if (postSubjectItem2 == null || (subject2 = postSubjectItem2.getSubject()) == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        String str = this.f46912s;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("base_post_id", str);
        PostSubjectItem postSubjectItem3 = this.f46897d;
        if (postSubjectItem3 == null || (itemType = postSubjectItem3.getItemType()) == null) {
            itemType = "";
        }
        linkedHashMap.put("item_type", itemType);
        linkedHashMap.put("ep", this.C);
        String str2 = this.f46913t;
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("base_item_type", str2);
        PostSubjectItem postSubjectItem4 = this.f46897d;
        linkedHashMap.put("has_resource", String.valueOf((postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : subject.getHasResource()));
        String strH = this.f46917x;
        if (strH.length() == 0) {
            strH = h.f69682a.h();
        }
        linkedHashMap.put(WebConstants.PAGE_FROM, strH);
        PostSubjectItem postSubjectItem5 = this.f46897d;
        if (!TextUtils.isEmpty(postSubjectItem5 != null ? postSubjectItem5.getRec_ops() : null)) {
            PostSubjectItem postSubjectItem6 = this.f46897d;
            if (postSubjectItem6 == null || (rec_ops = postSubjectItem6.getRec_ops()) == null) {
                rec_ops = "";
            }
            linkedHashMap.put("ops", rec_ops);
        }
        String str3 = this.f46914u;
        if (str3 != null && str3.length() != 0) {
            String str4 = this.f46914u;
            linkedHashMap.put("subpage_name", str4 != null ? str4 : "");
        }
        int i10 = this.D;
        if (i10 > 0) {
            linkedHashMap.put("subject_type", String.valueOf(i10));
        }
        if (this.f46900g > 0 || (this.f46915v && this.f46906m > 0)) {
            linkedHashMap.put("is_start", "1");
            long j10 = this.f46898e;
            if (j10 > 0) {
                long j11 = this.f46900g;
                if (j11 > 0) {
                    strValueOf = String.valueOf(j11 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap.put("delay_v", strValueOf);
            long j12 = this.f46899f;
            if (j12 > 0) {
                long j13 = this.f46900g;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j12);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap.put("delay", strValueOf2);
            linkedHashMap.put("buffer_time", String.valueOf(this.f46901h));
            linkedHashMap.put("buffer_count", String.valueOf(this.f46903j));
            linkedHashMap.put("play_complete", String.valueOf(((this.f46904k / this.f46910q) * 100.0f) + (this.f46907n * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f46906m));
            linkedHashMap.put("pause_duration", String.valueOf(this.f46909p));
            linkedHashMap.put("completeCount", String.valueOf(this.f46907n));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f46898e > 0 ? String.valueOf(System.currentTimeMillis() - this.f46898e) : "0");
            linkedHashMap.put("delay", this.f46899f > 0 ? String.valueOf(System.currentTimeMillis() - this.f46899f) : "0");
        }
        linkedHashMap.put("app_to_background", z10 ? "1" : "0");
        linkedHashMap.put("is_preloaded", ORPlayerPreloadManager.f46433i.a().e(this.f46918y) ? "1" : "0");
        linkedHashMap.put("url", this.f46918y);
        PostSubjectItem postSubjectItem7 = this.f46897d;
        linkedHashMap.put("builtin", (postSubjectItem7 == null || !postSubjectItem7.getBuiltIn()) ? "0" : "1");
        long j14 = this.f46910q;
        if (j14 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j14));
        }
        int i11 = this.f46919z;
        if (i11 >= 0) {
            linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        }
        Integer num = this.f46911r;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        if (!this.f46915v || this.f46906m > 0 || this.f46916w) {
            if (z10) {
                this.f46916w = false;
            }
            c cVarF = f();
            if (cVarF != null) {
                cVarF.b(this.f46906m);
            }
            h.f69682a.C(this.E, "video_play", this.f46906m, linkedHashMap);
            q(z10);
        }
    }

    public final void g() {
        this.f46898e = System.currentTimeMillis();
        this.f46916w = true;
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    public final void h() {
        this.f46902i = System.currentTimeMillis();
    }

    public final void i() {
        if (this.f46902i > 0) {
            this.f46901h += System.currentTimeMillis() - this.f46902i;
            this.f46903j++;
            this.f46902i = 0L;
        }
    }

    public final void j() {
        this.f46907n++;
        this.f46904k = 0L;
    }

    public final void k(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f46911r = errorInfo.getErrorCode();
    }

    public final void l(long j10) {
        f fVar = this.f46895b;
        this.f46910q = fVar != null ? fVar.getDuration() : 0L;
        long j11 = this.f46905l;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f46906m += j10 - j11;
        }
        this.f46905l = j10;
        if (j10 > this.f46904k) {
            this.f46904k = j10;
        }
        c cVarF = f();
        if (cVarF != null) {
            cVarF.a(this.f46906m);
        }
    }

    public final void m() {
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f46900g = System.currentTimeMillis();
    }

    public final void n() {
        this.f46908o = System.currentTimeMillis();
    }

    public final void o() {
        if (this.f46908o != 0) {
            this.f46909p += System.currentTimeMillis() - this.f46908o;
            this.f46908o = 0L;
        }
    }

    public final void p() {
        e(this, false, 1, null);
    }

    public final void r(String str) {
        this.f46913t = str;
    }

    public final void s(String str) {
        this.f46912s = str;
    }

    public final void t(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.f46917x = pageFrom;
    }

    public final void u(String str) {
        Intrinsics.h(str, "<set-?>");
        this.E = str;
    }

    public final void v(f orPlayer) {
        Intrinsics.h(orPlayer, "orPlayer");
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46894a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setPlayer----->", false, 4, null);
        this.f46895b = orPlayer;
    }

    public final void w(Integer num) {
        this.f46919z = num != null ? num.intValue() : -1;
    }

    public final void x(String str, PostSubjectItem postSubjectItem) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46894a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setPostData----->", false, 4, null);
        this.f46896c = str;
        this.f46897d = postSubjectItem;
    }

    public final void y(int i10) {
        this.D = i10;
    }

    public final void z(String subpageName) {
        Intrinsics.h(subpageName, "subpageName");
        this.f46914u = subpageName;
    }
}
