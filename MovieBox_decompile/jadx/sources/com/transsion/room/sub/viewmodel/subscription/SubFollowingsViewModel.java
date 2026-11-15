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

public final class SubFollowingsViewModel extends b {

    public static final a f49767g = new a(null);

    private String f49768b;

    private int f49769c;

    private boolean f49770d;

    private final pp.b f49771e;

    private final b0 f49772f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubFollowingsViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49769c = 8;
        this.f49771e = (pp.b) c.f63982e.a().h(pp.b.class);
        this.f49772f = new b0();
    }

    public final b0 e() {
        return this.f49772f;
    }

    public final void f(String str) {
        this.f49768b = str;
        k.d(u0.a(this), y0.b(), null, new SubFollowingsViewModel$getSubscriptionFollowingsData$1(this, str, null), 2, null);
    }

    public final boolean g() {
        return this.f49770d;
    }

    public final void h(String str) {
        this.f49770d = false;
        if (str == null || str.length() == 0) {
            wf.a.f74274a.x("SubFollowingsViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f49772f.n(null);
            return;
        }
        wf.a.f74274a.c("SubFollowingsViewModel", "loadMore: load nextCursor=" + str, true);
        f(str);
    }

    public final void i() {
        wf.a.f74274a.c("SubFollowingsViewModel", "refresh: reset page to 1 and load first page", true);
        this.f49768b = "";
        this.f49770d = true;
        f("");
    }
}
