package androidx.work.impl;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class r extends x3.b {

    private final Context f15317c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context mContext, int i10, int i11) {
        super(i10, i11);
        Intrinsics.h(mContext, "mContext");
        this.f15317c = mContext;
    }

    @Override
    public void b(z3.d db2) {
        Intrinsics.h(db2, "db");
        if (this.f75070b >= 10) {
            db2.J("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
        } else {
            this.f15317c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
