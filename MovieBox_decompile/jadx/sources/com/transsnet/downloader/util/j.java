package com.transsnet.downloader.util;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.text.StringsKt;

public final class j {

    public static final j f57724a = new j();

    private j() {
    }

    public final boolean a() {
        String value;
        Long lX;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        long j10 = bVar.b().getLong("key_download_st_show_last_time", 0L);
        long j11 = bVar.b().getLong("key_download_st_showed_times", 0L);
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "key_storage_per_total_show_times", false, 2, null);
        long jLongValue = (configBeanD == null || (value = configBeanD.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 3L : lX.longValue();
        return !com.blankj.utilcode.util.c0.f(j10) && (jLongValue > 0 ? jLongValue : 3L) > j11;
    }
}
