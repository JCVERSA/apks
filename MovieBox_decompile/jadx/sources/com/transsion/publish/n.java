package com.transsion.publish;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n {

    public static final a f48362b = new a(null);

    private static final Lazy f48363c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return n.b();
        }
    });

    private List f48364a = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a() {
            return (n) n.f48363c.getValue();
        }

        private a() {
        }
    }

    public static final n b() {
        return new n();
    }

    public final void d() {
        List list = this.f48364a;
        if (list != null) {
            list.clear();
        }
    }

    public final List e() {
        return this.f48364a;
    }

    public final void f(List list) {
        Intrinsics.h(list, "list");
        this.f48364a = list;
    }
}
