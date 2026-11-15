package com.transsion.baselib.net;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.therouter.TheRouter;
import com.transsion.baselib.report.k;
import java.io.IOException;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class AppLifeStatusInterceptor implements Interceptor {

    public static final a f42173d = new a(null);

    private final AtomicBoolean f42174a = new AtomicBoolean(false);

    private final Lazy f42175b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AppLifeStatusInterceptor.f();
        }
    });

    private final HashSet f42176c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements k.a {
        b() {
        }

        @Override
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                return;
            }
            com.transsion.baselib.report.launch.b.f42221a.b().putLong("record_latest_foreground_time", System.currentTimeMillis());
            d.f42179a.b().set(true);
            AppLifeStatusInterceptor.this.h();
        }
    }

    public AppLifeStatusInterceptor() {
        HashSet hashSet = new HashSet();
        this.f42176c = hashSet;
        hashSet.add("/wefeed-mobile-bff/message/push/local/list");
        hashSet.add("/wefeed-mobile-bff/subject-api/get-ext-captions");
        hashSet.add("/wefeed-mobile-bff/app/config");
        hashSet.add("/wefeed-mobile-bff/live/sub-upcomming-match");
        hashSet.add("/wefeed-mobile-bff/subject-api/widget");
        d();
    }

    private final void d() {
        k.f42210a.g(new b());
    }

    public static final Handler f() {
        return new Handler(Looper.getMainLooper());
    }

    public static final void g() {
        ij.k.p(TheRouter.c("/main/page_not_available"));
    }

    public final void h() {
        if (this.f42174a.get()) {
            this.f42174a.set(false);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AppLifeStatusInterceptor$requestForBackToForeground$1(null), 3, null);
        }
    }

    private final boolean i(Interceptor.Chain chain) {
        k kVar = k.f42210a;
        if (!kVar.q() || ((!kVar.v() && d.f42179a.b().get()) || kVar.r())) {
            return false;
        }
        String path = Uri.parse(chain.request().url().getUrl()).getPath();
        if (!kVar.v() && CollectionsKt.b0(this.f42176c, path)) {
            return false;
        }
        this.f42174a.set(true);
        return true;
    }

    public final Handler e() {
        return (Handler) this.f42175b.getValue();
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        if (!i(chain)) {
            Response responseProceed = chain.proceed(request);
            if (responseProceed.code() == 403 && !k.f42210a.q()) {
                e().post(new Runnable() {
                    @Override
                    public final void run() {
                        AppLifeStatusInterceptor.g();
                    }
                });
            }
            return responseProceed;
        }
        wf.a.f74274a.p("HttpTag", new String[]{"AppLifeStatusInterceptor response " + ((Object) null) + " : " + request.url() + " is Background request cancel "}, true);
        throw new IOException("is Background request cancel");
    }
}
