package com.transsion.moviedetail.preload;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class g extends am.a {

    public static final a f45562a = new a(null);

    private static final Lazy f45563b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return g.d();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return (g) g.f45563b.getValue();
        }

        private a() {
        }
    }

    public g() {
        am.e.f407a.e(new d());
    }

    public static final g d() {
        return new g();
    }
}
