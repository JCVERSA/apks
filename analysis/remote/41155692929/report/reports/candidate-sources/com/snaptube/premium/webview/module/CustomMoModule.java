package com.snaptube.premium.webview.module;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.dataadapter.model.CommandType;
import com.snaptube.dataadapter.model.ContentCollection;
import com.snaptube.dataadapter.model.ServiceEndpoint;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.app.d;
import com.snaptube.premium.batch_download.BatchVideoSelectManager;
import com.snaptube.premium.batch_download.b;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.manager.SearchHistoryManager;
import com.snaptube.premium.marketActivitySupport.SupportMarketActivityManager;
import com.snaptube.premium.sites.SpeedDialUtil;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.em.common.protomodel.Card;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.pubnative.AdvertisingIdClient;
import o.a58;
import o.ab9;
import o.b88;
import o.cd3;
import o.cm;
import o.dx2;
import o.ej3;
import o.fc1;
import o.ja1;
import o.ka1;
import o.la1;
import o.m23;
import o.m50;
import o.ma1;
import o.me8;
import o.na1;
import o.oa1;
import o.or3;
import o.pa1;
import o.pg1;
import o.qa1;
import o.qj7;
import o.ra1;
import o.ri0;
import o.sa1;
import o.ta1;
import o.ti3;
import o.wu7;
import o.y3;
import o.yk6;
import o.yu0;
import org.json.JSONObject;
import rx.c;

public final class CustomMoModule extends m50 {
    public static final a h = new a(null);
    public final Context d;
    public final Handler e;
    public final CustomActionHandler f;
    public BatchVideoSelectManager g;

    public final class CustomActionHandler implements y3 {
        public wu7 a;
        public wu7 b;
        public wu7 c;
        public String d = "";

        public static final class a implements AdvertisingIdClient.Listener {
            public final HashMap b;
            public final cd3 c;
            public final String d;

            public a(HashMap map, cd3 cd3Var, String str) {
                this.b = map;
                this.c = cd3Var;
                this.d = str;
            }

            @Override
            public void onAdvertisingIdClientFail(Exception exc) {
                cd3 cd3Var = this.c;
                if (cd3Var != null) {
                    cd3Var.a(this.d, true, m23.e(this.b), true);
                }
            }

            @Override
            public void onAdvertisingIdClientFinish(AdvertisingIdClient.AdInfo adInfo) {
                CustomActionHandler customActionHandler = CustomActionHandler.this;
                String id = adInfo != null ? adInfo.getId() : null;
                if (id == null) {
                    id = "";
                }
                CustomActionHandler.q(customActionHandler, id);
                this.b.put(GuardianManager.ADVERTISING_ID, CustomActionHandler.m(CustomActionHandler.this));
                cd3 cd3Var = this.c;
                if (cd3Var != null) {
                    cd3Var.a(this.d, true, m23.e(this.b), true);
                }
            }
        }

        public CustomActionHandler() {
        }

        public static final Boolean A(CustomMoModule customMoModule, ServiceEndpoint serviceEndpoint) {
            or3.f(customMoModule, "this$0");
            Object applicationContext = customMoModule.g().getApplicationContext();
            or3.d(applicationContext, "null cannot be cast to non-null type com.snaptube.premium.app.UserComponent.UserComponentProvider");
            return Boolean.valueOf(((d.b) applicationContext).b().t().executeCommand(serviceEndpoint));
        }

        public static final void B(dx2 dx2Var, Object obj) {
            or3.f(dx2Var, "$tmp0");
            dx2Var.invoke(obj);
        }

        public static final void C(CustomMoModule customMoModule, CustomActionHandler customActionHandler, cd3 cd3Var, String str, Throwable th) {
            or3.f(customMoModule, "this$0");
            or3.f(customActionHandler, "this$1");
            ProductionEnv.throwExceptForDebugging(th);
            b88.l(customMoModule.g(), R.string.add_to_watch_later_failed);
            wu7 wu7Var = customActionHandler.b;
            if (wu7Var != null) {
                wu7Var.unsubscribe();
            }
            customActionHandler.b = null;
            if (cd3Var != null) {
                cd3Var.a(str, false, "Error happen: " + th, true);
            }
        }

        public static final void D(dx2 dx2Var, Object obj) {
            or3.f(dx2Var, "$tmp0");
            dx2Var.invoke(obj);
        }

