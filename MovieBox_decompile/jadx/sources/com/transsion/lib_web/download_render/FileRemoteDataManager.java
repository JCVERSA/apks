package com.transsion.lib_web.download_render;

import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
import com.transsion.lib_web.download_render.data.config.ConfigData;
import com.transsion.lib_web.download_render.timer.SyncDataTimerTask;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import pl.h;

public final class FileRemoteDataManager {

    public static final FileRemoteDataManager f44791a = new FileRemoteDataManager();

    private static final AtomicBoolean f44792b = new AtomicBoolean(false);

    private static final xl.b f44793c = new xl.b();

    private static final SyncDataTimerTask f44794d = new SyncDataTimerTask();

    private static final n0 f44795e;

    private static final Lazy f44796f;

    private static final Lazy f44797g;

    private static final String f44798h;

    private static String f44799i;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        f44795e = o0.a(m1.c(executorServiceNewSingleThreadExecutor));
        f44796f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return FileRemoteDataManager.f();
            }
        });
        f44797g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return FileRemoteDataManager.j();
            }
        });
        f44798h = "requestTime";
        f44799i = "wefeed-mobile-bff";
    }

    private FileRemoteDataManager() {
    }

    public static final g f() {
        return (g) kg.c.f63982e.a().h(g.class);
    }

    public final g g() {
        return (g) f44796f.getValue();
    }

    public final MMKV h() {
        Object value = f44797g.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (MMKV) value;
    }

    public static final MMKV j() {
        return MMKV.I("web_file_download_with_render_request");
    }

    public final String i() {
        return f44799i;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    public final void k() {
        String str;
        String value;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - h().getLong(f44798h, 0L);
            long requestMinInterval = 3600000;
            try {
                ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "dr_config", false, 2, null);
                if (configBeanD == null || (value = configBeanD.getValue()) == null) {
                    str = "{}";
                } else {
                    str = StringsKt.q0(value) ? null : value;
                    if (str == null) {
                        str = "{}";
                    }
                }
                requestMinInterval = ((ConfigData) o.d(str, ConfigData.class)).getRequestMinInterval();
                h.f69205a.a("DR_Config", "config:" + str + ", intervalTime:" + requestMinInterval);
            } catch (Throwable unused) {
            }
            if (jCurrentTimeMillis > requestMinInterval) {
                m();
            }
        } catch (Throwable unused2) {
        }
    }

    public final void l(String str) {
        Intrinsics.h(str, "<set-?>");
        f44799i = str;
    }

    public final void m() {
        k.d(f44795e, null, null, new FileRemoteDataManager$syncData$1(null), 3, null);
    }
}
