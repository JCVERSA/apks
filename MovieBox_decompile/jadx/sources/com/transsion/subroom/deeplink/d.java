package com.transsion.subroom.deeplink;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.report.h;
import com.transsion.baselib.report.k;
import com.transsion.baseui.activity.BaseCommonActivity;
import com.transsion.subroom.activity.MainActivity;
import com.transsion.subroom.activity.SplashActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class d extends androidx.p009lifecycle.b implements Application.ActivityLifecycleCallbacks {

    public static final a f52647d = new a(null);

    private final Lazy f52648b;

    private Uri f52649c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends dg.a {

        final Uri f52651e;

        final Function0 f52652f;

        b(Uri uri, Function0 function0) {
            this.f52651e = uri;
            this.f52652f = function0;
        }

        @Override
        public void a(String str, String str2) {
            d dVar = d.this;
            Uri uri = this.f52651e;
            dVar.l(uri, uri, null, this.f52652f);
        }

        @Override
        public void c(ILaunchApi.UrlBean urlBean) {
            String url;
            super.c(urlBean);
            if (urlBean != null) {
                try {
                    url = urlBean.getUrl();
                    if (url == null) {
                        url = "";
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            } else {
                url = "";
            }
            if (!TextUtils.isEmpty(url)) {
                d.this.l(this.f52651e, Uri.parse(url), null, this.f52652f);
                return;
            }
            d dVar = d.this;
            Uri uri = this.f52651e;
            dVar.l(uri, uri, null, this.f52652f);
        }
    }

    public static final class c extends mf.c {

        final Function0 f52653a;

        c(Function0 function0) {
            this.f52653a = function0;
        }

        @Override
        public void b(Navigator navigator) {
            Intrinsics.h(navigator, "navigator");
            Function0 function0 = this.f52653a;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override
        public void c(Navigator navigator) {
            Intrinsics.h(navigator, "navigator");
        }

        @Override
        public void d(Navigator navigator, int i10) {
            Intrinsics.h(navigator, "navigator");
            Function0 function0 = this.f52653a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52648b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return d.j();
            }
        });
    }

    private final void e(Uri uri, Function0 function0) {
        ILaunchApi iLaunchApiF = f();
        String string = uri.toString();
        Intrinsics.g(string, "toString(...)");
        ILaunchApi.a.a(iLaunchApiF, string, null, 2, null).f(dg.d.f59034a.c()).subscribe(new b(uri, function0));
    }

    private final ILaunchApi f() {
        return (ILaunchApi) this.f52648b.getValue();
    }

    private final void g(Context context, Function0 function0) {
        try {
            Uri uri = this.f52649c;
            String queryParameter = uri != null ? uri.getQueryParameter(TmcConstants.EXTRA_BACK_TO_MINIAPP_DEEPLINK) : null;
            if (queryParameter != null && queryParameter.length() != 0 && context != null) {
                dj.a.f59043a.b(context, queryParameter);
                return;
            }
        } catch (Throwable unused) {
        }
        if (!com.transsion.baselib.helper.b.f42123a.e(this.f52649c)) {
            l(null, this.f52649c, context, function0);
            return;
        }
        Uri uri2 = this.f52649c;
        if (uri2 != null) {
            e(uri2, function0);
        }
    }

    static void h(d dVar, Context context, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        dVar.g(context, function0);
    }

    public static final ILaunchApi j() {
        return (ILaunchApi) kg.c.f63982e.a().h(ILaunchApi.class);
    }

    private final boolean k() {
        for (Activity activity : k.f42210a.m()) {
            if ((activity instanceof SplashActivity) || (activity instanceof MainActivity)) {
                return false;
            }
        }
        return true;
    }

    public final void l(Uri uri, Uri uri2, Context context, Function0 function0) {
        String string;
        kk.a aVar;
        String string2;
        String str = "";
        if (uri != null) {
            try {
                string = uri.toString();
                if (string == null) {
                    string = "";
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
            e10.printStackTrace();
            return;
        }
        string = "";
        if (uri2 != null && (string2 = uri2.toString()) != null) {
            str = string2;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("toLandingPage short url: ");
        sb2.append(string);
        sb2.append(" whole url ");
        sb2.append(str);
        if (uri2 != null) {
            try {
                String queryParameter = uri2.getQueryParameter("inviteCode");
                if (queryParameter != null && (aVar = (kk.a) TheRouter.d(kk.a.class, new Object[0])) != null) {
                    aVar.a(queryParameter);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        h.f42200a.h(string, str);
        Uri uriG = com.transsion.baselib.helper.b.f42123a.g(uri2);
        if (uriG != null) {
            ij.k.m(uriG).z(BaseCommonActivity.EXTRA_SHOW_HOME_BUTTON, uriG.getBooleanQueryParameter(BaseCommonActivity.EXTRA_SHOW_HOME_BUTTON, false)).u(context, new c(function0));
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    private final void m(Context context, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) SplashActivity.class);
        intent.putExtra("from", "deeplink");
        intent.putExtra("without_ad", z10);
        if (!(context instanceof Activity)) {
            intent.addFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    public final void i(Context context, Uri uri, Function0 onArrival) {
        Intrinsics.h(context, "context");
        Intrinsics.h(uri, "uri");
        Intrinsics.h(onArrival, "onArrival");
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("withoutMain", false);
        boolean booleanQueryParameter2 = uri.getBooleanQueryParameter("withoutAd", false);
        com.transsion.subroom.deeplink.b.f52645a.b(uri.getBooleanQueryParameter("skipTwiceBack", false));
        h.f42200a.j(uri);
        this.f52649c = uri;
        if (booleanQueryParameter2) {
            rh.b.f71229a.b();
        }
        if (!k()) {
            g(context, onArrival);
        } else {
            if (booleanQueryParameter) {
                g(context, onArrival);
                return;
            }
            b().registerActivityLifecycleCallbacks(this);
            m(context, booleanQueryParameter2);
            onArrival.invoke();
        }
    }

    @Override
    public void onActivityCreated(Activity p10, Bundle bundle) {
        Intrinsics.h(p10, "p0");
    }

    @Override
    public void onActivityDestroyed(Activity p10) {
        Intrinsics.h(p10, "p0");
    }

    @Override
    public void onActivityPaused(Activity p10) {
        Intrinsics.h(p10, "p0");
    }

    @Override
    public void onActivityResumed(Activity p10) {
        Intrinsics.h(p10, "p0");
        try {
            if (p10 instanceof MainActivity) {
                b().unregisterActivityLifecycleCallbacks(this);
                h(this, p10, null, 2, null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onActivitySaveInstanceState(Activity p10, Bundle p11) {
        Intrinsics.h(p10, "p0");
        Intrinsics.h(p11, "p1");
    }

    @Override
    public void onActivityStarted(Activity p10) {
        Intrinsics.h(p10, "p0");
    }

    @Override
    public void onActivityStopped(Activity p10) {
        Intrinsics.h(p10, "p0");
    }
}
