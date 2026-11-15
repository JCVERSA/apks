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

public final class SubscriptionViewModel extends b {

    public static final a f49779k = new a(null);

    private final b0 f49780b;

    private final b0 f49781c;

    private final b0 f49782d;

    private final b0 f49783e;

    private final b0 f49784f;

    private final b0 f49785g;

    private int f49786h;

    private final pp.a f49787i;

    private String f49788j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49780b = new b0();
        this.f49781c = new b0();
        this.f49782d = new b0();
        this.f49783e = new b0();
        this.f49784f = new b0();
        this.f49785g = new b0();
        this.f49786h = 1;
        this.f49787i = (pp.a) c.f63982e.a().h(pp.a.class);
    }

    public final b0 d() {
        return this.f49780b;
    }

    public final void e(String uid) {
        Intrinsics.h(uid, "uid");
        this.f49788j = uid;
        k.d(u0.a(this), y0.b(), null, new SubscriptionViewModel$getSubscriptionStatsData$1(this, uid, null), 2, null);
    }
}
