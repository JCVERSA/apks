package com.transsion.usercenter.profile.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

public final class UserProfileViewModel extends t0 {

    public static final a f55171l = new a(null);

    private final Lazy f55172a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UserProfileViewModel.r();
        }
    });

    private final Lazy f55173b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UserProfileViewModel.t();
        }
    });

    private final Lazy f55174c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UserProfileViewModel.s();
        }
    });

    private final b0 f55175d;

    private final LiveData f55176e;

    private final b0 f55177f;

    private final LiveData f55178g;

    private final b0 f55179h;

    private final LiveData f55180i;

    private final b0 f55181j;

    private final LiveData f55182k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public UserProfileViewModel() {
        b0 b0Var = new b0();
        this.f55175d = b0Var;
        this.f55176e = b0Var;
        b0 b0Var2 = new b0(Boolean.FALSE);
        this.f55177f = b0Var2;
        this.f55178g = b0Var2;
        b0 b0Var3 = new b0();
        this.f55179h = b0Var3;
        this.f55180i = b0Var3;
        b0 b0Var4 = new b0();
        this.f55181j = b0Var4;
        this.f55182k = b0Var4;
    }

    private final qx.a k() {
        return (qx.a) this.f55172a.getValue();
    }

    public final com.transsion.usercenter.profile.b l() {
        return (com.transsion.usercenter.profile.b) this.f55174c.getValue();
    }

    public final com.transsion.usercenter.profile.c m() {
        return (com.transsion.usercenter.profile.c) this.f55173b.getValue();
    }

    public static final qx.a r() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final com.transsion.usercenter.profile.b s() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public static final com.transsion.usercenter.profile.c t() {
        return (com.transsion.usercenter.profile.c) kg.c.f63982e.a().h(com.transsion.usercenter.profile.c.class);
    }

    public final void i(String targetUID) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UserProfileViewModel$fetchSubscriptionStatus$1(this, targetUID, null), 3, null);
    }

    public final void j(String str) {
        k.d(u0.a(this), null, null, new UserProfileViewModel$fetchUserProfileV3$1(this, str, null), 3, null);
    }

    public final LiveData n() {
        return this.f55180i;
    }

    public final LiveData o() {
        return this.f55182k;
    }

    public final void p(String str) {
        UserInfo userInfoI;
        String userId;
        this.f55175d.q(str);
        qx.a aVarK = k();
        String string = (aVarK == null || (userInfoI = aVarK.i()) == null || (userId = userInfoI.getUserId()) == null) ? null : userId.toString();
        boolean z10 = str == null || StringsKt.q0(str) || Intrinsics.c(str, string);
        wf.a.f74274a.c("UserProfileVM", "initProfile target=" + str + ", current=" + string + ", isSelf=" + z10, false);
        this.f55177f.q(Boolean.valueOf(z10));
        j(str);
        if (z10 || str == null || StringsKt.q0(str)) {
            this.f55179h.q(null);
        } else {
            i(str);
        }
    }

    public final LiveData q() {
        return this.f55178g;
    }

    public final void u(String targetUID, boolean z10) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UserProfileViewModel$toggleSubscription$1(targetUID, z10, this, null), 3, null);
    }
}
