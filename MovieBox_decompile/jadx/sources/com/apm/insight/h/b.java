package com.apm.insight.h;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.apm.insight.e;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.n;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class b {

    private static HashMap<String, String> f18932a;

    private Map<String, String> f18933b;

    public b(File file) {
        String strA;
        File fileC = j.c(file);
        if (!fileC.exists() || fileC.length() == 0 || (strA = NativeImpl.a(fileC.getAbsolutePath())) == null) {
            return;
        }
        String[] strArrSplit = strA.split("\n");
        this.f18933b = new HashMap();
        for (String str : strArrSplit) {
            String[] strArrSplit2 = str.split(UrlUtils.EQUAL_MARK);
            if (strArrSplit2.length == 2) {
                this.f18933b.put(strArrSplit2[0], strArrSplit2[1]);
            }
        }
    }

    public static String a(String str) {
        return e.g().getFilesDir() + "/apminsight/selflib/lib" + str + ".so";
    }

    public static void b(final String str) {
        m.a().a(new Runnable() {

            private boolean f18934a = false;

            @Override
            public final void run() {
                String strA;
                b.b();
                if (b.c(str)) {
                    return;
                }
                n.a("updateSo", str);
                File file = new File(b.a(str));
                file.getParentFile().mkdirs();
                if (file.exists()) {
                    file.delete();
                }
                String str2 = "doUnpackLibrary: " + str;
                if (e.i().isDebugMode()) {
                    Log.w("npth", str2);
                }
                try {
                    strA = c.a(e.g(), str, file);
                } catch (Throwable th2) {
                    n.a("updateSoError", str);
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                    strA = null;
                }
                if (strA != null) {
                    if (this.f18934a) {
                        n.a("updateSoFailed", str);
                        return;
                    }
                    this.f18934a = true;
                    n.a("updateSoPostRetry", str);
                    m.a().a(this, 3000L);
                    return;
                }
                b.f18932a.put(file.getName(), "2008-20250701130429");
                try {
                    f.a(new File(e.g().getFilesDir() + "/apminsight/selflib/" + str + ".ver"), "2008-20250701130429", false);
                } catch (Throwable unused) {
                }
                n.a("updateSoSuccess", str);
            }
        });
    }

    public final boolean d() {
        Map<String, String> map = this.f18933b;
        return (map == null || map.isEmpty() || TextUtils.isEmpty(this.f18933b.get("process_name")) || TextUtils.isEmpty(this.f18933b.get("crash_thread_name")) || TextUtils.isEmpty(this.f18933b.get("pid")) || TextUtils.isEmpty(this.f18933b.get("tid")) || TextUtils.isEmpty(this.f18933b.get("start_time")) || TextUtils.isEmpty(this.f18933b.get("crash_time")) || TextUtils.isEmpty(this.f18933b.get("signal_line"))) ? false : true;
    }

    @Nullable
    public final String e() {
        return this.f18933b.get("signal_line");
    }

    public final Map<String, String> f() {
        return this.f18933b;
    }

    public static String a() {
        return e.g().getFilesDir() + "/apminsight/selflib/";
    }

    static void b() {
        if (f18932a == null) {
            f18932a = new HashMap<>();
            File file = new File(e.g().getFilesDir(), "/apminsight/selflib/");
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    if (str.endsWith(".ver")) {
                        try {
                            f18932a.put(str.substring(0, str.length() - 4), f.a(file.getAbsolutePath() + "/" + str, "\n"));
                        } catch (Throwable th2) {
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                        }
                    } else if (!str.endsWith(".so")) {
                        f.a(new File(file, str));
                    }
                }
            }
        }
    }

    static boolean c(String str) {
        return "2008-20250701130429".equals(f18932a.get(str)) && new File(a(str)).exists();
    }
}
