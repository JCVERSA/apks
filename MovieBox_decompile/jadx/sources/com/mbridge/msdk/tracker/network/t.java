package com.mbridge.msdk.tracker.network;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class t<T> implements Comparable<t<T>> {

    private c f37789a;

    private String f37790b;

    private volatile p f37791c;

    private long f37792d;

    private Map<String, String> f37793e;

    private int f37794f;

    private final String f37795g;

    private final int f37796h;

    private final String f37797i;

    private final int f37798j;

    private final Object f37799k;

    private v.a f37800l;

    private Integer f37801m;

    private u f37802n;

    private boolean f37803o;

    private boolean f37804p;

    private boolean f37805q;

    private boolean f37806r;

    private boolean f37807s;

    private x f37808t;

    private b.a f37809u;

    private long f37810v;

    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public t(int i10, String str) {
        this(i10, str, 0);
    }

    private static int b(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public final boolean A() {
        return this.f37807s;
    }

    public final boolean B() {
        return this.f37806r;
    }

    protected abstract v<T> a(q qVar);

    protected abstract void a(T t10);

    public void a(String str) {
    }

    protected b0 c(b0 b0Var) {
        return b0Var;
    }

    public b.a d() {
        return this.f37809u;
    }

    public String e() {
        if (!TextUtils.isEmpty(this.f37790b)) {
            return this.f37790b;
        }
        if (this.f37789a == null) {
            this.f37789a = new com.mbridge.msdk.tracker.network.toolbox.e();
        }
        String strA = this.f37789a.a(this);
        this.f37790b = strA;
        return strA;
    }

    public Map<String, String> f() {
        return Collections.emptyMap();
    }

    public int g() {
        return this.f37794f;
    }

    public p h() {
        return this.f37791c;
    }

    protected Map<String, String> i() {
        return null;
    }

    protected String j() {
        return "UTF-8";
    }

    public int k() {
        return this.f37796h;
    }

    public a l() {
        return a.NORMAL;
    }

    public long m() {
        return this.f37810v;
    }

    public long n() {
        return SystemClock.elapsedRealtime() - this.f37792d;
    }

    public x o() {
        return this.f37808t;
    }

    public String p() {
        return this.f37797i;
    }

    public final int q() {
        x xVarO = o();
        if (xVarO == null) {
            return 30000;
        }
        return xVarO.b();
    }

    public final long r() {
        x xVarO = o();
        if (xVarO == null) {
            return 30000L;
        }
        long jA = xVarO.a();
        if (jA < 0) {
            return 30000L;
        }
        return jA;
    }

    public int s() {
        return this.f37798j;
    }

    public String t() {
        return this.f37795g;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(s());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(v() ? "[X] " : "[ ] ");
        sb2.append(t());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(l());
        sb2.append(" ");
        sb2.append(this.f37801m);
        return sb2.toString();
    }

    public boolean u() {
        boolean z10;
        synchronized (this.f37799k) {
            z10 = this.f37805q;
        }
        return z10;
    }

    public boolean v() {
        boolean z10;
        synchronized (this.f37799k) {
            z10 = this.f37804p;
        }
        return z10;
    }

    public void w() {
        synchronized (this.f37799k) {
            this.f37805q = true;
        }
    }

    void x() {
        synchronized (this.f37799k) {
        }
    }

    public boolean y() {
        return true;
    }

    public final boolean z() {
        return this.f37803o;
    }

    public t(int i10, String str, int i11) {
        this(i10, str, i11, "un_known");
    }

    public boolean a() {
        return false;
    }

    void c(String str) {
        u uVar = this.f37802n;
        if (uVar != null) {
            uVar.c(this);
        }
    }

    public String d(String str) {
        if (this.f37793e != null && !TextUtils.isEmpty(str)) {
            try {
                return this.f37793e.get(str);
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public t(int i10, String str, int i11, String str2) {
        this.f37799k = new Object();
        this.f37803o = false;
        this.f37804p = false;
        this.f37805q = false;
        this.f37806r = false;
        this.f37807s = false;
        this.f37809u = null;
        this.f37810v = 0L;
        this.f37794f = i10;
        this.f37795g = str;
        this.f37796h = i11;
        this.f37797i = str2;
        a((x) new e());
        this.f37798j = b(str);
        this.f37792d = SystemClock.elapsedRealtime();
    }

    public void a(v.a aVar) {
        this.f37800l = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(x xVar) {
        this.f37808t = xVar;
        return this;
    }

    public String c() {
        return "application/x-www-form-urlencoded; charset=" + j();
    }

    void a(int i10) {
        u uVar = this.f37802n;
        if (uVar != null) {
            uVar.a(this, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(int i10) {
        this.f37801m = Integer.valueOf(i10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> c(boolean z10) {
        this.f37806r = z10;
        return this;
    }

    public byte[] b() {
        Map<String, String> mapI = i();
        if (mapI != null && mapI.size() > 0) {
            byte[] bArrA = a(mapI, j());
            this.f37810v = bArrA.length;
            return bArrA;
        }
        this.f37810v = 0L;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(u uVar) {
        this.f37802n = uVar;
        return this;
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i10++;
                if (entry.getKey() != null) {
                    sb2.append(URLEncoder.encode(entry.getKey(), str));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), str));
                    if (i10 <= map.size() - 1) {
                        sb2.append('&');
                    }
                }
            }
            return sb2.toString().getBytes(str);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Encoding not supported: " + str, e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(boolean z10) {
        this.f37807s = z10;
        return this;
    }

    public void b(b0 b0Var) {
        v.a aVar;
        synchronized (this.f37799k) {
            aVar = this.f37800l;
        }
        if (aVar != null) {
            aVar.a(b0Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> a(boolean z10) {
        this.f37803o = z10;
        return this;
    }

    void a(v<?> vVar) {
        synchronized (this.f37799k) {
        }
    }

    public void a(p pVar) {
        this.f37791c = pVar;
    }

    public void a(String str, String str2) {
        if (this.f37793e == null) {
            this.f37793e = new HashMap();
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            this.f37793e.put(str, str2);
        } catch (Exception unused) {
        }
    }

    @Override
    public int compareTo(t<T> tVar) {
        a aVarL = l();
        a aVarL2 = tVar.l();
        return aVarL == aVarL2 ? this.f37801m.intValue() - tVar.f37801m.intValue() : aVarL2.ordinal() - aVarL.ordinal();
    }
}
