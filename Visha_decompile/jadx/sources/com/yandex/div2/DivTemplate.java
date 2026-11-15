package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.livecaption.constant.ICode;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTemplate.a.b(DivTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((h2) ml0.a().K4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivTemplate {
        public final DivContainerTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivContainerTemplate divContainerTemplate) {
            super(null);
            y45.j(divContainerTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divContainerTemplate;
        }

        public final DivContainerTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivTemplate {
        public final DivCustomTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivCustomTemplate divCustomTemplate) {
            super(null);
            y45.j(divCustomTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divCustomTemplate;
        }

        public final DivCustomTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivTemplate {
        public final DivGalleryTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivGalleryTemplate divGalleryTemplate) {
            super(null);
            y45.j(divGalleryTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divGalleryTemplate;
        }

        public final DivGalleryTemplate c() {
            return this.c;
        }
    }

    public static final class e extends DivTemplate {
        public final DivGifImageTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivGifImageTemplate divGifImageTemplate) {
            super(null);
            y45.j(divGifImageTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divGifImageTemplate;
        }

        public final DivGifImageTemplate c() {
            return this.c;
        }
    }

    public static final class f extends DivTemplate {
        public final DivGridTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivGridTemplate divGridTemplate) {
            super(null);
            y45.j(divGridTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divGridTemplate;
        }

        public final DivGridTemplate c() {
            return this.c;
        }
    }

    public static final class g extends DivTemplate {
        public final DivImageTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(DivImageTemplate divImageTemplate) {
            super(null);
            y45.j(divImageTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divImageTemplate;
        }

        public final DivImageTemplate c() {
            return this.c;
        }
    }

    public static final class h extends DivTemplate {
        public final DivIndicatorTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(DivIndicatorTemplate divIndicatorTemplate) {
            super(null);
            y45.j(divIndicatorTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divIndicatorTemplate;
        }

        public final DivIndicatorTemplate c() {
            return this.c;
        }
    }

    public static final class i extends DivTemplate {
        public final DivInputTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(DivInputTemplate divInputTemplate) {
            super(null);
            y45.j(divInputTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divInputTemplate;
        }

        public final DivInputTemplate c() {
            return this.c;
        }
    }

    public static final class j extends DivTemplate {
        public final DivPagerTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(DivPagerTemplate divPagerTemplate) {
            super(null);
            y45.j(divPagerTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divPagerTemplate;
        }

        public final DivPagerTemplate c() {
            return this.c;
        }
    }

    public static final class k extends DivTemplate {
        public final DivSelectTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(DivSelectTemplate divSelectTemplate) {
            super(null);
            y45.j(divSelectTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSelectTemplate;
        }

        public final DivSelectTemplate c() {
            return this.c;
        }
    }

    public static final class l extends DivTemplate {
        public final DivSeparatorTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(DivSeparatorTemplate divSeparatorTemplate) {
            super(null);
            y45.j(divSeparatorTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSeparatorTemplate;
        }

        public final DivSeparatorTemplate c() {
            return this.c;
        }
    }

    public static final class m extends DivTemplate {
        public final DivSliderTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(DivSliderTemplate divSliderTemplate) {
            super(null);
            y45.j(divSliderTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSliderTemplate;
        }

        public final DivSliderTemplate c() {
            return this.c;
        }
    }

    public static final class n extends DivTemplate {
        public final DivStateTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(DivStateTemplate divStateTemplate) {
            super(null);
            y45.j(divStateTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divStateTemplate;
        }

        public final DivStateTemplate c() {
            return this.c;
        }
    }

    public static final class o extends DivTemplate {
        public final DivSwitchTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(DivSwitchTemplate divSwitchTemplate) {
            super(null);
            y45.j(divSwitchTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSwitchTemplate;
        }

        public final DivSwitchTemplate c() {
            return this.c;
        }
    }

    public static final class p extends DivTemplate {
        public final DivTabsTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(DivTabsTemplate divTabsTemplate) {
            super(null);
            y45.j(divTabsTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divTabsTemplate;
        }

        public final DivTabsTemplate c() {
            return this.c;
        }
    }

    public static final class q extends DivTemplate {
        public final DivTextTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(DivTextTemplate divTextTemplate) {
            super(null);
            y45.j(divTextTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divTextTemplate;
        }

        public final DivTextTemplate c() {
            return this.c;
        }
    }

    public static final class r extends DivTemplate {
        public final DivVideoTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(DivVideoTemplate divVideoTemplate) {
            super(null);
            y45.j(divVideoTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divVideoTemplate;
        }

        public final DivVideoTemplate c() {
            return this.c;
        }
    }

    public DivTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof g) {
            return "image";
        }
        if (this instanceof e) {
            return "gif";
        }
        if (this instanceof q) {
            return "text";
        }
        if (this instanceof l) {
            return "separator";
        }
        if (this instanceof b) {
            return TtmlNode.RUBY_CONTAINER;
        }
        if (this instanceof f) {
            return "grid";
        }
        if (this instanceof d) {
            return "gallery";
        }
        if (this instanceof j) {
            return "pager";
        }
        if (this instanceof p) {
            return "tabs";
        }
        if (this instanceof n) {
            return ICode.CALL.CALL_KEY_STATE;
        }
        if (this instanceof c) {
            return "custom";
        }
        if (this instanceof h) {
            return "indicator";
        }
        if (this instanceof m) {
            return "slider";
        }
        if (this instanceof o) {
            return ClientABTestDTOKt.SWITCH;
        }
        if (this instanceof i) {
            return "input";
        }
        if (this instanceof k) {
            return "select";
        }
        if (this instanceof r) {
            return "video";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof q) {
            return ((q) this).c();
        }
        if (this instanceof l) {
            return ((l) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof j) {
            return ((j) this).c();
        }
        if (this instanceof p) {
            return ((p) this).c();
        }
        if (this instanceof n) {
            return ((n) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof m) {
            return ((m) this).c();
        }
        if (this instanceof o) {
            return ((o) this).c();
        }
        if (this instanceof i) {
            return ((i) this).c();
        }
        if (this instanceof k) {
            return ((k) this).c();
        }
        if (this instanceof r) {
            return ((r) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((h2) ml0.a().K4().getValue()).b(ml0.b(), this);
    }

    public DivTemplate() {
    }
}
