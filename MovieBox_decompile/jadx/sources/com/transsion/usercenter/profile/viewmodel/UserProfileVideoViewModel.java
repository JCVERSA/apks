package com.transsion.usercenter.profile.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

public final class UserProfileVideoViewModel extends t0 {

    public static final a f55156o = new a(null);

    private final Lazy f55157a;

    private final Lazy f55158b;

    private String f55159c;

    private String f55160d;

    private int f55161e;

    private boolean f55162f;

    private final List f55163g;

    private final b0 f55164h;

    private final LiveData f55165i;

    private boolean f55166j;

    private final b0 f55167k;

    private final LiveData f55168l;

    private final b0 f55169m;

    private final LiveData f55170n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public UserProfileVideoViewModel() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f55157a = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UserProfileVideoViewModel.n();
            }
        });
        this.f55158b = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UserProfileVideoViewModel.v();
            }
        });
        this.f55160d = "";
        this.f55161e = 12;
        this.f55162f = true;
        this.f55163g = new ArrayList();
        b0 b0Var = new b0(Boolean.FALSE);
        this.f55164h = b0Var;
        this.f55165i = b0Var;
        b0 b0Var2 = new b0();
        this.f55167k = b0Var2;
        this.f55168l = b0Var2;
        b0 b0Var3 = new b0(null);
        this.f55169m = b0Var3;
        this.f55170n = b0Var3;
    }

    public static final hv.c n() {
        return (hv.c) kg.c.f63982e.a().h(hv.c.class);
    }

    public final hv.c o() {
        return (hv.c) this.f55157a.getValue();
    }

    private final qx.a r() {
        return (qx.a) this.f55158b.getValue();
    }

    public static final qx.a v() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void x(boolean z10) {
        String str;
        UserInfo userInfoI;
        String userId;
        UserInfo userInfoI2;
        String userId2;
        if (z10) {
            this.f55164h.q(Boolean.TRUE);
        } else {
            this.f55166j = true;
        }
        String string = this.f55159c;
        String string2 = null;
        if (string != null) {
            str = string;
        } else {
            qx.a aVarR = r();
            if (aVarR == null || (userInfoI2 = aVarR.i()) == null || (userId2 = userInfoI2.getUserId()) == null) {
                str = null;
            } else {
                string = userId2.toString();
                str = string;
            }
        }
        String str2 = z10 ? "" : this.f55160d;
        qx.a aVarR2 = r();
        if (aVarR2 != null && (userInfoI = aVarR2.i()) != null && (userId = userInfoI.getUserId()) != null) {
            string2 = userId.toString();
        }
        String str3 = this.f55159c;
        boolean z11 = (str3 == null || StringsKt.q0(str3) || !Intrinsics.c(this.f55159c, string2)) ? false : true;
        wf.a.f74274a.c("UserProfileVideoVM", "requestPage isRefresh=" + z10 + ", isSelf=" + z11 + ", target=" + this.f55159c + ", current=" + string2, false);
        k.d(u0.a(this), null, null, new UserProfileVideoViewModel$requestPage$1(this, z10, z11, str2, str, null), 3, null);
    }

    public final LiveData p() {
        return this.f55170n;
    }

    public final LiveData q() {
        return this.f55168l;
    }

    public final LiveData s() {
        return this.f55165i;
    }

    public final void t(String str) {
        this.f55159c = str;
    }

    public final void u() {
        if (!this.f55162f || Intrinsics.c(this.f55164h.f(), Boolean.TRUE) || this.f55166j) {
            return;
        }
        wf.a.f74274a.c("UserProfileVideoVM", "loadMore start nextPage=" + this.f55160d, false);
        x(false);
    }

    public final void w() {
        if (Intrinsics.c(this.f55164h.f(), Boolean.TRUE) || this.f55166j) {
            return;
        }
        wf.a.f74274a.c("UserProfileVideoVM", "refresh start userId=" + this.f55159c, false);
        this.f55160d = "";
        this.f55162f = true;
        this.f55163g.clear();
        x(true);
    }
}
