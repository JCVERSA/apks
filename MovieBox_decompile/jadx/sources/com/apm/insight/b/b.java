package com.apm.insight.b;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.l.m;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.n;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class b {

    private static volatile boolean f18708z = true;

    private c f18709a;

    private final Context f18710b;

    private volatile boolean f18711c;

    private JSONObject f18715g;

    private JSONObject f18716h;

    private JSONArray f18721m;

    private JSONObject f18722n;

    private JSONArray f18725q;

    private JSONArray f18726r;

    private JSONObject f18727s;

    private boolean f18728t;

    private volatile boolean f18730v;

    private long f18712d = -1;

    private File f18713e = null;

    private boolean f18714f = true;

    private String f18717i = TmcConstants.ROUTE_UNKNOWN;

    private String f18718j = TmcConstants.ROUTE_UNKNOWN;

    private String f18719k = TmcConstants.ROUTE_UNKNOWN;

    private String f18720l = "npth_inner_default";

    private int f18723o = 0;

    private long f18724p = -1;

    private final Object f18729u = new Object();

    private long f18731w = -1;

    private long f18732x = 0;

    private final Runnable f18733y = new Runnable() {
        @Override
        public final void run() {
            try {
                b.this.g();
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    };
    private int A = 0;
    private List<Pattern> B = null;
    private Pattern C = null;
    private File D = null;

    public b(Context context) {
        this.f18710b = context;
    }

    private static boolean h() {
        boolean zA = com.apm.insight.l.a.a();
        boolean z10 = !zA;
        if (zA || com.apm.insight.runtime.a.b.d().e() > 2000) {
            return z10;
        }
        return false;
    }

    private File i() {
        if (this.D == null) {
            this.D = new File(this.f18710b.getFilesDir(), "has_anr_signal_" + com.apm.insight.l.a.b().replaceAll(":", "_"));
        }
        return this.D;
    }

    public final void b() {
        if (this.f18711c) {
            this.f18711c = false;
            c cVar = this.f18709a;
            if (cVar != null) {
                cVar.b();
            }
            this.f18709a = null;
        }
    }

    public final void c() {
        c cVar = this.f18709a;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void d() {
        synchronized (this.f18729u) {
        }
        this.f18733y.run();
    }

    public final void e() {
        if (NativeImpl.h()) {
            try {
                com.apm.insight.l.f.a(i(), String.valueOf(this.A + 1), false);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
        this.f18731w = SystemClock.uptimeMillis();
        this.f18730v = true;
    }

    public final void f() {
        File fileI = i();
        try {
            int iIntValue = Integer.decode(com.apm.insight.l.f.a(fileI.getAbsolutePath(), "\n")).intValue();
            this.A = iIntValue;
            if (iIntValue >= 2) {
                NativeImpl.a(false);
            } else {
                NativeImpl.a(true);
            }
        } catch (IOException unused) {
            NativeImpl.a(true);
        } catch (Throwable unused2) {
            com.apm.insight.l.f.a(fileI);
        }
    }

    final boolean g() {
        String str;
        String str2;
        JSONArray jSONArrayB;
        JSONArray jSONArrayA;
        JSONObject jSONObject;
        boolean z10;
        JSONObject jSONObjectA;
        boolean z11;
        String str3;
        String str4;
        JSONArray jSONArray;
        final long j10;
        JSONObject jSONObjectA2;
        JSONObject jSONObject2;
        String str5;
        JSONObject jSONObject3;
        boolean zB = com.apm.insight.runtime.i.a().b();
        long jUptimeMillis = SystemClock.uptimeMillis();
        a(jUptimeMillis);
        String strA = d.a(this.f18710b);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str6 = "normal";
        TextUtils.isEmpty(strA);
        if (TextUtils.isEmpty(strA)) {
            str = TmcConstants.ROUTE_UNKNOWN;
            str2 = TmcConstants.ROUTE_UNKNOWN;
            jSONArrayB = null;
            jSONArrayA = null;
            jSONObject = null;
            z10 = false;
            jSONObjectA = null;
            z11 = false;
            str3 = "normal";
            str4 = TmcConstants.ROUTE_UNKNOWN;
            jSONArray = null;
            j10 = jCurrentTimeMillis;
            jSONObjectA2 = null;
        } else {
            synchronized (this.f18729u) {
            }
            if (this.f18715g == null || System.currentTimeMillis() - this.f18712d > DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
                if (this.f18730v) {
                    this.f18730v = false;
                    str6 = "trace_after";
                }
                b(jUptimeMillis);
            } else {
                str6 = "trace_last";
            }
            JSONObject jSONObject4 = this.f18715g;
            String str7 = this.f18717i;
            String str8 = this.f18718j;
            String str9 = this.f18719k;
            JSONArray jSONArray2 = this.f18721m;
            JSONArray jSONArray3 = this.f18726r;
            JSONArray jSONArray4 = this.f18725q;
            JSONObject jSONObject5 = this.f18727s;
            JSONObject jSONObject6 = this.f18716h;
            z11 = this.f18728t;
            long j11 = this.f18724p;
            this.f18715g = null;
            this.f18721m = null;
            this.f18725q = null;
            this.f18716h = null;
            this.f18726r = null;
            this.f18717i = TmcConstants.ROUTE_UNKNOWN;
            this.f18718j = TmcConstants.ROUTE_UNKNOWN;
            this.f18719k = TmcConstants.ROUTE_UNKNOWN;
            this.f18723o = 0;
            jSONArrayA = jSONArray4;
            str2 = str9;
            str4 = str7;
            jSONArray = jSONArray2;
            jSONObjectA = jSONObject6;
            jSONObject = jSONObject5;
            jSONArrayB = jSONArray3;
            str = str8;
            str3 = str6;
            j10 = j11;
            jSONObjectA2 = jSONObject4;
            z10 = true;
        }
        if (TextUtils.isEmpty(strA)) {
            if (this.f18715g == null || System.currentTimeMillis() - this.f18712d <= DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
                if (this.f18715g == null || System.currentTimeMillis() - this.f18712d <= 2000 || !NativeImpl.h()) {
                    return false;
                }
                com.apm.insight.l.f.a(i());
                return false;
            }
            this.f18715g = null;
            this.f18721m = null;
            this.f18725q = null;
            this.f18716h = null;
            this.f18726r = null;
            this.f18717i = TmcConstants.ROUTE_UNKNOWN;
            this.f18718j = TmcConstants.ROUTE_UNKNOWN;
            this.f18719k = TmcConstants.ROUTE_UNKNOWN;
            this.f18723o = 0;
            this.f18713e = null;
            return false;
        }
        if (jSONObjectA2 == null) {
            if (jSONArrayA == null) {
                try {
                    jSONArrayB = f.b().b();
                    jSONArrayA = j.a(jUptimeMillis);
                    jSONObject3 = jSONObjectA2;
                    try {
                        jSONObjectA = f.b().a(jUptimeMillis).a();
                        JSONObject jSONObject7 = new JSONObject();
                        try {
                            com.apm.insight.l.a.a(this.f18710b, jSONObject7);
                            jSONObject = jSONObject7;
                        } catch (Throwable unused) {
                            jSONObject = jSONObject7;
                            jSONObjectA2 = jSONObject3;
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    jSONObject3 = jSONObjectA2;
                }
            } else {
                jSONObject3 = jSONObjectA2;
            }
            jSONObjectA2 = d.a();
        }
        JSONObject jSONObject8 = jSONObjectA;
        if (jSONObjectA2 != null && jSONObjectA2.length() > 0) {
            try {
                jSONObjectA2.put("pid", Process.myPid());
                jSONObjectA2.put("package", this.f18710b.getPackageName());
                jSONObjectA2.put("is_remote_process", 0);
                jSONObjectA2.put("is_new_stack", 10);
                com.apm.insight.entity.a aVar = new com.apm.insight.entity.a(new JSONObject());
                String str10 = str2;
                aVar.a("data", (Object) jSONObjectA2.toString());
                JSONObject jSONObject9 = jSONObjectA2;
                aVar.a("is_anr", (Object) 1);
                aVar.a("anrType", (Object) str3);
                if (com.apm.insight.e.x()) {
                    aVar.a("history_message", (Object) jSONArrayB);
                    aVar.a("current_message", jSONObject8);
                    aVar.a("pending_messages", (Object) jSONArrayA);
                }
                aVar.a("anr_time", Long.valueOf(System.currentTimeMillis()));
                aVar.a("crash_time", Long.valueOf(j10));
                com.apm.insight.c.a.b();
                aVar.c(jSONObject);
                aVar.a("anr_info", (Object) strA);
                if (jSONArray != null) {
                    aVar.a("dump_trace", (Object) jSONArray);
                }
                JSONObject jSONObject10 = this.f18722n;
                aVar.a("all_thread_stacks", (jSONObject10 == null || jSONObject10.length() == 0) ? m.b((String) null) : this.f18722n);
                com.apm.insight.runtime.a.f fVarA = com.apm.insight.runtime.a.f.a();
                CrashType crashType = CrashType.ANR;
                com.apm.insight.entity.a aVarA = fVarA.a(crashType, aVar);
                aVarA.a("is_background", Boolean.valueOf(z11));
                aVarA.a("logcat", (Object) com.apm.insight.runtime.h.a(com.apm.insight.e.f()));
                aVarA.a("has_dump", (Object) "true");
                aVarA.a("crash_uuid", (Object) com.apm.insight.e.a(j10, crashType, false, false));
                JSONObject jSONObjectOptJSONObject = aVarA.c().optJSONObject("filters");
                com.apm.insight.entity.d.b(aVarA.c());
                if (jSONObjectOptJSONObject == null) {
                    try {
                        jSONObject2 = new JSONObject();
                        try {
                            aVarA.a("filters", jSONObject2);
                        } catch (Throwable unused4) {
                            jSONObjectOptJSONObject = jSONObject2;
                            jSONObject2 = jSONObjectOptJSONObject;
                        }
                    } catch (Throwable unused5) {
                        jSONObject2 = jSONObjectOptJSONObject;
                    }
                } else {
                    jSONObject2 = jSONObjectOptJSONObject;
                }
                jSONObject2.put("anrType", str3);
                jSONObject2.put("max_utm_thread", str4);
                jSONObject2.put("max_stm_thread", str);
                jSONObject2.put("max_utm_stm_thread", str10);
                jSONObject2.put("max_utm_thread_version", this.f18720l);
                long j12 = j10 - com.apm.insight.e.j();
                if (j12 < 30000) {
                    str5 = "0 - 30s";
                } else if (j12 < 60000) {
                    str5 = "30s - 1min";
                } else if (j12 < TmcConstants.DEBUG_REQUEST_TIME_INTERVAL) {
                    str5 = "1min - 2min";
                } else if (j12 < 300000) {
                    str5 = "2min - 5min";
                } else if (j12 < 600000) {
                    str5 = "5min - 10min";
                } else if (j12 < 1800000) {
                    str5 = "10min - 30min";
                } else {
                    str5 = j12 < 3600000 ? "30min - 1h" : "1h - ";
                }
                jSONObject2.put("crash_length", str5);
                jSONObject2.put("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.c()));
                jSONObject2.put("npth_force_apm_crash", String.valueOf(com.apm.insight.c.a.b()));
                jSONObject2.put("sdk_version", "2008-20250701130429");
                jSONObject2.put("has_logcat", String.valueOf(aVarA.a()));
                jSONObject2.put("memory_leak", String.valueOf(com.apm.insight.entity.a.a(com.apm.insight.e.f())));
                jSONObject2.put("fd_leak", String.valueOf(com.apm.insight.entity.a.b(com.apm.insight.e.f())));
                jSONObject2.put("threads_leak", String.valueOf(com.apm.insight.entity.a.c(com.apm.insight.e.f())));
                jSONObject2.put("is_64_devices", String.valueOf(Header.a()));
                jSONObject2.put("is_64_runtime", String.valueOf(NativeImpl.f()));
                jSONObject2.put("is_x86_devices", String.valueOf(Header.b()));
                jSONObject2.put("has_meminfo_file", String.valueOf(com.apm.insight.l.j.d(com.apm.insight.e.f()).exists()));
                jSONObject2.put("is_root", com.apm.insight.nativecrash.a.k() ? "true" : "false");
                jSONObject2.put("anr_normal_trace", String.valueOf(!this.f18730v));
                jSONObject2.put("anr_no_run", String.valueOf(zB));
                jSONObject2.put("crash_after_crash", Npth.hasCrash() ? "true" : "false");
                jSONObject2.put("from_file", String.valueOf(d.b()));
                jSONObject2.put("has_dump", "true");
                jSONObject2.put("from_kill", "false");
                jSONObject2.put("last_resume_activity", com.apm.insight.runtime.a.b.d().h());
                int i10 = this.f18723o;
                if (i10 > 0) {
                    jSONObject2.put("may_have_stack_overflow", String.valueOf(i10));
                }
                try {
                    a(strA, jSONObject2);
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
                com.apm.insight.a.a.a();
                CrashType crashType2 = CrashType.LAUNCH;
                com.apm.insight.e.e();
                try {
                    if (com.apm.insight.a.e().length() > 1024) {
                        aVarA.a("has_system_traces", "true");
                    }
                } catch (Throwable unused6) {
                }
                try {
                    JSONArray jSONArrayA2 = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.e(com.apm.insight.e.f()), com.apm.insight.l.j.f(com.apm.insight.e.f()));
                    jSONObject2.put("leak_threads_count", String.valueOf(jSONArrayA2.length()));
                    if (jSONArrayA2.length() > 0) {
                        com.apm.insight.l.f.a(com.apm.insight.l.j.g(com.apm.insight.e.f()), jSONArrayA2);
                    }
                } catch (Throwable unused7) {
                }
                String strOptString = jSONObject9.optString("mainStackFromTrace");
                JSONArray jSONArrayA3 = com.apm.insight.entity.b.a(strOptString);
                com.apm.insight.entity.b.a(aVarA.c(), jSONArrayA3, new com.apm.insight.entity.b.a() {
                    @Override
                    public final void a(JSONObject jSONObject11) {
                        com.apm.insight.k.d.a().a(jSONObject11, j10, b.this.f18714f);
                    }
                });
                b(strOptString, jSONArrayA3);
            } catch (Throwable th3) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            }
        }
        return z10;
    }

    public final void a() {
        if (this.f18711c) {
            return;
        }
        this.f18709a = new c(this);
        this.f18712d = com.apm.insight.e.j();
        this.f18711c = true;
    }

    private JSONObject c(@NonNull JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayB = com.apm.insight.a.b(jSONArray);
        if (jSONArrayB.length() != jSONArray.length()) {
            this.f18723o++;
        }
        try {
            jSONObject.put("thread_number", 1);
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < jSONArrayB.length(); i10++) {
                sb2.append(jSONArrayB.getString(i10));
                sb2.append('\n');
            }
            jSONObject.put("mainStackFromTrace", sb2.toString());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private boolean a(long j10) {
        if (this.f18730v) {
            this.f18730v = false;
            b(j10);
        }
        return false;
    }

    private void b(long j10) {
        if (this.f18732x != this.f18731w) {
            try {
                this.f18724p = System.currentTimeMillis();
                if (com.apm.insight.e.x()) {
                    this.f18726r = f.b().b();
                    this.f18725q = j.a(j10);
                    this.f18716h = f.b().a(j10).a();
                }
                JSONObject jSONObject = new JSONObject();
                this.f18727s = jSONObject;
                com.apm.insight.l.a.a(this.f18710b, jSONObject);
                this.f18728t = h();
                this.f18714f = !Npth.hasCrash();
            } catch (Throwable unused) {
            }
            try {
                this.f18712d = this.f18724p;
                String strB = com.apm.insight.l.j.b();
                File file = new File(new File(com.apm.insight.l.j.f(this.f18710b), strB), "trace_" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", strB);
                NativeImpl.i(file.getAbsolutePath());
                try {
                    JSONArray jSONArrayA = com.apm.insight.l.f.a(file.getAbsolutePath());
                    this.f18721m = jSONArrayA;
                    a(jSONArrayA);
                } catch (IOException unused2) {
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
                if (this.f18715g == null) {
                    this.f18715g = d.a();
                }
            } catch (Throwable th3) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            }
            com.apm.insight.a.d();
        } else {
            try {
                this.f18712d = this.f18724p;
                String strB2 = com.apm.insight.l.j.b();
                File file2 = new File(new File(com.apm.insight.l.j.f(this.f18710b), strB2), "trace" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file2.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file2, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", strB2);
                NativeImpl.i(file2.getAbsolutePath());
                try {
                    JSONArray jSONArrayA2 = com.apm.insight.l.f.a(file2.getAbsolutePath());
                    this.f18721m = jSONArrayA2;
                    a(jSONArrayA2);
                } catch (IOException unused3) {
                } catch (Throwable th4) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th4, "NPTH_CATCH");
                }
                if (this.f18715g == null) {
                    this.f18715g = d.a();
                }
            } catch (Throwable th5) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th5, "NPTH_CATCH");
            }
        }
        long j11 = this.f18731w;
        this.f18732x = j11;
        this.f18731w = -1L;
        if (j11 == -1) {
            this.f18732x = (-1) - 1;
        }
    }

    private void a(JSONArray jSONArray) {
        char c10;
        int[] iArrB;
        int[] iArrB2;
        if (jSONArray == null) {
            return;
        }
        this.f18715g = null;
        this.f18722n = null;
        this.f18723o = 0;
        JSONArray jSONArray2 = new JSONArray();
        JSONArray jSONArray3 = new JSONArray();
        JSONArray jSONArray4 = new JSONArray();
        this.f18717i = TmcConstants.ROUTE_UNKNOWN;
        this.f18718j = TmcConstants.ROUTE_UNKNOWN;
        this.f18719k = TmcConstants.ROUTE_UNKNOWN;
        int[] iArr = {0, 0, 0};
        JSONArray jSONArray5 = jSONArray4;
        String string = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String strOptString = jSONArray.optString(i10);
            if (TextUtils.isEmpty(strOptString)) {
                if (jSONArray5.length() > 0 && !TextUtils.isEmpty(string)) {
                    if (this.f18715g == null && "main".equals(string)) {
                        this.f18715g = c(jSONArray5);
                    } else {
                        jSONArray2.put(a(string, jSONArray5));
                    }
                    try {
                        if (!"main".equals(string)) {
                            string = string.substring(0, string.indexOf(40)).trim();
                        }
                    } catch (Throwable unused) {
                    }
                    String str = string;
                    if (!a(str)) {
                        try {
                            iArrB2 = b(jSONArray5);
                        } catch (IllegalArgumentException e10) {
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(e10, "NPTH_CATCH");
                            iArrB2 = null;
                        } catch (Throwable unused2) {
                            iArrB2 = null;
                        }
                        if (iArrB2 != null) {
                            int i11 = iArrB2[0];
                            if (i11 > iArr[0]) {
                                iArr[0] = i11;
                                this.f18717i = str;
                            }
                            int i12 = iArrB2[1];
                            if (i12 > iArr[1]) {
                                iArr[1] = i12;
                                this.f18718j = str;
                            }
                            int i13 = iArrB2[2];
                            if (i13 > iArr[2]) {
                                iArr[2] = i13;
                                this.f18719k = str;
                            }
                        }
                    }
                }
                if (jSONArray5.length() > 0) {
                    jSONArray5 = new JSONArray();
                }
                string = null;
            } else {
                if (!z10) {
                    c10 = 2;
                    if (strOptString.startsWith("DALVIK THREADS") || strOptString.startsWith("suspend") || strOptString.startsWith("\"")) {
                        z10 = true;
                    }
                    jSONArray3.put(strOptString);
                } else if (z10) {
                    if (strOptString.contains(" prio=")) {
                        if (jSONArray5.length() > 0 && !TextUtils.isEmpty(string)) {
                            if (this.f18715g == null && "main".equals(string)) {
                                this.f18715g = c(jSONArray5);
                            } else {
                                jSONArray2.put(a(string, jSONArray5));
                            }
                            try {
                                if (!"main".equals(string)) {
                                    string = string.substring(0, string.indexOf(40)).trim();
                                }
                            } catch (Throwable unused3) {
                            }
                            String str2 = string;
                            if (!a(str2)) {
                                try {
                                    iArrB = b(jSONArray5);
                                } catch (IllegalArgumentException e11) {
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(e11, "NPTH_CATCH");
                                    iArrB = null;
                                } catch (Throwable unused4) {
                                    iArrB = null;
                                }
                                if (iArrB != null) {
                                    int i14 = iArrB[0];
                                    if (i14 > iArr[0]) {
                                        iArr[0] = i14;
                                        this.f18717i = str2;
                                    }
                                    int i15 = iArrB[1];
                                    if (i15 > iArr[1]) {
                                        iArr[1] = i15;
                                        this.f18718j = str2;
                                    }
                                    int i16 = iArrB[2];
                                    if (i16 > iArr[2]) {
                                        iArr[2] = i16;
                                        this.f18719k = str2;
                                    }
                                }
                            }
                        }
                        String strSubstring = strOptString.substring(1, strOptString.indexOf(34, 1));
                        if ("main".equals(strSubstring)) {
                            c10 = 2;
                            string = strSubstring;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(strSubstring);
                            sb2.append("  (");
                            c10 = 2;
                            sb2.append(strOptString.substring(strOptString.indexOf(34, 2) + 1));
                            sb2.append(" )");
                            string = sb2.toString();
                        }
                        if (jSONArray5.length() > 0) {
                            jSONArray5 = new JSONArray();
                        }
                        jSONArray5.put(strOptString);
                    } else {
                        c10 = 2;
                        if (TextUtils.isEmpty(string)) {
                            jSONArray3.put(strOptString);
                        } else {
                            jSONArray5.put(strOptString);
                        }
                    }
                }
            }
            c10 = 2;
        }
        if (jSONArray2.length() > 0) {
            this.f18721m = jSONArray3;
            try {
                JSONObject jSONObject = new JSONObject();
                this.f18722n = jSONObject;
                jSONObject.put("thread_all_count", jSONArray2.length());
                this.f18722n.put("thread_stacks", jSONArray2);
            } catch (JSONException e12) {
                e12.printStackTrace();
            }
        }
    }

    @Nullable
    private int[] b(@NonNull JSONArray jSONArray) throws IllegalArgumentException {
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String strOptString = jSONArray.optString(i10);
            int iIndexOf = (strOptString == null || strOptString.isEmpty()) ? -1 : strOptString.indexOf("utm=");
            if (iIndexOf > 0) {
                if (this.C == null) {
                    this.C = Pattern.compile("[^0-9]+");
                }
                String[] strArrSplit = this.C.split(strOptString.substring(iIndexOf));
                if (strArrSplit == null || strArrSplit.length < 2) {
                    return null;
                }
                try {
                    int iIntValue = Integer.decode(strArrSplit[1]).intValue();
                    int iIntValue2 = Integer.decode(strArrSplit[2]).intValue();
                    return new int[]{iIntValue, iIntValue2, iIntValue + iIntValue2};
                } catch (Throwable unused) {
                    throw new IllegalArgumentException("Err stack line: ".concat(strOptString));
                }
            }
        }
        return null;
    }

    private static String b(float f10) {
        return a(f10 / 100.0f);
    }

    private static void b(String str, JSONArray jSONArray) {
        for (ICrashCallback iCrashCallback : l.a().e()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.ANR, str, (Thread) null, jSONArray);
                } else {
                    iCrashCallback.onCrash(CrashType.ANR, str, null);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    }

    private boolean a(String str) {
        if (this.B == null) {
            JSONArray jSONArrayB = com.apm.insight.runtime.a.b();
            if (jSONArrayB != null) {
                this.B = new LinkedList();
                this.f18720l = jSONArrayB.optString(0);
                for (int i10 = 1; i10 < jSONArrayB.length(); i10++) {
                    try {
                        this.B.add(Pattern.compile(jSONArrayB.optString(i10)));
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.B == null) {
                LinkedList linkedList = new LinkedList();
                this.B = linkedList;
                linkedList.add(Pattern.compile("^main$"));
                this.B.add(Pattern.compile("^default_npth_thread$"));
                this.B.add(Pattern.compile("^RenderThread$"));
                this.B.add(Pattern.compile("^Jit thread pool worker thread.*$"));
            }
        }
        Iterator<Pattern> it = this.B.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private JSONObject a(String str, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayB = com.apm.insight.a.b(jSONArray);
        if (jSONArrayB.length() != jSONArray.length()) {
            this.f18723o++;
        }
        try {
            jSONObject.put("thread_name", str);
            jSONObject.put("thread_stack", jSONArrayB);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:104:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:108:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:112:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:115:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:116:0x0201  */
    /* JADX WARN: Code duplicated, block: B:117:0x0204  */
    /* JADX WARN: Code duplicated, block: B:118:0x0207  */
    /* JADX WARN: Code duplicated, block: B:119:0x020a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0216  */
    /* JADX WARN: Code duplicated, block: B:124:0x0223  */
    /* JADX WARN: Code duplicated, block: B:125:0x0226 A[PHI: r27
      0x0226: PHI (r27v2 char) = (r3v29 char), (r27v15 char) binds: [B:123:0x0221, B:117:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:127:0x0230  */
    /* JADX WARN: Code duplicated, block: B:128:0x0233 A[PHI: r27
      0x0233: PHI (r27v3 char) = (r27v2 char), (r27v16 char) binds: [B:126:0x022e, B:116:0x0201] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:130:0x023d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0240 A[PHI: r27
      0x0240: PHI (r27v4 char) = (r27v3 char), (r27v17 char) binds: [B:129:0x023b, B:115:0x01fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x0248  */
    /* JADX WARN: Code duplicated, block: B:134:0x024a A[PHI: r27
      0x024a: PHI (r27v13 char) = (r27v4 char), (r27v18 char) binds: [B:132:0x0246, B:113:0x01fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:136:0x0252  */
    /* JADX WARN: Code duplicated, block: B:137:0x0254 A[PHI: r27
      0x0254: PHI (r27v5 char) = (r27v13 char), (r27v18 char) binds: [B:135:0x0250, B:113:0x01fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:139:0x0259  */
    /* JADX WARN: Code duplicated, block: B:144:0x027c  */
    /* JADX WARN: Code duplicated, block: B:145:0x027f  */
    /* JADX WARN: Code duplicated, block: B:152:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:154:0x02b0 A[LOOP:2: B:100:0x01e4->B:154:0x02b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:156:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:183:0x0356  */
    /* JADX WARN: Code duplicated, block: B:186:0x0365  */
    /* JADX WARN: Code duplicated, block: B:188:0x0377  */
    /* JADX WARN: Code duplicated, block: B:191:0x037b A[LOOP:4: B:189:0x0378->B:191:0x037b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:194:0x038d  */
    /* JADX WARN: Code duplicated, block: B:202:0x03c6 A[PHI: r15 r22 r23 r24 r25
      0x03c6: PHI (r15v6 java.lang.String) = (r15v5 java.lang.String), (r15v7 java.lang.String), (r15v12 java.lang.String), (r15v26 java.lang.String) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r22v3 char) = (r22v1 char), (r22v4 char), (r22v7 char), (r22v8 char) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r23v6 java.lang.String) = (r23v2 java.lang.String), (r23v7 java.lang.String), (r23v11 java.lang.String), (r23v12 java.lang.String) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r24v8 java.util.HashMap) = (r24v4 java.util.HashMap), (r24v9 java.util.HashMap), (r24v14 java.util.HashMap), (r24v24 java.util.HashMap) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r25v8 java.util.HashMap) = (r25v4 java.util.HashMap), (r25v9 java.util.HashMap), (r25v14 java.util.HashMap), (r25v23 java.util.HashMap) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:211:0x0420  */
    /* JADX WARN: Code duplicated, block: B:212:0x0426  */
    /* JADX WARN: Code duplicated, block: B:215:0x043d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0443  */
    /* JADX WARN: Code duplicated, block: B:219:0x045a  */
    /* JADX WARN: Code duplicated, block: B:221:0x0460  */
    /* JADX WARN: Code duplicated, block: B:240:0x03cc A[EDGE_INSN: B:240:0x03cc->B:205:0x03cc BREAK  A[LOOP:0: B:3:0x0044->B:207:0x03e2], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x03e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x02b8 A[EDGE_INSN: B:244:0x02b8->B:155:0x02b8 BREAK  A[LOOP:2: B:100:0x01e4->B:154:0x02b0], SYNTHETIC] */
    private void a(String str, JSONObject jSONObject) throws JSONException {
        HashMap map;
        String str2;
        char c10;
        char c11;
        String str3;
        char c12;
        boolean z10;
        String str4;
        String str5;
        String strTrim;
        String[] strArrSplit;
        int i10;
        String string;
        HashMap map2;
        String str6;
        int i11;
        char c13;
        String str7;
        String[] strArr;
        float fFloatValue;
        SystemClock.uptimeMillis();
        String[] strArrSplit2 = str.split("\n");
        float[] fArr = new float[3];
        int i12 = 0;
        Float fValueOf = Float.valueOf(-1.0f);
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        fArr[2] = -1.0f;
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        HashMap map5 = new HashMap();
        HashMap map6 = new HashMap();
        HashMap map7 = new HashMap();
        int length = strArrSplit2.length;
        String str8 = TmcConstants.ROUTE_UNKNOWN;
        char c14 = 0;
        boolean z11 = false;
        String strTrim2 = TmcConstants.ROUTE_UNKNOWN;
        String str9 = strTrim2;
        while (true) {
            if (i12 >= length) {
                map = map6;
                map7 = map7;
                break;
            }
            String strTrim3 = strArrSplit2[i12];
            if (!TextUtils.isEmpty(strTrim3)) {
                if (c14 == 0) {
                    c11 = c14;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    str3 = strTrim2;
                    String strTrim4 = strTrim3.trim();
                    if (strTrim4.startsWith("tag:")) {
                        strTrim2 = strTrim4.replace("tag:", "").trim();
                        c10 = 1;
                    } else {
                        strTrim2 = str3;
                        c10 = c11;
                    }
                    c12 = 4;
                } else if (c14 == 1) {
                    c11 = c14;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    strTrim3 = strTrim3.trim();
                    String lowerCase = strTrim3.toLowerCase();
                    if (lowerCase.startsWith("shortmsg")) {
                        strTrim3.substring(strTrim3.indexOf(58));
                        z10 = false;
                    } else {
                        if (lowerCase.startsWith("reason:")) {
                            strTrim3.substring(strTrim3.indexOf(58));
                            z10 = true;
                        } else {
                            str3 = strTrim2;
                            if (lowerCase.contains("appfreeze")) {
                                str9 = "AppFreeze";
                                c10 = '\n';
                                strTrim2 = str3;
                            } else {
                                strTrim2 = str3;
                                c10 = c11;
                            }
                        }
                        c12 = 4;
                    }
                    if (lowerCase.contains("input dispatch")) {
                        str5 = "Input dispatching timed out";
                    } else {
                        if (lowerCase.contains("broadcast of intent")) {
                            str5 = "Broadcast of Intent";
                        } else if (lowerCase.contains("executing service")) {
                            str4 = strTrim2;
                            if (!"null".equalsIgnoreCase(str4)) {
                                str9 = "executing service";
                                strTrim2 = str4;
                            } else {
                                strTrim2 = strTrim3.substring(strTrim3.indexOf("service ") + 8).trim();
                                str9 = "executing service";
                            }
                        } else {
                            str4 = strTrim2;
                            if (lowerCase.contains("service.startforeground")) {
                                str9 = "not call Service.startForeground";
                                strTrim2 = str4;
                            } else {
                                strTrim2 = str4;
                                str9 = str2;
                            }
                        }
                        if (z10) {
                            c10 = 2;
                            c12 = 4;
                        }
                        strTrim = strTrim3.trim();
                        if (strTrim.startsWith("Load:")) {
                            strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                            if (3 == strArrSplit.length) {
                                for (i10 = 0; i10 < strArrSplit.length; i10++) {
                                    fArr[i10] = Float.valueOf(strArrSplit[i10]).floatValue();
                                }
                            }
                            c10 = 3;
                        } else {
                            c10 = c11;
                        }
                        c12 = 4;
                    }
                    str9 = str5;
                    if (z10) {
                        c10 = 2;
                        c12 = 4;
                    }
                    strTrim = strTrim3.trim();
                    if (strTrim.startsWith("Load:")) {
                        strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                        if (3 == strArrSplit.length) {
                            while (i10 < strArrSplit.length) {
                                fArr[i10] = Float.valueOf(strArrSplit[i10]).floatValue();
                            }
                        }
                        c10 = 3;
                    } else {
                        c10 = c11;
                    }
                    c12 = 4;
                } else if (c14 != 2) {
                    if (c14 != 3) {
                        c11 = c14;
                        map = map6;
                        map7 = map7;
                        str2 = str8;
                        str3 = strTrim2;
                    } else {
                        String[] strArrSplit3 = strTrim3.split("\\s");
                        c11 = c14;
                        str2 = str8;
                        if (strArrSplit3.length < 2) {
                            map = map6;
                            map7 = map7;
                        } else {
                            if ("CPU".equalsIgnoreCase(strArrSplit3[0]) && "usage".equalsIgnoreCase(strArrSplit3[1])) {
                                if (strTrim3.contains("ago")) {
                                    z11 = true;
                                }
                                if (map3.isEmpty() && map4.isEmpty() && map5.isEmpty() && map7.isEmpty() && map6.isEmpty()) {
                                    map = map6;
                                    map7 = map7;
                                    c10 = c11;
                                }
                                c12 = 4;
                            } else if (map3.isEmpty() || map4.isEmpty() || map5.isEmpty() || map7.isEmpty() || map6.isEmpty()) {
                                if (map3.isEmpty() && strArrSplit3[1].equalsIgnoreCase("TOTAL:")) {
                                    string = "";
                                    map2 = map3;
                                } else if (strTrim3.contains(this.f18710b.getPackageName())) {
                                    string = "";
                                    int i13 = 0;
                                    while (i13 < strArrSplit3.length) {
                                        if (strArrSplit3[i13].contains(this.f18710b.getPackageName())) {
                                            StringBuilder sb2 = new StringBuilder();
                                            String str10 = strArrSplit3[i13];
                                            sb2.append(str10.substring(str10.indexOf(47) + 1, strArrSplit3[i13].length() - 1));
                                            sb2.append('_');
                                            string = sb2.toString();
                                        }
                                        i13++;
                                        this = this;
                                    }
                                    map2 = map5;
                                } else if (map4.isEmpty() && strTrim3.contains("system_server:")) {
                                    string = "";
                                    map2 = map4;
                                } else if (map7.isEmpty() && strTrim3.contains("kswapd")) {
                                    string = "";
                                    map2 = map7;
                                } else if (!map6.isEmpty() || !strTrim3.contains("dex2oat")) {
                                    string = "";
                                    map2 = null;
                                } else {
                                    string = "";
                                    map2 = map6;
                                }
                                if (map2 != null) {
                                    int i14 = 0;
                                    do {
                                        str6 = "%";
                                        if (strArrSplit3[i14].contains("%")) {
                                            break;
                                        } else {
                                            i14++;
                                        }
                                    } while (i14 < strArrSplit3.length);
                                    try {
                                        float fFloatValue2 = Float.valueOf(strArrSplit3[i14].replace("%", "")).floatValue();
                                        map = map6;
                                        try {
                                            String str11 = string + "total";
                                            if (map2 != map3) {
                                                fFloatValue2 /= com.apm.insight.l.d.d();
                                            }
                                            try {
                                                map2.put(str11, Float.valueOf(fFloatValue2));
                                            } catch (Throwable unused) {
                                                map2.put(string + "total", fValueOf);
                                            }
                                        } catch (Throwable unused2) {
                                            map7 = map7;
                                            map2.put(string + "total", fValueOf);
                                            i11 = i14 + 3;
                                            c13 = 0;
                                            while (i11 < strArrSplit3.length) {
                                                str7 = "softirq";
                                                if (c13 != 0) {
                                                    if ("user".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        str7 = "user";
                                                        c13 = 1;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str12 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str12, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else {
                                                    if (c13 != 1) {
                                                        if (c13 != 2) {
                                                            c13 = c13;
                                                            if ("iowait".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                str7 = "iowait";
                                                                c13 = 3;
                                                            } else if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                str7 = "irq";
                                                                c13 = 4;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str13 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str13, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c13 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i11 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else if (c13 != 3) {
                                                            c13 = c13;
                                                            if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                str7 = "irq";
                                                                c13 = 4;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str14 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str14, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c13 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i11 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else if (c13 != 4) {
                                                            c13 = c13;
                                                            if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                c13 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str15 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str15, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c13 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i11 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else {
                                                            c13 = c13;
                                                            if (c13 != 5) {
                                                                if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                                    c13 = 6;
                                                                }
                                                            }
                                                            if (str7 != null) {
                                                                try {
                                                                    fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                                    strArr = strArrSplit3;
                                                                    try {
                                                                        String str16 = string + str7;
                                                                        if (map2 == map3) {
                                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                                        }
                                                                        try {
                                                                            map2.put(str16, Float.valueOf(fFloatValue));
                                                                        } catch (Throwable unused3) {
                                                                            map2.put(string + str7, fValueOf);
                                                                        }
                                                                    } catch (Throwable unused4) {
                                                                        str6 = str6;
                                                                        map2.put(string + str7, fValueOf);
                                                                        if (c13 < 6) {
                                                                            i11 += 3;
                                                                            strArrSplit3 = strArr;
                                                                            str6 = str6;
                                                                        } else {
                                                                            break;
                                                                            str3 = strTrim2;
                                                                            strTrim2 = str3;
                                                                            c10 = c11;
                                                                            c12 = 4;
                                                                            if (c10 >= c12) {
                                                                                break;
                                                                                String str17 = str9;
                                                                                jSONObject.put("anr_tag", strTrim2);
                                                                                jSONObject.put("anr_has_ago", String.valueOf(z11));
                                                                                jSONObject.put("anr_reason", str17);
                                                                                a(map5, jSONObject, "app");
                                                                                a(map3, jSONObject, "total");
                                                                                if (map4.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_systemserver_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
                                                                                }
                                                                                if (map7.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_kswapd_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
                                                                                }
                                                                                if (map.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_dex2oat_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
                                                                                }
                                                                            }
                                                                            i12++;
                                                                            c14 = c10;
                                                                            strArrSplit2 = strArrSplit2;
                                                                            length = length;
                                                                            str8 = str2;
                                                                            map6 = map;
                                                                            map7 = map7;
                                                                        }
                                                                    }
                                                                } catch (Throwable unused5) {
                                                                    strArr = strArrSplit3;
                                                                }
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c13 < 6) {
                                                                break;
                                                            }
                                                            i11 += 3;
                                                            strArrSplit3 = strArr;
                                                            str6 = str6;
                                                        }
                                                    }
                                                    c13 = c13;
                                                    str7 = null;
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str18 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str18, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                }
                                                if ("kernel".equalsIgnoreCase(strArrSplit3[i11])) {
                                                    str7 = "kernel";
                                                    c13 = 2;
                                                } else if ("iowait".equalsIgnoreCase(strArrSplit3[i11])) {
                                                    str7 = "iowait";
                                                    c13 = 3;
                                                } else if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                    str7 = "irq";
                                                    c13 = 4;
                                                } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                    c13 = 5;
                                                } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                    c13 = 6;
                                                } else {
                                                    c13 = c13;
                                                    str7 = null;
                                                }
                                                if (str7 != null) {
                                                    fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                    strArr = strArrSplit3;
                                                    String str19 = string + str7;
                                                    if (map2 == map3) {
                                                        fFloatValue /= com.apm.insight.l.d.d();
                                                    }
                                                    map2.put(str19, Float.valueOf(fFloatValue));
                                                } else {
                                                    strArr = strArrSplit3;
                                                    str6 = str6;
                                                }
                                                if (c13 < 6) {
                                                    break;
                                                    break;
                                                } else {
                                                    i11 += 3;
                                                    strArrSplit3 = strArr;
                                                    str6 = str6;
                                                }
                                            }
                                            str3 = strTrim2;
                                            strTrim2 = str3;
                                            c10 = c11;
                                            c12 = 4;
                                            if (c10 >= c12) {
                                                break;
                                                String str110 = str9;
                                                jSONObject.put("anr_tag", strTrim2);
                                                jSONObject.put("anr_has_ago", String.valueOf(z11));
                                                jSONObject.put("anr_reason", str110);
                                                a(map5, jSONObject, "app");
                                                a(map3, jSONObject, "total");
                                                if (map4.isEmpty()) {
                                                    jSONObject.put("npth_anr_systemserver_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
                                                }
                                                if (map7.isEmpty()) {
                                                    jSONObject.put("npth_anr_kswapd_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
                                                }
                                                if (map.isEmpty()) {
                                                    jSONObject.put("npth_anr_dex2oat_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
                                                }
                                            }
                                            i12++;
                                            c14 = c10;
                                            strArrSplit2 = strArrSplit2;
                                            length = length;
                                            str8 = str2;
                                            map6 = map;
                                            map7 = map7;
                                        }
                                    } catch (Throwable unused6) {
                                        map = map6;
                                    }
                                    i11 = i14 + 3;
                                    c13 = 0;
                                    while (i11 < strArrSplit3.length) {
                                        str7 = "softirq";
                                        if (c13 != 0) {
                                            if ("user".equalsIgnoreCase(strArrSplit3[i11])) {
                                                str7 = "user";
                                                c13 = 1;
                                            }
                                            if (str7 != null) {
                                                fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                strArr = strArrSplit3;
                                                String str111 = string + str7;
                                                if (map2 == map3) {
                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                }
                                                map2.put(str111, Float.valueOf(fFloatValue));
                                            } else {
                                                strArr = strArrSplit3;
                                                str6 = str6;
                                            }
                                            if (c13 < 6) {
                                                break;
                                                break;
                                            } else {
                                                i11 += 3;
                                                strArrSplit3 = strArr;
                                                str6 = str6;
                                            }
                                        } else {
                                            if (c13 != 1) {
                                                if (c13 != 2) {
                                                    c13 = c13;
                                                    if ("iowait".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        str7 = "iowait";
                                                        c13 = 3;
                                                    } else if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        str7 = "irq";
                                                        c13 = 4;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str112 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str112, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else if (c13 != 3) {
                                                    c13 = c13;
                                                    if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        str7 = "irq";
                                                        c13 = 4;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str113 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str113, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else if (c13 != 4) {
                                                    c13 = c13;
                                                    if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                        c13 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str114 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str114, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else {
                                                    c13 = c13;
                                                    if (c13 != 5) {
                                                        if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                                            c13 = 6;
                                                        }
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str115 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str115, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c13 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i11 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                }
                                            }
                                            c13 = c13;
                                            str7 = null;
                                            if (str7 != null) {
                                                fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                                strArr = strArrSplit3;
                                                String str116 = string + str7;
                                                if (map2 == map3) {
                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                }
                                                map2.put(str116, Float.valueOf(fFloatValue));
                                            } else {
                                                strArr = strArrSplit3;
                                                str6 = str6;
                                            }
                                            if (c13 < 6) {
                                                break;
                                                break;
                                            } else {
                                                i11 += 3;
                                                strArrSplit3 = strArr;
                                                str6 = str6;
                                            }
                                        }
                                        if ("kernel".equalsIgnoreCase(strArrSplit3[i11])) {
                                            str7 = "kernel";
                                            c13 = 2;
                                        } else if ("iowait".equalsIgnoreCase(strArrSplit3[i11])) {
                                            str7 = "iowait";
                                            c13 = 3;
                                        } else if ("irq".equalsIgnoreCase(strArrSplit3[i11])) {
                                            str7 = "irq";
                                            c13 = 4;
                                        } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                            c13 = 5;
                                        } else if ("softirq".equalsIgnoreCase(strArrSplit3[i11])) {
                                            c13 = 6;
                                        } else {
                                            c13 = c13;
                                            str7 = null;
                                        }
                                        if (str7 != null) {
                                            fFloatValue = Float.valueOf(strArrSplit3[i11 - 1].replace(str6, "")).floatValue();
                                            strArr = strArrSplit3;
                                            String str117 = string + str7;
                                            if (map2 == map3) {
                                                fFloatValue /= com.apm.insight.l.d.d();
                                            }
                                            map2.put(str117, Float.valueOf(fFloatValue));
                                        } else {
                                            strArr = strArrSplit3;
                                            str6 = str6;
                                        }
                                        if (c13 < 6) {
                                            break;
                                            break;
                                        } else {
                                            i11 += 3;
                                            strArrSplit3 = strArr;
                                            str6 = str6;
                                        }
                                    }
                                } else {
                                    map = map6;
                                    map7 = map7;
                                }
                            }
                            map = map6;
                            map7 = map7;
                            c10 = 4;
                            c12 = 4;
                        }
                        str3 = strTrim2;
                    }
                    strTrim2 = str3;
                    c10 = c11;
                    c12 = 4;
                } else {
                    c11 = c14;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    strTrim = strTrim3.trim();
                    if (strTrim.startsWith("Load:")) {
                        strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                        if (3 == strArrSplit.length) {
                            while (i10 < strArrSplit.length) {
                                fArr[i10] = Float.valueOf(strArrSplit[i10]).floatValue();
                            }
                        }
                        c10 = 3;
                    } else {
                        c10 = c11;
                    }
                    c12 = 4;
                }
                if (c10 >= c12) {
                    break;
                }
            } else {
                map = map6;
                map7 = map7;
                str2 = str8;
                c10 = c14;
            }
            i12++;
            c14 = c10;
            strArrSplit2 = strArrSplit2;
            length = length;
            str8 = str2;
            map6 = map;
            map7 = map7;
        }
        String str118 = str9;
        jSONObject.put("anr_tag", strTrim2);
        jSONObject.put("anr_has_ago", String.valueOf(z11));
        jSONObject.put("anr_reason", str118);
        a(map5, jSONObject, "app");
        a(map3, jSONObject, "total");
        if (map4.isEmpty()) {
            jSONObject.put("npth_anr_systemserver_total", "not found");
        } else {
            jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
        }
        if (map7.isEmpty()) {
            jSONObject.put("npth_anr_kswapd_total", "not found");
        } else {
            jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
        }
        if (map.isEmpty()) {
            jSONObject.put("npth_anr_dex2oat_total", "not found");
        } else {
            jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
        }
    }

    private static void a(HashMap<String, Float> map, JSONObject jSONObject, String str) throws JSONException {
        String strConcat = "npth_anr_".concat(String.valueOf(str));
        if (map.isEmpty()) {
            jSONObject.put(strConcat + "_total", "not found");
            return;
        }
        float fFloatValue = 0.0f;
        float fFloatValue2 = 0.0f;
        float fFloatValue3 = 0.0f;
        float fFloatValue4 = 0.0f;
        float fFloatValue5 = 0.0f;
        for (Map.Entry<String, Float> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.endsWith("user")) {
                fFloatValue += entry.getValue().floatValue();
            } else if (key.endsWith("kernel")) {
                fFloatValue2 += entry.getValue().floatValue();
            } else if (key.endsWith("iowait")) {
                fFloatValue3 += entry.getValue().floatValue();
            } else if (key.endsWith("irq")) {
                fFloatValue4 += entry.getValue().floatValue();
            } else if (key.endsWith("softirq")) {
                fFloatValue5 += entry.getValue().floatValue();
            }
        }
        float f10 = fFloatValue + fFloatValue2 + fFloatValue3 + fFloatValue4 + fFloatValue5;
        jSONObject.put(strConcat + "_total", b(f10));
        jSONObject.put(strConcat + "_kernel_user_ratio", a(fFloatValue2, f10));
        jSONObject.put(strConcat + "_iowait_user_ratio", a(fFloatValue3, f10));
    }

    private static String a(float f10, float f11) {
        if (f11 > 0.0f) {
            return a(f10 / f11);
        }
        return f10 > 0.0f ? "100%" : "0%";
    }

    private static String a(float f10) {
        if (f10 <= 0.0f) {
            return "0%";
        }
        if (f10 <= 0.1f) {
            return "0% - 10%";
        }
        if (f10 <= 0.3f) {
            return "10% - 30%";
        }
        if (f10 <= 0.6f) {
            return "30% - 60%";
        }
        if (f10 <= 0.9f) {
            return "60% - 90%";
        }
        return "90% - 100%";
    }
}
