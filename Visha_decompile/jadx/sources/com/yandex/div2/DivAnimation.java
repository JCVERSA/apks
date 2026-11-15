package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.tools.fragments.SettingFragment;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivAnimation implements d65, ko4 {
    public static final a k = new a(null);
    public static final Expression l;
    public static final Expression m;
    public static final DivCount.c n;
    public static final Expression o;
    public static final s74 p;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final List d;
    public final Expression e;
    public final DivCount f;
    public final Expression g;
    public final Expression h;
    public Integer i;
    public Integer j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/yandex/div2/DivAnimation$Name;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "FADE", "TRANSLATE", "SCALE", "NATIVE", "SET", "NO_ANIMATION", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Name {
        FADE(SettingFragment.SHAKE_ITEM_MUSIC_FADE),
        TRANSLATE("translate"),
        SCALE("scale"),
        NATIVE(PluginErrorDetails.Platform.NATIVE),
        SET("set"),
        NO_ANIMATION("no_animation");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivAnimation.Name name) {
                y45.j(name, ES6Iterator.VALUE_PROPERTY);
                return DivAnimation.Name.INSTANCE.b(name);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivAnimation.Name invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivAnimation.Name.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Name a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Name name = Name.FADE;
                if (y45.e(str, name.value)) {
                    return name;
                }
                Name name2 = Name.TRANSLATE;
                if (y45.e(str, name2.value)) {
                    return name2;
                }
                Name name3 = Name.SCALE;
                if (y45.e(str, name3.value)) {
                    return name3;
                }
                Name name4 = Name.NATIVE;
                if (y45.e(str, name4.value)) {
                    return name4;
                }
                Name name5 = Name.SET;
                if (y45.e(str, name5.value)) {
                    return name5;
                }
                Name name6 = Name.NO_ANIMATION;
                if (y45.e(str, name6.value)) {
                    return name6;
                }
                return null;
            }

            public final String b(Name name) {
                y45.j(name, "obj");
                return name.value;
            }

            public Companion() {
            }
        }

        Name(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAnimation a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivAnimationJsonParser.b) ml0.a().n1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        l = aVar.a(300L);
        m = aVar.a(DivAnimationInterpolator.SPRING);
        n = new DivCount.c(new DivInfinityCount());
        o = aVar.a(0L);
        p = new s74() {
            @Override
            public final DivAnimation invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivAnimation.k.a(hx7Var, jSONObject);
            }
        };
    }

    public DivAnimation(Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, DivCount divCount, Expression expression5, Expression expression6) {
        y45.j(expression, "duration");
        y45.j(expression3, "interpolator");
        y45.j(expression4, "name");
        y45.j(divCount, "repeat");
        y45.j(expression5, "startDelay");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = list;
        this.e = expression4;
        this.f = divCount;
        this.g = expression5;
        this.h = expression6;
    }

    public final boolean a(DivAnimation divAnimation, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divAnimation == null || ((Number) this.a.b(oj3Var)).longValue() != ((Number) divAnimation.a.b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expression = this.b;
        Double d = expression != null ? (Double) expression.b(oj3Var) : null;
        Expression expression2 = divAnimation.b;
        if (!y45.b(d, expression2 != null ? (Double) expression2.b(oj3Var2) : null) || this.c.b(oj3Var) != divAnimation.c.b(oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divAnimation.d;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!((DivAnimation) obj).a((DivAnimation) list2.get(i), oj3Var, oj3Var2)) {
                    return false;
                }
                i = i2;
            }
        } else if (divAnimation.d != null) {
            return false;
        }
        if (this.e.b(oj3Var) != divAnimation.e.b(oj3Var2) || !this.f.a(divAnimation.f, oj3Var, oj3Var2) || ((Number) this.g.b(oj3Var)).longValue() != ((Number) divAnimation.g.b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expression3 = this.h;
        Double d2 = expression3 != null ? (Double) expression3.b(oj3Var) : null;
        Expression expression4 = divAnimation.h;
        return y45.b(d2, expression4 != null ? (Double) expression4.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.j;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        List list = this.d;
        int iHash = 0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((DivAnimation) it.next()).hash();
            }
        }
        int i = iL + iHash;
        this.j = Integer.valueOf(i);
        return i;
    }

    @Override
    public int l() {
        Integer num = this.i;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivAnimation.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.c.hashCode() + this.e.hashCode() + this.f.hash() + this.g.hashCode();
        Expression expression2 = this.h;
        int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0);
        this.i = Integer.valueOf(iHashCode3);
        return iHashCode3;
    }

    @Override
    public JSONObject s() {
        return ((DivAnimationJsonParser.b) ml0.a().n1().getValue()).b(ml0.b(), this);
    }

    public DivAnimation(Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, DivCount divCount, Expression expression5, Expression expression6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? l : expression, (i & 2) != 0 ? null : expression2, (i & 4) != 0 ? m : expression3, (i & 8) != 0 ? null : list, expression4, (i & 32) != 0 ? n : divCount, (i & 64) != 0 ? o : expression5, (i & 128) != 0 ? null : expression6);
    }
}
