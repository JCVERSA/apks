package com.transsion.push.tpush;

import android.app.Application;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.utils.NotificationUtil;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

public final class PushRegisterManager implements yg.m, qx.b {

    public static final PushRegisterManager f48859a = new PushRegisterManager();

    private static final Lazy f48860b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushRegisterManager.F();
        }
    });

    private static final Lazy f48861c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushRegisterManager.E();
        }
    });

    private static final Lazy f48862d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushRegisterManager.D();
        }
    });

    private static final Lazy f48863e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PushRegisterManager.G();
        }
    });

    private static t1 f48864f;

    private static volatile boolean f48865g;

    public static final class a implements f {
        a() {
        }

        @Override
        public void a(String token) throws JSONException {
            Intrinsics.h(token, "token");
            PushRegisterManager.f48865g = false;
            PushRegisterManager pushRegisterManager = PushRegisterManager.f48859a;
            pushRegisterManager.H();
            pushRegisterManager.N();
        }

        @Override
        public void b(long j10, String str) {
            PushRegisterManager.f48859a.B(j10, str);
        }

        @Override
        public void onSdkInitSuccess(String str, String str2) throws JSONException {
            PushRegisterManager.f48865g = false;
            PushRegisterManager pushRegisterManager = PushRegisterManager.f48859a;
            pushRegisterManager.H();
            pushRegisterManager.N();
        }
    }

    private PushRegisterManager() {
    }

    public final RequestBody A(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.String] */
    public final void B(long j10, String str) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "PushRegisterManager", "onMessageReceive msgId " + j10 + " transData=" + str, false, 4, null);
        if (str != null) {
            try {
                if (StringsKt.c0(str, "clientLogsRetrieve", false, 2, null)) {
                    kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PushRegisterManager$handleTransData$1$1(str, null), 3, null);
                } else if (StringsKt.c0(str, "configRefreshPush", false, 2, null)) {
                    i iVar = (i) TheRouter.d(i.class, new Object[0]);
                    if (iVar != null) {
                        iVar.a();
                    }
                } else {
                    MsgBean msgBean = (MsgBean) com.blankj.utilcode.util.o.d(str, MsgBean.class);
                    if (msgBean != null) {
                        com.transsion.push.helper.a.f48764a.h(String.valueOf(j10), String.valueOf(msgBean.getDeeplink()), "2");
                        msgBean.setMessageId(String.valueOf(j10));
                        msgBean.setType(MsgType.ONLINE_JSON_PUSH.getType());
                        msgBean.setSource(MsgStyle.SOURCE_FCM_PUSH);
                        wf.a.C0922a.f(c0922a, "PushRegisterManager", "msg.message: " + msgBean, false, 4, null);
                        Ref.ObjectRef objectRef = new Ref.ObjectRef();
                        NotificationUtil notificationUtil = NotificationUtil.f48898a;
                        objectRef.element = notificationUtil.T(String.valueOf(msgBean.getDeeplink()), "id");
                        String strT = notificationUtil.T(String.valueOf(msgBean.getDeeplink()), "msg_type");
                        wf.a.C0922a.f(c0922a, "PushRegisterManager", "msg_type: " + strT, false, 4, null);
                        if (StringsKt.I(strT, MsgStyle.SPORTS_LIVE_EVENT_REMIND, false, 2, null)) {
                            wf.a.C0922a.f(c0922a, "PushRegisterManager", "接收到SportsLiveEventRemind的通知", false, 4, null);
                            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PushRegisterManager$handleTransData$1$2$1(objectRef, msgBean, null), 3, null);
                        } else {
                            com.transsion.push.helper.e eVar = com.transsion.push.helper.e.f48766a;
                            Application applicationA = Utils.a();
                            Intrinsics.g(applicationA, "getApp(...)");
                            eVar.i(applicationA, msgBean);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static final qx.a D() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final uo.a E() {
        return (uo.a) kg.c.f63982e.a().h(uo.a.class);
    }

    public static final h F() {
        return (h) kg.c.f63982e.a().h(h.class);
    }

    public static final a G() {
        return new a();
    }

    public final void H() {
        boolean zC = Intrinsics.c(CacheIpPool.f39857a.l(), "test-mse-api.aoneroom.com");
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("push_topic_country", "");
        String string2 = bVar.b().getString("push_topic_zone", "");
        String string3 = bVar.b().getString("push_topic_language", "");
        String string4 = bVar.b().getString("push_topic_app", "");
        final String str = "topic_country_" + Locale.getDefault().getCountry() + (zC ? "_test" : "");
        String id2 = TimeZone.getDefault().getID();
        Intrinsics.g(id2, "getID(...)");
        final String str2 = "topic_zone_" + StringsKt.P(id2, '/', '_', false, 4, null) + (zC ? "_test" : "");
        final String str3 = "topic_language_" + Locale.getDefault().getLanguage() + (zC ? "_test" : "");
        final String str4 = "topic_appid_" + Utils.a().getPackageName() + (zC ? "_test" : "");
        if (!Intrinsics.c(string, str)) {
            if (string != null && string.length() != 0) {
                e.f48869a.r(string);
            }
            e.f48869a.m(str, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PushRegisterManager.I(str, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (!Intrinsics.c(string2, str2)) {
            if (string2 != null && string2.length() != 0) {
                e.f48869a.r(string2);
            }
            e.f48869a.m(str2, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PushRegisterManager.J(str2, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (!Intrinsics.c(string3, str3)) {
            if (string3 != null && string3.length() != 0) {
                e.f48869a.r(string3);
            }
            e.f48869a.m(str3, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PushRegisterManager.K(str3, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (Intrinsics.c(string4, str4)) {
            return;
        }
        if (string4 != null && string4.length() != 0) {
            e.f48869a.r(string4);
        }
        e.f48869a.m(str4, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PushRegisterManager.L(str4, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit I(String str, boolean z10) {
        if (z10) {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("push_topic_country", str);
        }
        return Unit.f64096a;
    }

    public static final Unit J(String str, boolean z10) {
        if (z10) {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("push_topic_zone", str);
        }
        return Unit.f64096a;
    }

    public static final Unit K(String str, boolean z10) {
        if (z10) {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("push_topic_language", str);
        }
        return Unit.f64096a;
    }

    public static final Unit L(String str, boolean z10) {
        if (z10) {
            com.transsion.baselib.report.launch.b.f42221a.b().putString("push_topic_app", str);
        }
        return Unit.f64096a;
    }

    public final void M() throws JSONException {
        if (f48865g) {
            return;
        }
        f48865g = true;
        N();
    }

    public static final Unit O(JSONObject jSONObject, String regHash) {
        Intrinsics.h(regHash, "regHash");
        t1 t1Var = f48864f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f48864f = kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PushRegisterManager$sendToServer$1$1(jSONObject, regHash, null), 3, null);
        return Unit.f64096a;
    }

    private final boolean s() {
        try {
            return t.b(Utils.a()).a();
        } catch (Exception unused) {
            return true;
        }
    }

    private final void t(Function1 function1) {
        String userId;
        UserInfo userInfoI;
        String id2 = TimeZone.getDefault().getID();
        qx.a aVarW = w();
        if (aVarW == null || (userInfoI = aVarW.i()) == null || (userId = userInfoI.getUserId()) == null) {
            userId = "";
        }
        int iF = com.blankj.utilcode.util.c.f();
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        String strN = tg.b.f72740a.n();
        wg.a.C0924a c0924a = wg.a.f74277a;
        e eVar = e.f48869a;
        String strA = c0924a.a(userId + "|" + id2 + "|" + iF + "|" + country + "|" + language + "|" + strN + "|" + eVar.j() + "|" + eVar.g());
        if (Intrinsics.c(strA, com.transsion.baselib.report.launch.b.f42221a.b().getString("push_ru", ""))) {
            return;
        }
        function1.invoke(strA);
    }

    public static final Unit v(String it) throws JSONException {
        Intrinsics.h(it, "it");
        f48859a.N();
        return Unit.f64096a;
    }

    private final qx.a w() {
        return (qx.a) f48862d.getValue();
    }

    public final uo.a x() {
        return (uo.a) f48861c.getValue();
    }

    public final h y() {
        return (h) f48860b.getValue();
    }

    private final a z() {
        return (a) f48863e.getValue();
    }

    public final void C(Application context) {
        Intrinsics.h(context, "context");
        yg.l.f76264a.l(this);
        e eVar = e.f48869a;
        eVar.k(context);
        eVar.l(z());
        qx.a aVarW = w();
        if (aVarW != null) {
            aVarW.e(this);
        }
    }

    public final void N() throws JSONException {
        e eVar = e.f48869a;
        if (eVar.j().length() == 0 || eVar.g().length() == 0) {
            return;
        }
        boolean zS = s();
        final JSONObject jSONObject = new JSONObject();
        jSONObject.put("firebaseToken", eVar.j());
        jSONObject.put("twibidaClientId", eVar.g());
        jSONObject.put("notifySwitchOff", !zS);
        wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "onSuccess, firebaseToken:" + eVar.j() + " twibidaClientId " + eVar.g(), false, 4, null);
        t(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PushRegisterManager.O(jSONObject, (String) obj);
            }
        });
    }

    @Override
    public void onConnected() {
        yg.m.a.a(this);
    }

    @Override
    public void onDisconnected() {
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        wf.a.C0922a.f(wf.a.f74274a, "PushRegisterManager", "onLogin, " + user.getUserId(), false, 4, null);
        u();
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }

    public final void u() {
        t(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PushRegisterManager.v((String) obj);
            }
        });
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        u();
    }
}
