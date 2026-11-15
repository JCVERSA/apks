package bm;

import android.os.Build;
import cm.f;
import cm.g;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.gson.JsonArray;
import com.transsion.mb.config.download.AppStartConfig;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ServiceLoader;
import java.util.concurrent.Callable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import yg.l;
import yx.h;

public final class e {

    private static boolean f15846b;

    private static bm.b f15847c;

    private static boolean f15848d;

    private static Boolean f15852h;

    public static final e f15845a = new e();

    private static final Lazy f15849e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e.i();
        }
    });

    private static String f15850f = "";

    private static String f15851g = "wefeed-mobile-bff";

    static final class a implements h {

        final String f15853a;

        final String f15854b;

        final String f15855c;

        a(String str, String str2, String str3) {
            this.f15853a = str;
            this.f15854b = str2;
            this.f15855c = str3;
        }

        @Override
        public final m apply(String str) {
            bm.a aVarK = e.f15845a.k();
            String str2 = this.f15853a;
            String str3 = this.f15854b;
            Intrinsics.e(str);
            return aVarK.a(str2, str3, str, this.f15855c);
        }
    }

    static final class b implements yx.d {

        public static final b f15856a = new b();

        b() {
        }

        @Override
        public final boolean a(Integer t10, Throwable th2) {
            Intrinsics.h(t10, "t1");
            Intrinsics.h(th2, "<unused var>");
            wf.a.C0922a.f(wf.a.f74274a, "RequestConfig", "retry ing.. t1:" + t10.intValue(), false, 4, null);
            return Intrinsics.c(e.f15845a.l(), Boolean.TRUE) && t10.intValue() <= 1;
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            wf.a.C0922a.f(wf.a.f74274a, "RequestConfig", "onFailure code: " + str + "  message: " + str2, false, 4, null);
            e.f15848d = false;
            bm.b bVar = e.f15847c;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void c(AppStartConfig appStartConfig) {
            Object objM453constructorimpl;
            Unit unit;
            super.c(appStartConfig);
            e.f15846b = true;
            e.f15848d = false;
            if (appStartConfig == null) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "RequestConfig", "onSuccess:" + appStartConfig, false, 4, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                JsonArray items = appStartConfig.getItems();
                if (items != null) {
                    f.f17019c.a().j(items);
                }
                String version = appStartConfig.getVersion();
                if (version != null) {
                    cm.d.f17015a.g().putString("configVersion", version);
                }
                bm.b bVar = e.f15847c;
                if (bVar != null) {
                    bVar.b();
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl == null) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "RequestConfig", "fail --> it = " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    private e() {
    }

    public static final bm.a i() {
        return (bm.a) kg.c.f63982e.a().h(bm.a.class);
    }

    private final String j() {
        if (f15850f.length() > 0) {
            return f15850f;
        }
        if (Build.VERSION.SDK_INT <= 23) {
            f15850f = IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
            return IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        }
        try {
            ServiceLoader serviceLoaderLoad = ServiceLoader.load(g.class);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = serviceLoaderLoad.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                linkedHashSet.addAll(((g) it.next()).providerParams());
            }
            f15850f = CollectionsKt.s0(linkedHashSet, ",", null, null, 0, null, null, 62, null);
        } catch (Exception e10) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String message = e10.getMessage();
            if (message == null) {
                message = "";
            }
            wf.a.C0922a.l(c0922a, "CombinedRequestParam", message, false, 4, null);
            e10.printStackTrace();
            f15850f = IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        }
        return f15850f;
    }

    public final bm.a k() {
        return (bm.a) f15849e.getValue();
    }

    public final Boolean l() {
        if (f15852h == null) {
            f15852h = Boolean.valueOf(l.f76264a.e());
        }
        return f15852h;
    }

    public static void p(e eVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gg.a.f61067a.a();
        }
        if ((i10 & 2) != 0) {
            str2 = "wefeed-mobile-bff";
        }
        eVar.o(str, str2);
    }

    public static final String q() {
        return f15845a.j();
    }

    public final void h() {
        if (f15846b) {
            return;
        }
        p(this, null, f15851g, 1, null);
    }

    public final void m() {
        f15852h = Boolean.TRUE;
        h();
    }

    public final void n() {
        f15852h = Boolean.FALSE;
    }

    public final void o(String host, String path) {
        Intrinsics.h(host, "host");
        Intrinsics.h(path, "path");
        f15851g = path;
        if (f15848d) {
            wf.a.C0922a.f(wf.a.f74274a, "RequestConfig", "requestConfig ing...", false, 4, null);
            return;
        }
        f15848d = true;
        f15846b = false;
        String string = cm.d.f17015a.g().getString("configVersion", "");
        j.r(new Callable() {
            @Override
            public final Object call() {
                return e.q();
            }
        }).E(ey.a.c()).n(new a(path, host, string != null ? string : "")).f(dg.d.f59034a.e()).y(b.f15856a).subscribe(new c());
    }

    public final void r(bm.b configLoadListener) {
        Intrinsics.h(configLoadListener, "configLoadListener");
        f15847c = configLoadListener;
    }
}
