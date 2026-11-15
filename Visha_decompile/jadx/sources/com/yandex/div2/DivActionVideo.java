package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
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
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivActionVideo implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivActionVideo invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionVideo.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivActionVideo$Action;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "START", "PAUSE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Action {
        START(TtmlNode.START),
        PAUSE("pause");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivActionVideo.Action action) {
                y45.j(action, ES6Iterator.VALUE_PROPERTY);
                return DivActionVideo.Action.INSTANCE.b(action);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivActionVideo.Action invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivActionVideo.Action.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Action a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Action action = Action.START;
                if (y45.e(str, action.value)) {
                    return action;
                }
                Action action2 = Action.PAUSE;
                if (y45.e(str, action2.value)) {
                    return action2;
                }
                return null;
            }

            public final String b(Action action) {
                y45.j(action, "obj");
                return action.value;
            }

            public Companion() {
            }
        }

        Action(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionVideo a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivActionVideoJsonParser.b) ml0.a().k1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionVideo(Expression expression, Expression expression2) {
        y45.j(expression, "action");
        y45.j(expression2, TtmlNode.ATTR_ID);
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivActionVideo divActionVideo, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionVideo != null && this.a.b(oj3Var) == divActionVideo.a.b(oj3Var2) && y45.e(this.b.b(oj3Var), divActionVideo.b.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionVideo.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivActionVideoJsonParser.b) ml0.a().k1().getValue()).b(ml0.b(), this);
    }
}
