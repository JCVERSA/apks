package com.yandex.div.core.view2;

import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import kotlin.b;

public final class CompositeLogId {
    public final String a;
    public final String b;
    public final String c;
    public final yi5 d;

    public CompositeLogId(String str, String str2, String str3) {
        y45.j(str, "dataTag");
        y45.j(str2, "scopeLogId");
        y45.j(str3, "actionLogId");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return this.this$0.b();
            }
        });
    }

    public final String b() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        if (this.b.length() > 0) {
            str = '#' + this.b;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append('#');
        sb.append(this.c);
        return sb.toString();
    }

    public final String c() {
        return (String) this.d.getValue();
    }

    public final String d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeLogId)) {
            return false;
        }
        CompositeLogId compositeLogId = (CompositeLogId) obj;
        return y45.e(this.a, compositeLogId.a) && y45.e(this.b, compositeLogId.b) && y45.e(this.c, compositeLogId.c);
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    public String toString() {
        return c();
    }
}
