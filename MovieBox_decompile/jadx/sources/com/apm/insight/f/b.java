package com.apm.insight.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.c;
import com.apm.insight.k.g;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.m;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class b {

    private String f18876a;

    private JSONObject f18877b;

    private String f18878c;

    private boolean f18879d;

    private String f18880e;

    private String f18881f;

    private String f18882g;

    private List<String> f18883h;

    public final JSONObject b() {
        return this.f18877b;
    }

    public final String c() {
        return this.f18878c;
    }

    public final String d() {
        return this.f18880e;
    }

    public final String e() {
        return this.f18881f;
    }

    public final String f() {
        return this.f18882g;
    }

    public final List<String> g() {
        return this.f18883h;
    }

    public static void a(final Throwable th2, final String str, @NonNull final String str2) {
        try {
            m.a().a(new Runnable() {

                private boolean f18886c = true;

                private Map f18887d = null;

                @Override
                public final void run() {
                    b.a(null, th2, str, this.f18886c, null, "EnsureNotReachHere", str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void b(String str) {
        this.f18878c = str;
    }

    public final void c(String str) {
        this.f18880e = str;
    }

    public final void d(String str) {
        this.f18881f = str;
    }

    public final void e(String str) {
        this.f18882g = str;
    }

    public static void a(final Object obj, final Throwable th2, final String str, final String str2, @NonNull final String str3) {
        try {
            m.a().a(new Runnable() {

                private boolean f18892d = true;

                private Map f18893e = null;

                @Override
                public final void run() {
                    b.a(obj, th2, str, this.f18892d, null, str2, str3);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static void a(Object obj, Throwable th2, String str, boolean z10, Map<String, String> map, String str2, @NonNull String str3) {
        if (th2 == null) {
            return;
        }
        try {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            StackTraceElement stackTraceElement = stackTrace[0];
            if (stackTraceElement == null) {
                return;
            }
            String strA = com.apm.insight.l.m.a(th2);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            c cVarA = c.a(stackTraceElement, strA, str, Thread.currentThread().getName(), z10, str2, str3);
            if (obj != null) {
                cVarA.a("exception_line_num", (Object) com.apm.insight.entity.b.a(obj, th2, stackTrace));
            }
            a(null, cVarA);
            f.a().a(CrashType.ENSURE, cVarA);
            g.a(obj, cVarA);
            com.apm.insight.a.b((Object) "[reportException] ".concat(String.valueOf(str)));
        } catch (Throwable th3) {
            com.apm.insight.a.b(th3);
        }
    }

    public static void a(final StackTraceElement[] stackTraceElementArr, @Nullable final String str, final String str2) {
        try {
            m.a().a(new Runnable() {

                private int f18897b = 5;

                private Map f18900e = null;

                @Override
                public final void run() {
                    b.a(stackTraceElementArr, this.f18897b, str, str2, "core_exception_monitor", (Map) null);
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static void a(Map<String, String> map, c cVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
                cVar.a("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    static void a(StackTraceElement[] stackTraceElementArr, int i10, String str, String str2, String str3, Map map) {
        StackTraceElement stackTraceElement;
        String string;
        if (stackTraceElementArr != null) {
            try {
                if (stackTraceElementArr.length > i10 + 1 && (stackTraceElement = stackTraceElementArr[i10]) != null) {
                    if (stackTraceElementArr.length <= 0) {
                        string = null;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        while (i10 < stackTraceElementArr.length) {
                            com.apm.insight.l.m.a(stackTraceElementArr[i10], sb2);
                            i10++;
                        }
                        string = sb2.toString();
                    }
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    c cVarA = c.a(stackTraceElement, string, str, Thread.currentThread().getName(), true, str2, str3);
                    a(null, cVarA);
                    f.a().a(CrashType.ENSURE, cVarA);
                    g.a(cVarA);
                    com.apm.insight.a.b((Object) "[report] ".concat(String.valueOf(str)));
                }
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
    }

    public final String a() {
        return this.f18876a;
    }

    public final void a(String str) {
        this.f18876a = str;
    }

    public final void a(JSONObject jSONObject) {
        this.f18877b = jSONObject;
    }

    public final void a(boolean z10) {
        this.f18879d = z10;
    }

    public final void a(List<String> list) {
        this.f18883h = list;
    }
}