        public static final void E(cd3 cd3Var, String str, CustomActionHandler customActionHandler, Throwable th) {
            or3.f(customActionHandler, "this$0");
            if (cd3Var != null) {
                try {
                    cd3Var.a(str, false, "Error happen: " + th, true);
                } catch (Throwable th2) {
                    ProductionEnv.logException("RxOnError", th2);
                    return;
                }
            }
            ProductionEnv.printStacktrace(th);
            wu7 wu7Var = customActionHandler.c;
            if (wu7Var != null) {
                wu7Var.unsubscribe();
            }
        }

        public static void b(cd3 cd3Var, String str, CustomActionHandler customActionHandler, Throwable th) {
            z(cd3Var, str, customActionHandler, th);
        }

        public static void c(CustomMoModule customMoModule, CustomActionHandler customActionHandler, cd3 cd3Var, String str, Throwable th) {
            C(customMoModule, customActionHandler, cd3Var, str, th);
        }

        public static void d(dx2 dx2Var, Object obj) {
            v(dx2Var, obj);
        }

        public static void e(dx2 dx2Var, Object obj) {
            D(dx2Var, obj);
        }

        public static void f(CustomMoModule customMoModule, cd3 cd3Var, String str) {
            w(customMoModule, cd3Var, str);
        }

        public static void g(cd3 cd3Var, String str, CustomActionHandler customActionHandler, Throwable th) {
            E(cd3Var, str, customActionHandler, th);
        }

        public static c h(dx2 dx2Var, Object obj) {
            return u(dx2Var, obj);
        }

        public static Boolean i(CustomMoModule customMoModule, ServiceEndpoint serviceEndpoint) {
            return A(customMoModule, serviceEndpoint);
        }

        public static void j(cd3 cd3Var, String str, DialogInterface dialogInterface, int i) {
            x(cd3Var, str, dialogInterface, i);
        }

        public static void k(cd3 cd3Var, String str, DialogInterface dialogInterface, int i) {
            y(cd3Var, str, dialogInterface, i);
        }

        public static void l(dx2 dx2Var, Object obj) {
            B(dx2Var, obj);
        }

        public static final String m(CustomActionHandler customActionHandler) {
            return customActionHandler.d;
        }

        public static final wu7 n(CustomActionHandler customActionHandler) {
            return customActionHandler.c;
        }

        public static final wu7 o(CustomActionHandler customActionHandler) {
            return customActionHandler.a;
        }

        public static final wu7 p(CustomActionHandler customActionHandler) {
            return customActionHandler.b;
        }

        public static final void q(CustomActionHandler customActionHandler, String str) {
            customActionHandler.d = str;
        }

        public static final void r(CustomActionHandler customActionHandler, wu7 wu7Var) {
            customActionHandler.a = wu7Var;
        }

        public static final void s(CustomActionHandler customActionHandler, wu7 wu7Var) {
            customActionHandler.b = wu7Var;
        }

        public static final c u(dx2 dx2Var, Object obj) {
            or3.f(dx2Var, "$tmp0");
            return (c) dx2Var.invoke(obj);
        }

        public static final void v(dx2 dx2Var, Object obj) {
            or3.f(dx2Var, "$tmp0");
            dx2Var.invoke(obj);
        }

        public static final void w(CustomMoModule customMoModule, cd3 cd3Var, String str) {
            or3.f(customMoModule, "this$0");
            new com.wandoujia.base.view.c.e(customMoModule.g()).m(R.string.p4_search_clean_history_dialog_title).f(R.string.p4_search_clean_history_dialog_message).k(R.string.ok, new ta1(cd3Var, str)).h(R.string.cancel, new ka1(cd3Var, str)).p();
        }

        public static final void x(cd3 cd3Var, String str, DialogInterface dialogInterface, int i) {
            if (cd3Var != null) {
                cd3Var.a(str, false, null, true);
            }
        }

        public static final void y(cd3 cd3Var, String str, DialogInterface dialogInterface, int i) {
            SearchHistoryManager.d().b();
            b88.e(PhoenixApplication.z(), R.string.p4_search_clean_history_toast);
            if (cd3Var != null) {
                cd3Var.a(str, true, null, true);
            }
        }

