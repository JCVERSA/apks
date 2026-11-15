package com.apm.insight.b;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.apm.insight.runtime.p;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http2.Settings;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class g {

    private static int f18755r = 2;

    private c f18756a;

    private int f18757b;

    private volatile int f18758c;

    private int f18759d;

    private int f18760e;

    private f f18761f;

    private long f18762g;

    private long f18763h;

    private int f18764i;

    private long f18765j;

    private String f18766k;

    private String f18767l;

    private com.apm.insight.b.e f18768m;

    private volatile boolean f18769n;

    private boolean f18770o;

    private final p f18771p;

    private volatile boolean f18772q;

    private Runnable f18773s;

    static class a {

        long f18782a;

        long f18783b;

        long f18784c;

        boolean f18785d;

        int f18786e;

        StackTraceElement[] f18787f;

        private a() {
        }

        a(byte b10) {
            this();
        }
    }

    static class b {

        a f18788a;

        private int f18789b;

        final void a(a aVar) {
            throw null;
        }
    }

    public interface c {
    }

    public static class d {
    }

    public static class e {

        public long f18790a;

        long f18791b;

        long f18792c;

        int f18793d;

        int f18794e;

        long f18795f;

        long f18796g;

        String f18797h;

        public String f18798i;

        private String f18799j;

        private d f18800k;

        public final JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, g.a(this.f18797h));
                jSONObject.put("cpuDuration", this.f18796g);
                jSONObject.put("duration", this.f18795f);
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.f18793d);
                jSONObject.put("count", this.f18794e);
                jSONObject.put("messageCount", this.f18794e);
                jSONObject.put("lastDuration", this.f18791b - this.f18792c);
                jSONObject.put("start", this.f18790a);
                jSONObject.put(TtmlNode.END, this.f18791b);
                jSONObject.put("block_uuid", (Object) null);
                jSONObject.put("sblock_uuid", (Object) null);
                jSONObject.put("belong_frame", false);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return jSONObject;
        }

        final void b() {
            this.f18793d = -1;
            this.f18794e = -1;
            this.f18795f = -1L;
            this.f18797h = null;
            this.f18799j = null;
            this.f18800k = null;
            this.f18798i = null;
        }
    }

    public g() {
        this((byte) 0);
    }

    static b c() {
        return null;
    }

    static p e() {
        return null;
    }

    private g(byte b10) {
        this.f18757b = 0;
        this.f18758c = 0;
        this.f18759d = 100;
        this.f18760e = 200;
        this.f18762g = -1L;
        this.f18763h = -1L;
        this.f18764i = -1;
        this.f18765j = -1L;
        this.f18769n = false;
        this.f18770o = false;
        this.f18772q = false;
        this.f18773s = new Runnable() {

            private long f18776b;

            private long f18775a = 0;

            private int f18777c = -1;

            private int f18778d = 0;

            private int f18779e = 0;

            @Override
            public final void run() {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (g.c().f18788a != null) {
                    throw null;
                }
                a aVar = new a((byte) 0);
                if (this.f18777c == g.this.f18758c) {
                    this.f18778d++;
                } else {
                    this.f18778d = 0;
                    this.f18779e = 0;
                    this.f18776b = jUptimeMillis;
                }
                this.f18777c = g.this.f18758c;
                int i10 = this.f18778d;
                if (i10 > 0 && i10 - this.f18779e >= g.f18755r && this.f18775a != 0 && jUptimeMillis - this.f18776b > 700 && g.this.f18772q) {
                    aVar.f18787f = Looper.getMainLooper().getThread().getStackTrace();
                    this.f18779e = this.f18778d;
                }
                aVar.f18785d = g.this.f18772q;
                aVar.f18784c = (jUptimeMillis - this.f18775a) - 300;
                aVar.f18782a = jUptimeMillis;
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                this.f18775a = jUptimeMillis2;
                aVar.f18783b = jUptimeMillis2 - jUptimeMillis;
                aVar.f18786e = g.this.f18758c;
                g.e().a(g.this.f18773s, 300L);
                g.c().a(aVar);
            }
        };
        this.f18756a = new c() {
        };
        this.f18771p = null;
    }

    static int d(g gVar) {
        int i10 = gVar.f18757b;
        gVar.f18757b = i10 + 1;
        return i10;
    }

    public final JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            int i10 = 0;
            for (e eVar : this.f18761f.a()) {
                if (eVar != null) {
                    i10++;
                    jSONArray.put(eVar.a().put("id", i10));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    public final void a() {
        if (this.f18769n) {
            return;
        }
        this.f18769n = true;
        this.f18759d = 100;
        this.f18760e = 300;
        this.f18761f = new f(100);
        this.f18768m = new com.apm.insight.b.e() {
            @Override
            public final boolean a() {
                return true;
            }

            @Override
            public final void b(String str) {
                super.b(str);
                g.d(g.this);
                g.a(g.this, false, com.apm.insight.b.e.f18749a);
                g gVar = g.this;
                gVar.f18766k = gVar.f18767l;
                g.this.f18767l = "no message running";
                g.this.f18772q = false;
            }

            @Override
            public final void a(String str) {
                g.this.f18772q = true;
                g.this.f18767l = str;
                super.a(str);
                g.a(g.this, true, com.apm.insight.b.e.f18749a);
            }
        };
        h.a();
        h.a(this.f18768m);
        j.a(j.a());
    }

    static class f {

        private int f18801a;

        private int f18802b;

        private e f18803c;

        private List<e> f18804d = new ArrayList();

        f(int i10) {
            this.f18801a = i10;
        }

        final e a(int i10) {
            e eVar = this.f18803c;
            if (eVar != null) {
                eVar.f18793d = i10;
                this.f18803c = null;
                return eVar;
            }
            e eVar2 = new e();
            eVar2.f18793d = i10;
            return eVar2;
        }

        final void a(e eVar) {
            int size = this.f18804d.size();
            int i10 = this.f18801a;
            if (size < i10) {
                this.f18804d.add(eVar);
                this.f18802b = this.f18804d.size();
                return;
            }
            int i11 = this.f18802b % i10;
            this.f18802b = i11;
            e eVar2 = this.f18804d.set(i11, eVar);
            eVar2.b();
            this.f18803c = eVar2;
            this.f18802b++;
        }

        final List<e> a() {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            if (this.f18804d.size() == this.f18801a) {
                for (int i11 = this.f18802b; i11 < this.f18804d.size(); i11++) {
                    arrayList.add(this.f18804d.get(i11));
                }
                while (i10 < this.f18802b - 1) {
                    arrayList.add(this.f18804d.get(i10));
                    i10++;
                }
            } else {
                while (i10 < this.f18804d.size()) {
                    arrayList.add(this.f18804d.get(i10));
                    i10++;
                }
            }
            return arrayList;
        }
    }

    private void a(int i10, long j10, String str) {
        a(i10, j10, str, true);
    }

    private void a(int i10, long j10, String str, boolean z10) {
        this.f18770o = true;
        e eVarA = this.f18761f.a(i10);
        eVarA.f18795f = j10 - this.f18762g;
        if (z10) {
            long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            eVarA.f18796g = jCurrentThreadTimeMillis - this.f18765j;
            this.f18765j = jCurrentThreadTimeMillis;
        } else {
            eVarA.f18796g = -1L;
        }
        eVarA.f18794e = this.f18757b;
        eVarA.f18797h = str;
        eVarA.f18798i = this.f18766k;
        eVarA.f18790a = this.f18762g;
        eVarA.f18791b = j10;
        eVarA.f18792c = this.f18763h;
        this.f18761f.a(eVarA);
        this.f18757b = 0;
        this.f18762g = j10;
    }

    public final e a(long j10) {
        e eVar = new e();
        eVar.f18797h = this.f18767l;
        eVar.f18798i = this.f18766k;
        eVar.f18795f = j10 - this.f18763h;
        eVar.f18796g = 0 - this.f18765j;
        eVar.f18794e = this.f18757b;
        return eVar;
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "unknown message";
        }
        try {
            String[] strArrSplit = str.split(":");
            String str3 = strArrSplit.length == 2 ? strArrSplit[1] : "";
            if (str.contains("{") && str.contains("}")) {
                str2 = str.split("\\{")[0];
                try {
                    str = str2 + str.split("\\}")[1];
                } catch (Throwable unused) {
                    return str2;
                }
            } else {
                str2 = str;
            }
            if (str.contains("@")) {
                String[] strArrSplit2 = str.split("@");
                if (strArrSplit2.length > 1) {
                    str = strArrSplit2[0];
                }
            }
            if (str.contains("(") && str.contains(")") && !str.endsWith(" null")) {
                String[] strArrSplit3 = str.split("\\(");
                if (strArrSplit3.length > 1) {
                    str = strArrSplit3[1];
                }
                str = str.replace(")", "");
            }
            if (str.startsWith(" ")) {
                str = str.replace(" ", "");
            }
            return str + str3;
        } catch (Throwable unused2) {
            return str;
        }
    }

    static void a(g gVar, boolean z10, long j10) {
        int i10 = gVar.f18758c + 1;
        gVar.f18758c = i10;
        gVar.f18758c = i10 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        gVar.f18770o = false;
        if (gVar.f18762g < 0) {
            gVar.f18762g = j10;
        }
        if (gVar.f18763h < 0) {
            gVar.f18763h = j10;
        }
        if (gVar.f18764i < 0) {
            gVar.f18764i = Process.myTid();
            gVar.f18765j = SystemClock.currentThreadTimeMillis();
        }
        long j11 = j10 - gVar.f18762g;
        int i11 = gVar.f18760e;
        if (j11 > i11) {
            long j12 = gVar.f18763h;
            if (j10 - j12 <= i11) {
                gVar.a(9, j10, gVar.f18767l);
            } else if (z10) {
                if (gVar.f18757b == 0) {
                    gVar.a(1, j10, "no message running");
                } else {
                    gVar.a(9, j12, gVar.f18766k);
                    gVar.a(1, j10, "no message running", false);
                }
            } else if (gVar.f18757b == 0) {
                gVar.a(8, j10, gVar.f18767l, true);
            } else {
                gVar.a(9, j12, gVar.f18766k, false);
                gVar.a(8, j10, gVar.f18767l, true);
            }
        }
        gVar.f18763h = j10;
    }
}
