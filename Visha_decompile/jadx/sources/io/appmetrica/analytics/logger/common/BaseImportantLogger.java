package io.appmetrica.analytics.logger.common;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.logger.common.impl.a;
import io.appmetrica.analytics.logger.common.impl.b;
import io.appmetrica.analytics.logger.common.impl.c;
import io.appmetrica.analytics.logger.common.impl.d;

public abstract class BaseImportantLogger {
    private final c a;

    public BaseImportantLogger(@NonNull String str) {
        this.a = new c(new d(str), new a(), new b());
    }

    public void info(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        c cVar = this.a;
        cVar.b.getClass();
        for (String str3 : cVar.c.a(a.a(str, str2, objArr))) {
            String str4 = cVar.a.a;
            if (str3 == null) {
                str3 = "";
            }
            Log.println(4, str4, str3);
        }
    }
}