        public static final void z(cd3 cd3Var, String str, CustomActionHandler customActionHandler, Throwable th) {
            or3.f(customActionHandler, "this$0");
            ProductionEnv.throwExceptForDebugging(th);
            if (cd3Var != null) {
                cd3Var.a(str, false, null, true);
            }
            wu7 wu7Var = customActionHandler.a;
            if (wu7Var != null) {
                wu7Var.unsubscribe();
            }
            customActionHandler.a = null;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override
        public void a(String str, JSONObject jSONObject, String str2, cd3 cd3Var) {
            List listI0;
            if (str != null) {
                try {
                    arrayList = null;
                    ArrayList arrayList = null;
                    switch (str.hashCode()) {
                        case -1652591199:
                            if (str.equals("getSpeedDial")) {
                                this.a = SpeedDialUtil.o("browser").H(new ja1(new CustomMoModule$CustomActionHandler$handleAction$1(CustomMoModule.this))).u0(new la1(new CustomMoModule$CustomActionHandler$handleAction$2(cd3Var, str2, this)), new ma1(cd3Var, str2, this));
                                return;
                            }
                            break;
                        case -129796620:
                            if (str.equals("getAdParam")) {
                                HashMap map = new HashMap();
                                qj7.d(CustomMoModule.this.g(), map);
                                map.put("adsEnabled", String.valueOf(PhoenixApplication.C().n()));
                                if (this.d.length() == 0) {
                                    AdvertisingIdClient.getAdvertisingId(CustomMoModule.this.g().getApplicationContext(), new a(map, cd3Var, str2));
                                    return;
                                }
                                map.put(GuardianManager.ADVERTISING_ID, this.d);
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, m23.e(map), true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case -117983491:
                            if (str.equals("watchLater")) {
                                if (!((com.snaptube.premium.app.a) fc1.a(CustomMoModule.this.g())).q().d()) {
                                    NavigationManager.b1(CustomMoModule.this.g(), jSONObject != null ? jSONObject.optString("from", null) : null, jSONObject != null ? jSONObject.optString("position", null) : null);
                                    if (cd3Var != null) {
                                        cd3Var.a(str2, false, "account login", true);
                                        return;
                                    }
                                    return;
                                }
                                ServiceEndpoint serviceEndpointT = t(jSONObject != null ? jSONObject.optString("endPointString") : null, CommandType.REMOVE_FROM_WATCH_LATER);
                                if (serviceEndpointT != null) {
                                    this.b = c.M(new na1(CustomMoModule.this, serviceEndpointT)).z0(a58.c).u0(new oa1(new CustomMoModule$CustomActionHandler$handleAction$5(CustomMoModule.this, this, cd3Var, str2)), new pa1(CustomMoModule.this, this, cd3Var, str2));
                                    return;
                                } else {
                                    if (cd3Var != null) {
                                        cd3Var.a(str2, false, "end point not found", true);
                                        return;
                                    }
                                    return;
                                }
                            }
                            break;
                            break;
                        case -75112431:
                            if (str.equals("getUUID")) {
                                String strG = me8.g(PhoenixApplication.z());
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, strG, true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 663231715:
                            if (str.equals("setActivityStatus")) {
                                Boolean boolValueOf = jSONObject != null ? Boolean.valueOf(jSONObject.optBoolean("activityIsValid", false)) : null;
                                if (boolValueOf != null) {
                                    SupportMarketActivityManager.i.a().i(boolValueOf.booleanValue());
                                } else {
                                    SupportMarketActivityManager.i.a().i(false);
                                }
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, null, true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 786578773:
                            if (str.equals("getBadgedList")) {
                                BatchVideoSelectManager batchVideoSelectManagerF = CustomMoModule.this.f();
                                if (batchVideoSelectManagerF != null && (listI0 = batchVideoSelectManagerF.i0()) != null) {
                                    arrayList = new ArrayList(yu0.r(listI0, 10));
                                    Iterator it2 = listI0.iterator();
                                    while (it2.hasNext()) {
                                        arrayList.add(ri0.G(((b) it2.next()).i()));
                                    }
                                }
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, m23.e(arrayList), true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1072256664:
                            if (str.equals("badgeVideo")) {
                                Card cardN2 = ab9.n2((ContentCollection) m23.a(jSONObject != null ? jSONObject.optString("content", null) : null, ContentCollection.class), jSONObject != null ? jSONObject.optString("position", null) : null);
                                if (or3.a(jSONObject != null ? Boolean.valueOf(jSONObject.optBoolean("badge")) : null, Boolean.TRUE)) {
                                    BatchVideoSelectManager batchVideoSelectManagerF2 = CustomMoModule.this.f();
                                    if (batchVideoSelectManagerF2 != null) {
                                        batchVideoSelectManagerF2.s(cardN2, null, null);
                                    }
                                } else {
                                    BatchVideoSelectManager batchVideoSelectManagerF3 = CustomMoModule.this.f();
                                    if (batchVideoSelectManagerF3 != null) {
                                        batchVideoSelectManagerF3.t0(cardN2);
                                    }
                                }
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, null, true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1125623318:
                            if (str.equals("getSearchHistory")) {
                                List listF = SearchHistoryManager.d().f();
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, m23.e(listF), true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1135978511:
                            if (str.equals("trackEvent")) {
                                ReportPropertyBuilder.e().setAction(jSONObject != null ? jSONObject.optString("action", null) : null).setEventName(jSONObject != null ? jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null) : null).addAllProperties(jSONObject != null ? jSONObject.optJSONObject("property") : null).reportEvent();
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, "reported", true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1625213055:
                            if (str.equals("clearSearchHistory")) {
                                a58.c(new sa1(CustomMoModule.this, cd3Var, str2));
                                return;
                            }
                            break;
                        case 1661037721:
                            if (str.equals("getApkComment")) {
                                Context contextZ = PhoenixApplication.z();
                                or3.e(contextZ, "getAppContext(...)");
                                JSONObject jSONObjectD = cm.d(contextZ);
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, jSONObjectD != null ? jSONObjectD.toString() : null, true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1704382043:
                            if (str.equals("getSearchResult")) {
                                this.c = ej3.a.c(((com.snaptube.premium.activity.a) fc1.a(CustomMoModule.this.g())).a(), "videos", jSONObject != null ? jSONObject.optString("query", null) : null, jSONObject != null ? jSONObject.optString("uploadTime", null) : null, jSONObject != null ? jSONObject.optString("offset", null) : null, jSONObject != null ? jSONObject.optString(IntentUtil.DURATION, null) : null, jSONObject != null ? jSONObject.optString("from", null) : null, null).z0(a58.c).u0(new qa1(new CustomMoModule$CustomActionHandler$handleAction$7(cd3Var, str2, this)), new ra1(cd3Var, str2, this));
                                return;
                            }
                            break;
                        case 1715519532:
                            if (str.equals("getCommonParam")) {
                                Map mapE = yk6.e(1);
                                if (cd3Var != null) {
                                    cd3Var.a(str2, true, m23.e(mapE), true);
                                    return;
                                }
                                return;
                            }
                            break;
                        case 1811096719:
                            if (str.equals("getUserInfo")) {
                                ti3.b bVarC = PhoenixApplication.C().b().q().c();
                                if (bVarC == null) {
                                    if (cd3Var != null) {
                                        cd3Var.a(str2, false, null, true);
                                        return;
                                    }
                                    return;
                                } else if (TextUtils.isEmpty(bVarC.c())) {
                                    if (cd3Var != null) {
                                        cd3Var.a(str2, false, null, true);
                                        return;
                                    }
                                    return;
                                } else {
                                    if (cd3Var != null) {
                                        cd3Var.a(str2, true, m23.e(bVarC), true);
                                        return;
                                    }
                                    return;
                                }
                            }
                            break;
                            break;
                    }
                } catch (Exception e) {
                    if (cd3Var != null) {
                        cd3Var.a(str2, false, "Error happened: " + e, true);
                    }
                    ProductionEnv.throwExceptForDebugging(e);
                    return;
                }
            }
            if (cd3Var != null) {
                cd3Var.a(str2, false, "Unsupported method", true);
            }
        }

        public final ServiceEndpoint t(String str, CommandType commandType) {
            List<ServiceEndpoint> list;
            if (str == null || (list = (List) m23.b(str, new CustomMoModule$CustomActionHandler$getServiceEndpoint$1$endPoints$1().getType())) == null) {
                return null;
            }
            or3.c(list);
            for (ServiceEndpoint serviceEndpoint : list) {
                if (serviceEndpoint.getType() == commandType) {
                    return serviceEndpoint;
                }
            }
            return null;
        }
    }

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }
    }

    public CustomMoModule(Context context, Handler handler) {
        or3.f(context, "context");
        or3.f(handler, "handler");
        this.d = context;
        this.e = handler;
        CustomActionHandler customActionHandler = new CustomActionHandler();
        this.f = customActionHandler;
        d("getSpeedDial", customActionHandler);
        d("getBadgedList", customActionHandler);
        d("badgeVideo", customActionHandler);
        d("watchLater", customActionHandler);
        d("trackEvent", customActionHandler);
        d("getSearchResult", customActionHandler);
        d("getSearchHistory", customActionHandler);
        d("clearSearchHistory", customActionHandler);
        d("getCommonParam", customActionHandler);
        d("getAdParam", customActionHandler);
        d("getUserInfo", customActionHandler);
        d("getUUID", customActionHandler);
        d("setActivityStatus", customActionHandler);
        d("getApkComment", customActionHandler);
    }

    public final BatchVideoSelectManager f() {
        return this.g;
    }

    public final Context g() {
        return this.d;
    }

    public final void h(BatchVideoSelectManager batchVideoSelectManager) {
        this.g = batchVideoSelectManager;
    }
}
