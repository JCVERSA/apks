package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ki2;
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

public final class DivDownloadCallbacks implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivDownloadCallbacks invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivDownloadCallbacks.d.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final List b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivDownloadCallbacks a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((ki2) ml0.a().P2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivDownloadCallbacks(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    public final boolean a(DivDownloadCallbacks divDownloadCallbacks, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divDownloadCallbacks == null) {
            return false;
        }
        List list = this.a;
        if (list != null) {
            List list2 = divDownloadCallbacks.a;
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
        } else if (divDownloadCallbacks.a != null) {
            return false;
        }
        List list3 = this.b;
        if (list3 != null) {
            List list4 = divDownloadCallbacks.b;
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
        } else if (divDownloadCallbacks.b != null) {
            return false;
        }
        return true;
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivDownloadCallbacks.class).hashCode();
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
        int i2 = i + iHash2;
        this.c = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public JSONObject s() {
        return ((ki2) ml0.a().P2().getValue()).b(ml0.b(), this);
    }
}
