package com.apm.insight.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.l.m;
import org.json.JSONException;
import org.json.JSONObject;

public final class d {

    private static String f18742a = null;

    private static long f18743b = -1;

    private static boolean f18744c = false;

    private static FileObserver f18745d;

    private static ActivityManager.ProcessErrorStateInfo f18746e;

    public static boolean b() {
        return f18744c;
    }

    public static void c() {
        f18746e = null;
    }

    public static void a(final String str, final h.a aVar) {
        FileObserver fileObserver = f18745d;
        if (fileObserver != null) {
            fileObserver.stopWatching();
        }
        FileObserver fileObserver2 = new FileObserver(str) {
            @Override
            public final void onEvent(int i10, @Nullable String str2) {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    String unused = d.f18742a = aVar.a();
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        };
        f18745d = fileObserver2;
        fileObserver2.startWatching();
    }

    public static JSONObject a() throws JSONException {
        try {
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("thread_number", 1);
            jSONObject.put("mainStackFromTrace", m.a(stackTrace));
            return jSONObject;
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            return null;
        }
    }

    static String a(Context context) {
        if (SystemClock.uptimeMillis() - f18743b < 5000) {
            return null;
        }
        try {
            ActivityManager.ProcessErrorStateInfo processErrorStateInfoA = com.apm.insight.l.a.a(context);
            if (processErrorStateInfoA != null && Process.myPid() == processErrorStateInfoA.pid) {
                ActivityManager.ProcessErrorStateInfo processErrorStateInfo = f18746e;
                if (processErrorStateInfo != null && String.valueOf(processErrorStateInfo.condition).equals(String.valueOf(processErrorStateInfoA.condition)) && String.valueOf(processErrorStateInfo.processName).equals(String.valueOf(processErrorStateInfoA.processName)) && String.valueOf(processErrorStateInfo.pid).equals(String.valueOf(processErrorStateInfoA.pid)) && String.valueOf(processErrorStateInfo.uid).equals(String.valueOf(processErrorStateInfoA.uid)) && String.valueOf(processErrorStateInfo.tag).equals(String.valueOf(processErrorStateInfoA.tag)) && String.valueOf(processErrorStateInfo.shortMsg).equals(String.valueOf(processErrorStateInfoA.shortMsg)) && String.valueOf(processErrorStateInfo.longMsg).equals(String.valueOf(processErrorStateInfoA.longMsg))) {
                    return null;
                }
                f18746e = processErrorStateInfoA;
                f18742a = null;
                f18743b = SystemClock.uptimeMillis();
                f18744c = false;
                if (!com.apm.insight.e.t()) {
                    return "|------------- processErrorStateInfo--------------|\ndisable anr info\n\"-----------------------end----------------------------\"";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("|------------- processErrorStateInfo--------------|\n");
                sb2.append("condition: " + processErrorStateInfoA.condition + "\n");
                sb2.append("processName: " + processErrorStateInfoA.processName + "\n");
                sb2.append("pid: " + processErrorStateInfoA.pid + "\n");
                sb2.append("uid: " + processErrorStateInfoA.uid + "\n");
                sb2.append("tag: " + processErrorStateInfoA.tag + "\n");
                sb2.append("shortMsg : " + processErrorStateInfoA.shortMsg + "\n");
                sb2.append("longMsg : " + processErrorStateInfoA.longMsg + "\n");
                sb2.append("-----------------------end----------------------------");
                return sb2.toString();
            }
        } catch (Throwable unused) {
        }
        String str = f18742a;
        if (str == null) {
            return null;
        }
        f18744c = true;
        f18742a = null;
        f18743b = SystemClock.uptimeMillis();
        return str;
    }
}
