package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.we2;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionDownload implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionDownload invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionDownload.e.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final List b;
    public final Expression c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionDownload a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((we2) ml0.a().l0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionDownload(List list, List list2, Expression expression) {
        y45.j(expression, "url");
        this.a = list;
        this.b = list2;
        this.c = expression;
    }

    public final boolean a(DivActionDownload divActionDownload, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionDownload == null) {
            return false;
        }
        List list = this.a;
        if (list != null) {
            List list2 = divActionDownload.a;
            if (list2 == null || list.size() != list2.size()) {
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
        } else if (divActionDownload.a != null) {
            return false;
        }
        List list3 = this.b;
        if (list3 != null) {
            List list4 = divActionDownload.b;
            if (list4 == null || list3.size() != list4.size()) {
                return false;
            }
            int i3 = 0;
            for (Object obj2 : list3) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y71.u();
                }
                if (!((DivAction) obj2).a((DivAction) list4.get(i3), oj3Var, oj3Var2)) {
                    return false;
                }
                i3 = i4;
            }
        } else if (divActionDownload.b != null) {
            return false;
        }
        return y45.e(this.c.b(oj3Var), divActionDownload.c.b(oj3Var2));
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionDownload.class).hashCode();
        List list = this.a;
        int iHash2 = 0;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode + iHash;
        List list2 = this.b;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                iHash2 += ((DivAction) it2.next()).hash();
            }
        }
        int iHashCode2 = i + iHash2 + this.c.hashCode();
        this.d = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((we2) ml0.a().l0().getValue()).b(ml0.b(), this);
    }
}
