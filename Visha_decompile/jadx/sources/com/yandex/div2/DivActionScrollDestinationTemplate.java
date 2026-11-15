package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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

public abstract class DivActionScrollDestinationTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivActionScrollDestinationTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionScrollDestinationTemplate.a.b(DivActionScrollDestinationTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivActionScrollDestinationTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivActionScrollDestinationTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((i) ml0.a().E0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivActionScrollDestinationTemplate {
        public final EndDestinationTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(EndDestinationTemplate endDestinationTemplate) {
            super(null);
            y45.j(endDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = endDestinationTemplate;
        }

        public final EndDestinationTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivActionScrollDestinationTemplate {
        public final IndexDestinationTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(IndexDestinationTemplate indexDestinationTemplate) {
            super(null);
            y45.j(indexDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = indexDestinationTemplate;
        }

        public final IndexDestinationTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivActionScrollDestinationTemplate {
        public final OffsetDestinationTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(OffsetDestinationTemplate offsetDestinationTemplate) {
            super(null);
            y45.j(offsetDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = offsetDestinationTemplate;
        }

        public final OffsetDestinationTemplate c() {
            return this.c;
        }
    }

    public static final class e extends DivActionScrollDestinationTemplate {
        public final StartDestinationTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(StartDestinationTemplate startDestinationTemplate) {
            super(null);
            y45.j(startDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = startDestinationTemplate;
        }

        public final StartDestinationTemplate c() {
            return this.c;
        }
    }

    public DivActionScrollDestinationTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof d) {
            return TypedValues.CycleType.S_WAVE_OFFSET;
        }
        if (this instanceof c) {
            return "index";
        }
        if (this instanceof e) {
            return TtmlNode.START;
        }
        if (this instanceof b) {
            return TtmlNode.END;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((i) ml0.a().E0().getValue()).b(ml0.b(), this);
    }

    public DivActionScrollDestinationTemplate() {
    }
}
