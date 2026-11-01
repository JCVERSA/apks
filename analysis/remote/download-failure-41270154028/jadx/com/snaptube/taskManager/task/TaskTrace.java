package com.snaptube.taskManager.task;

import android.text.TextUtils;
import android.util.LruCache;
import androidx.annotation.Keep;
import com.phoenix.slog.SnapTubeLoggerManager;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import o.dr6;
import o.hr6;
import o.yj2;

@Keep
public class TaskTrace {
    public static final String TYPE_EXCEPTION = "exception";
    public static final String TYPE_LOG = "log";
    private static LruCache<String, TaskTrace> mTraces = new LruCache<>(dr6.a());
    private static LruCache<String, String> mUrlMap = new LruCache<>(dr6.a());
    private final List<a> items = new ArrayList();
    private int id = 0;
    private boolean enable = false;

    public static class a {
        public int a;
        public String b;
        public long c;
        public String d;

        public a(int i, String str, long j, String str2) {
            this.a = i;
            this.b = str;
            this.c = j;
            this.d = str2;
        }

        public int a() {
            return this.a;
        }

        public String b() {
            return this.d;
        }

        public long c() {
            return this.c;
        }

        public String d() {
            return this.b;
        }

        public String toString() {
            return "TraceContext.TraceItem(id=" + a() + ", type=" + d() + ", timestamp=" + c() + ", message=" + b() + ")";
        }
    }

    private static void add(String str, String str2, String str3) {
        TaskTrace taskTraceCurrent = current(str);
        if (taskTraceCurrent == null || !taskTraceCurrent.enable) {
            return;
        }
        List<a> list = taskTraceCurrent.items;
        int i = taskTraceCurrent.id;
        taskTraceCurrent.id = i + 1;
        list.add(new a(i, str2, System.currentTimeMillis(), str3));
    }

    public static void begin(String str) {
        reset(str);
        TaskTrace taskTrace = new TaskTrace();
        taskTrace.enable = dr6.e();
        mTraces.put(str, taskTrace);
    }

    private static TaskTrace current(String str) {
        return mTraces.get(str);
    }

    public static void error(String str, Throwable th) {
        TaskTrace taskTraceCurrent;
        if (th == null || (taskTraceCurrent = current(str)) == null || !taskTraceCurrent.enable) {
            return;
        }
        Throwable originCause = getOriginCause(th);
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        originCause.printStackTrace(printWriter);
        printWriter.flush();
        add(str, "exception", stringWriter.toString());
    }

    private static Throwable getOriginCause(Throwable th) {
        while (th != null && th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public static void log(String str, String... strArr) {
        TaskTrace taskTraceCurrent = current(str);
        if (taskTraceCurrent == null || !taskTraceCurrent.enable || strArr == null || strArr.length <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            sb.append(str2);
            sb.append(" ");
        }
        add(str, "log", sb.toString());
    }

    public static void mapUrl(String str, String str2) {
        mUrlMap.put(str, str2);
    }

    public static void recordLog(String str) {
        log(str, SnapTubeLoggerManager.Instance.getCommonInfo().toString());
        TaskTrace taskTraceCurrent = current(str);
        if (taskTraceCurrent == null || !taskTraceCurrent.enable || taskTraceCurrent.items.size() <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (a aVar : taskTraceCurrent.items) {
            sb.append("\nid: ");
            sb.append(aVar.a());
            sb.append("\ntype: ");
            sb.append(aVar.d());
            sb.append("\ntimestamp: ");
            sb.append(aVar.c());
            sb.append("\nmessage: ");
            sb.append(aVar.b());
        }
        SnapTubeLoggerManager.Instance.recordFeedbackDownloadLog(str, sb.toString(), null);
    }

    public static void reportDownloadLog(String str, String str2) {
        String str3;
        String str4 = mUrlMap.get(str);
        if (TextUtils.isEmpty(str4)) {
            str3 = null;
        } else {
            str3 = hr6.a(str4) + hr6.d(str4);
        }
        if (!yj2.v(str3)) {
            str3 = hr6.b(str2) + hr6.d(str2);
        }
        if (yj2.v(str3)) {
            SnapTubeLoggerManager.Instance.checkFeedbackDownloadLog(str3, 0L);
        }
    }

    public static void reset(String str) {
        mTraces.remove(str);
    }
}
