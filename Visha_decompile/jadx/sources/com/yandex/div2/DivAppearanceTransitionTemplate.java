package com.yandex.div2;

import com.transsion.tools.fragments.SettingFragment;
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

public abstract class DivAppearanceTransitionTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivAppearanceTransitionTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivAppearanceTransitionTemplate.a.b(DivAppearanceTransitionTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivAppearanceTransitionTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivAppearanceTransitionTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((z) ml0.a().x1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivAppearanceTransitionTemplate {
        public final DivFadeTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivFadeTransitionTemplate divFadeTransitionTemplate) {
            super(null);
            y45.j(divFadeTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divFadeTransitionTemplate;
        }

        public final DivFadeTransitionTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivAppearanceTransitionTemplate {
        public final DivScaleTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivScaleTransitionTemplate divScaleTransitionTemplate) {
            super(null);
            y45.j(divScaleTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divScaleTransitionTemplate;
        }

        public final DivScaleTransitionTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivAppearanceTransitionTemplate {
        public final DivAppearanceSetTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivAppearanceSetTransitionTemplate divAppearanceSetTransitionTemplate) {
            super(null);
            y45.j(divAppearanceSetTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divAppearanceSetTransitionTemplate;
        }

        public final DivAppearanceSetTransitionTemplate c() {
            return this.c;
        }
    }

    public static final class e extends DivAppearanceTransitionTemplate {
        public final DivSlideTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivSlideTransitionTemplate divSlideTransitionTemplate) {
            super(null);
            y45.j(divSlideTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSlideTransitionTemplate;
        }

        public final DivSlideTransitionTemplate c() {
            return this.c;
        }
    }

    public DivAppearanceTransitionTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof d) {
            return "set";
        }
        if (this instanceof b) {
            return SettingFragment.SHAKE_ITEM_MUSIC_FADE;
        }
        if (this instanceof c) {
            return "scale";
        }
        if (this instanceof e) {
            return "slide";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((z) ml0.a().x1().getValue()).b(ml0.b(), this);
    }

    public DivAppearanceTransitionTemplate() {
    }
}
