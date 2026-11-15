package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public abstract class DivShapeTemplate implements d65, ac5 {
    public static final b a = new b(null);
    public static final s74 b = new s74() {
        @Override
        public final DivShapeTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivShapeTemplate.b.b(DivShapeTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivShapeTemplate {
        public final DivCircleShapeTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivCircleShapeTemplate divCircleShapeTemplate) {
            super(null);
            y45.j(divCircleShapeTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divCircleShapeTemplate;
        }

        public final DivCircleShapeTemplate c() {
            return this.c;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivShapeTemplate b(b bVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return bVar.a(hx7Var, z, jSONObject);
        }

        public final DivShapeTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((n3) ml0.a().T6().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivShapeTemplate {
        public final DivRoundedRectangleShapeTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate) {
            super(null);
            y45.j(divRoundedRectangleShapeTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divRoundedRectangleShapeTemplate;
        }

        public final DivRoundedRectangleShapeTemplate c() {
            return this.c;
        }
    }

    public DivShapeTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "rounded_rectangle";
        }
        if (this instanceof a) {
            return TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof a) {
            return ((a) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((n3) ml0.a().T6().getValue()).b(ml0.b(), this);
    }

    public DivShapeTemplate() {
    }
}
