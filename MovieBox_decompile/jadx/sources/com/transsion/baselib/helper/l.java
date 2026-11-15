package com.transsion.baselib.helper;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class l {

    public static final a f42141b = new a(null);

    private static final Lazy f42142c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return l.c();
        }
    });

    private String f42143a = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l a() {
            return (l) l.f42142c.getValue();
        }

        private a() {
        }
    }

    public static final l c() {
        return new l();
    }

    public final void d(String userPrefer) {
        Intrinsics.h(userPrefer, "userPrefer");
        this.f42143a = userPrefer;
    }
}
