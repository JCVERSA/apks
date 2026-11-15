package com.yandex.div2;

import android.net.Uri;
import androidx.media3.exoplayer.upstream.CmcdData;
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
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivAction implements d65, ko4 {
    public static final a m = new a(null);
    public static final Expression n = Expression.a.a(Boolean.TRUE);
    public static final s74 o = new s74() {
        @Override
        public final DivAction invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivAction.m.a(hx7Var, jSONObject);
        }
    };
    public final DivDownloadCallbacks a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final List e;
    public final JSONObject f;
    public final Expression g;
    public final String h;
    public final Expression i;
    public final DivActionTyped j;
    public final Expression k;
    public Integer l;

    public static final class MenuItem implements d65, ko4 {
        public static final a e = new a(null);
        public static final s74 f = new s74() {
            @Override
            public final DivAction.MenuItem invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivAction.MenuItem.e.a(hx7Var, jSONObject);
            }
        };
        public final DivAction a;
        public final List b;
        public final Expression c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final MenuItem a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((e) ml0.a().x0().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public MenuItem(DivAction divAction, List list, Expression expression) {
            y45.j(expression, "text");
            this.a = divAction;
            this.b = list;
            this.c = expression;
        }

        public final boolean a(MenuItem menuItem, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            boolean z;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (menuItem == null) {
                return false;
            }
            DivAction divAction = this.a;
            if (divAction != null) {
                zA = divAction.a(menuItem.a, oj3Var, oj3Var2);
            } else {
                zA = menuItem.a == null;
            }
            if (!zA) {
                return false;
            }
            List list = this.b;
            if (list != null) {
                List list2 = menuItem.b;
                if (list2 == null) {
                    return false;
                }
                if (list.size() == list2.size()) {
                    Iterator it = list.iterator();
                    int i = 0;
                    while (true) {
                        if (it.hasNext()) {
                            Object next = it.next();
                            int i2 = i + 1;
                            if (i < 0) {
                                y71.u();
                            }
                            if (((DivAction) next).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                                i = i2;
                            }
                        }
                    }
                }
            } else {
                z = menuItem.b == null;
            }
            return z && y45.e(this.c.b(oj3Var), menuItem.c.b(oj3Var2));
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(MenuItem.class).hashCode();
            DivAction divAction = this.a;
            int iHash = 0;
            int iHash2 = iHashCode + (divAction != null ? divAction.hash() : 0);
            List list = this.b;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    iHash += ((DivAction) it.next()).hash();
                }
            }
            int iHashCode2 = iHash2 + iHash + this.c.hashCode();
            this.d = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((e) ml0.a().x0().getValue()).b(ml0.b(), this);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivAction$Target;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SELF", "BLANK", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Target {
        SELF("_self"),
        BLANK("_blank");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivAction.Target target) {
                y45.j(target, ES6Iterator.VALUE_PROPERTY);
                return DivAction.Target.INSTANCE.b(target);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivAction.Target invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivAction.Target.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Target a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Target target = Target.SELF;
                if (y45.e(str, target.value)) {
                    return target;
                }
                Target target2 = Target.BLANK;
                if (y45.e(str, target2.value)) {
                    return target2;
                }
                return null;
            }

            public final String b(Target target) {
                y45.j(target, "obj");
                return target.value;
            }

            public Companion() {
            }
        }

        Target(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAction a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivActionJsonParser.b) ml0.a().u0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivAction(DivDownloadCallbacks divDownloadCallbacks, Expression expression, Expression expression2, Expression expression3, List list, JSONObject jSONObject, Expression expression4, String str, Expression expression5, DivActionTyped divActionTyped, Expression expression6) {
        y45.j(expression, "isEnabled");
        y45.j(expression2, "logId");
        this.a = divDownloadCallbacks;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = list;
        this.f = jSONObject;
        this.g = expression4;
        this.h = str;
        this.i = expression5;
        this.j = divActionTyped;
        this.k = expression6;
    }

    public final boolean a(DivAction divAction, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean zA2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divAction == null) {
            return false;
        }
        DivDownloadCallbacks divDownloadCallbacks = this.a;
        if (divDownloadCallbacks != null) {
            zA = divDownloadCallbacks.a(divAction.a, oj3Var, oj3Var2);
        } else {
            zA = divAction.a == null;
        }
        if (!zA || ((Boolean) this.b.b(oj3Var)).booleanValue() != ((Boolean) divAction.b.b(oj3Var2)).booleanValue() || !y45.e(this.c.b(oj3Var), divAction.c.b(oj3Var2))) {
            return false;
        }
        Expression expression = this.d;
        Uri uri = expression != null ? (Uri) expression.b(oj3Var) : null;
        Expression expression2 = divAction.d;
        if (!y45.e(uri, expression2 != null ? (Uri) expression2.b(oj3Var2) : null)) {
            return false;
        }
        List list = this.e;
        if (list != null) {
            List list2 = divAction.e;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it = list.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((MenuItem) next).a((MenuItem) list2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divAction.e == null;
        }
        if (!z || !y45.e(this.f, divAction.f)) {
            return false;
        }
        Expression expression3 = this.g;
        Uri uri2 = expression3 != null ? (Uri) expression3.b(oj3Var) : null;
        Expression expression4 = divAction.g;
        if (!y45.e(uri2, expression4 != null ? (Uri) expression4.b(oj3Var2) : null) || !y45.e(this.h, divAction.h)) {
            return false;
        }
        Expression expression5 = this.i;
        Target target = expression5 != null ? (Target) expression5.b(oj3Var) : null;
        Expression expression6 = divAction.i;
        if (target != (expression6 != null ? (Target) expression6.b(oj3Var2) : null)) {
            return false;
        }
        DivActionTyped divActionTyped = this.j;
        if (divActionTyped != null) {
            zA2 = divActionTyped.a(divAction.j, oj3Var, oj3Var2);
        } else {
            zA2 = divAction.j == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expression7 = this.k;
        Uri uri3 = expression7 != null ? (Uri) expression7.b(oj3Var) : null;
        Expression expression8 = divAction.k;
        return y45.e(uri3, expression8 != null ? (Uri) expression8.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.l;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivAction.class).hashCode();
        DivDownloadCallbacks divDownloadCallbacks = this.a;
        int iHash2 = iHashCode + (divDownloadCallbacks != null ? divDownloadCallbacks.hash() : 0) + this.b.hashCode() + this.c.hashCode();
        Expression expression = this.d;
        int iHashCode2 = iHash2 + (expression != null ? expression.hashCode() : 0);
        List list = this.e;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((MenuItem) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode2 + iHash;
        JSONObject jSONObject = this.f;
        int iHashCode3 = i + (jSONObject != null ? jSONObject.hashCode() : 0);
        Expression expression2 = this.g;
        int iHashCode4 = iHashCode3 + (expression2 != null ? expression2.hashCode() : 0);
        String str = this.h;
        int iHashCode5 = iHashCode4 + (str != null ? str.hashCode() : 0);
        Expression expression3 = this.i;
        int iHashCode6 = iHashCode5 + (expression3 != null ? expression3.hashCode() : 0);
        DivActionTyped divActionTyped = this.j;
        int iHash3 = iHashCode6 + (divActionTyped != null ? divActionTyped.hash() : 0);
        Expression expression4 = this.k;
        int iHashCode7 = iHash3 + (expression4 != null ? expression4.hashCode() : 0);
        this.l = Integer.valueOf(iHashCode7);
        return iHashCode7;
    }

    @Override
    public JSONObject s() {
        return ((DivActionJsonParser.b) ml0.a().u0().getValue()).b(ml0.b(), this);
    }
}
