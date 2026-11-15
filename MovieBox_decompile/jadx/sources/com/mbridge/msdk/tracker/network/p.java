package com.mbridge.msdk.tracker.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.push.PushConstants;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public class p {
    private volatile long A;
    private volatile long B;
    private volatile long C;
    private volatile long D;
    private volatile long E;
    private volatile long F;
    private volatile long G;
    private volatile long H;
    private volatile List<InetAddress> I;
    private volatile InetSocketAddress J;
    private volatile Proxy K;
    private volatile com.mbridge.msdk.thrid.okhttp.o L;
    private volatile com.mbridge.msdk.thrid.okhttp.u M;
    private volatile IOException N;
    private volatile Exception P;
    private long R;
    private long S;
    private long T;
    private long U;

    private volatile String f37760d;

    private volatile long f37762f;

    private volatile String f37766j;

    private volatile String f37767k;

    private volatile long f37775s;

    private volatile long f37776t;

    private volatile IOException f37777u;

    private volatile long f37778v;

    private volatile long f37779w;

    private volatile long f37781y;

    private volatile long f37782z;

    protected volatile String f37757a = "";

    private volatile String f37758b = "";

    private volatile String f37759c = "";

    private volatile String f37761e = "";

    private volatile int f37763g = -1;

    private volatile String f37764h = "";

    private volatile int f37765i = -1;

    private volatile String f37768l = "okhttp";

    private volatile boolean f37769m = false;

    private final AtomicInteger f37770n = new AtomicInteger(0);

    private volatile String f37771o = "";

    private volatile long f37772p = 0;

    private volatile long f37773q = 0;

    private volatile long f37774r = 0;

    private volatile String f37780x = "system";
    private volatile boolean O = false;
    private volatile boolean Q = false;

    public p(String str, String str2) {
        this.f37760d = "";
        this.f37766j = "un_known";
        this.f37767k = "";
        this.f37766j = str;
        this.f37767k = str2;
        this.f37760d = UUID.randomUUID().toString();
    }

    private void P() {
        try {
            JSONObject jSONObjectX = x();
            com.mbridge.msdk.tracker.e eVarA = a(jSONObjectX, "m_request_end");
            if (MBridgeConstans.DEBUG) {
                o0.a("NetworkMonitor_" + H(), "request  end  monitor = " + jSONObjectX.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(eVarA);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "reportRequestEnd ", th2);
            }
        }
    }

    private void Q() {
        try {
            JSONObject jSONObjectZ = z();
            com.mbridge.msdk.tracker.e eVarA = a(jSONObjectZ, "m_request_start");
            if (MBridgeConstans.DEBUG) {
                o0.a("NetworkMonitor_" + H(), "request start monitor = " + jSONObjectZ.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().d().d(eVarA);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "reportRequestStart ", th2);
            }
        }
    }

    private void T() {
        this.N = null;
        this.f37777u = null;
        this.P = null;
        this.f37775s = 0L;
        this.f37776t = 0L;
        this.f37778v = 0L;
        this.f37779w = 0L;
        this.f37781y = 0L;
        this.f37782z = 0L;
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.G = 0L;
        this.H = 0L;
        this.f37773q = 0L;
        this.f37774r = 0L;
        this.f37769m = false;
        this.f37763g = -1;
        this.f37765i = -1;
        this.f37764h = "";
        this.f37771o = "";
        this.f37772p = 0L;
        this.Q = false;
    }

    private JSONObject x() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_end");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, H());
        jSONObject.put("lrid", n());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put(PushConstants.SP_KEY_RETRY_COUNT, v() - 1);
        jSONObject.put("request_wait_duration", this.f37762f);
        jSONObject.put("duration", j());
        jSONObject.put("request_duration", w());
        jSONObject.put("response_code", E());
        String strH = h();
        jSONObject.put("dns_result", strH);
        jSONObject.put("dns_status", TextUtils.isEmpty(strH) ? 2 : 1);
        jSONObject.put("is_connection_acquired", O() ? 1 : 0);
        jSONObject.put(PlaceTypes.ADDRESS, c());
        jSONObject.put("port", p());
        jSONObject.put("proxy", r());
        jSONObject.put("protocol", q());
        jSONObject.put("tls_version", J());
        jSONObject.put("content_type", f());
        int iG = G();
        jSONObject.put("result", iG);
        if (iG != 1) {
            jSONObject.put(TrackingKey.ERROR_TYPE, l());
            jSONObject.put("reason", k());
        }
        jSONObject.put("dns_duration", g());
        jSONObject.put("connect_duration", d());
        jSONObject.put("request_header_duration", y());
        jSONObject.put("request_body_duration", t());
        jSONObject.put("request_body_size", u());
        jSONObject.put("response_header_duration", F());
        jSONObject.put("response_body_duration", C());
        jSONObject.put("response_body_size", D());
        jSONObject.put("transmission_duration", K());
        jSONObject.put("current_response_body_size", B());
        jSONObject.put("dns_type", i());
        return jSONObject;
    }

    private JSONObject z() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", "m_request_start");
        jSONObject.put("uuid", M());
        jSONObject.put("request_uuid", A());
        jSONObject.put("lrid", n());
        jSONObject.put("url", L());
        jSONObject.put("timeout", I());
        jSONObject.put("timeout_connection", e());
        jSONObject.put("timeout_read", s());
        jSONObject.put("timeout_write", N());
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, H());
        jSONObject.put("method", o());
        jSONObject.put("adtp", b());
        jSONObject.put("http_stack", m());
        jSONObject.put(PushConstants.SP_KEY_RETRY_COUNT, v() - 1);
        jSONObject.put("request_wait_duration", this.f37762f);
        return jSONObject;
    }

    public String A() {
        return TextUtils.isEmpty(this.f37761e) ? "" : this.f37761e;
    }

    public long B() {
        return this.f37774r;
    }

    public long C() {
        return this.H - this.G;
    }

    public long D() {
        return this.f37773q;
    }

    public int E() {
        return this.f37765i;
    }

    public long F() {
        return this.F - this.E;
    }

    public int G() {
        return this.f37763g;
    }

    public String H() {
        return TextUtils.isEmpty(this.f37766j) ? "un_known" : this.f37766j;
    }

    public long I() {
        return this.R;
    }

    public String J() {
        if (this.L != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.b0 b0VarC = this.L.c();
                return b0VarC == null ? "" : b0VarC.a();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getTlsVersion ", e10);
                }
            }
        }
        return "";
    }

    public long K() {
        return this.E - this.A;
    }

    public String L() {
        return TextUtils.isEmpty(this.f37757a) ? "" : this.f37757a;
    }

    public String M() {
        return TextUtils.isEmpty(this.f37760d) ? "" : this.f37760d;
    }

    public long N() {
        return this.U;
    }

    public boolean O() {
        return this.f37769m;
    }

    public void R() {
        this.C = SystemClock.elapsedRealtime();
    }

    public void S() {
        this.A = SystemClock.elapsedRealtime();
    }

    public void U() {
        this.G = SystemClock.elapsedRealtime();
    }

    public void V() {
        this.E = SystemClock.elapsedRealtime();
    }

    public void W() {
    }

    public void a(String str) {
        this.f37759c = str;
    }

    public void b(com.mbridge.msdk.thrid.okhttp.g gVar) {
    }

    public void c(String str) {
        this.f37780x = str;
    }

    public void d(String str) {
        this.f37764h = str;
    }

    public void e(long j10) {
        this.S = j10;
    }

    public void f(String str) {
        this.f37757a = str;
    }

    public long g() {
        return this.f37779w - this.f37778v;
    }

    public String h() {
        if (this.I == null || this.I.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.I.size(); i10++) {
            try {
                InetAddress inetAddress = this.I.get(i10);
                if (inetAddress != null) {
                    sb2.append(inetAddress.getHostAddress());
                    if (i10 != this.I.size() - 1) {
                        sb2.append(",");
                    } else {
                        continue;
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getDnsResult ", e10);
                }
            }
        }
        return sb2.toString();
    }

    public void i(long j10) {
        this.R = j10;
    }

    public void j(long j10) {
        this.U = j10;
    }

    public String k() {
        try {
            if (this.N != null) {
                String name = this.N.getClass().getName();
                String message = this.N.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    return a("connection: %s ", name, message);
                }
            }
            if (this.f37777u != null) {
                String name2 = this.f37777u.getClass().getName();
                String message2 = this.f37777u.getMessage();
                if (!TextUtils.isEmpty(message2)) {
                    return a("call: %s ", name2, message2);
                }
            }
            if (this.P == null) {
                return "un_known";
            }
            String name3 = this.P.getClass().getName();
            String message3 = this.P.getMessage();
            return !TextUtils.isEmpty(message3) ? a("error: %s ", name3, message3) : "un_known";
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return "un_known";
            }
            o0.b("NetworkMonitor", "getError ", e10);
            return "un_known";
        }
    }

    public String l() {
        return this.f37764h;
    }

    public String m() {
        return this.f37768l;
    }

    public String n() {
        return TextUtils.isEmpty(this.f37758b) ? "" : this.f37758b;
    }

    public String o() {
        return TextUtils.isEmpty(this.f37767k) ? "" : this.f37767k;
    }

    public int p() {
        if (this.J != null) {
            return this.J.getPort();
        }
        return -1;
    }

    public String q() {
        return this.M != null ? this.M.toString() : "";
    }

    public String r() {
        Proxy.Type type;
        return (this.K == null || (type = this.K.type()) == null) ? "" : type.toString();
    }

    public long s() {
        return this.T;
    }

    public long t() {
        return this.D - this.C;
    }

    public long u() {
        return this.f37772p;
    }

    public int v() {
        return this.f37770n.getAndAdd(0);
    }

    public long w() {
        return this.f37776t - this.f37775s;
    }

    public long y() {
        return this.B - this.A;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.d dVar) {
        this.f37775s = SystemClock.elapsedRealtime();
    }

    public String b() {
        return TextUtils.isEmpty(this.f37759c) ? "" : this.f37759c;
    }

    public String c() {
        if (this.J != null) {
            try {
                InetAddress address = this.J.getAddress();
                if (address == null) {
                    return "";
                }
                String hostAddress = address.getHostAddress();
                return TextUtils.isEmpty(hostAddress) ? "" : hostAddress;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "getAddress ", e10);
                }
            }
        }
        return "";
    }

    public long d() {
        return this.f37782z - this.f37781y;
    }

    public long e() {
        return this.S;
    }

    public void f(long j10) {
        this.T = j10;
    }

    public void g(long j10) {
        this.f37772p = j10;
    }

    public String i() {
        return TextUtils.isEmpty(this.f37780x) ? "system" : this.f37780x;
    }

    public long j() {
        return (this.f37776t - this.f37775s) + this.f37762f;
    }

    public void a() {
        this.f37778v = SystemClock.elapsedRealtime();
    }

    public void b(int i10) {
        this.f37765i = i10;
    }

    public void d(long j10) {
        this.H = SystemClock.elapsedRealtime();
    }

    public void e(String str) {
        this.f37758b = str;
    }

    public String f() {
        return com.mbridge.msdk.foundation.same.d.a(this.f37771o);
    }

    public void a(List<InetAddress> list) {
        this.f37779w = SystemClock.elapsedRealtime();
        this.I = list;
    }

    public void b(long j10) {
        this.D = SystemClock.elapsedRealtime();
    }

    public void b(String str) {
        this.f37771o = str;
    }

    public void a(InetSocketAddress inetSocketAddress, Proxy proxy) {
        this.f37781y = SystemClock.elapsedRealtime();
        this.J = inetSocketAddress;
        this.K = proxy;
        this.O = true;
    }

    public void c(long j10) {
        this.f37774r = j10;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.o oVar) {
        this.L = oVar;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.u uVar, IOException iOException) {
        this.f37782z = SystemClock.elapsedRealtime();
        this.M = uVar;
        this.N = iOException;
    }

    public void h(long j10) {
        this.f37773q = j10;
    }

    public void a(com.mbridge.msdk.thrid.okhttp.g gVar) {
        this.f37769m = !this.O;
        if (!this.f37769m || gVar == null) {
            return;
        }
        try {
            this.M = gVar.a();
            com.mbridge.msdk.thrid.okhttp.a0 a0VarC = gVar.c();
            if (a0VarC != null) {
                this.J = a0VarC.d();
                this.K = a0VarC.b();
            }
            this.L = gVar.b();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NetworkMonitor", "connectionAcquired ", e10);
            }
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.w wVar) {
        this.B = SystemClock.elapsedRealtime();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.y yVar) {
        this.F = SystemClock.elapsedRealtime();
        if (yVar != null) {
            try {
                com.mbridge.msdk.thrid.okhttp.p pVarM = yVar.m();
                if (pVarM != null) {
                    String strB = pVarM.b(HttpHeaders.CONTENT_TYPE);
                    if (TextUtils.isEmpty(strB)) {
                        strB = "";
                    }
                    b(strB);
                }
            } catch (Exception e10) {
                b(TmcConstants.ROUTE_UNKNOWN);
                if (MBridgeConstans.DEBUG) {
                    o0.b("NetworkMonitor", "responseHeadersEnd ", e10);
                }
            }
        }
    }

    public void a(IOException iOException) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f37776t = jElapsedRealtime;
        this.f37777u = iOException;
        a(iOException, jElapsedRealtime);
    }

    private void a(IOException iOException, long j10) {
        if (iOException != null) {
            if (this.f37778v == 0) {
                this.f37778v = j10;
            }
            if (this.f37779w == 0) {
                this.f37779w = j10;
            }
            if (this.f37781y == 0) {
                this.f37781y = j10;
            }
            if (this.f37782z == 0) {
                this.f37782z = j10;
            }
            if (this.A == 0) {
                this.A = j10;
            }
            if (this.B == 0) {
                this.B = j10;
            }
            if (this.C == 0) {
                this.C = j10;
            }
            if (this.D == 0) {
                this.D = j10;
            }
            if (this.E == 0) {
                this.E = j10;
            }
            if (this.F == 0) {
                this.F = j10;
            }
            if (this.G == 0) {
                this.G = j10;
            }
            if (this.H == 0) {
                this.H = j10;
            }
        }
    }

    private static String a(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str2 = "IOException";
        }
        sb2.append(String.format(str, str2));
        sb2.append(TextUtils.isEmpty(str3) ? "" : str3.replaceAll("[\\n\\r]", " "));
        return sb2.toString();
    }

    public void a(long j10) {
        this.f37761e = UUID.randomUUID().toString();
        this.f37762f = j10;
        this.f37770n.addAndGet(1);
        T();
        this.Q = true;
        Q();
    }

    public void a(Exception exc) {
        this.P = exc;
    }

    public void a(int i10) {
        this.f37763g = i10;
        if (this.Q) {
            this.Q = false;
            P();
        }
    }

    private static com.mbridge.msdk.tracker.e a(JSONObject jSONObject, String str) {
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        eVar.a(0);
        eVar.b(0);
        eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
        eVar.a(jSONObject);
        return eVar;
    }
}
