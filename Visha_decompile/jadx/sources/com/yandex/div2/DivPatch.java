package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hb0;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivPatch implements d65, ko4 {
    public static final a f = new a(null);
    public static final Expression g = Expression.a.a(Mode.PARTIAL);
    public static final s74 h = new s74() {
        @Override
        public final DivPatch invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPatch.f.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final Expression b;
    public final List c;
    public final List d;
    public Integer e;

    public static final class Change implements d65, ko4 {
        public static final a e = new a(null);
        public static final s74 f = new s74() {
            @Override
            public final DivPatch.Change invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivPatch.Change.e.a(hx7Var, jSONObject);
            }
        };
        public final String a;
        public final List b;
        public Integer c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Change a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((s2) ml0.a().C5().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Change(String str, List list) {
            y45.j(str, TtmlNode.ATTR_ID);
            this.a = str;
            this.b = list;
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iL = l();
            List list = this.b;
            int iHash = 0;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    iHash += ((Div) it.next()).hash();
                }
            }
            int i = iL + iHash;
            this.d = Integer.valueOf(i);
            return i;
        }

        @Override
        public int l() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Change.class).hashCode() + this.a.hashCode();
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((s2) ml0.a().C5().getValue()).b(ml0.b(), this);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivPatch$Mode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "TRANSACTIONAL", "PARTIAL", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Mode {
        TRANSACTIONAL("transactional"),
        PARTIAL("partial");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivPatch.Mode mode) {
                y45.j(mode, ES6Iterator.VALUE_PROPERTY);
                return DivPatch.Mode.INSTANCE.b(mode);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivPatch.Mode invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivPatch.Mode.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Mode a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Mode mode = Mode.TRANSACTIONAL;
                if (y45.e(str, mode.value)) {
                    return mode;
                }
                Mode mode2 = Mode.PARTIAL;
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

        public final DivPatch a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivPatchJsonParser.b) ml0.a().F5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivPatch(List list, Expression expression, List list2, List list3) {
        y45.j(list, "changes");
        y45.j(expression, hb0.KEY_NAME_MODE);
        this.a = list;
        this.b = expression;
        this.c = list2;
        this.d = list3;
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPatch.class).hashCode();
        Iterator it = this.a.iterator();
        int iHash2 = 0;
        int iHash3 = 0;
        while (it.hasNext()) {
            iHash3 += ((Change) it.next()).hash();
        }
        int iHashCode2 = iHashCode + iHash3 + this.b.hashCode();
        List list = this.c;
        if (list != null) {
            Iterator it2 = list.iterator();
            iHash = 0;
            while (it2.hasNext()) {
                iHash += ((DivAction) it2.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode2 + iHash;
        List list2 = this.d;
        if (list2 != null) {
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                iHash2 += ((DivAction) it3.next()).hash();
            }
        }
        int i2 = i + iHash2;
        this.e = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public JSONObject s() {
        return ((DivPatchJsonParser.b) ml0.a().F5().getValue()).b(ml0.b(), this);
    }
}
