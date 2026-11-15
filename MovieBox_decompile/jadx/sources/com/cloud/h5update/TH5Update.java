package com.cloud.h5update;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.h5update.download.DownloadManager;
import com.cloud.h5update.utils.j;
import com.cloud.h5update.utils.l;
import com.tmc.network.HttpRequestor;
import com.transsion.api.gateway.config.WorkMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public final class TH5Update {

    private static String f20623d;

    private static int f20625f;

    private static volatile boolean f20626g;

    private static boolean f20627h;

    private static String f20629j;

    private static v6.b f20630k;

    private Application f20632a;

    private int f20633b;

    public static final a f20622c = new a(null);

    private static String f20624e = "";

    private static ConcurrentHashMap f20628i = new ConcurrentHashMap();

    private static final Lazy f20631l = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TH5Update>() {
        @Override
        public final TH5Update invoke() {
            return new TH5Update(null);
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void m(a aVar, String str, String str2, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                str2 = "";
            }
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            aVar.l(str, str2, i10);
        }

        public final void a() {
            List<PreloadResource> preloadResource;
            b.C0272b c0272b = b.f20636g;
            if (c0272b.a() == null) {
                return;
            }
            UpdateEntity updateEntityA = c0272b.a();
            if (updateEntityA != null && (preloadResource = updateEntityA.getPreloadResource()) != null) {
                Iterator<T> it = preloadResource.iterator();
                while (it.hasNext()) {
                    if (!TH5Update.f20622c.i().contains(((PreloadResource) it.next()).getStaticZipUrl())) {
                        return;
                    }
                }
            }
            j jVar = j.f20688a;
            UpdateEntity updateEntityA2 = b.f20636g.a();
            Long version = updateEntityA2 != null ? updateEntityA2.getVersion() : null;
            Intrinsics.e(version);
            jVar.g("last_update_version", version.longValue());
        }

        public final void b(UpdateEntity updateEntity) {
            Intrinsics.h(updateEntity, "updateEntity");
            j jVar = j.f20688a;
            long jC = jVar.c("last_update_version", 0L);
            Long version = updateEntity.getVersion();
            if (version != null && jC == version.longValue()) {
                jVar.i("last_update_version");
            }
            List<PreloadResource> preloadResource = updateEntity.getPreloadResource();
            if (preloadResource != null) {
                for (PreloadResource preloadResource2 : preloadResource) {
                    TypeIntrinsics.d(TH5Update.f20622c.i()).remove(preloadResource2.getStaticZipUrl());
                    j.f20688a.i("last_update_url_version" + preloadResource2.getStaticZipUrl());
                }
            }
        }

        public final Context c() {
            return d().l();
        }

        public final TH5Update d() {
            return (TH5Update) TH5Update.f20631l.getValue();
        }

        public final String e() {
            return TH5Update.f20623d;
        }

        public final String f() {
            return TH5Update.f20629j;
        }

        public final boolean g() {
            return TH5Update.f20627h;
        }

        public final boolean h() {
            return TH5Update.f20626g;
        }

        public final ConcurrentHashMap i() {
            return TH5Update.f20628i;
        }

        public final v6.b j() {
            return TH5Update.f20630k;
        }

        public final b.a k(Context context) {
            Intrinsics.h(context, "context");
            return new b.a(context);
        }

        public final void l(String appName, String versionName, int i10) {
            Intrinsics.h(appName, "appName");
            Intrinsics.h(versionName, "versionName");
            n(appName);
            HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
            if (companion != null) {
                String strE = e();
                Intrinsics.e(strE);
                companion.setAppInfo(strE, versionName, i10);
            }
        }

        public final void n(String str) {
            TH5Update.f20623d = str;
        }

        public final void o(String str) {
            TH5Update.f20629j = str;
        }

        public final void p(boolean z10) {
            TH5Update.f20626g = z10;
        }

        public final void q(v6.b bVar) {
            TH5Update.f20630k = bVar;
        }

        public final void r(v6.b bVar) {
            q(bVar);
        }

        private a() {
        }
    }

    public TH5Update(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final String m(Resources resources) {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? resources.getConfiguration().getLocales().get(0) : resources.getConfiguration().locale;
            Intrinsics.e(locale);
            String language = locale.getLanguage();
            Intrinsics.g(language, "{\n            val locale…cale!!.language\n        }");
            return language;
        } catch (Exception e10) {
            rf.b.f71178a.e(e10);
            return "";
        }
    }

    private final TH5Update p(String str) {
        if (this.f20632a == null) {
            return this;
        }
        try {
            HttpRequestor.Companion companion = HttpRequestor.INSTANCE;
            HttpRequestor companion2 = companion.getInstance();
            if (companion2 != null) {
                HttpRequestor.init$default(companion2, this.f20632a, str, this.f20633b == 3 ? WorkMode.MODE_TEST : WorkMode.MODE_ONLINE, null, 8, null);
            }
            HttpRequestor companion3 = companion.getInstance();
            if (companion3 != null) {
                Application application = this.f20632a;
                Intrinsics.e(application);
                Resources resources = application.getResources();
                Intrinsics.g(resources, "mApplication!!.resources");
                companion3.setLanguage(m(resources));
            }
            if (TextUtils.isEmpty(f20623d)) {
                Application application2 = this.f20632a;
                f20623d = application2 != null ? application2.getPackageName() : null;
            }
            HttpRequestor companion4 = companion.getInstance();
            if (companion4 != null) {
                String str2 = f20623d;
                Intrinsics.e(str2);
                companion4.setAppInfo(str2, f20624e, f20625f);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("api.sunnbird.com");
            arrayList.add("api.test.sunnbird.com");
            arrayList.add("api.pre.sunnbird.com");
            ArrayList arrayList2 = new ArrayList();
            HttpRequestor companion5 = companion.getInstance();
            if (companion5 != null) {
                companion5.setGateWayActivateSignConfig(arrayList, TypeIntrinsics.c(arrayList2));
            }
            rf.b.f71178a.h(this.f20633b == 3);
        } catch (Exception e10) {
            rf.b.f71178a.e(e10);
        }
        return this;
    }

    static TH5Update q(TH5Update tH5Update, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Lp84tK50u1uwuN3zNQ";
        }
        return tH5Update.p(str);
    }

    private final void s() {
        if (this.f20632a == null) {
            throw new ExceptionInInitializerError("请先在全局Application中调用 TUpdate.get().init() 初始化！");
        }
    }

    public final Application l() {
        s();
        Application application = this.f20632a;
        Intrinsics.e(application);
        return application;
    }

    public final void n(Application application, boolean z10, String str, String str2, boolean z11, String versionName, int i10) {
        Intrinsics.h(application, "application");
        Intrinsics.h(versionName, "versionName");
        this.f20632a = application;
        f20623d = str;
        f20624e = versionName;
        f20625f = i10;
        f20627h = z11;
        j jVar = j.f20688a;
        Context applicationContext = application.getApplicationContext();
        Intrinsics.g(applicationContext, "application.applicationContext");
        jVar.f(applicationContext);
        DownloadManager.k(DownloadManager.f20652g.a(), application, 0, 2, null);
        if (z10) {
            q(this, null, 1, null);
        }
        if (str2 == null) {
            str2 = l.f20693a.f();
        }
        f20629j = str2;
    }

    public final TH5Update r(int i10) {
        this.f20633b = i10;
        com.cloud.h5update.a.f20634a.b(i10);
        return this;
    }

    private TH5Update() {
        this.f20633b = 1;
    }
}
