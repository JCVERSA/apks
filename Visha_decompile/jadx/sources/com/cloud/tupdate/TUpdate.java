package com.cloud.tupdate;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import com.cloud.tupdate.net.network.HttpRequestor;
import com.cloud.tupdate.net.utils.LogUtil;
import com.transsion.gslb.GslbSdk;
import defpackage.c74;
import defpackage.o6;
import defpackage.qa1;
import defpackage.vk;
import defpackage.xca;
import defpackage.xgb;
import defpackage.y45;
import defpackage.yi5;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class TUpdate {
    public static final a c = new a(null);
    public static final yi5 d = kotlin.b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final TUpdate invoke() {
            return new TUpdate(null);
        }
    });
    public Application a;
    public boolean b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Context a() {
            return b().b();
        }

        public final TUpdate b() {
            return (TUpdate) TUpdate.d.getValue();
        }

        public final xgb.a c(Context context) {
            y45.j(context, "context");
            return new xgb.a(context);
        }

        public a() {
        }
    }

    public static final class b implements GslbSdk.InitListener {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override
        public void onInitFail() {
            LogUtil.a.c("gslb is fail");
        }

        @Override
        public void onInitSuccess(Map map) {
            String domain = GslbSdk.getDomain(this.a, true);
            Bundle bundle = new Bundle();
            bundle.putString("gslb_init_url", domain);
            vk.a.z("gslb_init", bundle);
        }
    }

    public TUpdate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final Application b() {
        g();
        Application application = this.a;
        y45.g(application);
        return application;
    }

    public final void c(Application application, boolean z) {
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        this.a = application;
        e();
        vk vkVar = vk.a;
        vkVar.o(this.a, this.b);
        d(application);
        o6.j().d("update", "update SDK Version is 1.3.0");
        Bundle bundle = new Bundle();
        bundle.putInt("upgrade_sdk_init_status", 1);
        vkVar.z("upgrade_sdk_init", bundle);
    }

    public final void d(Context context) {
        try {
            String str = this.b ? "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get" : "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get";
            GslbSdk.init(context, new String[]{str}, new b(str));
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }

    public final TUpdate e() {
        if (this.a == null) {
            return this;
        }
        try {
            HttpRequestor.Companion companion = HttpRequestor.INSTANCE;
            HttpRequestor httpRequestorA = companion.a();
            if (httpRequestorA != null) {
                httpRequestorA.c(this.b);
            }
            HttpRequestor httpRequestorA2 = companion.a();
            if (httpRequestorA2 != null) {
                httpRequestorA2.d(qa1.a.i());
            }
            LogUtil.a.f(this.b);
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
        return this;
    }

    public final TUpdate f(boolean z) {
        this.b = z;
        if (z) {
            o6.j().h(z);
        } else {
            o6.j().h(Log.isLoggable("UPDATE", 3));
        }
        xca.a.b(z);
        return this;
    }

    public final void g() {
        if (this.a == null) {
            throw new ExceptionInInitializerError("请先在全局Application中调用 TUpdate.get().init() 初始化！");
        }
    }

    public TUpdate() {
    }
}
