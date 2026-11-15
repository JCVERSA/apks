package com.transsnet.login;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.google.gson.JsonObject;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.mvel2.ast.ASTNode;

public final class q implements qx.a {

    public static final a f58319f = new a(null);

    private static final Lazy f58320g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return q.E();
        }
    });

    private Context f58321a;

    private volatile UserInfo f58322b;

    private List f58323c = new CopyOnWriteArrayList();

    private final Lazy f58324d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return q.D();
        }
    });

    private final String f58325e = "X-User";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qx.a a() {
            return (qx.a) q.f58320g.getValue();
        }

        private a() {
        }
    }

    static final class b implements yx.h {
        b() {
        }

        @Override
        public final BaseDto apply(BaseDto it) {
            Intrinsics.h(it, "it");
            UserInfo userInfo = (UserInfo) it.getData();
            if (userInfo != null) {
                UserInfo userInfo2 = q.this.f58322b;
                userInfo.setToken(userInfo2 != null ? userInfo2.getToken() : null);
            }
            return it;
        }
    }

    static final class c implements yx.f {
        c() {
        }

        @Override
        public final void accept(BaseDto it) {
            Intrinsics.h(it, "it");
            q.this.c((UserInfo) it.getData());
        }
    }

    public static final class d extends dg.a {
        d() {
        }

        @Override
        public void a(String str, String str2) {
        }

        @Override
        public void c(UserInfo userInfo) {
            if (userInfo != null) {
                q.this.L(userInfo);
            }
        }
    }

    static final class e implements yx.h {

        public static final e f58329a = new e();

        e() {
        }

        @Override
        public final RequestBody apply(String it) {
            Intrinsics.h(it, "it");
            JsonObject jsonObject = new JsonObject();
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class f implements yx.h {
        f() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return q.this.C().h(gg.a.f61067a.a(), it);
        }
    }

    public static final class g extends dg.a {
        g() {
        }

        @Override
        public void a(String str, String str2) {
            q.this.G();
        }

        @Override
        public void c(UserInfo userInfo) {
            q.this.G();
            if (userInfo != null) {
                q.this.I(userInfo);
            }
        }
    }

    private final WeakReference B(qx.b bVar) {
        for (WeakReference weakReference : this.f58323c) {
            qx.b bVar2 = (qx.b) weakReference.get();
            if (bVar2 != null && bVar2 == bVar) {
                return weakReference;
            }
        }
        return null;
    }

    public final nx.a C() {
        return (nx.a) this.f58324d.getValue();
    }

    public static final nx.a D() {
        return (nx.a) kg.c.f63982e.a().h(nx.a.class);
    }

    public static final qx.a E() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public final void G() {
        this.f58322b = null;
        ix.d.f62813a.b().putString("login_user", "");
        mg.a.f66402a.h("");
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                q.H(this.f58160a);
            }
        });
    }

    public static final void H(q qVar) {
        Iterator it = qVar.f58323c.iterator();
        while (it.hasNext()) {
            qx.b bVar = (qx.b) ((WeakReference) it.next()).get();
            if (bVar != null) {
                bVar.onLogout();
            }
        }
    }

    public final void I(final UserInfo userInfo) {
        c(userInfo);
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                q.J(this.f58158a, userInfo);
            }
        });
    }

    public static final void J(q qVar, UserInfo userInfo) {
        Iterator it = qVar.f58323c.iterator();
        while (it.hasNext()) {
            qx.b bVar = (qx.b) ((WeakReference) it.next()).get();
            if (bVar != null) {
                bVar.onLogin(userInfo);
            }
        }
    }

    public final void L(final UserInfo userInfo) {
        this.f58322b = userInfo;
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                q.M(this.f58161a, userInfo);
            }
        });
    }

    public static final void M(q qVar, UserInfo userInfo) {
        Iterator it = qVar.f58323c.iterator();
        while (it.hasNext()) {
            qx.b bVar = (qx.b) ((WeakReference) it.next()).get();
            if (bVar != null) {
                bVar.onUpdateUserInfo(userInfo);
            }
        }
    }

    public final void F() {
        io.reactivex.rxjava3.core.j.t("").u(e.f58329a).n(new f()).f(dg.d.f59034a.c()).subscribe(new g());
    }

    public void K() {
        G();
    }

    @Override
    public boolean a() {
        UserInfo userInfo;
        return (this.f58322b == null || (userInfo = this.f58322b) == null || userInfo.getUserType() != 1) ? false : true;
    }

    @Override
    public String b() {
        String string = Utils.a().getString(R$string.login_success);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public synchronized void c(UserInfo userInfo) {
        String userId;
        try {
            this.f58322b = userInfo;
            wf.a.C0922a.e(wf.a.f74274a, "login", "saveUserInfo " + (userInfo != null ? userInfo.getUserId() : null), new Throwable("info"), false, 8, null);
            if (userInfo != null && (userId = userInfo.getUserId()) != null) {
                mg.a.f66402a.h(userId);
            }
            ix.d.f62813a.b().putString("login_user", com.blankj.utilcode.util.o.j(userInfo));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void d() {
        if (yg.l.f76264a.e()) {
            F();
        } else {
            G();
        }
    }

    @Override
    public void e(qx.b listener) {
        Intrinsics.h(listener, "listener");
        if (B(listener) == null) {
            this.f58323c.add(new WeakReference(listener));
        }
    }

    @Override
    public Country f() {
        return lx.a.f66162a.b();
    }

    @Override
    public void g(String str) {
        nx.a aVarC = C();
        if (str == null) {
            str = "";
        }
        nx.a.C0823a.c(aVarC, str, null, 2, null).v(ey.a.c()).u(new b()).h(new c()).f(dg.d.f59034a.c()).subscribe(new d());
    }

    @Override
    public void h(Response response) {
        Intrinsics.h(response, "response");
        try {
            if (response.code() != 200) {
                if (response.code() == 401) {
                    K();
                    return;
                }
                return;
            }
            String str = response.headers().get(this.f58325e);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            UserInfo userInfo = (UserInfo) com.blankj.utilcode.util.o.d(str, UserInfo.class);
            if (this.f58322b == null) {
                Intrinsics.e(userInfo);
                I(userInfo);
                return;
            }
            UserInfo userInfo2 = this.f58322b;
            if (TextUtils.equals(userInfo2 != null ? userInfo2.getToken() : null, userInfo.getToken())) {
                return;
            }
            UserInfo userInfo3 = this.f58322b;
            if (userInfo3 != null) {
                userInfo3.setToken(userInfo.getToken());
            }
            c(this.f58322b);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public UserInfo i() {
        return this.f58322b;
    }

    @Override
    public void j(qx.b listener) {
        Intrinsics.h(listener, "listener");
        List list = this.f58323c;
        TypeIntrinsics.a(list).remove(B(listener));
    }

    @Override
    public void k(Context context) {
        Intrinsics.h(context, "context");
        Intent intent = new Intent(context, (Class<?>) LoginLikeActivity.class);
        intent.setFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    @Override
    public void l(Context context) {
        String userId;
        Intrinsics.h(context, "context");
        this.f58321a = context;
        String string = ix.d.f62813a.b().getString("login_user", "");
        String str = string != null ? string : "";
        Object objD = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objD = com.blankj.utilcode.util.o.d(str, UserInfo.class);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        if (this.f58322b == null) {
            UserInfo userInfo = (UserInfo) objD;
            this.f58322b = userInfo;
            if (userInfo == null || (userId = userInfo.getUserId()) == null) {
                return;
            }
            mg.a.f66402a.h(userId);
        }
    }

    @Override
    public Object m(UserInfo userInfo, Continuation continuation) {
        I(userInfo);
        g(userInfo.getUserId());
        return Unit.f64096a;
    }

    @Override
    public void n(long j10) {
        ix.d.f62813a.b().putLong("login_launch_first_state", j10);
    }

    @Override
    public long o() {
        return ix.d.f62813a.b().getLong("login_launch_first_state", 0L);
    }

    @Override
    public Intent p(Context context) {
        Intrinsics.h(context, "context");
        return new Intent(context, (Class<?>) LoginLikeActivity.class);
    }
}
