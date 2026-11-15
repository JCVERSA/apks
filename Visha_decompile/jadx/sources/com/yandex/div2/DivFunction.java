package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.d65;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivFunction implements d65, ko4 {
    public static final a f = new a(null);
    public static final s74 g = new s74() {
        @Override
        public final DivFunction invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFunction.f.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final String b;
    public final String c;
    public final DivEvaluableType d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFunction a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((n1.b) ml0.a().F3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivFunction(List list, String str, String str2, DivEvaluableType divEvaluableType) {
        y45.j(list, "arguments");
        y45.j(str, TtmlNode.TAG_BODY);
        y45.j(str2, "name");
        y45.j(divEvaluableType, "returnType");
        this.a = list;
        this.b = str;
        this.c = str2;
        this.d = divEvaluableType;
    }

    public final boolean a(DivFunction divFunction, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divFunction == null) {
            return false;
        }
        List list = this.a;
        List list2 = divFunction.a;
        if (list.size() != list2.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            if (!((DivFunctionArgument) obj).a((DivFunctionArgument) list2.get(i), oj3Var, oj3Var2)) {
                return false;
            }
            i = i2;
        }
        return y45.e(this.b, divFunction.b) && y45.e(this.c, divFunction.c) && this.d == divFunction.d;
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFunction.class).hashCode();
        Iterator it = this.a.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((DivFunctionArgument) it.next()).hash();
        }
        int iHashCode2 = iHashCode + iHash + this.b.hashCode() + this.c.hashCode() + this.d.hashCode();
        this.e = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((n1.b) ml0.a().F3().getValue()).b(ml0.b(), this);
    }
}
