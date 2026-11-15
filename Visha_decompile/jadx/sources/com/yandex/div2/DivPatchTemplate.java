package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hb0;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivPatchTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(DivPatch.Mode.PARTIAL);
    public static final s74 g = new s74() {
        @Override
        public final DivPatchTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivPatchTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivPatchTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "changes");
        y45.j(tp3Var2, hb0.KEY_NAME_MODE);
        y45.j(tp3Var3, "onAppliedActions");
        y45.j(tp3Var4, "onFailedActions");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((DivPatchJsonParser.c) ml0.a().G5().getValue()).b(ml0.b(), this);
    }

    public static final class ChangeTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivPatchTemplate.ChangeTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivPatchTemplate.ChangeTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public ChangeTemplate(tp3 tp3Var, tp3 tp3Var2) {
            y45.j(tp3Var, TtmlNode.ATTR_ID);
            y45.j(tp3Var2, "items");
            this.a = tp3Var;
            this.b = tp3Var2;
        }

        @Override
        public JSONObject s() {
            return ((t2) ml0.a().D5().getValue()).b(ml0.b(), this);
        }

        public ChangeTemplate(hx7 hx7Var, ChangeTemplate changeTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : changeTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ChangeTemplate(hx7 hx7Var, ChangeTemplate changeTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivPatchTemplate(hx7 hx7Var, DivPatchTemplate divPatchTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divPatchTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivPatchTemplate(hx7 hx7Var, DivPatchTemplate divPatchTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
