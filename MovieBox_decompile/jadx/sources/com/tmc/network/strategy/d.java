package com.tmc.network.strategy;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d {

    public static final a f39850b = new a(null);

    private AtomicBoolean f39851a = new AtomicBoolean(false);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return b.f39852a.a();
        }

        private a() {
        }
    }

    private static final class b {

        public static final b f39852a = new b();

        private static final d f39853b = new d();

        private b() {
        }

        public final d a() {
            return f39853b;
        }
    }

    public final void a(Context context) {
        if (context != null && this.f39851a.compareAndSet(false, true)) {
            rf.b.f71178a.d("StrategyCenter", "StrategyCenter init");
            qf.b.f69628a.g(context);
            LocalDnsStrategy.f39836c.a().h(context);
        }
    }
}
