package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import kotlin.jvm.internal.Intrinsics;

public abstract class j {
    public static final void c(Context context, z3.d sqLiteDatabase) {
        Intrinsics.h(context, "context");
        Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i10 = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i11 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            sqLiteDatabase.A();
            try {
                sqLiteDatabase.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i10)});
                sqLiteDatabase.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i11)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.I();
            } finally {
                sqLiteDatabase.L();
            }
        }
    }

    public static final int d(WorkDatabase workDatabase, String str) {
        Long longValue = workDatabase.i0().getLongValue(str);
        int iLongValue = longValue != null ? (int) longValue.longValue() : 0;
        e(workDatabase, str, iLongValue != Integer.MAX_VALUE ? iLongValue + 1 : 0);
        return iLongValue;
    }

    public static final void e(WorkDatabase workDatabase, String str, int i10) {
        workDatabase.i0().a(new j4.d(str, Long.valueOf(i10)));
    }
}
