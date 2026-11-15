package com.transsion.startup;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.n;
import com.bumptech.glide.Glide;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.tencent.mmkv.MMKV;
import com.tencent.mmkv.MMKVLogLevel;
import com.tencent.mmkv.MMKVRecoverStrategic;
import com.therouter.TheRouter;
import com.therouter.router.NavigatorKt;
import com.therouter.router.RouteItem;
import com.tn.lib.logger.xlog.LogType;
import com.tn.lib.net.cons.PrefetchDnsUrls;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.api.gateway.GateWaySdk;
import com.transsion.api.gateway.config.WorkMode;
import com.transsion.baselib.config.CrashHandler;
import com.transsion.baselib.locale.LocaleChangedHelper;
import com.transsion.baselib.report.AppPeriodReport;
import com.transsion.baselib.report.k;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.widget.BaseLoadMoreView;
import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.tpush.PushRegisterManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.upload.log.UploadLoggerManager;
import com.transsion.version.update.UpdateManager;
import com.transsnet.loginapi.bean.UserInfo;
import com.wecloud.load.lib.DySoLoadManager;
import com.wecloud.load.lib.StProbeIntegration;
import com.wecloud.load.lib.j;
import ij.o;
import ij.t;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import org.json.JSONArray;
import yg.l;
import yg.m;

public final class StartupManager implements qx.b, m {

    public static final a f52494g = new a(null);

