package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivDataTemplate implements d65, ac5 {
    public static final a h = new a(null);
    public static final Expression i = Expression.a.a(DivTransitionSelector.NONE);
    public static final s74 j = new s74() {
        @Override
        public final DivDataTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivDataTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;
    public final tp3 f;
    public final tp3 g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivDataTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7) {
        y45.j(tp3Var, "functions");
        y45.j(tp3Var2, "logId");
        y45.j(tp3Var3, "states");
        y45.j(tp3Var4, "timers");
        y45.j(tp3Var5, "transitionAnimationSelector");
        y45.j(tp3Var6, "variableTriggers");
        y45.j(tp3Var7, "variables");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
        this.f = tp3Var6;
        this.g = tp3Var7;
    }

    @Override
    public JSONObject s() {
        return ((DivDataJsonParser.c) ml0.a().C2().getValue()).b(ml0.b(), this);
    }

    public static final class StateTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivDataTemplate.StateTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivDataTemplate.StateTemplate(hx7Var, null, false, jSONObject, 6, null);
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

        public StateTemplate(tp3 tp3Var, tp3 tp3Var2) {
            y45.j(tp3Var, TtmlNode.TAG_DIV);
            y45.j(tp3Var2, "stateId");
            this.a = tp3Var;
            this.b = tp3Var2;
        }

        @Override
        public JSONObject s() {
            return ((v0) ml0.a().E2().getValue()).b(ml0.b(), this);
        }

        public StateTemplate(hx7 hx7Var, StateTemplate stateTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : stateTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public StateTemplate(hx7 hx7Var, StateTemplate stateTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivDataTemplate(hx7 hx7Var, DivDataTemplate divDataTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divDataTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivDataTemplate(hx7 hx7Var, DivDataTemplate divDataTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
