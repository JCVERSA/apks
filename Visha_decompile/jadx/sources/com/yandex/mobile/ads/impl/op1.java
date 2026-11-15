package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import com.transsion.push.PushConstants;
import defpackage.g1a;
import defpackage.y45;
import java.util.Map;

public final class op1 {
    private final String a;
    private final Map<String, Object> b;
    private final f c;

    public static final class a {
        public static final String a = g1a.v("yandex");
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v43 com.yandex.mobile.ads.impl.op1$b[], still in use, count: 1, list:
      (r0v43 com.yandex.mobile.ads.impl.op1$b[]) from 0x0319: INVOKE (r0v43 com.yandex.mobile.ads.impl.op1$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b {
        c("ad_loading_result"),
        d("ad_rendering_result"),
        e("adapter_auto_refresh"),
        f("adapter_invalid"),
        g("adapter_request"),
        h("adapter_response"),
        i("adapter_bidder_token_request"),
        j("adtune"),
        k("ad_request"),
        l("ad_response"),
        m("vast_request"),
        n("vast_response"),
        o("vast_wrapper_request"),
        p("vast_wrapper_response"),
        q("video_ad_start"),
        r("video_ad_complete"),
        s("video_ad_player_error"),
        t("vmap_request"),
        u("vmap_response"),
        v("rendering_start"),
        w("dsp_rendering_start"),
        x("impression_tracking_start"),
        y("impression_tracking_success"),
        z("impression_tracking_failure"),
        A("forced_impression_tracking_failure"),
        B("adapter_action"),
        C(PushConstants.PUSH_SERVICE_TYPE_CLICK),
        D(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE),
        E("feedback"),
        F("deeplink"),
        G("show_social_actions"),
        H("bound_assets"),
        I("rendered_assets"),
        J("rebind"),
        K("binding_failure"),
        L("expected_view_missing"),
        M("returned_to_app"),
        N("reward"),
        O("video_ad_rendering_result"),
        P("multibanner_event"),
        Q("ad_view_size_info"),
        R("dsp_impression_tracking_start"),
        S("dsp_impression_tracking_success"),
        T("dsp_impression_tracking_failure"),
        U("dsp_forced_impression_tracking_failure"),
        V("log"),
        W("open_bidding_token_generation_result"),
        X("sdk_configuration_success"),
        Y("sdk_configuration_failure"),
        Z("tracking_event"),
        a0("ad_verification_result"),
        b0("sdk_configuration_request"),
        c0("activity_result_opened");

        private final String b;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b(String str) {
            super(str, i);
            this.b = str;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) d0.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.op1$c[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.op1$c[]) from 0x0034: INVOKE (r0v1 com.yandex.mobile.ads.impl.op1$c[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {
        c("success"),
        d("error"),
        e("no_ads"),
        EF43("filtered");

        private final String b;

        static {
            kotlin.enums.a.a(cVarArr);
        }

        private c(String str) {
            super(str, i);
            this.b = str;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public op1(b bVar, Map<String, ? extends Object> map, f fVar) {
        this(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(map), fVar);
        y45.j(bVar, "reportType");
        y45.j(map, "reportData");
    }

    public final f a() {
        return this.c;
    }

    public final Map<String, Object> b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof op1)) {
            return false;
        }
        op1 op1Var = (op1) obj;
        return y45.e(this.a, op1Var.a) && y45.e(this.b, op1Var.b) && y45.e(this.c, op1Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        f fVar = this.c;
        return iHashCode + (fVar == null ? 0 : fVar.hashCode());
    }

    public final String toString() {
        return "Report(eventName=" + this.a + ", data=" + this.b + ", abExperiments=" + this.c + ")";
    }

    public op1(String str, Map<String, Object> map, f fVar) {
        y45.j(str, "eventName");
        y45.j(map, "data");
        this.a = str;
        this.b = map;
        this.c = fVar;
        map.put("sdk_version", "7.12.2");
    }
}
