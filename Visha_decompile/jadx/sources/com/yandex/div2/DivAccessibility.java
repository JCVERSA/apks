package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hb0;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivAccessibility implements d65, ko4 {
    public static final a i = new a(null);
    public static final Expression j;
    public static final Expression k;
    public static final Type l;
    public static final s74 m;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public final Expression f;
    public final Type g;
    public Integer h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivAccessibility$Mode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "DEFAULT", "MERGE", "EXCLUDE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Mode {
        DEFAULT(Schema.DEFAULT_NAME),
        MERGE("merge"),
        EXCLUDE("exclude");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivAccessibility.Mode mode) {
                y45.j(mode, ES6Iterator.VALUE_PROPERTY);
                return DivAccessibility.Mode.INSTANCE.b(mode);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivAccessibility.Mode invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivAccessibility.Mode.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Mode a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Mode mode = Mode.DEFAULT;
                if (y45.e(str, mode.value)) {
                    return mode;
                }
                Mode mode2 = Mode.MERGE;
                if (y45.e(str, mode2.value)) {
                    return mode2;
                }
                Mode mode3 = Mode.EXCLUDE;
                if (y45.e(str, mode3.value)) {
                    return mode3;
                }
                return null;
            }

            public final String b(Mode mode) {
                y45.j(mode, "obj");
                return mode.value;
            }

            public Companion() {
            }
        }

        Mode(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/yandex/div2/DivAccessibility$Type;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NONE", "BUTTON", "IMAGE", "TEXT", "EDIT_TEXT", "HEADER", "TAB_BAR", "LIST", "SELECT", "CHECKBOX", "RADIO", "AUTO", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Type {
        NONE("none"),
        BUTTON(AuthInfo.Component.CODE_BUTTON),
        IMAGE("image"),
        TEXT("text"),
        EDIT_TEXT("edit_text"),
        HEADER("header"),
        TAB_BAR("tab_bar"),
        LIST("list"),
        SELECT("select"),
        CHECKBOX("checkbox"),
        RADIO("radio"),
        AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivAccessibility.Type type) {
                y45.j(type, ES6Iterator.VALUE_PROPERTY);
                return DivAccessibility.Type.INSTANCE.b(type);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivAccessibility.Type invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivAccessibility.Type.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Type a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Type type = Type.NONE;
                if (y45.e(str, type.value)) {
                    return type;
                }
                Type type2 = Type.BUTTON;
                if (y45.e(str, type2.value)) {
                    return type2;
                }
                Type type3 = Type.IMAGE;
                if (y45.e(str, type3.value)) {
                    return type3;
                }
                Type type4 = Type.TEXT;
                if (y45.e(str, type4.value)) {
                    return type4;
                }
                Type type5 = Type.EDIT_TEXT;
                if (y45.e(str, type5.value)) {
                    return type5;
                }
                Type type6 = Type.HEADER;
                if (y45.e(str, type6.value)) {
                    return type6;
                }
                Type type7 = Type.TAB_BAR;
                if (y45.e(str, type7.value)) {
                    return type7;
                }
                Type type8 = Type.LIST;
                if (y45.e(str, type8.value)) {
                    return type8;
                }
                Type type9 = Type.SELECT;
                if (y45.e(str, type9.value)) {
                    return type9;
                }
                Type type10 = Type.CHECKBOX;
                if (y45.e(str, type10.value)) {
                    return type10;
                }
                Type type11 = Type.RADIO;
                if (y45.e(str, type11.value)) {
                    return type11;
                }
                Type type12 = Type.AUTO;
                if (y45.e(str, type12.value)) {
                    return type12;
                }
                return null;
            }

            public final String b(Type type) {
                y45.j(type, "obj");
                return type.value;
            }

            public Companion() {
            }
        }

        Type(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAccessibility a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivAccessibilityJsonParser.b) ml0.a().H().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        j = aVar.a(Mode.DEFAULT);
        k = aVar.a(Boolean.FALSE);
        l = Type.AUTO;
        m = new s74() {
            @Override
            public final DivAccessibility invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivAccessibility.i.a(hx7Var, jSONObject);
            }
        };
    }

    public DivAccessibility(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Type type) {
        y45.j(expression4, hb0.KEY_NAME_MODE);
        y45.j(expression5, "muteAfterAction");
        y45.j(type, "type");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
        this.f = expression6;
        this.g = type;
    }

    public final boolean a(DivAccessibility divAccessibility, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divAccessibility == null) {
            return false;
        }
        Expression expression = this.a;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divAccessibility.a;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression3 = this.b;
        String str2 = expression3 != null ? (String) expression3.b(oj3Var) : null;
        Expression expression4 = divAccessibility.b;
        if (!y45.e(str2, expression4 != null ? (String) expression4.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression5 = this.c;
        Boolean bool = expression5 != null ? (Boolean) expression5.b(oj3Var) : null;
        Expression expression6 = divAccessibility.c;
        if (!y45.e(bool, expression6 != null ? (Boolean) expression6.b(oj3Var2) : null) || this.d.b(oj3Var) != divAccessibility.d.b(oj3Var2) || ((Boolean) this.e.b(oj3Var)).booleanValue() != ((Boolean) divAccessibility.e.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expression7 = this.f;
        String str3 = expression7 != null ? (String) expression7.b(oj3Var) : null;
        Expression expression8 = divAccessibility.f;
        return y45.e(str3, expression8 != null ? (String) expression8.b(oj3Var2) : null) && this.g == divAccessibility.g;
    }

    @Override
    public int hash() {
        Integer num = this.h;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivAccessibility.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        Expression expression2 = this.b;
        int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0);
        Expression expression3 = this.c;
        int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0) + this.d.hashCode() + this.e.hashCode();
        Expression expression4 = this.f;
        int iHashCode5 = iHashCode4 + (expression4 != null ? expression4.hashCode() : 0) + this.g.hashCode();
        this.h = Integer.valueOf(iHashCode5);
        return iHashCode5;
    }

    @Override
    public JSONObject s() {
        return ((DivAccessibilityJsonParser.b) ml0.a().H().getValue()).b(ml0.b(), this);
    }
}
