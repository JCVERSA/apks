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

public final class DivActionTimer implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivActionTimer invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionTimer.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/yandex/div2/DivActionTimer$Action;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "START", "STOP", "PAUSE", "RESUME", "CANCEL", "RESET", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Action {
        START(TtmlNode.START),
        STOP("stop"),
        PAUSE("pause"),
        RESUME("resume"),
        CANCEL("cancel"),
        RESET("reset");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivActionTimer.Action action) {
                y45.j(action, ES6Iterator.VALUE_PROPERTY);
                return DivActionTimer.Action.INSTANCE.b(action);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivActionTimer.Action invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivActionTimer.Action.INSTANCE.a(str);
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
                Action action2 = Action.STOP;
                if (y45.e(str, action2.value)) {
                    return action2;
                }
                Action action3 = Action.PAUSE;
                if (y45.e(str, action3.value)) {
                    return action3;
                }
                Action action4 = Action.RESUME;
                if (y45.e(str, action4.value)) {
                    return action4;
                }
                Action action5 = Action.CANCEL;
                if (y45.e(str, action5.value)) {
                    return action5;
                }
                Action action6 = Action.RESET;
                if (y45.e(str, action6.value)) {
                    return action6;
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

        public final DivActionTimer a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivActionTimerJsonParser.b) ml0.a().e1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionTimer(Expression expression, Expression expression2) {
        y45.j(expression, "action");
        y45.j(expression2, TtmlNode.ATTR_ID);
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivActionTimer divActionTimer, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionTimer != null && this.a.b(oj3Var) == divActionTimer.a.b(oj3Var2) && y45.e(this.b.b(oj3Var), divActionTimer.b.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionTimer.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivActionTimerJsonParser.b) ml0.a().e1().getValue()).b(ml0.b(), this);
    }
}