    private static final Lazy f52495h = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return StartupManager.e();
        }
    });

    private boolean f52496a;

    private Application f52498c;

    private final List f52497b = new ArrayList();

    private final Lazy f52499d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StartupManager.e0();
        }
    });

    private final Lazy f52500e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StartupManager.E();
        }
    });

    private final n0 f52501f = o0.a(y0.b().plus(l2.b(null, 1, null)));

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StartupManager a() {
            return (StartupManager) StartupManager.f52495h.getValue();
        }

        private a() {
        }
    }

    public static final class b implements com.tencent.mmkv.a {
        b() {
        }

        @Override
        public void a(MMKVLogLevel mMKVLogLevel, String str, int i10, String str2, String str3) {
            if (mMKVLogLevel == MMKVLogLevel.LevelError) {
                wf.a.C0922a.l(wf.a.f74274a, "MMKV_HANDLER", "Error: " + str3, false, 4, null);
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "MMKV_HANDLER", "Debug: " + str3, false, 4, null);
        }

        @Override
        public MMKVRecoverStrategic b(String str) {
            wf.a.C0922a.l(wf.a.f74274a, "MMKV_HANDLER", "CRC Check Fail for ID: " + str + ". Discarding...", false, 4, null);
            return MMKVRecoverStrategic.OnErrorDiscard;
        }

        @Override
        public boolean c() {
            return false;
        }

        @Override
        public MMKVRecoverStrategic d(String str) {
            wf.a.C0922a.l(wf.a.f74274a, "MMKV_HANDLER", "File Length Error for ID: " + str + ". Discarding...", false, 4, null);
            return MMKVRecoverStrategic.OnErrorDiscard;
        }
    }

    public static final class c implements k.a {
        c() {
        }

        @Override
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                bt.a aVarH = StartupManager.this.H();
                Application application = StartupManager.this.f52498c;
                if (application == null) {
                    Intrinsics.y("app");
                    application = null;
                }
                aVarH.b(application);
            }
        }
    }

    public static final class d implements bm.b {
        d() {
        }

        @Override
        public void a() {
            StartupManager.this.f52496a = true;
            StartupManager.this.i0();
        }

        @Override
        public void b() {
            kk.a aVar = (kk.a) TheRouter.d(kk.a.class, new Object[0]);
            if (aVar != null) {
                kk.a.C0793a.a(aVar, false, 1, null);
            }
            UploadLoggerManager.f54563a.g();
            StartupManager.this.m0();
            StartupManager.this.f52496a = true;
            StartupManager.this.i0();
        }
    }

    public static final class e implements sn.f {
        e() {
        }

        @Override
        public void a(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            wf.a.f74274a.p(tag, new String[]{msg}, z10);
        }

        @Override
        public void b(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            wf.a.f74274a.c(tag, msg, z10);
        }

        @Override
        public void c(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            wf.a.f74274a.u(tag, msg, z10);
        }

        @Override
        public void d(String tag, String msg, boolean z10) {
            Intrinsics.h(tag, "tag");
            Intrinsics.h(msg, "msg");
            wf.a.f74274a.i(tag, msg, z10);
        }
    }

    public static final class f implements mf.f {
        f() {
        }

        @Override
        public void a(RouteItem routeItem, mf.b callback) {
            Object objM453constructorimpl;
            Unit unit;
            Intrinsics.h(routeItem, "routeItem");
            Intrinsics.h(callback, "callback");
            wf.a.C0922a.f(wf.a.f74274a, "TheRouter-Interceptor", "process path :" + routeItem.getPath() + ", extras:" + routeItem.getExtras(), false, 4, null);
            fj.a aVar = new fj.a(callback, routeItem);
            Unit unit2 = null;
            try {
                Result.Companion companion = Result.INSTANCE;
                io.b bVar = (io.b) TheRouter.d(io.b.class, new Object[0]);
                if (bVar != null) {
                    bVar.a(routeItem, aVar);
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            try {
                com.transsion.moviedetailapi.g gVar = (com.transsion.moviedetailapi.g) TheRouter.d(com.transsion.moviedetailapi.g.class, new Object[0]);
                if (gVar != null) {
                    gVar.a(routeItem, aVar);
                    unit2 = Unit.f64096a;
                }
                Result.m453constructorimpl(unit2);
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th3));
            }
            try {
                objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(aVar.b()));
            } catch (Throwable th4) {
                Result.Companion companion4 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th4));
            }
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                wf.a.C0922a.f(wf.a.f74274a, "TheRouter-replace", "intercepted  " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
            }
        }
    }

    public static final class g extends mf.e {
        g() {
        }

        @Override
        public String b(String str) {
            wf.a.C0922a.f(wf.a.f74274a, "TheRouter-replace", "replace path :" + str, false, 4, null);
            Uri uri = str != null ? Uri.parse(str) : null;
            if (uri == null || !Intrinsics.c(uri.getScheme(), GifImagePreviewActivity.PICTURE_SAVE)) {
                return str;
            }
            String queryParameter = uri.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (queryParameter == null) {
                queryParameter = "";
            }
            return queryParameter.length() > 0 ? uri.buildUpon().path(queryParameter).build().toString() : str;
        }
    }

    public static final class h implements j.a {
        h() {
        }

        @Override
        public void a(String eventName, Map data) {
            String string;
            Intrinsics.h(eventName, "eventName");
            Intrinsics.h(data, "data");
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.e(data.size()));
                for (Object obj : data.entrySet()) {
                    Object key = ((Map.Entry) obj).getKey();
                    Object value = ((Map.Entry) obj).getValue();
                    if (value == null || (string = value.toString()) == null) {
                        string = "";
                    }
                    linkedHashMap.put(key, string);
                }
                qi.h.f69682a.r(eventName, linkedHashMap);
            } catch (Throwable th2) {
                wf.a.C0922a.l(wf.a.f74274a, "StartupManager", "network probe report error: " + th2, false, 4, null);
            }
        }
    }

    public static final class i extends dg.a {

        final Function1 f52504d;

        i(Function1 function1) {
            this.f52504d = function1;
        }

        @Override
        public void a(String str, String str2) {
            this.f52504d.invoke(Boolean.FALSE);
        }

        @Override
        public void c(String str) {
            super.c(str);
            this.f52504d.invoke(Boolean.TRUE);
        }
    }

    private final void B() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("current_env", "release");
        boolean z10 = !Intrinsics.c(string, "release");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("env=");
        sb2.append(string);
        sb2.append("  ");
        sb2.append(z10);
        if (!Intrinsics.c(string, "release")) {
            Application application = this.f52498c;
            if (application == null) {
                Intrinsics.y("app");
                application = null;
            }
            C(application);
        }
        bVar.b().putString("current_env", "release");
    }

    private final void C(Context context) {
        com.blankj.utilcode.util.f.a();
        com.blankj.utilcode.util.f.b();
        com.blankj.utilcode.util.f.c();
        com.blankj.utilcode.util.f.d();
        n.c(context != null ? context.getFilesDir() : null);
        Log.e("StartupManager", "clear");
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    private final void D() {
        Application application;
        Y();
        R();
        b0();
        S();
        N();
        AppPeriodReport appPeriodReport = AppPeriodReport.f42184a;
        appPeriodReport.b();
        kj.k.f64034a.a();
        com.transsion.baselib.locale.d.f42155f.e();
        LocaleChangedHelper localeChangedHelper = LocaleChangedHelper.f42148a;
        Application application2 = this.f52498c;
        if (application2 == null) {
            Intrinsics.y("app");
            application2 = null;
        }
        localeChangedHelper.b(application2);
        Application application3 = this.f52498c;
        if (application3 == null) {
            Intrinsics.y("app");
            application3 = null;
        }
        yj.a.b(application3);
        Application application4 = this.f52498c;
        if (application4 == null) {
            Intrinsics.y("app");
            application4 = null;
        }
        com.google.firebase.f.q(application4);
        kotlinx.coroutines.k.d(o0.a(y0.a()), null, null, new StartupManager$coldBootStage$1(this, null), 3, null);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new StartupManager$coldBootStage$2(this, null), 3, null);
        B();
        appPeriodReport.b();
        J();
        l.f76264a.l(this);
        FileDownloadTaskManager fileDownloadTaskManager = FileDownloadTaskManager.f44780a;
        Application application5 = this.f52498c;
        if (application5 == null) {
            Intrinsics.y("app");
            application = null;
        } else {
            application = application5;
        }
        fileDownloadTaskManager.j(application, false, false, false, new com.transsion.baselib.report.i(), "wefeed-mobile-bff");
    }

    public static final com.transsion.startup.a E() {
        return (com.transsion.startup.a) kg.c.f63982e.a().h(com.transsion.startup.a.class);
    }

    private final String F(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            sb2.append((String) obj);
            sb2.append(i10 == list.size() + (-1) ? "" : ",");
            i10 = i11;
        }
        return sb2.toString();
    }

    private final com.transsion.startup.a G() {
        return (com.transsion.startup.a) this.f52500e.getValue();
    }

    public final bt.a H() {
        return (bt.a) this.f52499d.getValue();
    }

    public final void I() {
        String string;
        MMKV mmkvC = mg.a.f66402a.c();
        String strO = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            strO = string;
        }
        if (TextUtils.isEmpty(strO)) {
            strO = tg.b.f72740a.o();
        }
        String str = strO;
        try {
            Result.Companion companion = Result.INSTANCE;
            Application application = this.f52498c;
            if (application == null) {
                Intrinsics.y("app");
                application = null;
            }
            Z(application, false, new com.transsion.baselib.report.i(), str, false);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void J() {
        k.f42210a.g(new c());
    }

    public final void K() {
        com.transsion.baselib.report.e eVar = com.transsion.baselib.report.e.f42196a;
        eVar.q();
        eVar.p(true);
        L();
    }

    private final void L() {
        com.transsion.baselib.config.f.f41894c.a().e(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return StartupManager.M(this.f52505a, ((Boolean) obj).booleanValue(), (com.google.firebase.remoteconfig.a) obj2);
            }
        });
        CrashHandler crashHandlerA = CrashHandler.f41888c.a();
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        crashHandlerA.g(application);
    }

    public static final Unit M(StartupManager startupManager, boolean z10, com.google.firebase.remoteconfig.a remoteConfig) {
        Intrinsics.h(remoteConfig, "remoteConfig");
        if (z10) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new StartupManager$initFirebaseConfig$1$1(startupManager, remoteConfig, null), 3, null);
        }
        return Unit.f64096a;
    }

    private final void N() {
        com.transsnet.flow.event.b bVar = com.transsnet.flow.event.b.f58030a;
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        bVar.c(application);
    }

    private final void O() {
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        GateWaySdk.init(application, "4U01pxRu278GqCZKY9", WorkMode.MODE_ONLINE);
    }

    public final void P() {
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        Glide.with(application);
    }

    public final void Q(boolean z10) {
        bt.a aVarH = H();
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        aVarH.a(application, z10);
    }

    private final void R() {
        xf.c.a aVar = xf.c.f75330a;
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        xf.c.a.g(aVar, application, LogType.TYPE_XLOG, false, null, 0L, 24, null);
    }

    private final void S() {
        dj.a aVar = dj.a.f59043a;
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        aVar.a(application);
    }

    public final void T() {
        try {
            wf.a.C0922a.f(wf.a.f74274a, "ShortTv", "initShortTv", false, 4, null);
            io.b bVar = (io.b) TheRouter.d(io.b.class, new Object[0]);
            if (bVar != null) {
                Application application = this.f52498c;
                if (application == null) {
                    Intrinsics.y("app");
                    application = null;
                }
                bVar.j(application);
            }
        } catch (Throwable th2) {
            wf.a.C0922a.l(wf.a.f74274a, "ShortTv", "initShortTv fail-- " + th2, false, 4, null);
            th2.printStackTrace();
        }
    }

    public final void U() throws PackageManager.NameNotFoundException {
        com.community.oneroom.nu.mm.a.installPlaybackClientBuild();
        ag.b bVar = new ag.b();
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        PackageManager packageManager = application.getPackageManager();
        Application application2 = this.f52498c;
        if (application2 == null) {
            Intrinsics.y("app");
            application2 = null;
        }
        PackageInfo packageInfo = packageManager.getPackageInfo(application2.getPackageName(), 0);
        Intrinsics.g(packageInfo, "getPackageInfo(...)");
        bVar.g(packageInfo.firstInstallTime);
        bVar.e(false);
        bVar.f(false);
        String str = packageInfo.versionName;
        if (str == null) {
            str = "";
        }
        bVar.h(str);
        ag.a.C0003a c0003a = ag.a.f344a;
        Application application3 = this.f52498c;
        if (application3 == null) {
            Intrinsics.y("app");
            application3 = null;
        }
        c0003a.f(application3, bVar);
        c0003a.h(false);
        O();
        String value = (t.f62121a.b() ? PlayMode.STREAM : PlayMode.DOWNLOAD).getValue();
        jg.b.a aVar = jg.b.f63119a;
        aVar.b("X-Play-Mode", value);
        com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f42221a;
        aVar.b("X-Family-Mode", bVar2.b().getBoolean("k_is_family_mode", false) ? "1" : "0");
        o.f62115a.n();
        aVar.b("X-Idle-Data", bVar2.b().getBoolean("k_setting_privacy_idle", true) ? "1" : "0");
        n0(kg.c.f63982e.a().g());
        bm.e eVar = bm.e.f15845a;
        eVar.r(new d());
        bm.e.p(eVar, null, null, 3, null);
        bVar2.b().putLong("app_config_fetch_time", System.currentTimeMillis());
        qx.a aVar2 = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        if (aVar2 != null) {
            aVar2.e(this);
        }
    }

    public final void W() {
        sn.e.f72355a.g(new e());
    }

    public final void X() {
        PushRegisterManager pushRegisterManager = PushRegisterManager.f48859a;
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        pushRegisterManager.C(application);
    }

    private final void Y() {
        TheRouter.p(false);
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        TheRouter.j(application, true);
        NavigatorKt.l(new f());
        NavigatorKt.h(new g());
    }

    private final void Z(Application application, boolean z10, qi.i iVar, String str, boolean z11) {
        qi.h.f69682a.j(application, z10, iVar, "Oneroom", 2570, true, str, z11);
    }

    public final void a0() {
        UpdateManager.f55354f.a().e("5603aeef91bb9cca8a85955d1c7170e6");
    }

    private final void b0() {
        fh.b.a aVar = fh.b.f60176a;
        Application application = this.f52498c;
        Application application2 = null;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        aVar.c(application);
        sg.c.a aVar2 = sg.c.f72063a;
        Application application3 = this.f52498c;
        if (application3 == null) {
            Intrinsics.y("app");
        } else {
            application2 = application3;
        }
        aVar2.a(application2);
    }

    public static final StartupManager e() {
        return new StartupManager();
    }

    public static final bt.a e0() {
        return new bt.a();
    }

    public final void f0() {
        com.transsion.baselib.report.launch.b.f42221a.b().getString("current_env", "release");
        MMKV mmkvM = tg.b.f72740a.m();
        if (mmkvM != null) {
            mmkvM.getString("apkgaid", "");
        }
    }

    public final void g0() {
        t6.j.b(new BaseLoadMoreView());
    }

    public final void h0() {
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        if (aVar != null) {
            Application application = this.f52498c;
            if (application == null) {
                Intrinsics.y("app");
                application = null;
            }
            aVar.l(application);
        }
    }

    public final void i0() {
        List listR0;
        synchronized (this.f52497b) {
            listR0 = CollectionsKt.R0(this.f52497b);
            this.f52497b.clear();
        }
        Iterator it = listR0.iterator();
        while (it.hasNext()) {
            ((Function0) it.next()).invoke();
        }
    }

    public final void l0(com.google.firebase.remoteconfig.a aVar) {
        com.transsion.startup.pref.anr.c cVar = com.transsion.startup.pref.anr.c.f52507a;
        cVar.a("firebase --> the remote configuration is obtained");
        cm.f.f17019c.a().i(aVar);
        com.transsion.startup.pref.anr.a.f52506a.a(aVar.n("watch_dog_timeout"));
        String strP = aVar.p("endpoints");
        Intrinsics.g(strP, "getString(...)");
        CacheIpPool.f39857a.n(strP);
        cVar.a("firebase --> endpoints " + strP);
        String strP2 = aVar.p("k_dy_so_control_config");
        Intrinsics.g(strP2, "getString(...)");
        Log.w("StartupManager", "remoteConfig " + aVar.n("key_total_show_times") + " k_dy_so_control_config=" + strP2);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "download_notify", "isOpenDownloadForegroundService = " + aVar + ".getBoolean(RoomAppMMKV.DOWNLOAD_FOREGROUND_SERVICE)", false, 4, null);
        DySoLoadManager dySoLoadManager = DySoLoadManager.f58570a;
        Application application = this.f52498c;
        if (application == null) {
            Intrinsics.y("app");
            application = null;
        }
        dySoLoadManager.i(application, strP2);
        String strP3 = aVar.p("prefetch_dns_hosts");
        Intrinsics.g(strP3, "getString(...)");
        if (strP3.length() <= 0) {
            try {
                wf.a.C0922a.f(c0922a, "prefetchDns", "has no config~ prefetch def dns", false, 4, null);
                Dns dns = Dns.SYSTEM;
                dns.lookup("vgorigin.hakunaymatata.com");
                dns.lookup("vacdn.hakunaymatata.com");
                return;
            } catch (Throwable th2) {
                wf.a.C0922a.f(wf.a.f74274a, "prefetchDns", "prefetch error = " + th2, false, 4, null);
                Unit unit = Unit.f64096a;
                return;
            }
        }
        try {
            PrefetchDnsUrls prefetchDnsUrls = (PrefetchDnsUrls) com.blankj.utilcode.util.o.d(strP3, PrefetchDnsUrls.class);
            wf.a.C0922a.f(c0922a, "prefetchDns", "prefetch dns config = " + strP3 + ", data = " + prefetchDnsUrls, false, 4, null);
            for (String str : prefetchDnsUrls.getHosts()) {
                try {
                    wf.a.C0922a.f(wf.a.f74274a, "prefetchDns", "prefetch dns hots = " + str, false, 4, null);
                    Dns.SYSTEM.lookup(str);
                } catch (Throwable th3) {
                    wf.a.C0922a.f(wf.a.f74274a, "prefetchDns", "1 prefetch error = " + th3, false, 4, null);
                }
            }
        } catch (Throwable th4) {
            wf.a.C0922a.f(wf.a.f74274a, "prefetchDns", "prefetch error = " + th4, false, 4, null);
        }
    }

    public final void m0() {
        kotlinx.coroutines.k.d(this.f52501f, null, null, new StartupManager$scheduleDelayTask$1(this, null), 3, null);
    }

    private final void n0(OkHttpClient okHttpClient) {
        GateWaySdk.setOkHttpClient(okHttpClient);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object o0(Continuation continuation) {
        StartupManager$startupNetworkProbe$1 startupManager$startupNetworkProbe$1;
        if (continuation instanceof StartupManager$startupNetworkProbe$1) {
            startupManager$startupNetworkProbe$1 = (StartupManager$startupNetworkProbe$1) continuation;
            int i10 = startupManager$startupNetworkProbe$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                startupManager$startupNetworkProbe$1.label = i10 - Integer.MIN_VALUE;
            } else {
                startupManager$startupNetworkProbe$1 = new StartupManager$startupNetworkProbe$1(this, continuation);
            }
        } else {
            startupManager$startupNetworkProbe$1 = new StartupManager$startupNetworkProbe$1(this, continuation);
        }
        StartupManager$startupNetworkProbe$1 startupManager$startupNetworkProbe$2 = startupManager$startupNetworkProbe$1;
        Object obj = startupManager$startupNetworkProbe$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = startupManager$startupNetworkProbe$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (!l.f76264a.e()) {
                    wf.a.C0922a.l(wf.a.f74274a, "StartupManager", "network not connected, skip startupNetworkProbe!", false, 4, null);
                    return Unit.f64096a;
                }
                StProbeIntegration stProbeIntegration = StProbeIntegration.f58598a;
                stProbeIntegration.l(false);
                j.f58610a.b(new h());
                startupManager$startupNetworkProbe$2.label = 1;
                if (StProbeIntegration.k(stProbeIntegration, false, 0, startupManager$startupNetworkProbe$2, 3, null) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            wf.a.C0922a.f(wf.a.f74274a, "StartupManager", "probeAllFromStProbeAndReport completed", false, 4, null);
        } catch (Throwable th2) {
            wf.a.C0922a.l(wf.a.f74274a, "StartupManager", "probeAllFromStProbeAndReport error: " + th2, false, 4, null);
        }
        return Unit.f64096a;
    }

    public final void A(Context context) {
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.APP_START, 0L, 2, null));
        if (context != null) {
            File filesDir = context.getFilesDir();
            MMKV.E(context, (filesDir != null ? filesDir.getAbsolutePath() : null) + "/mmkv", null, MMKVLogLevel.LevelInfo, new b());
        }
        com.transsion.startup.f.c(context);
    }

    public final void V(Application application) {
        Intrinsics.h(application, "application");
        this.f52498c = application;
        Q(false);
        S();
    }

    public final void c0(Application application) {
        Intrinsics.h(application, "application");
        this.f52498c = application;
        D();
    }

    public final boolean d0() {
        return this.f52496a;
    }

    public final void j0(int i10, boolean z10) {
        wf.a.C0922a.f(wf.a.f74274a, "StartupManager", "onTrimMemory " + i10, false, 4, null);
        if (i10 == 5 || i10 == 40) {
            H().c();
        }
    }

    public final void k0(Function0 callback) {
        Intrinsics.h(callback, "callback");
        synchronized (this.f52497b) {
            this.f52497b.remove(callback);
        }
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }

    @Override
    public void onDisconnected() {
        bm.e.f15845a.n();
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        bm.e.p(bm.e.f15845a, null, null, 3, null);
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }

    public final void p0(List ids, Function1 callback) {
        Intrinsics.h(ids, "ids");
        Intrinsics.h(callback, "callback");
        String strF = F(ids);
        if (strF != null) {
            com.transsion.baselib.helper.l.f42141b.a().d(strF);
        }
        wf.a.C0922a.f(wf.a.f74274a, "UserPrefer-tag", "userPrefer = " + strF, false, 4, null);
        StringBuilder sb2 = new StringBuilder("{\"ids\":");
        sb2.append(new JSONArray((Collection) ids));
        sb2.append("}");
        mg.b.a aVar = mg.b.f66404a;
        Intrinsics.e(sb2);
        RequestBody requestBodyA = aVar.a(sb2);
        if (requestBodyA != null) {
            G().a(gg.a.f61067a.a(), requestBodyA).f(dg.d.f59034a.c()).subscribe(new i(callback));
        }
    }

    public final void z(Function0 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f52496a) {
            callback.invoke();
            return;
        }
        synchronized (this.f52497b) {
            this.f52497b.add(callback);
        }
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        kk.a aVar = (kk.a) TheRouter.d(kk.a.class, new Object[0]);
        if (aVar != null) {
            aVar.c(false);
        }
        if (aVar != null) {
            aVar.i(false);
        }
        bm.e.f15845a.m();
    }
}
