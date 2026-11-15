package com.transsion.rewardscenter;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.v;
import com.transsion.rewardscenter.task.ad.g0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

public final class RewardsCenterProvider implements bp.a {

    private final Lazy f48948a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RewardsCenterProvider.g();
        }
    });

    private final b0 f48949b = new b0(0);

    public static final xo.a g() {
        return (xo.a) kg.c.f63982e.a().h(xo.a.class);
    }

    public final xo.a h() {
        return (xo.a) this.f48948a.getValue();
    }

    public static final Unit i(g0 g0Var) {
        g0Var.r();
        return Unit.f64096a;
    }

    @Override
    public void a(Context context, n0 n0Var) {
        Intrinsics.h(context, "context");
        wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "preloadTaskAd", false, 4, null);
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        final g0 g0Var = new g0(applicationContext, n0Var);
        g0Var.f(new Function0() {
            @Override
            public final Object invoke() {
                return RewardsCenterProvider.i(g0Var);
            }
        });
    }

    @Override
    public LiveData b() {
        k.d(v.a(androidx.p009lifecycle.g0.f9280i.a()), null, null, new RewardsCenterProvider$fetchUnclaimRewardCount$1(this, null), 3, null);
        return this.f48949b;
    }
}
