package com.mbridge.msdk.foundation.same.report.crashreport;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class d {

    private static long f34701a;

    private static final class a implements com.mbridge.msdk.foundation.same.report.crashreport.a {

        class RunnableC0466a implements Runnable {

            final String f34702a;

            final StackTraceElement[] f34703b;

            RunnableC0466a(String str, StackTraceElement[] stackTraceElementArr) {
                this.f34702a = str;
                this.f34703b = stackTraceElementArr;
            }

            @Override
            public void run() {
                a.c(this.f34702a, this.f34703b);
            }
        }

        public static void c(String str, StackTraceElement[] stackTraceElementArr) {
            try {
                d.b(str, stackTraceElementArr);
            } catch (Exception e10) {
                o0.b("AnrMonitorManager", "handler anr failed", e10);
            }
        }

        @Override
        public void a() {
        }

        @Override
        public void a(String str, StackTraceElement[] stackTraceElementArr) {
            if (MBridgeConstans.DEBUG) {
                o0.a("AnrMonitorManager", "onAnrHappened: " + str);
            }
            if (!d.b(str)) {
                o0.a("AnrMonitorManager", "onAnrHappened: can track false");
                return;
            }
            long unused = d.f34701a = System.currentTimeMillis();
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0466a(str, stackTraceElementArr));
        }
    }

    public static String b(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null) {
                        sb2.append(stackTraceElement.toString());
                        sb2.append("\r\n");
                    }
                }
                return sb2.toString();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    private static JSONObject c(String str) throws JSONException {
        JSONObject jSONObjectA = b.a(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())));
        jSONObjectA.put("crashinfo", str);
        return jSONObjectA;
    }

    private static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains(MBridgeConstans.APPLICATION_STACK_COM_ANDROID) || str.contains("com.google") || str.contains("java.lang") || str.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_OS) || str.contains(MBridgeConstans.APPLICATION_STACK_ANDROID_APP);
    }

    public static String a(StackTraceElement[] stackTraceElementArr) {
        return c(stackTraceElementArr) ? "1" : "0";
    }

    public static boolean c(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            try {
                ArrayList arrayList = new ArrayList();
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null && !TextUtils.isEmpty(stackTraceElement.toString())) {
                        String string = stackTraceElement.toString();
                        if (!d(string)) {
                            arrayList.add(string);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return false;
                }
                return b((String) arrayList.get(0));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("AnrMonitorManager", "isMBridgeFirst exception", e10);
                }
            }
        }
        return false;
    }

    private static int a() {
        try {
            int iB = q0.a().b("anr_check_timeout", 5000);
            if (iB <= 0) {
                return 5000;
            }
            return iB;
        } catch (Exception e10) {
            o0.b("AnrMonitorManager", "get anr check timeout failed", e10);
            return 5000;
        }
    }

    public static void b(String str, StackTraceElement[] stackTraceElementArr) throws JSONException {
        try {
            JSONObject jSONObjectC = c(str);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", jSONObjectC.toString());
            jSONObject.put("crash_first_index_from_mtg", a(stackTraceElementArr));
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("m_anr_report");
            eVar.a(jSONObject);
            eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
            eVar.b(0);
            eVar.a(1);
            f.a().b().c(eVar);
        } catch (JSONException e10) {
            o0.b("AnrMonitorManager", "reportANRByEventLibrary anr failed", e10);
        }
    }

    public static void c() {
        if (!b()) {
            o0.a("AnrMonitorManager", "anr monitor is not available");
            return;
        }
        try {
            c.a().a(a(), new a()).start();
        } catch (Exception e10) {
            o0.b("AnrMonitorManager", "start anr monitor failed", e10);
        }
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            for (String str2 : b.a()) {
                if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static boolean b() {
        try {
            return q0.a().a("anr_monitor_available", false);
        } catch (Exception e10) {
            o0.b("AnrMonitorManager", "get anr monitor available failed", e10);
            return false;
        }
    }
}
