package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
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
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivTrigger implements d65, ko4 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(Mode.ON_CONDITION);
    public static final s74 g = new s74() {
        @Override
        public final DivTrigger invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTrigger.e.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final Expression b;
    public final Expression c;
    public Integer d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivTrigger$Mode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "ON_CONDITION", "ON_VARIABLE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Mode {
        ON_CONDITION("on_condition"),
        ON_VARIABLE("on_variable");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivTrigger.Mode mode) {
                y45.j(mode, ES6Iterator.VALUE_PROPERTY);
                return DivTrigger.Mode.INSTANCE.b(mode);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivTrigger.Mode invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivTrigger.Mode.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Mode a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Mode mode = Mode.ON_CONDITION;
                if (y45.e(str, mode.value)) {
                    return mode;
                }
                Mode mode2 = Mode.ON_VARIABLE;
                if (y45.e(str, mode2.value)) {
                    return mode2;
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

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTrigger a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivTriggerJsonParser.b) ml0.a().Y8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivTrigger(List list, Expression expression, Expression expression2) {
        y45.j(list, "actions");
        y45.j(expression, "condition");
        y45.j(expression2, hb0.KEY_NAME_MODE);
        this.a = list;
        this.b = expression;
        this.c = expression2;
    }

    public final boolean a(DivTrigger divTrigger, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTrigger == null) {
            return false;
        }
        List list = this.a;
        List list2 = divTrigger.a;
        if (list.size() != list2.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            if (!((DivAction) obj).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                return false;
            }
            i = i2;
        }
        return ((Boolean) this.b.b(oj3Var)).booleanValue() == ((Boolean) divTrigger.b.b(oj3Var2)).booleanValue() && this.c.b(oj3Var) == divTrigger.c.b(oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTrigger.class).hashCode();
        Iterator it = this.a.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((DivAction) it.next()).hash();
        }
        int iHashCode2 = iHashCode + iHash + this.b.hashCode() + this.c.hashCode();
        this.d = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((DivTriggerJsonParser.b) ml0.a().Y8().getValue()).b(ml0.b(), this);
    }
}
