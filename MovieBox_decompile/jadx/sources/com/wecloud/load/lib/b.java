package com.wecloud.load.lib;

import android.content.Context;
import android.util.Log;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.WorkManager;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f58603a = new b();

    private static final long f58604b = 15;

    private b() {
    }

    public final void a(Context context) {
        Intrinsics.h(context, "context");
        try {
            long j10 = f58604b;
            WorkManager.f(context.getApplicationContext()).e("exit_check_work", ExistingPeriodicWorkPolicy.KEEP, (androidx.work.m) new androidx.work.m.a(ExitCheckWorker.class, j10, TimeUnit.MINUTES).b());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("已注册退出监控周期任务，每 ");
            sb2.append(j10);
            sb2.append(" 分钟检查一次");
        } catch (Exception e10) {
            Log.e("ExitCheckScheduler", "注册退出监控任务失败: " + e10.getMessage(), e10);
        }
    }
}
