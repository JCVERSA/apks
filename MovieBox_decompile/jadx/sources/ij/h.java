package ij;

import android.app.Application;
import com.aliyun.player.BuildConfig;
import com.blankj.utilcode.util.Utils;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f62110a = new h();

    private static Boolean f62111b;

    private h() {
    }

    public final boolean a() {
        String value;
        Boolean bool = f62111b;
        if (bool != null) {
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }
        try {
            tg.b bVar = tg.b.f72740a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            long j10 = bVar.k(applicationA).totalMem;
            ConfigBean configBeanC = cm.f.f17019c.a().c("lowMemoryValue", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = BuildConfig.VERSION_NAME;
            }
            if (j10 <= ((double) 1073741824) * Double.parseDouble(value)) {
                f62111b = Boolean.TRUE;
            }
            Boolean bool2 = f62111b;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
