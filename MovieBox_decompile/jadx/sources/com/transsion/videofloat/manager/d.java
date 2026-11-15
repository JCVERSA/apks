package com.transsion.videofloat.manager;

import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final dw.a f55766a;

    private final boolean f55767b;

    private long f55768c;

    private long f55769d;

    private long f55770e;

    private long f55771f;

    private long f55772g;

    private int f55773h;

    private long f55774i;

    private long f55775j;

    private long f55776k;

    private int f55777l;

    private long f55778m;

    private long f55779n;

    private long f55780o;

    private Integer f55781p;

    private String f55782q;

    private String f55783r;

    private String f55784s;

    private gj.c f55785t;

    public class a {

        public static final int[] f55786a;

        static {
            int[] iArr = new int[FloatPlayType.values().length];
            try {
                iArr[FloatPlayType.SHORT_TV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatPlayType.STREAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FloatPlayType.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55786a = iArr;
        }
    }

    public d(dw.a floatBean, boolean z10) {
        Intrinsics.h(floatBean, "floatBean");
        this.f55766a = floatBean;
        this.f55767b = z10;
        this.f55782q = "";
        if (z10) {
            q(floatBean.f().getDuration());
        }
    }

    private final gj.c c() {
        if (this.f55785t == null) {
            this.f55785t = (gj.c) gj.a.f61068a.a(gj.c.class);
        }
        return this.f55785t;
    }

    private final void o() {
        this.f55768c = 0L;
        this.f55769d = 0L;
        this.f55770e = 0L;
        this.f55771f = 0L;
        this.f55772g = 0L;
        this.f55773h = 0;
        this.f55774i = 0L;
        this.f55775j = 0L;
        this.f55776k = 0L;
        this.f55777l = 0;
        this.f55778m = 0L;
        this.f55779n = 0L;
        this.f55780o = 0L;
        this.f55783r = null;
    }

    public final void a() {
        this.f55769d = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0137  */
    public final void b() {
        String strValueOf;
        String str;
        String str2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("is_positive", String.valueOf(this.f55766a.w()));
        String strM = this.f55766a.m();
        if (strM == null) {
            strM = "";
        }
        linkedHashMap.put("post_id", strM);
        linkedHashMap.put("subject_id", this.f55766a.r());
        String str3 = this.f55784s;
        linkedHashMap.put("play_type", str3 != null ? str3 : "");
        linkedHashMap.put("opt_type", "float");
        if (this.f55766a.q() > 0) {
            linkedHashMap.put("se", String.valueOf(this.f55766a.q()));
        }
        if (this.f55766a.c() > 0) {
            linkedHashMap.put("ep", String.valueOf(this.f55766a.c()));
        }
        String strG = this.f55766a.g();
        if (strG != null && strG.length() != 0) {
            String strG2 = this.f55766a.g();
            Intrinsics.e(strG2);
            linkedHashMap.put(WebConstants.PAGE_FROM, strG2);
        }
        String strE = this.f55766a.e();
        if (strE != null && strE.length() != 0) {
            String strE2 = this.f55766a.e();
            Intrinsics.e(strE2);
            linkedHashMap.put("ops", strE2);
        }
        if (this.f55766a.s() != null) {
            linkedHashMap.put("subject_type", String.valueOf(this.f55766a.s()));
        }
        if (this.f55770e > 0 || this.f55767b) {
            linkedHashMap.put("is_start", "1");
            long j10 = this.f55770e;
            if (j10 > 0) {
                long j11 = this.f55768c;
                linkedHashMap.put("delay_v", (j11 <= 0 || j10 <= 0) ? "0" : String.valueOf(j10 - j11));
                long j12 = this.f55769d;
                if (j12 > 0) {
                    long j13 = this.f55770e;
                    if (j13 > 0) {
                        strValueOf = String.valueOf(j13 - j12);
                    } else {
                        strValueOf = "0";
                    }
                } else {
                    strValueOf = "0";
                }
                linkedHashMap.put("delay", strValueOf);
            }
            linkedHashMap.put("buffer_time", String.valueOf(this.f55771f));
            linkedHashMap.put("buffer_count", String.valueOf(this.f55773h));
            linkedHashMap.put("play_complete", String.valueOf(((this.f55774i / this.f55780o) * 100.0f) + (this.f55777l * 100.0f)));
            linkedHashMap.put("play_duration", String.valueOf(this.f55776k));
            linkedHashMap.put("pause_duration", String.valueOf(this.f55779n));
            linkedHashMap.put("completeCount", String.valueOf(this.f55777l));
            linkedHashMap.put("play_duration_float", String.valueOf(this.f55776k));
        } else {
            linkedHashMap.put("is_start", "0");
            linkedHashMap.put("delay_v", this.f55768c > 0 ? String.valueOf(System.currentTimeMillis() - this.f55768c) : "0");
            linkedHashMap.put("delay", this.f55769d > 0 ? String.valueOf(System.currentTimeMillis() - this.f55769d) : "0");
        }
        String str4 = this.f55783r;
        if (str4 != null) {
            linkedHashMap.put("is_preloaded", str4);
        }
        linkedHashMap.put("url", this.f55782q);
        linkedHashMap.put("builtin", this.f55766a.a() ? "1" : "0");
        long j14 = this.f55780o;
        if (j14 > 0) {
            linkedHashMap.put("total_duration", String.valueOf(j14));
        }
        linkedHashMap.put("player_type", "1");
        Integer num = this.f55781p;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num));
        }
        gj.c cVarC = c();
        if (cVarC != null) {
            cVarC.b(this.f55776k);
        }
        int i10 = a.f55786a[this.f55766a.i().ordinal()];
        if (i10 != 1) {
            str2 = "long_video_play";
            if (i10 == 2) {
                str = "stream_detail";
            } else if (i10 != 3) {
                return;
            } else {
                str = "local_video_detail";
            }
        } else {
            str = "minitv_play";
            str2 = "video_play";
        }
        qi.h.f69682a.C(str, str2, this.f55776k, linkedHashMap);
        o();
    }

    public final void d() {
        this.f55768c = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "initView", false, 4, null);
    }

    public final void e() {
        h(this.f55780o);
    }

    public final void f() {
        this.f55772g = System.currentTimeMillis();
    }

    public final void g() {
        if (this.f55772g > 0) {
            this.f55771f += System.currentTimeMillis() - this.f55772g;
            this.f55773h++;
            this.f55772g = 0L;
        }
    }

    public final void h(long j10) {
        long j11 = this.f55775j;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 1000) {
            this.f55776k += j10 - j11;
        }
        this.f55775j = j10;
        if (j10 > this.f55774i) {
            this.f55774i = j10;
        }
        gj.c cVarC = c();
        if (cVarC != null) {
            cVarC.a(this.f55776k);
        }
    }

    public final void i() {
        q(this.f55766a.f().getDuration());
        wf.a.C0922a.f(wf.a.f74274a, "video_play", "onRenderFirstFrame", false, 4, null);
        this.f55770e = System.currentTimeMillis();
    }

    public final void j() {
        this.f55778m = System.currentTimeMillis();
    }

    public final void k() {
        if (this.f55778m != 0) {
            this.f55779n += System.currentTimeMillis() - this.f55778m;
            this.f55778m = 0L;
        }
    }

    public final void l() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f55766a.r());
        map.put(EventConstants.KEY_ACTION, "float_back_to_detail");
        String strE = this.f55766a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        qi.h.f69682a.o(this.f55766a.h(), map);
    }

    public final void m() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f55766a.r());
        map.put(EventConstants.KEY_ACTION, "float_close");
        String strE = this.f55766a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        qi.h.f69682a.o(this.f55766a.h(), map);
    }

    public final void n() {
        HashMap map = new HashMap();
        map.put("subject_id", this.f55766a.r());
        map.put(EventConstants.KEY_ACTION, "float_show");
        map.put("is_positive", String.valueOf(this.f55766a.w()));
        String strE = this.f55766a.e();
        if (strE == null) {
            strE = "";
        }
        map.put("ops", strE);
        qi.h.f69682a.z(this.f55766a.h(), map);
    }

    public final void p(String type) {
        Intrinsics.h(type, "type");
        this.f55784s = type;
    }

    public final void q(long j10) {
        this.f55780o = j10;
    }

    public final void r(String url) {
        Intrinsics.h(url, "url");
        this.f55782q = url;
    }
}
