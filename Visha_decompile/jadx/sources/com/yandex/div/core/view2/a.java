package com.yandex.div.core.view2;

import com.yandex.div.core.expression.local.RuntimeStore;
import defpackage.oj3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static final C0283a d = new C0283a(null);
    public final Div2View a;
    public final oj3 b;
    public final RuntimeStore c;

    public static final class C0283a {
        public C0283a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final a a(Div2View div2View) {
            y45.j(div2View, "divView");
            return new a(div2View, oj3.b, null, 0 == true ? 1 : 0);
        }

        public C0283a() {
        }
    }

    public a(Div2View div2View, oj3 oj3Var, RuntimeStore runtimeStore, DefaultConstructorMarker defaultConstructorMarker) {
        this(div2View, oj3Var, runtimeStore);
    }

    public final Div2View a() {
        return this.a;
    }

    public final oj3 b() {
        return this.b;
    }

    public final a c(oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        return y45.e(this.b, oj3Var) ? this : new a(this.a, oj3Var, this.c);
    }

    public final a d(oj3 oj3Var, RuntimeStore runtimeStore) {
        y45.j(oj3Var, "resolver");
        return y45.e(this.b, oj3Var) ? this : new a(this.a, oj3Var, runtimeStore);
    }

    public final RuntimeStore e() {
        return this.c;
    }

    public a(Div2View div2View, oj3 oj3Var, RuntimeStore runtimeStore) {
        this.a = div2View;
        this.b = oj3Var;
        this.c = runtimeStore;
    }
}
