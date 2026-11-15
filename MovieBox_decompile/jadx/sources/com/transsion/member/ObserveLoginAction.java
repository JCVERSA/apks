package com.transsion.member;

import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ObserveLoginAction implements qx.b {

    public static final a f44995c = new a(null);

    public static final int f44996d = 8;

    private static final ObserveLoginAction f44997e = new ObserveLoginAction();

    private final Lazy f44998a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ObserveLoginAction.k();
        }
    });

    private final CopyOnWriteArrayList f44999b = new CopyOnWriteArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ObserveLoginAction a() {
            return ObserveLoginAction.f44997e;
        }

        private a() {
        }
    }

    private ObserveLoginAction() {
    }

    private final void f() {
        com.transsion.member.a.f45001a.c(g() + " --> addLoginListener() --> 设置用户登录状态监听");
        qx.a aVarH = h();
        if (aVarH != null) {
            aVarH.e(this);
        }
    }

    private final String g() {
        String simpleName = ObserveLoginAction.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final qx.a h() {
        return (qx.a) this.f44998a.getValue();
    }

    public static final qx.a k() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final Unit l(ObserveLoginAction observeLoginAction) {
        observeLoginAction.m();
        return Unit.f64096a;
    }

    private final void m() {
        com.transsion.member.a.f45001a.a(g() + " --> onLogin() --> 监听到用户登录行为 --> 获取会员权益 --> refresh() --> 刷新UI");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ObserveLoginAction$refresh$1(this, null), 3, null);
    }

    public final void e(im.f listener) {
        Intrinsics.h(listener, "listener");
        this.f44999b.add(listener);
    }

    public final void i() {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ObserveLoginAction$getMemberSuccess$1(this, null), 3, null);
    }

    public final void j() {
        f44997e.f();
    }

    public final void n(im.f listener) {
        Intrinsics.h(listener, "listener");
        this.f44999b.remove(listener);
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        com.transsion.member.a.f45001a.a(g() + " --> onLogin() --> 监听到用户登录行为 --> 获取会员权益");
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.A(new Function0() {
                @Override
                public final Object invoke() {
                    return ObserveLoginAction.l(this.f45100a);
                }
            });
        }
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
        com.transsion.member.a.f45001a.a(g() + " --> onLogout() --> 监听到用户登出行为 --> 获取会员权益");
        w.f45184a.b().putBoolean("kv_is_skip_ad", false);
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }
}
