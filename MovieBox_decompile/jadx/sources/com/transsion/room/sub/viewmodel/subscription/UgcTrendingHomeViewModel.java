package com.transsion.room.sub.viewmodel.subscription;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.room.sub.fragment.subscription.SubscriptionFragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import pp.c;

public final class UgcTrendingHomeViewModel extends b {

    public static final a f49789i = new a(null);

    private Integer f49790b;

    private Integer f49791c;

    private final c f49792d;

    private String f49793e;

    private SubscriptionFragment.TabType f49794f;

    private boolean f49795g;

    private final b0 f49796h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcTrendingHomeViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49790b = 1;
        this.f49791c = 8;
        this.f49792d = (c) kg.c.f63982e.a().h(c.class);
        this.f49793e = "";
        this.f49794f = SubscriptionFragment.TabType.HOTTEST;
        this.f49796h = new b0();
    }

    public final void e(Integer num, String str) {
        this.f49793e = str;
        this.f49790b = num;
        k.d(u0.a(this), y0.b(), null, new UgcTrendingHomeViewModel$getUgcHomeTrendingData$1(num, this, str, null), 2, null);
    }

    public final b0 f() {
        return this.f49796h;
    }

    public final boolean g() {
        return this.f49795g;
    }

    public final void h(Integer num) {
        this.f49795g = false;
        if (num != null && num.intValue() <= 0) {
            wf.a.f74274a.x("UgcTrendingHomeViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f49796h.n(null);
            return;
        }
        wf.a.f74274a.c("UgcTrendingHomeViewModel", "loadMore: load nextPage=" + num, true);
        e(num, this.f49793e);
    }

    public final void i() {
        wf.a.f74274a.c("UgcTrendingHomeViewModel", "refresh: reset page to 1 and load first page", true);
        this.f49790b = 1;
        String apiValue = this.f49794f.getApiValue();
        this.f49793e = apiValue;
        this.f49795g = true;
        e(this.f49790b, apiValue);
    }
}
