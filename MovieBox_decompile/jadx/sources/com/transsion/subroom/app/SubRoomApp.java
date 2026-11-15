package com.transsion.subroom.app;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import androidx.work.a;
import cm.f;
import com.blankj.utilcode.util.t;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.baselib.net.AppLifeStatusInterceptor;
import com.transsion.baselib.net.d;
import com.transsion.baselib.report.k;
import com.transsion.baselib.report.launch.b;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.startup.StartupManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.startup.pref.consume.c;
import com.transsion.subroom.app.SubRoomApp;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ig.e;
import ij.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import on.e0;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0016\u0018\u0000 \u00182\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0011B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/transsion/subroom/app/SubRoomApp;", "Landroid/app/Application;", "Landroid/content/ComponentCallbacks2;", "Landroidx/work/a$c;", "<init>", "()V", "Landroid/content/Context;", "base", "", "attachBaseContext", "(Landroid/content/Context;)V", "onCreate", "", PermissionConstant.level, "onTrimMemory", "(I)V", "Landroidx/work/a;", "a", "()Landroidx/work/a;", "", "Lkotlin/Lazy;", "c", "()Z", "isMainProcess", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class SubRoomApp extends Application implements ComponentCallbacks2, a.c {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy isMainProcess = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(SubRoomApp.d());
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function0 g() {
            return new Function0() {
                @Override
                public final Object invoke() {
                    return Boolean.valueOf(SubRoomApp.Companion.h());
                }
            };
        }

        public static final boolean h() {
            ConfigBean configBeanC = f.f17019c.a().c("player_async", true);
            return Intrinsics.c(configBeanC != null ? configBeanC.getValue() : null, "false");
        }

        public final Function0 i() {
            return new Function0() {
                @Override
                public final Object invoke() {
                    return Boolean.valueOf(SubRoomApp.Companion.j());
                }
            };
        }

        public static final boolean j() {
            return !h.f62110a.a();
        }

        public final Function0 k() {
            return new Function0() {
                @Override
                public final Object invoke() {
                    return Integer.valueOf(SubRoomApp.Companion.l());
                }
            };
        }

        public static final int l() {
            Integer numV;
            ConfigBean configBeanC = f.f17019c.a().c("sb_player_type", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
                return 1;
            }
            return numV.intValue();
        }

        private Companion() {
        }
    }

    private final boolean c() {
        return ((Boolean) this.isMainProcess.getValue()).booleanValue();
    }

    public static final boolean d() {
        return t.e();
    }

    @Override
    public a a() {
        a aVarA = new a.b().b(4).a();
        Intrinsics.g(aVarA, "build(...)");
        return aVarA;
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        StartupManager.f52494g.a().A(base);
        c.f52518a.j();
        d.f42179a.c();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (c()) {
            e0 e0Var = e0.f67859a;
            Companion companion = INSTANCE;
            e0Var.x(companion.i());
            e0Var.w(companion.g());
            e0Var.y(companion.k());
            e eVar = e.f62089a;
            eVar.a(new com.transsion.baselib.net.f());
            eVar.a(new AppLifeStatusInterceptor());
            CacheIpPool.f39857a.o("api6.aoneroom.com");
            StartupManager.f52494g.a().c0(this);
            if (!b.f42221a.b().getBoolean("dark_mode_follow_sys", false)) {
                androidx.appcompat.app.f.O(2);
            }
            registerActivityLifecycleCallbacks(k.f42210a);
        } else {
            StartupManager.f52494g.a().V(this);
        }
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.APP_END, 0L, 2, null));
        com.transsion.baseui.activity.k.b(null, 1, null);
    }

    @Override
    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        StartupManager.f52494g.a().j0(level, c());
    }
}
