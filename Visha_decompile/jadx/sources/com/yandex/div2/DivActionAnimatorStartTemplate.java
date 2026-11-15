package com.yandex.div2;

import com.transsion.livecaption.constant.ICode;
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

public final class DivActionAnimatorStartTemplate implements d65, ac5 {
    public static final a i = new a(null);
    public static final s74 j = new s74() {
        @Override
        public final DivActionAnimatorStartTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivActionAnimatorStartTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;
    public final tp3 f;
    public final tp3 g;
    public final tp3 h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivActionAnimatorStartTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8) {
        y45.j(tp3Var, "animatorId");
        y45.j(tp3Var2, ICode.CALL.CALL_KEY_DIRECTION);
        y45.j(tp3Var3, "duration");
        y45.j(tp3Var4, "endValue");
        y45.j(tp3Var5, "interpolator");
        y45.j(tp3Var6, "repeatCount");
        y45.j(tp3Var7, "startDelay");
        y45.j(tp3Var8, "startValue");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
        this.f = tp3Var6;
        this.g = tp3Var7;
        this.h = tp3Var8;
    }

    @Override
    public JSONObject s() {
        return ((DivActionAnimatorStartJsonParser.c) ml0.a().L().getValue()).b(ml0.b(), this);
    }

    public DivActionAnimatorStartTemplate(hx7 hx7Var, DivActionAnimatorStartTemplate divActionAnimatorStartTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divActionAnimatorStartTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivActionAnimatorStartTemplate(hx7 hx7Var, DivActionAnimatorStartTemplate divActionAnimatorStartTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
