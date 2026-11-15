package io.appmetrica.analytics.logger.common;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.logger.common.impl.a;
import io.appmetrica.analytics.logger.common.impl.b;
import io.appmetrica.analytics.logger.common.impl.c;
import io.appmetrica.analytics.logger.common.impl.d;

public abstract class BaseReleaseLogger {
    private static volatile String d = "";
    private final String a;
    private volatile boolean b = false;
    private final c c;

    public BaseReleaseLogger(@NonNull String str, @NonNull String str2) {
        this.c = new c(new d(str), new a(), new b());
        this.a = str2;
    }

    public static void init(@NonNull Context context) {
        d = "[" + context.getPackageName() + "] : ";
    }

    public void error(@Nullable String str, @Nullable Object... objArr) {
        if (this.b) {
            c cVar = this.c;
            String prefix = getPrefix();
            cVar.b.getClass();
            for (String str2 : cVar.c.a(a.a(prefix, str, objArr))) {
                String str3 = cVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }

    @NonNull
    public String getPrefix() {
        return d + this.a;
    }

    public void info(@Nullable String str, @Nullable Object... objArr) {
        if (this.b) {
            c cVar = this.c;
            String prefix = getPrefix();
            cVar.b.getClass();
            for (String str2 : cVar.c.a(a.a(prefix, str, objArr))) {
                String str3 = cVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(4, str3, str2);
            }
        }
    }

    public void setEnabled(boolean z) {
        this.b = z;
    }

    public void warning(@Nullable String str, @Nullable Object... objArr) {
        if (this.b) {
            c cVar = this.c;
            String prefix = getPrefix();
            cVar.b.getClass();
            for (String str2 : cVar.c.a(a.a(prefix, str, objArr))) {
                String str3 = cVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(5, str3, str2);
            }
        }
    }

    public void error(@Nullable Throwable th, @Nullable String str, @Nullable Object... objArr) {
        if (this.b) {
            c cVar = this.c;
            String prefix = getPrefix();
            cVar.b.getClass();
            StringBuilder sb = new StringBuilder();
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("\n");
            sb.append(Log.getStackTraceString(th));
            for (String str2 : cVar.c.a(a.a(prefix, sb.toString(), objArr))) {
                String str3 = cVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }
}
