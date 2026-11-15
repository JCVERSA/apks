package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

public class o {

    private final WorkDatabase f15371a;

    public o(WorkDatabase workDatabase) {
        this.f15371a = workDatabase;
    }

    public static void d(Context context, z3.d dVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j10 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j11 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            dVar.A();
            try {
                dVar.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j10)});
                dVar.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j11)});
                sharedPreferences.edit().clear().apply();
                dVar.I();
            } finally {
                dVar.L();
            }
        }
    }

    public long a() {
        Long longValue = this.f15371a.i0().getLongValue("last_cancel_all_time_ms");
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public long b() {
        Long longValue = this.f15371a.i0().getLongValue("last_force_stop_ms");
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public boolean c() {
        Long longValue = this.f15371a.i0().getLongValue("reschedule_needed");
        return longValue != null && longValue.longValue() == 1;
    }

    public void e(long j10) {
        this.f15371a.i0().a(new j4.d("last_cancel_all_time_ms", Long.valueOf(j10)));
    }

    public void f(long j10) {
        this.f15371a.i0().a(new j4.d("last_force_stop_ms", Long.valueOf(j10)));
    }

    public void g(boolean z10) {
        this.f15371a.i0().a(new j4.d("reschedule_needed", z10));
    }
}
