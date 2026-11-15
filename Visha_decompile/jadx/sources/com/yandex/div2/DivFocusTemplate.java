package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.mj2;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivFocusTemplate implements d65, ac5 {
    public static final a f = new a(null);
    public static final s74 g = new s74() {
        @Override
        public final DivFocusTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivFocusTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivFocusTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
        y45.j(tp3Var, "background");
        y45.j(tp3Var2, "border");
        y45.j(tp3Var3, "nextFocusIds");
        y45.j(tp3Var4, "onBlur");
        y45.j(tp3Var5, "onFocus");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
    }

    @Override
    public JSONObject s() {
        return ((mj2) ml0.a().x3().getValue()).b(ml0.b(), this);
    }

    public static final class NextFocusIdsTemplate implements d65, ac5 {
        public static final a f = new a(null);
        public static final s74 g = new s74() {
            @Override
            public final DivFocusTemplate.NextFocusIdsTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivFocusTemplate.NextFocusIdsTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;
        public final tp3 d;
        public final tp3 e;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public NextFocusIdsTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
            y45.j(tp3Var, ICode.CALL.CALL_DATA_DIRECTION_DOWN);
            y45.j(tp3Var2, "forward");
            y45.j(tp3Var3, TtmlNode.LEFT);
            y45.j(tp3Var4, TtmlNode.RIGHT);
            y45.j(tp3Var5, ICode.CALL.CALL_DATA_DIRECTION_UP);
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
            this.d = tp3Var4;
            this.e = tp3Var5;
        }

        @Override
        public JSONObject s() {
            return ((l1) ml0.a().A3().getValue()).b(ml0.b(), this);
        }

        public NextFocusIdsTemplate(hx7 hx7Var, NextFocusIdsTemplate nextFocusIdsTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : nextFocusIdsTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public NextFocusIdsTemplate(hx7 hx7Var, NextFocusIdsTemplate nextFocusIdsTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivFocusTemplate(hx7 hx7Var, DivFocusTemplate divFocusTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divFocusTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivFocusTemplate(hx7 hx7Var, DivFocusTemplate divFocusTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
