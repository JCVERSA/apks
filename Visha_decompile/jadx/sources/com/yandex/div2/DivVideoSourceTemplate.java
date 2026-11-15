package com.yandex.div2;

import com.lzy.okgo.model.Progress;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.su2;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivVideoSourceTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivVideoSourceTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivVideoSourceTemplate(hx7Var, null, false, jSONObject, 6, null);
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

    public DivVideoSourceTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "bitrate");
        y45.j(tp3Var2, Progress.MIMETYPE);
        y45.j(tp3Var3, "resolution");
        y45.j(tp3Var4, "url");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((su2) ml0.a().l9().getValue()).b(ml0.b(), this);
    }

    public static final class ResolutionTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivVideoSourceTemplate.ResolutionTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivVideoSourceTemplate.ResolutionTemplate(hx7Var, null, false, jSONObject, 6, null);
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

        public ResolutionTemplate(tp3 tp3Var, tp3 tp3Var2) {
            y45.j(tp3Var, "height");
            y45.j(tp3Var2, "width");
            this.a = tp3Var;
            this.b = tp3Var2;
        }

        @Override
        public JSONObject s() {
            return ((k5.c) ml0.a().o9().getValue()).b(ml0.b(), this);
        }

        public ResolutionTemplate(hx7 hx7Var, ResolutionTemplate resolutionTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : resolutionTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ResolutionTemplate(hx7 hx7Var, ResolutionTemplate resolutionTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivVideoSourceTemplate(hx7 hx7Var, DivVideoSourceTemplate divVideoSourceTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divVideoSourceTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivVideoSourceTemplate(hx7 hx7Var, DivVideoSourceTemplate divVideoSourceTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
