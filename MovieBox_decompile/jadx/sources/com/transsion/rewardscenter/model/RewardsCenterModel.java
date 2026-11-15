package com.transsion.rewardscenter.model;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenterapi.Banner;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.User;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class RewardsCenterModel extends androidx.p009lifecycle.b {

    private final Lazy f48954b;

    private final b0 f48955c;

    private final b0 f48956d;

    private final b0 f48957e;

    private final b0 f48958f;

    private final b0 f48959g;

    private final b0 f48960h;

    private final b0 f48961i;

    private String f48962j;

    private final b0 f48963k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsCenterModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48954b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RewardsCenterModel.z();
            }
        });
        this.f48955c = new b0();
        this.f48956d = new b0();
        this.f48957e = new b0();
        this.f48958f = new b0();
        this.f48959g = new b0();
        this.f48960h = new b0(Boolean.FALSE);
        this.f48961i = new b0();
        this.f48963k = new b0();
    }

    public static void h(RewardsCenterModel rewardsCenterModel, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        rewardsCenterModel.g(str, z10);
    }

    public static void j(RewardsCenterModel rewardsCenterModel, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = null;
        }
        rewardsCenterModel.i(function0);
    }

    public final xo.a s() {
        return (xo.a) this.f48954b.getValue();
    }

    public static final xo.a z() {
        return (xo.a) kg.c.f63982e.a().h(xo.a.class);
    }

    public final void A(String str) {
        this.f48962j = str;
    }

    public final void B(String cc2, String number, String iso) {
        Intrinsics.h(cc2, "cc");
        Intrinsics.h(number, "number");
        Intrinsics.h(iso, "iso");
        String str = this.f48962j;
        if (str == null || str.length() == 0) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$submitAndClaim$1(this, str, cc2, number, iso, null), 3, null);
    }

    public final void C(int i10) {
        User user = (User) this.f48956d.f();
        if (user == null) {
            return;
        }
        this.f48956d.q(User.copy$default(user, i10, null, null, false, 14, null));
    }

    public final void e(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$claim$1(drawResultId, this, null), 3, null);
    }

    public final void f(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$claimVip$1(this, drawResultId, null), 3, null);
    }

    public final void g(String str, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$drawTask$1(this, str, z10, null), 3, null);
    }

    public final void i(Function0 function0) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$fetchRewardsCenterData$1(function0, this, null), 3, null);
    }

    public final String k() {
        Lottery lottery = (Lottery) this.f48955c.f();
        if (lottery != null) {
            return lottery.getActivityId();
        }
        return null;
    }

    public final SkuPoint l() {
        Banner banner;
        Lottery lottery = (Lottery) this.f48955c.f();
        if (lottery == null || (banner = lottery.getBanner()) == null) {
            return null;
        }
        return banner.getSku();
    }

    public final b0 m() {
        return this.f48961i;
    }

    public final b0 n() {
        return this.f48963k;
    }

    public final b0 o() {
        return this.f48960h;
    }

    public final b0 p() {
        return this.f48955c;
    }

    public final String q() {
        return this.f48962j;
    }

    public final b0 r() {
        return this.f48957e;
    }

    public final b0 t() {
        return this.f48959g;
    }

    public final String u() {
        Banner banner;
        Lottery lottery = (Lottery) this.f48955c.f();
        if (lottery == null || (banner = lottery.getBanner()) == null) {
            return null;
        }
        return banner.getSkuId();
    }

    public final b0 v() {
        return this.f48958f;
    }

    public final User w() {
        return (User) this.f48956d.f();
    }

    public final b0 x() {
        return this.f48956d;
    }

    public final void y(AppCompatActivity activity, String phone) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(phone, "phone");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("phone", phone);
        linkedHashMap.put("activity", "lottery");
        com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f45914b.a();
        String strU = u();
        if (strU == null) {
            strU = "";
        }
        fVarA.e(activity, strU, (8 & 4) != 0 ? null : null, (8 & 8) != 0 ? false : false, (8 & 16) != 0 ? null : linkedHashMap, new com.transsion.payment.lib.b() {
            @Override
            public void a(Integer num, String str, boolean z10, String str2) {
                wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "Payment failed " + str + ", " + num, false, 4, null);
                if (str == null) {
                    str = "top-up failed, Please try again.";
                }
                p.a(false, str);
            }

            @Override
            public void b(boolean z10) {
                wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "onPendingTransition()", false, 4, null);
            }

            @Override
            public void c(int i10, String balance, String str) {
                Intrinsics.h(balance, "balance");
                RewardsCenterModel.h(this.f48964a, str, false, 2, null);
                kotlinx.coroutines.k.d(u0.a(this.f48964a), null, null, new RewardsCenterModel$payment$1$success$1(this.f48964a, null), 3, null);
            }
        });
    }
}
