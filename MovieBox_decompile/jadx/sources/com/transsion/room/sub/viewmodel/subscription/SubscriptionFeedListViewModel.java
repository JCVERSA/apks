package com.transsion.room.sub.viewmodel.subscription;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import kg.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class SubscriptionFeedListViewModel extends b {

    public static final a f49773f = new a(null);

    private static int f49774g = 8;

    private String f49775b;

    private boolean f49776c;

    private final pp.a f49777d;

    private final b0 f49778e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionFeedListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49777d = (pp.a) c.f63982e.a().h(pp.a.class);
        this.f49778e = new b0();
    }

    public final b0 e() {
        return this.f49778e;
    }

    public final void f(String str) {
        this.f49775b = str;
        k.d(u0.a(this), y0.b(), null, new SubscriptionFeedListViewModel$getSubscriptionFeedData$1(this, str, null), 2, null);
    }

    public final boolean g() {
        return this.f49776c;
    }

    public final void h(String str) {
        this.f49776c = false;
        if (str == null || str.length() == 0) {
            wf.a.f74274a.x("SubscriptionFeedListViewModel", "loadMore: nextCursor is null or empty, cannot load more", true);
            this.f49778e.n(null);
            return;
        }
        wf.a.f74274a.c("SubscriptionFeedListViewModel", "loadMore: load nextCursor=" + str, true);
        f(str);
    }

    public final void i() {
        wf.a.f74274a.c("SubscriptionFeedListViewModel", "refresh: reset page to 1 and load first page", true);
        this.f49776c = true;
        f("");
    }
}
